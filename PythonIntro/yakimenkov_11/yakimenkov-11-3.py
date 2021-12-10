class CustomException(Exception):
    def __init__(self, text: str):
        self.text = text



nums = []
while True:
    input_data = input("Введите число или stop ")
    if input_data == "stop":
        print(f"Итоговый список: {nums}")
        break
    try:
        num = int(input_data)
    except:
        raise CustomException("Введено не число")
    else:
        nums.append(num)