#!/usr/local/bin/python3

### Experiment 5 ###

import random
from experiments.harness import *
from generators.dxsp_general import make_alg, GeneralParameters
from components.parameters import Parameters
from cursors.matrix import Matrix

def random_pattern(nnz, k, n, seed):
    random.seed(seed)
    urn = [(ri,ci) for ri in range(k) for ci in range(n)]
    samples = [urn.pop(random.randint(0,len(urn)-1)) for x in range(nnz)]
    pattern = Matrix.full(k,n,False)
    for sample in samples:
        pattern[sample[0], sample[1]] = True
    return pattern


def defaults(nblocks=3, nnzs=10):
    bn = 8
    bk = 8
    k = bk * nblocks
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

#def make_param_space():
#    return [defaults(nblocks, nnzs) for nblocks in range(1,5)
#                                    for nnzs in range(4,64,16)]
def make_param_space():
    return [defaults(3, 16)]

def make_test(p) -> str:

    code = f"""
    /***** Testing {p.name} *****/
    {{
      const int m = {p.m};
      const int n = {p.n};
      const int k = {p.k};
      const int bk = {p.bk};
      const int bn = {p.bn};

      DenseMatrix a(m,k,m);
      a.random();

      DenseMatrix db("{p.name}.mtx");
      auto b = to_bcsc(db, bk, bn);

      DenseMatrix c_expected(m,n,m);
      DenseMatrix c_actual(m,n,m);

      gemm(a, db, c_expected);
      {p.name}(a.values, b->values, c_actual.values);
      assert_equals(c_expected, c_actual);

      clock_gettime(CLOCK_MONOTONIC, &start);
      for (int t=0; t<3000; t++)
        {p.name}(a.values, b->values, c_actual.values);
      clock_gettime(CLOCK_MONOTONIC, &end);

      std::cout << "{p.name}, " << microsecs(start,end)/3000.0 << std::endl;
    }}
    """
    return code


def make(dest_dir: str, exp_name: str) -> None:

    params = make_param_space()

    harness = HarnessBuilder(make_alg, params)

    harness.make_test = make_test

    harness.imports = f"""
#include <iostream>
#include <memory>

#include "SparseMatrix.hpp"
#include "DenseMatrix.hpp"
#include "timing.h"
"""

    harness.setup = f"""
    struct timespec start, end;
    """
    return harness.make(dest_dir, exp_name)


if __name__=="__main__":
    make(".")
