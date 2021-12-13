from typing import List


class Storage:
    def __init__(self, name: str):
        self.name = name
        self.storage = {}
    
    def add_product(self, product):
        if product.__class__.__name__.lower() in self.storage:
            self.storage[product.__class__.__name__.lower()].append(product)
        else:
            self.storage[product.__class__.__name__.lower()] = [product]

    def add_products(self, products: List):
        for product in products:
            self.add_product(product)

    def product_to_departure(self, product: str, product_index: int, dep_name: str):
        try:
            print(f"{self.storage[product].pop(product_index).name} going to {dep_name}")
        except IndexError:
            print(f"Продукт отсутсвует на складе!")

class OfficeEquip:
    def __init__(self, name: str, weight: int, price: float, wb: bool):
        self.name = name
        self.weight = weight
        self.price = price
        self.wb = wb


class Printer(OfficeEquip):
    def __init__(self, name: str, weight: int, price: float, wb: bool, laser: bool, catridge_size: int):
        super().__init__(name, weight, price, wb)
        self.laser = laser
        self.catridge_size = catridge_size


class Scaner(OfficeEquip):
    def __init__(self, name: str, weight: int, price: float, wb: bool, paper_size: str, max_resolution: str):
        super().__init__(name, weight, price, wb)
        self.paper_size = paper_size
        self.max_resolution = max_resolution


printer_1 = Printer("1_printer", 100, 1000.0, True, True, 500)
printer_2 = Printer("2_printer", 100, 1000.0, False, True, 500)
printer_3 = Printer("3_printer", 100, 500.0, False, True, 500)

scaner_1 = Scaner("1_scaner", 50, 500.0, True, "A4", "1000x500")
scaner_2 = Scaner("2_scaner", 50, 500.0, True, "A4", "500x500")
scaner_3 = Scaner("3_scaner", 50, 500.0, False, "A4", "500x500")

storage = Storage("main_storage")

storage.add_products([printer_1, printer_2, printer_3, scaner_1, scaner_2, scaner_3])

print(storage.storage)
print(f"Узнать количество принтеров или сканеров на складе можно с помощью len(): {len(storage.storage['printer'])}")
print(f"Можно вывести любой атрибут: {[scaner.name for scaner in storage.storage['scaner']]}")

storage.product_to_departure('scaner', 1, "IT")
