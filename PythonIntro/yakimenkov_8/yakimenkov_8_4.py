def  val_check(val_func):
    def _val_check(func):
        def wrapper(arg):
            if val_func(arg) is not True:
                raise ValueError
            else:
                return func(arg)
        return wrapper
    return _val_check


@val_check(lambda x: x > 0)
def calc_cube(x):
    return x ** 3


a = calc_cube(5)
print(a)
b = calc_cube(-5)
print(b)
