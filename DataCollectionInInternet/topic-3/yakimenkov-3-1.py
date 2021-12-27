from pprint import pprint

from utils.mongo_connector import Connector
from utils.hh_vac_scraper import HHScraper

db = Connector().client["vacancies_db"]
collection = db["hh_vacancies"]

python_vac = HHScraper("python", 3)
python_vac.add_new_vacancies_to_db()

# collection.delete_many({})
print(f"NUM OF DOCS: {collection.count_documents({})}")

salary = 350000
for doc in collection.find(
    {
        "$and": [
            {"currency": "руб."},
            {
                "$or": [
                    {"$and": [{"min_salary": {"$lte": salary}}, {"max_salary": {"$gte": salary}}]},
                    {"$and": [{"min_salary": {"$lte": salary}}, {"max_salary": {"$eq": None}}]},
                    {"$and": [{"min_salary": {"$eq": None}}, {"max_salary": {"$gte": salary}}]}
                ]
            }]}):
    pprint(doc)
