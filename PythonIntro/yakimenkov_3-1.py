translate_dict = {
    "one": "один",
    "two": "два",
    "three": "три",
    "four": "четыре",
    "five": "пять",
    "six": "шесть",
    "seven": "семь",
    "eight": "восемь",
    "nine": "девять",
    "ten": "десять",
}


def num_translate_adv(number: str):
    if number[0].isupper():
        return translate_dict.get(number.lower()).capitalize()
    else:
        return translate_dict.get(number.lower())

print(num_translate_adv("One"))
print(num_translate_adv("four"))
print(num_translate_adv("our"))