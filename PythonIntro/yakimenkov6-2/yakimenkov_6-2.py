def log_parser(file_path: str):
    log_list = []
    with open(file_path, "r", encoding="utf-8") as log_file:
        for line in log_file:
            slpited_line = line.split()
            log_list.append((slpited_line[0], slpited_line[5][1:], slpited_line[6]))
    return log_list


def detect_spamer(file_path: str):
    with open(file_path, "r", encoding="utf-8") as log_file:
        max_requests = 0
        spamer_ip = ""
        users_dict = {}
        users_dict[spamer_ip] = max_requests
        for line in log_file:
            ip = line.split()[0]
            if users_dict.get(ip):
                users_dict[ip] += 1
                if users_dict.get(ip) > users_dict.get(spamer_ip):
                    spamer_ip = ip
            else:
                users_dict[ip] = 1
    return spamer_ip, users_dict[spamer_ip]


if __name__ == "__main__":
    spamer_ip = detect_spamer("nginx_logs.txt")
    print(detect_spamer("nginx_logs.txt"))