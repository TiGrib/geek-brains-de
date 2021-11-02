prices = [57.8, 46.51, 97, 31.03, 16, 75.9, 34.65, 15.89, 64, 69.8]

# A
[print(f"{price // 1} руб {round(price % 1, 2)} коп") for price in prices]

# B
print(f"\n")
print(id(prices))
prices.sort()
print(prices)
print(id(prices))

#C
print(f"\n")
reversed_prices = sorted(prices, reverse=True)
print(reversed_prices)
print(id(reversed_prices))

#D
print(f"\n")
print(f"{sorted(prices)[:-6:-1]}")