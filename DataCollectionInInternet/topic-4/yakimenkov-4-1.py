from pprint import pprint

from utils.mongo_connector import Connector
from utils.news_parser import LentaNewsScraper

db = Connector().client["news"]
lenta_collection = db["lenta"]

lenta_news = LentaNewsScraper().add_latest_news_to_db()
for doc in lenta_collection.find({}):
    pprint(doc)
