from typing import List


class Matrix:
    def __init__(self, raw_matrix):
        self.matrix_rows = []
        for row in raw_matrix:
            self.matrix_rows.append(row)

    def __str__(self):
        output = str()
        for row in self.matrix_rows:
            output += f"| { ' '.join(str(el) for el in row)} |\n"
        return output

    def __add__(self, other):
        sum = []
        for row_i in range(len(self.matrix_rows)):
            row_sum = []
            for el_i in range(len(self.matrix_rows[row_i])):
                row_sum.append(self.matrix_rows[row_i][el_i] + other.matrix_rows[row_i][el_i])
            sum.append(row_sum)
        return Matrix(sum)


mx1 = Matrix([[30, 20], [10, 40]])
mx2 = Matrix([[40, 10], [100, 10]])
print(mx1 + mx2)