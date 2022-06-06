#!/usr/bin/env python

import sys
import re


for line in sys.stdin:
    line = line.strip()
    urls = re.findall(r"http\S*\b", line)
    if urls:
        for url in urls:
            print(f"{url}\t{1}")
            line = line.replace(url, "")          
    words = re.findall("[\w]+", line)

    for word in words:
        print(f"{word.lower()}\t{1}")