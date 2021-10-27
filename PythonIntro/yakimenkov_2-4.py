position_name_list = ['инженер-конструктор Игорь', 'главный бухгалтер МАРИНА', 'токарь высшего разряда нИКОЛАй', 'директор аэлита']

for value in position_name_list:
    name = value.split(" ")[-1]
    print(f"Привет, {name.capitalize()}!")