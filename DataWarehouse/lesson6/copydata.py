import os

from datetime import datetime

from airflow import DAG
from airflow.operators.python_operator import PythonOperator
from airflow.hooks.postgres_hook import PostgresHook


def table_names(**kwargs):
    ti = kwargs["ti"]
    phook = PostgresHook(postgres_conn_id="postgres_source")
    with phook.get_conn().cursor() as cur:
        query = "SELECT tablename FROM pg_catalog.pg_tables WHERE schemaname != 'pg_catalog' AND schemaname != 'information_schema'"
        cur.execute(query)
        table_names_var = [table_name[0] for table_name in cur.fetchall()]
    print(f"TABLE NAMES {table_names_var}")
    ti.xcom_push(key="table_names", value=table_names_var)


def dump_data(**kwargs):
    ti = kwargs["ti"]
    table_names_var = ti.xcom_pull(key="table_names", task_ids="table_names")
    print(f"TABLE NAMES: {table_names_var}")
    phook = PostgresHook(postgres_conn_id="postgres_source")
    with phook.get_conn().cursor() as cur:
        for table_name in table_names_var:
            query = f"COPY {table_name} TO STDOUT WITH DELIMITER ',' CSV HEADER"
            with open(f"data/{table_name}.csv", "w") as stream:
                cur.copy_expert(query, stream)
            print(f"{table_name} successfully saved")


def insert_data(**kwargs):
    ti = kwargs["ti"]
    table_names_var = ti.xcom_pull(key="table_names", task_ids="table_names")
    phook = PostgresHook(postgres_conn_id="postgres_target")
    with phook.get_conn().cursor() as cur:
        for table_name in table_names_var:
            with open(f"data/{table_name}.csv", "r") as stream:
                query = f"COPY {table_name} from STDIN WITH DELIMITER ',' CSV HEADER"
                cur.copy_expert(query, stream)
                print(f"insert data from csv to {table_name}")


DEFAULT_ARGS = {
    "owner": "airflow",
    "start_date": datetime(2022, 2, 15),
    "retries": 1,
    "email_on_failure": False,
    "email_on_retry": False,
    "depends_on_past": False,
}


with DAG(
    dag_id="copy_data",
    default_args=DEFAULT_ARGS,
    schedule_interval="@once",
    tags=["data-flow"],
    catchup=False
) as dag:

    get_table_names = PythonOperator(
        task_id="table_names",
        python_callable=table_names,
        provide_context=True,
        do_xcom_push=False
    )

    dump_data = PythonOperator(
        task_id="dump_data",
        python_callable=dump_data,
        provide_context=True,
    )

    insert_data = PythonOperator(
        task_id="insert_data",
        python_callable=insert_data,
        provide_context=True,
    )

get_table_names >> dump_data >> insert_data
