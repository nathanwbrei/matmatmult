
from codegen.blocks import *


template = """

void {funcName} (const double* A, const double* B, double* C) {{
  __asm__ __volatile__(
{body_text}
                       : : "m"(A), "m"(B), "m"(C) : {clobbered});
}};
"""

def make_cfunc(funcName:str, body:AsmBlock, matchLibxsmm=False):

    if (matchLibxsmm):
        indent = " " * 23
    else:
        indent = "    "
    body_text = "\n".join(indent + f'"{stmt}\\n\\t"' for stmt in body.gen().splitlines())
    out_regs = [f'"{reg.value}"' for reg in body.outputs()]
    out_regs.sort()
    clobbered = ",".join(out_regs)
    return template.format(funcName = funcName,
                           body_text = body_text,
                           clobbered = clobbered)





