
import random
import os

from codegen.matrix import Matrix
from components.parameters import Parameters
from experiments.harness2 import HarnessBuilder
from generators.dxsp_microkernel import choose_params as micro_params
from generators.libxsmm import choose_params as libxsmm_params

EXP1_NAME = "exp1"
EXP1_HOME = "experiments/proof_of_concept/generated/"
EXP1_LIBXSMM_H = EXP1_HOME + "libxsmm_gemms.h"

def all_params():

    basename = "poc"
    p = Parameters(
        algorithm = "micro",
        mtx_filename = "src/cpptests/star.mtx",
        m = 8, 
        n = 15, 
        k = 9,
        lda = 8, 
        ldb = 0, 
        ldc = 8)

    p1 = libxsmm_params(p)
    p1.mtx_format = "csc"
    p1.output_funcname = basename + "_libxsmm"
    p1.output_filename = EXP1_LIBXSMM_H
    p1.ldb = p.k
    p1.bk = 0
    p1.bn = 0

    p2 = micro_params(p)
    p2.mtx_format = "csc"
    p2.bk = 0
    p2.bn = 0
    p2.output_funcname = basename + "_micro_csc"

    return [p1, p2]



# TODO: Drop dest_dir, exp_name from this
def make(dest_dir: str, exp_name: str) -> None:


    if os.path.isfile(EXP1_LIBXSMM_H):
        os.remove(EXP1_LIBXSMM_H)

    harness = HarnessBuilder()
    harness.imports += '#include "libxsmm_gemms.h"\n'

    for param in all_params():
        harness.add_test(param)

    cpp_filename = EXP1_HOME + EXP1_NAME + ".cpp"
    harness.make(cpp_filename)




