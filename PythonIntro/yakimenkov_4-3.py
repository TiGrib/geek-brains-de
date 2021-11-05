import requests
import xml.etree.ElementTree as ET

from datetime import datetime


def currency_rates(cur_code: str):
    response  = requests.get(
        url="http://www.cbr.ru/scripts/XML_daily.asp"
    )
    date_str = "-".join(response.headers["Date"].split()[1:4])
    date = datetime.strptime(date_str, "%d-%b-%Y").date()
    xml_response = ET.fromstring(response.text)

    for currency in xml_response:
        if currency.find("CharCode").text == cur_code.upper():
            return currency.find("Value").text, date


if __name__ == "__main__":
    print(currency_rates("usd"))
    print(currency_rates("eur"))