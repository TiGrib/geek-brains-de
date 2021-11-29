from abc import ABC
import re
import os

from pathlib import Path


def log_parser(line: str):
    try:
        return (
            re.match(r"(\d{1,3}\.){3}\d{1,3}|(\w{0,4}\:){4,7}\w{0,4}", line).group(0),
            re.search(r"\[.+\]", line).group(0),
            re.search(r"GET|POST|PUT|HEAD|DELETE|PATCH|OPTIONS", line).group(0),
            re.search(r"(/\w+)+\s", line).group(0)[:-1],
            *re.search(r"\d{3}\s{1}\d+", line).group(0).split(),
        )
    except AttributeError:
        print(f"Строка не подходящая по формату: {line}")


if __name__ == "__main__":
    log_path = os.path.join(Path(__file__).parent, "nginx_logs")
    with open(log_path, "r") as stream:
        for line in stream:
            log_parser(line)
