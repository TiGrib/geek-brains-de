
class Date:

    def __init__(self, date: str) -> None:
        self.raw_date = date
        self.data_parser(self.raw_date)

    @classmethod
    def data_parser(cls, raw_date):
        cls.day, cls.month, cls.year =  [int(el) for el in raw_date.split("-")]
        Date.data_validator(cls.day, cls.month, cls.year)

    @staticmethod
    def data_validator(day, month, year):
        assert 1 <= month <= 12
        if month== 2:
            if year % 4 == 0:
                assert 1 <= day <= 29
            else:
                assert 1 <= day <= 28
        elif month in [1, 3, 5, 7, 8, 10, 12]:
            assert 1 <= day <= 31
        else:
            assert 1 <= day <= 30
        

date = Date("29-02-2012")


print(date.day)
print(date.month)
print(date.year)