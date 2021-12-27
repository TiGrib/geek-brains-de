from typing import Dict

import requests
from bs4 import BeautifulSoup as bs
from pymongo.errors import DuplicateKeyError as DKE
from utils.mongo_connector import Connector


class HHScraper:
    def __init__(self, name: str, page_num: int) -> None:
        self.name = name
        self.page_num = page_num

        self.main_url = "https://hh.ru/"
        self.user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36"

        self.mongo_collection = Connector().client["vacancies_db"]["hh_vacancies"]

    def get_vacancies_from_page(self, page_num: int):
        params = {"text": self.name, "page": page_num}
        headers = {"User-Agent": self.user_agent}
        response = requests.get(
            self.main_url + "search/vacancy", params=params, headers=headers
        )
        return bs(response.text, "html.parser")

    def add_new_vacancies_to_db(self):
        for page in range(1, self.page_num + 1):
            page_obj = self.get_vacancies_from_page(page)
            vacancies = page_obj.find_all("div", {"class": "vacancy-serp-item"})
            for vac in vacancies:
                vacancy = {}
                info = vac.find("a", {"data-qa": "vacancy-serp__vacancy-title"})
                try:
                    salary = vac.find(
                        "span", {"data-qa": "vacancy-serp__vacancy-compensation"}
                    )
                    parsed_salary = _salary_parser(salary.text)
                    vacancy = _vacancy(
                        title=info.text,
                        url=info.get("href").split("?")[0],
                        min_salary=parsed_salary["min_salary"],
                        max_salary=parsed_salary["max_salary"],
                        currency=parsed_salary["currency"],
                    )
                except:
                    vacancy = _vacancy(
                        title=info.text,
                        url=info.get("href").split("?")[0],
                    )
                try:
                    self.mongo_collection.insert_one(vacancy)
                except DKE:
                    print(f"Vacancy with id: {vacancy['_id']} already in db")


def _unicode_to_int(salary: str) -> int:
    return int("".join([i for i in salary if i != "\u202f"]))


def _vacancy(title, url, min_salary=None, max_salary=None, currency=None) -> Dict:
    return {
        "_id": int(
            url.split("/")[-1]
        ),  # В самом урле содержится уникальный id, если бы использовалось несколько сайтов, то можно было бы брать hash от названия сайта и этого id
        "name": title,
        "url": url,
        "min_salary": min_salary,
        "max_salary": max_salary,
        "currency": currency,
    }


def _salary_parser(salary: str) -> Dict:
    splited_salary = salary.split(" ")
    if splited_salary[1] == "–":
        return {
            "min_salary": _unicode_to_int(splited_salary[0]),
            "max_salary": _unicode_to_int(splited_salary[2]),
            "currency": splited_salary[3],
        }
    elif splited_salary[0] == "от":
        return {
            "min_salary": _unicode_to_int(splited_salary[1]),
            "max_salary": None,
            "currency": splited_salary[2],
        }
    elif splited_salary[0] == "до":
        return {
            "min_salary": None,
            "max_salary": _unicode_to_int(splited_salary[1]),
            "currency": splited_salary[2],
        }
