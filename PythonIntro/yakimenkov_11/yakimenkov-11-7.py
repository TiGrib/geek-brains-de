class ComplexNumber:
    def __init__(self, real: float = 0, img: float = 0):
        self.real = real
        self.img = img

    def __add__(self, other):
        return ComplexNumber(self.real+other.real, self.img+other.img)

    def __mul__(self, other):
        return ComplexNumber(self.real*other.real-self.img*other.img, self.img*other.real+self.real*other.img)


a = ComplexNumber(img=1)
b = ComplexNumber(img=1)

print(f"i*i должно равняться -1, в нашем классе: {(a*b).real}")