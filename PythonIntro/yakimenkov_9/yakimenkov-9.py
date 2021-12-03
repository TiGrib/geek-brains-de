import collections


class TrafficLight:
    __color: str 



class Road:
    _lenght: int
    _width: int

    def __init__(self, lenght: int, width: int):
        self._lenght = lenght
        self._width = width    

    def asphalt_mass(self, depth: int, mass_per_m: int) -> int:
        """
        depth: глубина в см
        mass_per_m: масса на 1 кв метр в кг и глубину 1 см
        return: масса в тоннах
        """
        return self._lenght * self._width * depth * mass_per_m / 1000


new_road = Road(20, 5000)
print(new_road.asphalt_mass(5, 25))


class Worker:
    name: str
    surname: str
    position: str
    _income: dict()

    def __init__(self, name: str, surname: str, position: str, wage: int, bonus: int):
        self.name = name
        self.surname = surname
        self.position = position
        self._income = {"wage": wage, "bonus": bonus}


class Position(Worker):

    def __init__(self, name: str, surname: str, position: str, wage: int, bonus: int):
        super().__init__(name, surname, position, wage, bonus)

    def get_full_name(self) -> str:
        return f"{self.name} {self.surname}"

    def get_total_income(self) -> int:
        return self._income["wage"] + self._income["bonus"]


new_worker = Position("K", "K", "Top", 100, 10)
print(new_worker.get_full_name())
print(new_worker.get_total_income())


class Car:
    speed: int
    color: str
    name: str
    is_polise: bool

    def __init__(self, speed: int, color: str, name: str, is_polise: bool = False):
        self.name = name
        self.color = color
        self.speed = speed
        self.is_polise = is_polise

    def go(self):
        return f"{self.name} is going"

    def stop(self):
        return f"{self.name} stoped"

    def turn(self, direction: str):
        return f"{self.name} turn {direction}"

    def show_speed(self):
        return f"current speed {self.speed}"



class TownCar(Car):

    def __init__(self, speed: int, color: str, name: str, is_polise: bool = False):
        super().__init__(speed, color, name, is_polise=is_polise)
    
    def show_speed(self):
        if self.speed > 60:
            return "Speed limit"
        else:
            return super().show_speed()


class SportCar(Car):
    
    def __init__(self, speed: int, color: str, name: str, is_polise: bool = False):
        super().__init__(speed, color, name, is_polise=is_polise)


class WorkCar(Car):
    def __init__(self, speed: int, color: str, name: str, is_polise: bool = False):
        super().__init__(speed, color, name, is_polise=is_polise)
    
    def show_speed(self):
        if self.speed > 60:
            return "Speed limit"
        else:
            return super().show_speed()

class PoliceCar(Car):
    def __init__(self, speed: int, color: str, name: str, is_polise: bool = True):
        super().__init__(speed, color, name, is_polise=is_polise)


town_car = TownCar(61, "red", "town_car")
sport_car = SportCar(100, "blue", "sport_car")
work_car = WorkCar(30, "yellow", "work_car")
police_car = PoliceCar(40, "white", "police_car")

cars = [town_car, sport_car, work_car, police_car]

for car in cars:

    print(" ".join(f"{key}: {value}" for key, value in vars(car).items()))
    print(car.go())
    print(car.turn("right"))
    print(car.show_speed())
    print(car.stop())



class Stationery:
    def __init__(self, title: str):
        self.title = title
    
    def draw():
        return print(f"Запуск отрисовки")


class Pen(Stationery):
    def __init__(self, title: str):
        super().__init__(title)

    def draw(self):
        return print(f"Запуск отрисовки {self.title}")

class Pencil(Stationery):
    def __init__(self, title: str):
        super().__init__(title) 

    def draw(self):
        return print(f"Запуск отрисовки {self.title}")  

class Handle(Stationery):
    def __init__(self, title: str):
        super().__init__(title)

    def draw(self):
        return print(f"Запуск отрисовки {self.title}")


pen = Pen("pen")
pen.draw()
pencil = Pencil("pencil")
pencil.draw()
handle = Handle("handle")
handle.draw()