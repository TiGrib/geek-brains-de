try:
    duration = int(input("duration = "))
except ValueError:
    print("Duration in seconds, pls")

output = ""

days = duration // 86400
if days:
    output += f"{days} days "
    duration = duration % 86400

hours = duration // 3600
if hours or days:
    output += f"{hours} hours "
    duration = duration % 3600

minutes = duration // 60
if minutes or (hours or days):
    output += f"{minutes} min "

seconds = duration % 60
output += f"{seconds} sec"

print(output)
