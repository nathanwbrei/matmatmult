from typing import List
from codegen.ccode import make_cfunc

class HarnessBuilder:

    def __init__(self, alg_builder, params):
        self.alg_builder = alg_builder
        self.params = params


    harness_template = """
{imports} \n\n
{algdefs} \n\n
int main(int argc, char ** argv) {{
{setup} \n\n
{tests} \n\n
{teardown}
}}
"""

    imports = """
#include<stdio.h>
#include<time.h>
#include "../common/timing.h"
#include "../common/colmajor.h"
#include "../common/sparse.h"
"""

    setup = ""
    teardown = ""

    def make_test(p):
        return """


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
    """.format(test_name=p.description)



    def make(self) -> str:

        algdefs = ""
        tests = ""

        for param in self.params:
            # Generate asm for each alg variant, wrapped in a C fn
            alg_asm = self.alg_builder(param)
            alg_c = make_cfunc(param.description, alg_asm, True)
            algdefs += alg_c + "\n\n"

            # Generate the code which calls this
            tests += self.make_test(param) + "\n\n"

        return self.harness_template.format(
            imports = self.imports,
            algdefs = algdefs,
            setup = self.setup,
            tests = tests,
            teardown = self.teardown)




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




