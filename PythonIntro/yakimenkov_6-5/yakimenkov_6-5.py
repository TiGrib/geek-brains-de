import json

def users_hobby_zipper(user_file_path: str, hobby_file_path: str, output_file_path: str
    ):
    output = {}
    id = 0
    with open(user_file_path, "r") as users_csv, open(hobby_file_path, "r") as hobby_csv:
        for line in users_csv:
            first_name, second_name, father_name = line[:-1].split(',')
            hobby_line = hobby_csv.readline()
            if hobby_line == "":
                hobbies = None
            else:
                hobbies = hobby_line[:-1].split(",")

            output[id] = {
                "first_name": first_name,
                "second_name": second_name,
                "father_name": father_name,
                "hobbies_list": hobbies
            }
            id += 1
        
    with open(output_file_path, "w") as output_file:
        output_file.write(json.dumps(output))


if __name__ == "__main__":
    """
    Так как задание предпологает созадние чего-то типо таблички пользователей, но при это предлогается хранить все в словаре, на мой взгляд лучшем вариантом будет джейсон с ключом id
    """
    user_path = input("users_path=")
    hobby_path = input("hobby_path=")
    output_path = input("output_path=") 
    users_hobby_zipper(user_path, hobby_path, output_path)