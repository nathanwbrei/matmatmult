
### Experiment 4 ###
# Scaling study
#   m = 256, k = 256 (ring buffer of 4), n = 28

# Next thing to try is unrolling the n loop! => 256x256x256
# Then go back and try tilesparse with fringes


from codegen.harness import *

from algorithms.parameters import *
from algorithms.tiledsparse import make_mn_loop

from random import randint, seed



def make_urn(k:int = 256, n:int = 28):
    return [(ri,ci) for ri in range(k) for ci in range(n)]

def sample_no_replacement(urn, samples=128):
    return [urn.pop(randint(0,len(urn)-1)) for x in range(samples)]

def make_param_space(m=16, n=16, k=6, bm=8, bn=16, bk=3, iters=3, dnnz=10):
    params = []
    seed(22)
    urn = make_urn(k, n)
    pattern = Matrix.full(k,n,False)
    for x in range(iters):

        pattern_updates = sample_no_replacement(urn, dnnz)
        for sample in pattern_updates:
            pattern[sample[0], sample[1]] = True

        param = BlockParametersFromPattern(f"scalability_full_{(x+1)*dnnz}_nnzs",
                                           m, n, k, bm, bn, bk,
                                           Matrix(pattern))

        param.pattern_updates = pattern_updates
        param.iteration = x
        param.dnnz = dnnz
        params.append(param)
    return params



def make_test(p) -> str:

    code = f"""
    /***** Testing {p.name} *****/

    C_expected.clear();
    C_actual.clear();\n"""

    x = p.iteration * p.dnnz
    for ri,ci in p.pattern_updates:
        code += f"    B_dense.set({ri},{ci},{x});\n"
        x += 1

    code += f"""
    to_block_csc(B_dense, B, {p.bk}, {p.bn});
    printf("Created B=\\n");
    B.show();

    gemm(A, B, C_expected);
    {p.name}(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        {p.name}(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("{p.name}, %lf\\n",
        1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));
    """
    return code

#def make(m=128, n=28, k=128, bm=8, bn=28, bk=4) -> str:
def make(m=16, n=16, k=6, bm=8, bn=16, bk=3, iters=3, dnnz=10) -> str:

    params = make_param_space(m,n,k,bm,bn,bk,iters,dnnz)
    harness = HarnessBuilder(make_mn_loop, params)
    harness.make_test = make_test
    harness.imports = """
#include<stdio.h>
#include<time.h>
#include "../include/matrixops.hpp"
"""

    harness.setup = f"""
    struct timespec start, end;
    DenseMatrix A({m},{k},{m});
    DenseMatrix C_expected({m},{n},{m});
    DenseMatrix C_actual({m},{n},{m});
    SparseMatrix B({k},{n});
    DenseMatrix B_dense({k},{n},{k});

    fill(A, 1, 2);
    """
    return harness.make("exp4/exp4.cpp")


#make()



