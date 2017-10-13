
from codegen.ast import *

i64 = ConcreteType.i64
f64 = ConcreteType.f64
f64x4 = ConcreteType.f64x4
f64x8 = ConcreteType.f64x8

# Sugar for referring to registers and constants
rax = Register(i64, "rax")
rdx = Register(i64, "rdx")
rdi = Register(i64, "rdi")
rsi = Register(i64, "rsi")
r   = lambda n: Register(ConcreteType.i64, "r"+str(n))
ymm = lambda n: Register(ConcreteType.f64x4, "ymm"+str(n))
zmm = lambda n: Register(ConcreteType.f64x8, "zmm"+str(n))
c   = lambda n: Constant(ConcreteType.i64, value=int(n))


known_instructions = [
    ("cmp",          "cmp",   [(Constant,i64)], (Register,i64)),
    ("jl",           "jl",    [(Label)], None),
    ("movq",         "mov",   [(Register,i64)], (Register,i64)),
    ("movq",         "mov",   [(Constant,i64)], (Register,i64)),
    ("movq",         "mov",   [(MemoryAddress)], (Register,i64)),
    ("movq",         "mov",   [(Register,i64)], (MemoryAddress)),
    ("addq",         "add",   [(Register,i64)], (Register,i64)),
    ("addq",         "add",   [(Constant,i64)], (Register,i64)),
    ("vaddpd",       "add",   [(Register,f64x4), (Register,f64x4)], (Register,f64x4)),
    ("vaddpd",       "add",   [(Register,f64x8), (Register,f64x8)], (Register,f64x8)),
    ("vmulpd",       "mul",   [(Register,f64x4), (Register,f64x4)], (Register,f64x4)),
    ("vmulpd",       "mul",   [(Register,f64x8), (Register,f64x8)], (Register,f64x8)),
    ("vmovapd",      "mov",   [(MemoryAddress)], (Register,f64x4)),
    ("vmovapd",      "mov",   [(MemoryAddress)], (Register,f64x8)),
    ("vfmadd231pd",  "fma",   [(Register,f64x4), (Register,f64x4)], (Register,f64x4)),
    ("vfmadd231pd",  "fma",   [(Register,f64x8), (Register,f64x8)], (Register,f64x8)),
    ("vfmadd231pd",  "fma",   [(Register,f64x8), (MemoryAddress)], (Register,f64x8)),
    ("vbroadcastsd", "bcast", [(MemoryAddress)], (Register,f64x4)),
    ("vbroadcastsd", "bcast", [(MemoryAddress)], (Register,f64x8)),
]

intel_syntax = {
    "addq" : "add",
    "movq" : "mov"
}


def match(operand, pattern):
    """Compensate for the lack of ADTs and pattern matching in Python.
       Ideally we would have something like
       statement "vmovapd" (Register f64x8 _) (Register f64x8 _) = True
       and this gets us a decent chunk of the way there."""

    if not isinstance(operand, pattern[0]):
        return False

    if len(pattern) > 1 and operand.type_info != pattern[1]:
        return False

    return True



def statement(instruction, inputs, output):
    """Return an AssemblyStatement constructed from first matching row of known_instructions"""

    for candidate in known_instructions:

        flag = True

        if (instruction != candidate[0] and instruction != candidate[1]):
            flag = False

        if (len(inputs) != len(candidate[2])):
            flag = False

        if not match(candidate[3], output):
            flag = False

        for i in range(len(inputs)):
            if not match(candidate[2][i], inputs[i]):
                flag = False

        if flag:
            return AssemblyStatement(candidate[0], inputs, outputs)

    raise Exception("Found no matching row in known_instructions table!")



