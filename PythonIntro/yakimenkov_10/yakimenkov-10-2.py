from abc import ABC, abstractmethod

class Clothes(ABC):

    def __init__(self, name: str) -> None:
        self.name = name

    @abstractmethod
    def cloth_consumption(self):
        pass


class Coat(Clothes):
    def __init__(self, name: str, volume: float) -> None:
        super().__init__(name)
        self.volume = volume

    @property
    def cloth_consumption(self):
        return self.volume/6.5 + 0.5


class Costume(Clothes):
    def __init__(self, name: str, height: float) -> None:
        super().__init__(name)
        self.height = height
    
    @property
    def cloth_consumption(self):
        return 2*self.height + 0.3



coat_1 = Coat("new_coat", 10)
costume_1 = Costume("first_cotume", 1)
costume_2 = Costume("second_cotume", 1.5)
print(coat_1.cloth_consumption + costume_1.cloth_consumption + costume_2.cloth_consumption)