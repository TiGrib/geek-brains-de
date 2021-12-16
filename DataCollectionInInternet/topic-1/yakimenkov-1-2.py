import os
import json
import pathlib
import requests

DIR_PATH = pathlib.Path(__file__).parent

YOUR_BOT_NAME = "name"
YOUR_BOT_PASS = "pass"


class WikiApiClient:

    def __init__(self) -> None:
        self.session = requests.Session()
        self.base_url = "https://www.mediawiki.org/w/api.php"
        self.bot_name = YOUR_BOT_NAME
        self.bot_password = YOUR_BOT_PASS
        self.token = self.get_acces_token()

    def get_acces_token(self):
        params = {
            "action": "query",
            "meta": "tokens",
            "type": "login",
            "format": "json",
        }
        response = self.session.get(url=self.base_url, params=params)
        response.raise_for_status()

        return response.json()["query"]["tokens"]["logintoken"]

    def login(self):
        params = {
            "action": "login",
            "lgname": self.bot_name,
            "lgpassword": self.bot_password,
            "lgtoken": self.token,
            "format": "json",
        }
        
        response = self.session.post(url=self.base_url, data=params)
        response.raise_for_status()

        return response
 

if __name__ == "__main__":
    api_client = WikiApiClient()
    login = api_client.login()

    with open(f"{os.path.join(DIR_PATH, 'api-response.json')}", "w") as file:
        file.write(
            json.dumps({"headers": str(login.headers), "body": login.json()}, indent=3)
            )
