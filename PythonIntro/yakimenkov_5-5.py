src = [2, 2, 2, 7, 23, 1, 44, 44, 3, 2, 10, 7, 4, 11]

src_dict = {}

for num in src:
    if src_dict.get(num) == None:
        src_dict[num] = 1
    else:
        src_dict[num] += 1

result = [key for key, value in src_dict.items() if value == 1]
print(result)
