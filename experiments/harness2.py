from typing import List
from codegen.ccode import make_cfunc

class HarnessBuilder:

    harness_template = """
{imports} \n
{algdefs} \n
{tests} \n
int main(int argc, char** argv) {{
{main}
    return 0;
}}
"""

    imports = """
#include <iostream>
#include <memory>

#include "SparseMatrix.hpp"
#include "DenseMatrix.hpp"
#include "timing.h"
"""

    def make_test(self, p):

        if p.mtx_format == "csc":
            format_matrix = "auto b = to_csc(db);"

        elif p.mtx_format == "bcsc":
            format_matrix = "auto b = to_bcsc(db, bk, bn);"
            
        else:
            raise Exception("Need to specify an actual matrix format!")


        return f"""
void test_{p.output_funcname}() {{
    const int m = {p.m};
    const int n = {p.n};
    const int k = {p.k};
    const int bk = {p.bk};
    const int bn = {p.bn};
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("{p.mtx_filename}");
    {format_matrix}

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    {p.output_funcname}(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        {p.output_funcname}(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "{p.output_funcname}, " << microsecs(start,end)/3000.0 << std::endl;
}}

"""

    params = []

    def add_test(self, param):
        self.params.append(param)


    def make(self, cpp_filename: str = None) -> str:

        algdefs = ""
        tests = ""
        main = ""

        for param in self.params:

            # Generate C/asm for each alg variant
            alg = param.make()
            if alg is not None:
                alg_text = make_cfunc(param.output_funcname, alg)
                algdefs += alg_text + "\n"

            # Generate the corresponding test harness
            tests += self.make_test(param) + "\n"
            main += "    test_" + param.output_funcname + "();\n"

        result = self.harness_template.format(
            imports = self.imports,
            algdefs = algdefs,
            tests = tests,
            main = main)

        if cpp_filename is not None:
            with open(cpp_filename,"w") as f:
                f.write(result)

        return result




