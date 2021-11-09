def odd_to_number(number: int):
    return (num for num in range(1, number+1, 2))


num_gener = odd_to_number(15)

print(next(num_gener))
print(next(num_gener))
print(next(num_gener))
print(next(num_gener))
print(next(num_gener))
print(next(num_gener))
print(next(num_gener))
print(next(num_gener))
print(next(num_gener))