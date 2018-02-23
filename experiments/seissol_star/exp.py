
import random
import os

from experiments.harness2 import HarnessBuilder
from generators.dxsp_general import choose_params as general_params
from generators.dxsp_unrolled import choose_params as unrolled_params
from generators.libxsmm import choose_params as libxsmm_params
from cursors.matrix import Matrix
from components.parameters import Parameters



seissol_star_huge: Matrix[bool] = Matrix(
    [[0,0,0, 0,0,0, 1,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,1,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,1, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],

     [0,0,0, 0,0,0, 1,1,1, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,1,1, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 1,0,1, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],

     [1,1,1, 1,0,1, 0,0,0, 1,0,0, 1,0,1, 1,0,0, 1,0,1, 1,0,0, 1,0,1],
     [1,1,1, 1,1,0, 0,0,0, 0,1,0, 1,1,0, 0,1,0, 1,1,0, 0,1,0, 1,1,0],
     [1,1,1, 0,1,1, 0,0,0, 0,0,1, 0,1,1, 0,0,1, 0,1,1, 0,0,1, 0,1,1],

     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],

     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],

     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],

     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],

     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],

     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0, 0,0,0]])


seissol_star = seissol_star_huge[0:9, 0:15]
seissol_star_tiny = seissol_star_huge[0:9, 0:9]
seissol_star_big = seissol_star_huge[0:9, 0:27]



class SeisSolStarExperiment:

    name = "exp_seissol_star"
    reldir = "experiments/seissol_star/generated/"
    text = "SeisSol star kernel experiment"
    executable = name
    script = name + ".sh"

    libxsmm_filename = reldir + "libxsmm_gemms.h"

    seissol_star.store(reldir + "seissol_star_9x15.mtx")
    seissol_star_tiny.store(reldir + "seissol_star_9x9.mtx")
    seissol_star_big.store(reldir + "seissol_star_9x27.mtx")
    seissol_star_huge.store(reldir + "seissol_star_27x27.mtx")

    scenarios = [Parameters(algorithm = "dxsp_unrolled",
                        mtx_filename = reldir + "seissol_star_9x15.mtx",
                        output_funcname = name + "_9x15",
                        m = 40, 
                        n = 15, 
                        k = 9,
                        lda = 40,
                        ldb = 0, 
                        ldc = 40,
                        bm = 8,
                        bn = 15,
                        bk = 9),

                Parameters(algorithm = "dxsp_unrolled",
                        mtx_filename = reldir + "seissol_star_9x9.mtx",
                        output_funcname = name + "_9x9",
                        m = 40, 
                        n = 9, 
                        k = 9,
                        lda = 40,
                        ldb = 0, 
                        ldc = 40,
                        bm = 8,
                        bn = 9,
                        bk = 9),
                Parameters(algorithm = "dxsp_unrolled",
                        mtx_filename = reldir + "seissol_star_9x27.mtx",
                        output_funcname = name + "_9x27",
                        m = 40, 
                        n = 27, 
                        k = 9,
                        lda = 40,
                        ldb = 0, 
                        ldc = 40,
                        bm = 8,
                        bn = 9,
                        bk = 9),
                Parameters(algorithm = "dxsp_unrolled",
                        mtx_filename = reldir + "seissol_star_27x27.mtx",
                        output_funcname = name + "_27x27",
                        m = 40, 
                        n = 27, 
                        k = 27,
                        lda = 40,
                        ldb = 0, 
                        ldc = 40,
                        bm = 8,
                        bn = 9,
                        bk = 9)
                ]


    def make(self):

        if (os.path.isfile(self.libxsmm_filename)):
            os.remove(self.libxsmm_filename)

        param_space = []
        for params in self.scenarios:

            param_space += [self.make_libxsmm_test(params),
                            self.make_breuer_test(params, "_breuer"),
                            self.make_breuer_test(params, "_breuer2"),
                            self.make_unrolled_test(params),
                            self.make_jump_test(params)]

        harness = HarnessBuilder()
        harness.imports += '#include "libxsmm_gemms.h"\n'

        for param in param_space:
            harness.add_test(param)

        cpp_filename = self.reldir + self.name + ".cpp"
        harness.make(cpp_filename)


    def make_libxsmm_test(self, params):
        p = libxsmm_params(params)
        p.mtx_format = "dense"
        p.output_funcname += "_libxsmm"
        p.output_filename = self.reldir + "libxsmm_gemms.h"
        p.ldb = p.k
        return p

    def make_breuer_test(self, params, suffix):
        p = libxsmm_params(params, False)
        p.mtx_format = "csc"
        p.output_funcname += suffix
        p.output_filename = self.reldir + "libxsmm_gemms.h"
        p.ldb = 0
        return p

    def make_unrolled_test(self, params):
        pp = unrolled_params(params)
        pp.mtx_format = "bcsc"
        pp.output_funcname += "_unrolled"
        pp.ldb = 0
        return pp

    def make_jump_test(self, params):
        pp = general_params(params)
        pp.mtx_format = "bcsc"
        pp.output_funcname += "_general"
        return pp





