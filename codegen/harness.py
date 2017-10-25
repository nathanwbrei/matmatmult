from typing import List

class HarnessBuilder:

    imports_template = """
    #include<stdio.h>
    #include<time.h>
    #include "../common/timing.h"
    #include "../common/colmajor.h"
    #include "blocksparse.h"

    """

    main_template = """
    int main(int argc, char ** argv) {{
    {body}
    }}

    """

    test_template = """


        /******* {test_name} *******/

        {test_name}(A,B,C_actual);
        assert_equal(C_expected, C_actual);

        clock_t ticks_before = clock();
        uint64_t cycles_before = tsc();
        for (int i=0; i<1000; i++) {{
            {test_name}(A, B, C_actual);
        }}
        clock_t ticks_after = clock();
        uint64_t cycles_after = tsc();
        printf("{test_name}, %d, %d\\n",
          cycles_after - cycles_before,
          ticks_after - ticks_before);
    """


    def __init__(self):
        self.test_names: List[str] = []

    def add_test(self, test_name: str) -> None:
        self.test_names.append(test_name)

    def make_imports(self) -> str:
        return self.imports_template

    def make_main(self) -> str:

        body = ""
        for test_name in self.test_names:
            body += self.test_template.format(test_name=test_name)

        return self.main_template.format(body=body)



class BlockSparseMatrix():

    def __init__(self, name:str, rows:int, cols:int, 
                 pattern: List[List[bool]],
                 values: List[float]):
        self.name = name
        self.rows = rows
        self.cols = cols
        self.block_rows = len(pattern)
        self.block_cols = len(pattern[0])
        self.pattern = pattern
        self.values = values

    def make_csc(self):
        pattern_nnzs = sum(sum(r) for r in self.pattern)
        nnz = pattern_nnzs * self.rows/self.block_rows * self.cols/self.block_cols
        # TODO: This assumes pattern tiles perfectly
        output = """
            struct sparse_csc {name};
            {name}.rows = {rows};
            {name}.cols = {cols};
            {name}.nnz = {nnz};
            {name}.values = (double[]) {{{vals}}};
        """.format(name=self.name, 
                   rows=self.rows,
                   cols=self.cols,
                   vals=",".join(str(v) for v in self.values),
                   nnz=nnz)
        return output

    def dense(self):
        dense_values = [[0] * self.cols for r in range(self.rows)]
        x = 0
        for j in range(self.cols):
            for i in range(self.rows):
                if self.pattern[i%self.block_rows][j%self.block_cols]:
                    dense_values[i][j] = self.values[x]
                    x += 1
        return DenseMatrix(self.name, dense_values)


    def make_input(self):
        return f"*{self.name}";


class DenseMatrix():
    def __init__(self, name:str, values: List[List[float]]):
        self.name = name
        self.rows = len(values)
        self.cols = len(values[0])
        self.values = values

    def make_dense(self):
        colmajor = [str(self.values[i][j]) for j in range(self.cols)
                                           for i in range(self.rows)]
        output = """
            struct colmajor {name};
            {name}.rows = {rows};
            {name}.cols = {cols};
            {name}.values = (double[]) {{{vals}}};
        """.format(name=self.name, 
                   rows=self.rows,
                   cols=self.cols,
                   vals=",".join(colmajor))
        return output


    def make_input(self):
        return f"{self.name}->values";

    def reset(self):
        return f"    reset({self.name});"


    def __str__(self):
        return "\n".join(str(r) for r in self.values)





