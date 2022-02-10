import psycopg2


class DBConnector:
    def __init__(self, host, port, db_name, user, password):
        self.host = host
        self.port = port
        self.db_name = db_name
        self.user = user
        self.password = password

        self.cursor = self._create_cursor()

    def _create_cursor(self):
        conn_string = f"host={self.host} port={self.port} dbname={self.db_name} user={self.user} password={self.password}"
        return psycopg2.connect(conn_string).cursor()

    def save_table_to_csv_file(self, table_name):
        query = f"COPY {table_name} TO STDOUT WITH DELIMITER ',' CSV HEADER"
        with open(f"../data/{table_name}.csv", "w") as stream:
            self.cursor.copy_expert(query, stream)
        print(f"{table_name} successfully saved")

    def insert_to_table_from_csv(self, table_name, streamed_file):
        query = f"COPY {table_name} from STDIN WITH DELIMITER ',' CSV HEADER"
        self.cursor.copy_expert(query, streamed_file)
        print(f"insert data from csv to {table_name}")
