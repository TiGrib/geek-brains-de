import os

from db_conn import DBConnector


if __name__ == "__main__":
    db_conn = DBConnector("localhost", 54320, "my_database", "root", "postgres")
    db_conn2 = DBConnector("localhost", 5433, "my_database", "root", "postgres")
    # Получаем список всех таблиц в нашей бд
    query = "SELECT tablename FROM pg_catalog.pg_tables WHERE schemaname != 'pg_catalog' AND schemaname != 'information_schema'"
    db_conn.cursor.execute(query)
    table_names = [table_name[0] for table_name in db_conn.cursor.fetchall()]
    # Сохраняем данные из БД
    for t_name in table_names:
        db_conn.save_table_to_csv_file(t_name)
    # Загружаем данные из csv
    for file in os.listdir("../data/"):
        with open(f"../data/{file}", "r") as stream:
            print()
            db_conn2.insert_to_table_from_csv(file[:-4], stream)

    db_conn2.cursor.execute("select count(*) from customer limit 1")
    print(db_conn2.cursor.fetchall())