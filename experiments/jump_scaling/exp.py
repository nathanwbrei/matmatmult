
import random
import os

from experiments.harness2 import HarnessBuilder
from generators.dxsp_general import choose_params as general_params
from generators.dxsp_unrolled import choose_params as unrolled_params
from generators.libxsmm import choose_params as libxsmm_params
from cursors.matrix import Matrix
from components.parameters import Parameters



class JumpScalingExperiment:

    name = "exp_jump_scaling"
    reldir = "experiments/jump_scaling/generated/"
    text = "GeneralSparse scaling experiment"
    executable = name
    script = name + ".sh"


    def make(self):
    
        libxsmm_filename = self.reldir + "libxsmm_gemms.h"
        if (os.path.isfile(libxsmm_filename)):
            os.remove(libxsmm_filename)

        for scenario in Scenario.all_scenarios(self.reldir):
            print(f"Generating {scenario.name} MTX file")
            scenario.make_mtx()

        param_space = [x for sc in Scenario.all_scenarios(self.reldir) 
                         for x in sc.all_params() ]

        harness = HarnessBuilder()
        harness.imports += '#include "libxsmm_gemms.h"\n'

        for param in param_space:
            harness.add_test(param)

        cpp_filename = self.reldir + self.name + ".cpp"
        harness.make(cpp_filename)




class Scenario:

    @classmethod
    def all_scenarios(cls, reldir):
        for njumps in [1,2,4,8,16]:
            for nnzs in range(200, 4200, 200):
                if (nnzs <= njumps * 16 * 16):
                    yield Scenario(reldir, nnzs, njumps)
    
    def __init__(self, reldir:str, nnzs:int, njumps:int):

        bm = 8
        bn = 16
        bk = 16
        m = 128
        n = 128
        k = 128

        self.name = f"jump_penalty_{njumps}_{nnzs}"
        self.reldir = reldir
        self.patterns = [Matrix.full(bk, bn, False)]

        for j in range(1, njumps+1):
            self.patterns.append(Matrix.rand_bool(nnzs//njumps, bk, bn, j))

        self.blocks = Matrix.rand_int(njumps, k//bk, n//bn, 22)

        self.mtx_filename = reldir + self.name + ".mtx"

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
        m.store(self.reldir + self.name + ".mtx")

    def make_libxsmm_test(self):
        pp = libxsmm_params(self.basic_params)
        pp.mtx_format = "dense"
        pp.output_funcname = self.name + "_libxsmm"
        pp.output_filename = self.reldir + "libxsmm_gemms.h"
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
