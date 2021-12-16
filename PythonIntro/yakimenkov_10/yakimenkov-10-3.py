
class Cell:
    def __init__(self, nucleos: int) -> None:
        self.nucleos = nucleos
    
    def __add__(self, other):
        return Cell(self.nucleos + other.nucleos)

    def __sub__(self, other):
        # Странное описание в задании имеется ввиду разность между первой и второй больше нуля?
        if self.nucleos >= other.nucleos:
            return Cell(self.nucleos - other.nucleos)
        else:
            return "Вычитание невозможно, количество ячеек второй клетки больше первой"

    def __mul__(self, other):
        return Cell(self.nucleos * other.nucleos)

    def __floordiv__(self, other):
        return Cell(self.nucleos // other.nucleos)

    def __truediv__(self, other):
        return self.__floordiv__(other)

    def make_order(self, num: int):
        return f"{'*'*num}\n"*(self.nucleos // num ) + "*"*(self.nucleos % num) 


cel_1 = Cell(12)

print(cel_1.make_order(5))