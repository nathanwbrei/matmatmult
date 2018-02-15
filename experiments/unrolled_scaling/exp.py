
### Experiment 4 ###
# Scaling study
#   m = 256, k = 256 (ring buffer of 4), n = 28

# Next thing to try is unrolling the n loop! => 256x256x256
# Then go back and try tilesparse with fringes

from random import randint, seed

from cursors.matrix import Matrix
from components.parameters import Parameters
from experiments.harness import *
from generators.dxsp_tiled import make_alg as make_mn_loop


class UnrolledScalingExperiment:

    name = "exp_unrolled_scaling"
    reldir = "experiments/unrolled_scaling/generated/"
    text = "UnrolledSparse scaling experiment"
    executable = name
    script = name + ".sh"


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
        param.nnz = dnnz * (x+1)
        params.append(param)
    return params



def make_test(p) -> str:

    code = f"""
    /***** Testing {p.name} *****/

    C_expected.clear();
    C_actual.clear();\n"""

    x = p.iteration * p.dnnz + 1  # The 1 is needed because otherwise there will
                                  # be a zero entry which throws off the vbcsc representation
    for ri,ci in p.pattern_updates:
        code += f"    B_dense.set({ri},{ci},{x});\n"
        x += 1

    code += f"""
    to_block_csc(B_dense, B, {p.bk}, {p.bn});
    // printf("Created B=\\n");
    // B.show();

    gemm(A, B, C_expected);
    {p.name}(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        {p.name}(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("{p.name}, {p.m}, {p.n}, {p.k}, {p.bm}, {p.bn}, {p.bk}, {p.nnz}, %lf\\n", microsecs(start,end)/3000.0);
    """
    return code

#def make(m=16, n=16, k=6, bm=8, bn=16, bk=3, iters=10, dnnz=100) -> str:
def make(m=128, n=28, k=128, bm=8, bn=28, bk=4, iters=35*2, dnnz=50) -> str:

    params = make_param_space(m,n,k,bm,bn,bk,iters,dnnz)
    harness = HarnessBuilder(make_mn_loop, params)
    harness.make_test = make_test
    harness.imports = """
#include <stdio.h>
#include "../include/timing.h"
#include "../include/matrixops.hpp"
#include "baseline.hpp"
"""

    harness.setup = f"""
    struct timespec start, end;
    DenseMatrix A({m},{k},{m});
    DenseMatrix C_expected({m},{n},{m});
    DenseMatrix C_actual({m},{n},{m});
    SparseMatrix B({k},{n});
    DenseMatrix B_dense({k},{n},{k});

    fill(A, 1, 2);
    fill(B_dense, 7, 9);
    gemm(A, B_dense, C_expected);
    baseline_gemm(A.values, B_dense.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        baseline_gemm(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("baseline, {m}, {n}, {k}, {bm}, {bn}, {bk}, {n*k}, %lf\\n", microsecs(start,end)/3000.0);
    B_dense.clear();
    """
    return harness.make("exp4/exp4.cpp")

