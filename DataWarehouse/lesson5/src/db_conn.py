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

    def 