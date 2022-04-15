from typing import Dict
import requests

from pprint import pprint
from bs4 import BeautifulSoup as bs

USER_AGENT = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36"
HH_URL = "https://hh.ru/"


def hh_get_vacancies_page(name: str, page_num: int):
    params = {
        "text": name,
        "page": page_num,
    }
    headers = {"User-Agent": USER_AGENT}
    response = requests.get(HH_URL + "search/vacancy", params=params, headers=headers)
    return bs(response.text, "html.parser")


def unicode_to_int(salary: str) -> int:
    return int("".join([i for i in salary if i != u"\u202f"]))


def vacancy(name, url, min_salary=None, max_salary=None, currency=None) -> Dict:
    return {
        "name": name,
        "url": url,
        "min_salary": min_salary,
        "max_salary": max_salary,
        "currency": currency,
    }


if __name__ == "__main__":
    name = "python"
    pages = 50
    vac_list = []
    for page_num in range(1, pages + 1):
        page = hh_get_vacancies_page(name, page_num)
        vacancies = page.find_all("div", {"class": "vacancy-serp-item"})
        for vac in vacancies:
            info = vac.find("a", {"data-qa": "vacancy-serp__vacancy-title"})
            try:
                salary = vac.find(
                    "span", {"data-qa": "vacancy-serp__vacancy-compensation"}
                )
                splited_salary = salary.text.split(" ")
                if splited_salary[1] == "–":
                    vac_list.append(
                        vacancy(
                            info.text,
                            info.get("href").split("?")[0],
                            min_salary=unicode_to_int(splited_salary[0]),
                            max_salary=unicode_to_int(splited_salary[2]),
                            currency=splited_salary[3],
                        )
                    )
                elif splited_salary[0] == "от":
                    vac_list.append(
                        vacancy(
                            info.text,
                            info.get("href").split("?")[0],
                            min_salary=unicode_to_int(splited_salary[1]),
                            currency=splited_salary[2],
                        )
                    )

                elif splited_salary[0] == "до":
                    vac_list.append(
                        vacancy(
                            info.text,
                            info.get("href").split("?")[0],
                            max_salary=unicode_to_int(splited_salary[1]),
                            currency=splited_salary[2],
                        )
                    )
            except:
                vac_list.append(
                    vacancy(
                        info.text,
                        info.get("href").split("?")[0],
                    )
                )
                continue
