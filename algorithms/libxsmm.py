from typing import NamedTuple
import subprocess

class Parameters(NamedTuple):
    m: int
    n: int
    k: int
    lda: int
    ldb: int
    ldc: int
    filename: str
    funcname: str
    arch: str    # "noarch","snb","hsw","knl"

defaults = Parameters(48,9,9,48,9,48,"gemms.h","default_gemms","knl")

path_to_libxsmm = "../libxsmm/bin/libxsmm_gemm_generator"

def make_gemm(p: Parameters):
    result = subprocess.run([path_to_libxsmm, "dense", p.filename, p.funcname,
                             str(p.m), str(p.n), str(p.k), str(p.lda), str(p.ldb), str(p.ldc),
                             "1", "1", "1", "1", p.arch, "nopf", "DP"])

    return None





