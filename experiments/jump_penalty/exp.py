
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


class JumpPenaltyExperiment:

    name = "exp_jump_penalty"
    reldir = "experiments/jump_penalty/generated/"
    text = "GeneralSparse penalty experiment"
    executable = name
    script = name + ".sh"


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

        for nnzs in [400, 800, 1200, 1600, 2000, 2400, 2800]:


            for bk in [4,8,16]:
                s = Scenario(self.reldir, nnzs, bk)
                s.make_mtx()
                yield s.make_jump_test()

            yield Scenario(self.reldir, nnzs, 16).make_libxsmm_test()
            yield Scenario(self.reldir, nnzs, 16).make_unrolled_test()



class Scenario:

    def __init__(self, reldir:str, nnzs:int, bk:int):

        bm = 8
        bn = 8
        bk = bk
        m = 64
        n = 64
        k = 64

        self.name = f"jump_penalty_{bk}_{nnzs}"
        self.reldir = reldir
        self.pattern = Matrix.rand_bool(nnzs, k, n, 1066)
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
        self.pattern.store(self.mtx_filename)

    def make_unrolled_test(self):
        pp = unrolled_params(self.basic_params)
        pp.mtx_format = "bcsc"        
        pp.output_funcname = self.name + "_unrolled"
        pp.ldb = 0
        return pp

    def make_libxsmm_test(self):
        pp = libxsmm_params(self.basic_params)
        pp.mtx_format = "dense"
        pp.output_funcname = self.name + "_libxsmm"
        pp.output_filename = self.reldir + "libxsmm_gemms.h"
        pp.ldb = pp.k
        return pp

    def make_jump_test(self):
        pp = general_params(self.basic_params)
        pp.mtx_format = "bcsc"
        pp.output_funcname = self.name + "_general"
        return pp
