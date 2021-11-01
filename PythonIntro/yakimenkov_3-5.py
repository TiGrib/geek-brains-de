from random import choice

nouns = ["автомобиль", "лес", "огонь", "город", "дом"]
adverbs = ["сегодня", "вчера", "завтра", "позавчера", "ночью"]
adjectives = ["веселый", "яркий", "зеленый", "утопичный", "мягкий"]


def get_jokes(num_of_jokes: int):
    return [f"{choice(nouns)} {choice(adverbs)} {choice(adjectives)}" for num in range(num_of_jokes)]

print(get_jokes(4))