from itertools import zip_longest


def klass_tutor_generator(tutors: list, klasses: list):
    if len(tutors) > len(klasses):
        return (pair for pair in zip_longest(tutors, klasses))
    else:
        return (pair for pair in zip(tutors, klasses))


if __name__ == "__main__":

    tutors = [
        "Иван",
        "Анастасия",
        "Петр",
        "Сергей",
        "Дмитрий",
        "Борис",
        "Елена",
        "Кирилл",
        "Станислав",
    ]
    klasses = ["9А", "7В", "9Б", "9В", "8Б", "10А", "10Б", "9А"]
    pair_gen = klass_tutor_generator(tutors, klasses)

    print(f"{type(pair_gen)=}")

    while True:
        print(next(pair_gen))
