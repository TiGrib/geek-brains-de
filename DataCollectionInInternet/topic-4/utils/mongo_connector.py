from pymongo import MongoClient


class Connector:
    def __init__(self) -> None:
        self.host = "localhost"
        self.port = 27888
        self.client = self.create_client()

    def create_client(self) -> MongoClient:
        return MongoClient(self.host, self.port)
