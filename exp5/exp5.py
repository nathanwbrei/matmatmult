
### Experiment 5 ###

import random
from codegen.harness import *
from algorithms.generalsparse import make as make_alg
from algorithms.parameters import *


def random_pattern(nnz, k, n, seed):
    random.seed(seed)
    urn = [(ri,ci) for ri in range(k) for ci in range(n)]
    samples = [urn.pop(random.randint(0,len(urn)-1)) for x in range(nnz)]
    pattern = Matrix.full(k,n,False)
    for sample in samples:
        pattern[sample[0], sample[1]] = True
    return pattern

def defaults(nblocks=3, nnzs=10):
    bm = 8
    bn = 8
    bk = 8
    m = 8
    n = 8
    k = bk * nblocks
    patterns = [random_pattern(nnzs, bk, bn, i) for i in range(nblocks)]
    blocks = Matrix([[x] for x in range(nblocks)])
    params = BlockParameters("generalsparse_{m}x{n}x{k}_{nnzs}", m, n, k, bm, bn, bk, blocks, patterns)
    params.nblocks = nblocks
    params.nnzs = nnzs
    return params

def make_param_space():
    return [defaults(nblocks, nnzs) for nblocks in range(1,5)
                                    for nnzs in range(4,64,16)]

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


def make() -> str:

    params = make_param_space()
    m = params[0].m
    n = params[0].n  # Are supposed to be constant for all samples

    harness = HarnessBuilder(make_alg, params)
    harness.make_test = make_test
    harness.imports = """
#include <stdio.h>
#include "../include/timing.h"
#include "../include/matrixops.hpp"
#include "baseline.hpp"
"""

    harness.setup = f"""
    struct timespec start, end;
    DenseMatrix A = NULL;
    SparseMatrix B_sparse = NULL;
    SparseMatrix B_dense = NULL;
    DenseMatrix C_expected({m},{n},{m});
    DenseMatrix C_actual({m},{n},{m});
    """
    return harness.make("exp5/exp5.cpp")




if __name__=="__main__":
    print("Generating exp5.cpp ...")
    make()
    print("Compiling and deploying to cluster ...")
    from deployment import *
    e = Experiment("exp5")
    run(e)

