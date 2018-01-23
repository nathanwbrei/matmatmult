
### Experiment 5 ###

import random
from experiments.harness import *
from generators.dxsp_general import make_alg, GeneralParameters
from parameters import *
from codegen.matrix import Matrix

def random_pattern(nnz, k, n, seed):
    random.seed(seed)
    urn = [(ri,ci) for ri in range(k) for ci in range(n)]
    samples = [urn.pop(random.randint(0,len(urn)-1)) for x in range(nnz)]
    pattern = Matrix.full(k,n,False)
    for sample in samples:
        pattern[sample[0], sample[1]] = True
    return pattern


def defaults(nblocks=3, nnzs=10):

    k = 8 * nblocks
    bn = 8
    bk = 8
    basic_params = Parameters(
        algorithm = "dxsp_general", 
        m = 8, n = 8, k = k,
        lda = 8, ldb = 0, ldc = 8,
        mtx_filename = f"dxsp_general_8x8x{k}_{nnzs}",
        mtx_format = "bcsc",
        bm = 8, bn = bn, bk = bk)

    patterns = [random_pattern(nnzs, bk, bn, i) for i in range(nblocks)]
    blocks = Matrix([[x] for x in range(nblocks)])
    params = GeneralParameters(basic_params, blocks, patterns)
    params.nblocks = nblocks
    params.nnzs = nnzs
    params.name = params.mtx_filename   # TODO: Handle this better throughout
    return params

def make_param_space():
    return [defaults(nblocks, nnzs) for nblocks in range(1,5)
                                    for nnzs in range(4,64,16)]

def make_test(p) -> str:

    code = f"""
    /***** Testing {p.name} *****/

    C_expected.clear();
    C_actual.clear();
    from_mtx(B_dense, "{p.mtx_filename}");
    to_block_csc(B_dense, B, {p.bk}, {p.bn});
    printf("Created B=\\n");
    B.show();

    gemm(A, B_dense, C_expected);
    {p.name}(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        {p.name}(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("{p.name}, {p.m}, {p.n}, {p.k}, {p.bm}, {p.bn}, {p.bk}, {p.nnzs}, %lf\\n", microsecs(start,end)/3000.0);
    """
    return code


def make(destination: str = None) -> str:

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
    return harness.make(destination)



