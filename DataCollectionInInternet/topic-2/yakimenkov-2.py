import requests

from pprint import pprint
from bs4 import BeautifulSoup as bs


def hh_get_vacancies(name: str, page_num: int):
    main_url = "https://hh.ru/"

    params = {
        "text": name,
        "page": page_num,
    }
    headers = {"User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36"}
    response = requests.get(main_url + "search/vacancy", params=params, headers=headers)
    return bs(response.text, 'html.parser')


if __name__ == "__main__":
    name = "python"
    pages = 2
    vac_list = []
    for page_num in range(1, pages+1):
        print(page_num)
        vacancies = hh_get_vacancies(name, page_num).find_all("div", {"class": "vacancy-serp-item"})
        for vac in vacancies:
            info = vac.find("a", {"data-qa": "vacancy-serp__vacancy-title"})
            # print(info.text)
            # print(info.get("href").split("?")[0])
            try:
                salary = vac.find("span", {"data-qa": "vacancy-serp__vacancy-compensation"})
                splited_salary = salary.text.split(" ")
                if splited_salary[1] == "–":
                    print(splited_salary)
                    print(info.text)
                    print(info.get("href").split("?")[0])
                    print("="*120)
                    print(splited_salary[0])
                    print(int(splited_salary[2]))
                    # print(splited_salary[3])
                    # print(splited_salary)
                    # print(
                    #     {"name": info.text,
                    #      "url": info.get("href").split("?")[0],
                    #      "min_salary": int(splited_salary[0]),
                    #      "max_salary": int(splited_salary[2]),
                    #      "currency": splited_salary[3]}
                    #     )
                # elif splited_salary[0] == "от":
                #     print(salary.text)
                # elif splited_salary[0] == "до":
                #     print(salary.text)

            except:
                continue
