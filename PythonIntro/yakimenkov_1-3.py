for number in range(1, 101):    
    if number % 10 == 1 and (number > 20 or number < 10):
        print(f"{number} процент")
    elif 2 <= number % 10 <= 4 and (number > 20 or number < 10):
        print(f"{number} процента")
    else:
        print(f"{number} процентов")