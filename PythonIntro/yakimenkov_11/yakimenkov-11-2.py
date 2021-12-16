
class CustomException(Exception):
    def __call__(self):
        return "На 0 делить нельзя"


a = input("Введите делимое ")
b = input("Введите делитель ")

try:
    a, b = int(a), int(b)
    if b == 0:
        raise CustomException()
    res = a / b 
except CustomException as err:
    print(err())
else:
    print(f"Результат деления {res}")