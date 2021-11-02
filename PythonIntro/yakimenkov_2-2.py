raw_sentence = [
    "в",
    "5",
    "часов",
    "17",
    "минут",
    "температура",
    "воздуха",
    "была",
    "+5",
    "градусов",
]

range = len(raw_sentence)
i = 0

while i < range:
    if raw_sentence[i][-1].isdigit():
        if raw_sentence[i].startswith(("+", "-")) and len(raw_sentence[i][1:]) == 1:
            raw_sentence[i] = f"{raw_sentence[i][0]}0{raw_sentence[i][1]}"
        if len(raw_sentence[i]) == 1:
            raw_sentence[i] = f"0{raw_sentence[i]}"
        raw_sentence.insert(i + 1, '"')
        raw_sentence.insert(i, '"')
        range += 2
        i += 2
    else:
        i += 1
        continue

print(raw_sentence)


print(f"{' '.join(raw_sentence)}")
