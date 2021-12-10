class Storage:
    def __init__(self, name: str):
        self.name = name
        self.storage = {}
    
    def add_product(self, product):
        if self.storage[product.__name__.lower()]:
            self.storage[product.__name__.lower()].append(product)
        else:
            self.storage[product.__name__.lower()] = [product]

    def product_to_departure(self, product: str, dep_name: str):
        print(f"{self.storage[product].pop()} going to {dep_name}")

class OfficeEquip:
    def __init__(self, name: str, weight: int, price: float):
        self.name = name
        self.weight = weight
        self.price = price

        
