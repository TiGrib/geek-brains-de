def thesaurus_adv(*args):
    thesaurus = {}
    for arg in args:
        first_name, second_name = arg.split(" ")
        if thesaurus.get(second_name[0]) == None:
            thesaurus[second_name[0]] = {
                first_name[0]: [arg]
            }
        else:
            if thesaurus[second_name[0]].get(first_name[0]) == None:
                thesaurus[second_name[0]][first_name[0]] = [arg]
            else:
                thesaurus[second_name[0]][first_name[0]].append(arg)
    return thesaurus

thesaurus = thesaurus_adv("Иван Сергеев", "Инна Серова", "Петр Алексеев", "Илья Иванов", "Анна Савельева")

