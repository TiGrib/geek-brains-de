def type_logger(func):
    def wrapper(*args):
        return [f"{arg}: {type(arg)}" for arg in args]
    return wrapper

@type_logger
def cube(x):
    return x ** 3

@type_logger
def power(x, y):
    return x ** y


if __name__ == "__main__":
    a = cube(5)
    print(a)
    b = power(3, 5)
    print(b)