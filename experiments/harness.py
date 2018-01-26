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
#include <stdio.h>
#include "../../include/timing.h"
#include "../../include/matrixops.hpp"

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
    """.format(test_name=p.name)



    def make(self, dest_dir: str, exp_name) -> str:

        algdefs = ""
        tests = ""

        for param in self.params:
            # Generate asm for each alg variant, wrapped in a C fn
            alg_asm = self.alg_builder(param)
            alg_c = make_cfunc(param.name, alg_asm)
            algdefs += alg_c + "\n\n"

            # Generate the code which calls this
            tests += self.make_test(param) + "\n\n"

            # Generate the MTX file
            if (param.mtx_filename is not None):
                pattern = param.B.pattern()
                filename = dest_dir + "/generated/" + param.name + ".mtx"
                pattern.store(filename)


        result = self.harness_template.format(
            imports = self.imports,
            algdefs = algdefs,
            setup = self.setup,
            tests = tests,
            teardown = self.teardown)

        if dest_dir is not None:
            dest = dest_dir + "/generated/" + exp_name + ".cpp"
            with open(dest,"w") as f:
                f.write(result)

        return result




