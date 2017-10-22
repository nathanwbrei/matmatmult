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

