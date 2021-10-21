odd_cube = [x ** 3 for x in range(1, 101) if x % 2 == 1]

sum_of_7 = 0
for number in odd_cube:

    sum_of_digs = 0
    while number != 0:
        sum_of_digs += number % 10
        number = number // 10

    if sum_of_digs % 7 == 0:
        sum_of_7 += sum_of_digs

print(sum_of_7)

# Не очень понятен момент с "не создавая новый список". Если добавлять 17 в цикле, при этом не будет создаваться нвоый список.

sum_of_7_plus_17 = 0
for number in odd_cube:
    number += 17
    sum_of_digs = 0
    while number != 0:
        sum_of_digs += number % 10
        number = number // 10

    if sum_of_digs % 7 == 0:
        sum_of_7_plus_17 += sum_of_digs

print(sum_of_7_plus_17)
