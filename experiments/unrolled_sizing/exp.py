
#  @author Nathan Brei (nathan.w.brei AT tum.de)

#  @section LICENSE
#  Copyright (c) 2018, SeisSol Group
#  All rights reserved.
 
#  Redistribution and use in source and binary forms, with or without
#  modification, are permitted provided that the following conditions are met:

#  1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.

#  2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.

#  3. Neither the name of the copyright holder nor the names of its
#     contributors may be used to endorse or promote products derived from this
#     software without specific prior written permission.

#  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
#  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
#  IMPLIED WARRANTIES OF  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
#  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
#  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
#  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
#  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
#  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
#  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
#  ARISING IN ANY WAY OUT OF THE  USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
#  POSSIBILITY OF SUCH DAMAGE.


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






