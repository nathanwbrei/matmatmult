
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


from typing import NamedTuple
from components.parameters import Parameters
import subprocess

path_to_libxsmm = "/Users/nathanwbrei/src/libxsmm/bin/libxsmm_gemm_generator"

class LibxsmmParameters(Parameters):

    def __init__(self,
                 basic_params: Parameters,
                 dense: bool = True,
                 alpha: int = 1,
                 beta: int = 1,
                 align_a: bool = True,
                 align_c: bool = True,
                 arch = "knl",   # "noarch","snb","hsw","knl"
                 prefetch = "nopf",
                 precision = "DP"):

        super().__init__(**basic_params.__dict__)

        self.dense = dense
        self.alpha = alpha
        self.beta = beta
        self.align_a = align_a
        self.align_c = align_c
        self.arch = arch
        self.prefetch = prefetch
        self.precision = precision

    def make(self):
        args = [path_to_libxsmm,
                "dense" if self.dense else "sparse", 
                self.output_filename, 
                self.output_funcname,
                str(self.m),
                str(self.n),
                str(self.k), 
                str(self.lda), 
                str(self.ldb),
                str(self.ldc),
                str(self.alpha), 
                str(self.beta), 
                "1" if self.align_a else "0", 
                "1" if self.align_c else "0",
                self.arch, 
                self.prefetch, 
                self.precision]

        if not self.dense:
            args.append(self.mtx_filename)

        print(" ".join(args))
        result = subprocess.run(args)



def choose_params(p: Parameters, dense: bool = True) -> LibxsmmParameters:

    if p.output_filename is None:
        p.output_filename = "libxsmm_gemms.h"

    if p.output_funcname is None:
        p.output_funcname = f"gemm_{p.m}x{p.n}x{p.k}" 

    return LibxsmmParameters(p, dense)



def make_alg(p: LibxsmmParameters):
    return p.make()





