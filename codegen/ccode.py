
from codegen.analysis import Analyzer
from codegen.inlineprinter import InlinePrinter
from codegen.sugar import *


template = """

void {funcName} (const double* A, const double* B, double* C) {{
  __asm__ __volatile__(
    "movq %0, %%rdi\\n\\t"
    "movq %1, %%rsi\\n\\t"
    "movq %2, %%rdx\\n\\t"
{body_text}

    : : "m"(A), "m"(B), "m"(C) : {clobbered});
}};
"""

def make_cfunc(funcName:str, body:Block) -> str:

    printer = InlinePrinter()
    printer.lmargin = 4
    body.accept(printer)
    body_text = "\n".join(printer.output)

    analyzer = Analyzer()
    body.accept(analyzer)
    regs = [f'"{reg.nice}"' for reg in analyzer.clobbered_registers]
    regs.sort()
    clobbered = ",".join(regs)

    return template.format(funcName = funcName,
                           body_text = body_text,
                           clobbered = clobbered)





