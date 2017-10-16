
from blocks import *

class Gemm:
	""" Generate a C function to enclose the provided assembly block """
    def __init__(self, funcName:str, asmBlock:AsmBlock):
        self.funcName = funcName
        self.body = []=  # :: [Asm]

    def gen(self, env={}):
        asm_text = "".join('    "'+s.gen(env,syntax="inline")+'\\n\\t"' for s in self.body)
        return """

void %1s (const double* A, const double* B, double* C) {
  __asm__ __volatile__(\n""" % self.funcName + asm_text
