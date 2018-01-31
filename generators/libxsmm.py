from typing import NamedTuple
from parameters import Parameters
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
        result = subprocess.run([path_to_libxsmm, 
                                 "dense" if p.dense else "sparse", 
                                 p.output_filename, 
                                 p.output_funcname,
                                 str(p.m),
                                 str(p.n), 
                                 str(p.k), 
                                 str(p.lda), 
                                 str(p.ldb), 
                                 str(p.ldc),
                                 str(p.alpha), 
                                 str(p.beta), 
                                 "1" if p.align_a else "0", 
                                 "1" if p.align_c else "0",
                                 p.arch, 
                                 p.prefetch, 
                                 p.precision])



def choose_params(p: Parameters) -> LibxsmmParameters:

    print("libxsmm.choose_params")

    if p.output_filename is None:
        p.output_filename = "libxsmm_gemms.h"

    if p.output_funcname is None:
        p.output_funcname = f"gemm_{p.m}x{p.n}x{p.k}" 

    return LibxsmmParameters(p)



def make_alg(p: LibxsmmParameters):
    return p.make()





