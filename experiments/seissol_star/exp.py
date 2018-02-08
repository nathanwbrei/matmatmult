
import random
import os

from experiments.harness2 import HarnessBuilder
from generators.dxsp_general import choose_params as general_params
from generators.dxsp_unrolled import choose_params as unrolled_params
from generators.libxsmm import choose_params as libxsmm_params
from cursors.matrix import Matrix
from components.parameters import Parameters



seissol_star: Matrix[bool] = Matrix(
    [[0,0,0, 0,0,0, 1,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,1,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,1, 0,0,0, 0,0,0],

     [0,0,0, 0,0,0, 1,1,1, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,1,1, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 1,0,1, 0,0,0, 0,0,0],

     [1,1,1, 1,0,1, 0,0,0, 1,0,0, 1,0,1],
     [1,1,1, 1,1,0, 0,0,0, 0,1,0, 1,1,0],
     [1,1,1, 0,1,1, 0,0,0, 0,0,1, 0,1,1]])



class SeisSolStarExperiment:

    name = "exp_seissol_star"
    reldir = "experiments/seissol_star/generated/"
    text = "SeisSol star kernel experiment"
    executable = name
    script = name + ".sh"

    mtx_filename = reldir + "seissol_star.mtx"
    libxsmm_filename = reldir + "libxsmm_gemms.h"

    params = Parameters(algorithm = "dxsp_unrolled",
                        mtx_filename = mtx_filename,
                        output_funcname = name,
                        m = 40, 
                        n = 15, 
                        k = 9,
                        lda = 40,
                        ldb = 0, 
                        ldc = 40,
                        bm = 8,
                        bn = 3,
                        bk = 3)


    def make(self):

        if (os.path.isfile(self.libxsmm_filename)):
            os.remove(self.libxsmm_filename)

        seissol_star.store(self.mtx_filename)

        param_space = [self.make_libxsmm_test(),
                       self.make_unrolled_test(8),
                       self.make_unrolled_test(40),
                       self.make_jump_test(8),
                       self.make_jump_test(40) ]

        harness = HarnessBuilder()
        harness.imports += '#include "libxsmm_gemms.h"\n'

        for param in param_space:
            harness.add_test(param)

        cpp_filename = self.reldir + self.name + ".cpp"
        harness.make(cpp_filename)


    def make_libxsmm_test(self):
        p = libxsmm_params(self.params)
        p.mtx_format = "dense"
        p.output_funcname = "libxsmm"
        p.output_filename = self.reldir + "libxsmm_gemms.h"
        p.ldb = p.k
        return p

    def make_unrolled_test(self, bm):
        pp = unrolled_params(self.params)
        pp.mtx_format = "bcsc"
        pp.output_funcname = f"unrolled_{bm}"
        pp.ldb = 0
        pp.bm = bm
        return pp

    def make_jump_test(self, bm):
        pp = general_params(self.params)
        pp.mtx_format = "bcsc"
        pp.output_funcname = f"general_{bm}"
        pp.bm = bm
        return pp





