import json
import os
import pathlib
from typing import Dict

import requests

DIR_PATH = pathlib.Path(__file__).parent
BASE_API_URL = "https://api.github.com/"


def get_user_repos(user: str) -> Dict:
    response = requests.get(url=BASE_API_URL + f"users/{user}/repos")
    return response.json()


if __name__ == "__main__":
    user_name = "octocat"

    repos_data = get_user_repos(user_name)

    with open(f"{os.path.join(DIR_PATH, user_name)}_repos.json", "w") as file:
        file.write(json.dumps(repos_data, indent=3))
