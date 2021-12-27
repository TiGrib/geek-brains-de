import hashlib
import requests

from lxml import html
from pymongo.errors import DuplicateKeyError as DKE

from utils.mongo_connector import Connector


class LentaNewsScraper:
    def __init__(self):
        self.main_url = "https://lenta.ru"
        self.user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36"

        self.mongo_collection = Connector().client["news"]["lenta"]

    def get_latest_news(self):
        response = requests.get(url=self.main_url+"/parts/news/")
        return html.fromstring(response.text).xpath(
            "//div[contains(@class, 'item news')]"
        )

    def add_latest_news_to_db(self):
        for doc in self.get_latest_news():
            try:
                self.mongo_collection.insert_one(self.news_parser(doc))
            except DKE:
                print("This news allready in db")

    def news_parser(self, doc):
        time = doc.xpath(".//div[contains(@class, 'info')]/text()")[0]
        url = doc.xpath(".//div[contains(@class, 'titles')]//a//@href")[0]
        if not str(url).startswith(("http://", "https://")):
            url = self.main_url+url
        title = doc.xpath(".//div[contains(@class, 'titles')]//a/text()")[0]
        return {
            "_id": hashlib.md5((time+url).encode("utf-8")).hexdigest(),
            "title": title,
            "time": time,
            "url": url,
        }
