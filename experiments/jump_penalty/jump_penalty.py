
import random
import os

from experiments.harness2 import HarnessBuilder
from generators.dxsp_general import choose_params as general_params
from generators.dxsp_unrolled import choose_params as unrolled_params
from generators.libxsmm import choose_params as libxsmm_params
from cursors.matrix import Matrix
from components.parameters import Parameters


EXP5_NAME = "exp5"
EXP5_HOME = "experiments/jump_penalty/generated/"
# TODO: Manage this in a sane way

class Scenario:
    
    def __init__(self, nnzs:int, njumps:int):

        bm = 8
        bn = 16
        bk = 16
        m = 16*2
        n = 16*2
        k = 16*3
        #m = 128
        #n = 128
        #k = 128

        self.name = f"jump_penalty_{njumps}_{nnzs}"
        self.patterns = [Matrix.full(bk, bn, False)]

        for j in range(1, njumps+1):
            self.patterns.append(Matrix.rand_bool(nnzs//njumps, bk, bn, j))

        #self.blocks = Matrix.rand_int(njumps, k//bk, n//bn, 22)
        self.blocks = Matrix([[0,1],[0,0],[2,0]])

        self.mtx_filename = EXP5_HOME + self.name + ".mtx"

        self.basic_params = Parameters(
            algorithm = "dxsp_general",
            mtx_filename = self.mtx_filename,
            output_funcname = self.name,
            m = m, 
            n = n, 
            k = k,
            lda = m,
            ldb = 0, 
            ldc = m,
            bm = bm,
            bn = bn,
            bk = bk)

    def make_mtx(self):
        m = Matrix.from_blocks(self.blocks, self.patterns)
        m.store(self.mtx_filename)

    def make_libxsmm_test(self):
        pp = libxsmm_params(self.basic_params)
        pp.mtx_format = "dense"
        pp.output_funcname = self.name + "_libxsmm"
        pp.output_filename = EXP5_HOME+"libxsmm_gemms.h"
        pp.ldb = pp.k
        return pp

    def make_unrolled_test(self):
        pp = unrolled_params(self.basic_params)
        pp.mtx_format = "bcsc"        
        pp.output_funcname = self.name + "_unrolled"
        pp.ldb = 0
        return pp

    def make_jump_test(self):
        pp = general_params(self.basic_params)
        pp.mtx_format = "bcsc"
        pp.output_funcname = self.name + "_general"
        return pp

    def all_params(self):
        yield self.make_libxsmm_test()
        yield self.make_unrolled_test()
        yield self.make_jump_test()


def all_scenarios():
    yield Scenario(20,2)
    #for njumps in [1,2,4,8,16]:
    #    for nnzs in range(200, 4200, 200):
    #        if (nnzs <= njumps * 16 * 16):
    #            yield Scenario(nnzs, njumps)


# TODO: Drop dest_dir, exp_name from this
def make(dest_dir: str, exp_name: str) -> None:

    libxsmm_file = EXP5_HOME+"libxsmm_gemms.h"
    if (os.path.isfile(libxsmm_file)):
        os.remove(libxsmm_file)

    for scenario in all_scenarios():
        print(f"Generating {scenario.name} MTX file")
        scenario.make_mtx()

    param_space = [x for sc in all_scenarios() 
                     for x in sc.all_params() ]

    harness = HarnessBuilder()
    harness.imports += '#include "libxsmm_gemms.h"\n'

    for param in param_space:
        harness.add_test(param)

    cpp_filename = EXP5_HOME + EXP5_NAME + ".cpp"
    harness.make(cpp_filename)




