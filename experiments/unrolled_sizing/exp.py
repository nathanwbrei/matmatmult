
import random
import os

from experiments.harness2 import HarnessBuilder
from generators.dxsp_general import choose_params as general_params
from generators.dxsp_unrolled import choose_params as unrolled_params
from generators.libxsmm import choose_params as libxsmm_params
from cursors.matrix import Matrix
from components.parameters import Parameters


class UnrolledSizingExperiment:

    name = "exp_unrolled_sizing"
    reldir = "experiments/unrolled_sizing/generated/"
    text = "Unrolled sizing experiment"
    executable = name
    script = name + ".sh"
    mtx_filename = reldir + name + ".mtx"
    basic_params = Parameters(algorithm = "dxsp_general",
                              mtx_filename = mtx_filename,
                              m = 96, n = 96, k = 96, 
                              bm = 0, bn = 0, bk = 0,
                              lda = 96, ldb = 0, ldc = 96)

    def make(self):

        libxsmm_file = self.reldir + "libxsmm_gemms.h"
        if (os.path.isfile(libxsmm_file)):
            os.remove(libxsmm_file)

        harness = HarnessBuilder()
        harness.imports += '#include "libxsmm_gemms.h"\n'

        for param in self.all_params():
            harness.add_test(param)

        cpp_filename = self.reldir + self.name + ".cpp"
        harness.make(cpp_filename)



    def all_params(self):

        self.pattern = Matrix.rand_bool(500, 96, 96, 1066)
        self.pattern.store(self.mtx_filename)

        yield self.make_libxsmm_test()

        options = [1,2,3,4,6,8,12,16,24,32]

        for bm in [8, 16, 24, 32]:
            for bn in options:
                for bk in options:
                    if (bn + bk) * (bm/8) <= 32:
                        print(f"{bm}, {bn}, {bk}")
                        yield self.make_unrolled_test(bm, bn, bk)


    def make_unrolled_test(self, bm, bn, bk):
        self.basic_params.bm = bm
        self.basic_params.bn = bn
        self.basic_params.bk = bk
        pp = unrolled_params(self.basic_params)
        pp.mtx_format = "bcsc"        
        pp.output_funcname = f"unrolled_{bm}_{bn}_{bk}"
        pp.ldb = 0
        return pp


    def make_jump_test(self, bm, bn, bk):
        self.basic_params.bm = bm
        self.basic_params.bn = bn
        self.basic_params.bk = bk
        pp = general_params(self.basic_params)
        pp.mtx_format = "bcsc"
        pp.output_funcname = f"general_{bm}_{bn}_{bk}"
        return pp


    def make_libxsmm_test(self):
        pp = libxsmm_params(self.basic_params)
        pp.mtx_format = "dense"
        pp.output_funcname = "libxsmm"
        pp.output_filename = self.reldir + "libxsmm_gemms.h"
        pp.ldb = pp.k
        return pp






