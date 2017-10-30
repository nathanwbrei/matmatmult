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
    {decls}
    {body}
    }}

    """

    test_template = """


        /******* {test_name} *******/

        reset(&C_actual);
        {test_name}(A.values,B.values,C_actual.values);
        assert_equal(&C_expected, &C_actual);

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
        self.vars : List[Matrix] = []

    def add_test(self, test_name: str) -> None:
        self.test_names.append(test_name)

    def make_imports(self) -> str:
        return self.imports_template

    def make_decls(self) -> str:
        return "\n    ".join(m.gen for m in self.vars)


    def make(self) -> str:

        result = self.make_imports()

        for param in self.params:
            test_asm = self.alg_builder(param)
            test_c = make_cfunc(param.description, test_asm, True)
        result += test_c + "\n\n"


        for test_name in self.test_names:
            body += self.test_template.format(test_name=test_name)

        result.self.main_template.format(body=body)
        result += main_code
        return result



class BlockSparseMatrix():

    def __init__(self, name:str, rows:int, cols:int, 
                 pattern: List[List[bool]],
                 values: List[float] = None,
                 nnz: int = None):
        self.name = name
        self.rows = rows
        self.cols = cols
        self.block_rows = len(pattern)
        self.block_cols = len(pattern[0])
        self.pattern = pattern

        if (nnz is not None):
            self.nnz = nnz
        elif (values is not None):
            self.nnz = len(values)
        else:
            pattern_nnzs = sum(sum(r) for r in pattern)
            self.nnz = pattern_nnzs * rows//self.block_rows * cols//self.block_cols

        if (values is None):
            self.values = list(range(10,self.nnz+10))
        else:
            self.values = values


    def gen(self):
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
                   nnz=self.nnz)
        return output

    def dense(self):
        dense_values = [[0] * self.cols for r in range(self.rows)]
        x = 0
        for j in range(self.cols):
            for i in range(self.rows):
                if self.pattern[i%self.block_rows][j%self.block_cols]:
                    dense_values[i][j] = self.values[x]
                    x += 1
        return DenseMatrix(self.name, values=dense_values)

    def __str__(self):
        return str(self.dense())



class DenseMatrix():
    def __init__(self, name:str, rows:int = None, cols:int = None, 
                 values: List[List[float]] = None):

        self.name = name
        if values is None:
            self.rows = rows
            self.cols = cols
            self.values = [[x+y for x in range(0,rows*cols,rows)]
                                for y in range(rows)]
        else:
            self.rows = len(values)
            self.cols = len(values[0])
            self.values = values

    def gen(self):
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

    def __str__(self):
        return "\n".join(str(r) for r in self.values)




