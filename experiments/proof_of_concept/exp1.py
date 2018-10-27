
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

from cursors.matrix import Matrix
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




