from typing import NamedTuple
from components.parameters import Parameters
import subprocess

path_to_libxsmm = "../libxsmm/bin/libxsmm_gemm_generator"

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





