
from codegen.ast import *


# Sugar for referring to registers and constants

def c(n):
    if isinstance(n, int):
        return Constant(ConcreteType.i64, value=n)
    else:
        raise Exception("Constant is not of valid type")

def r(n):
    return Register(ConcreteType.i64, "r"+str(n))

rax = r("ax")
rdx = r("dx")
rdi = r("di")
rsi = r("si")

def ymm(n):
    return Register(ConcreteType.f64x4, "ymm"+str(n))

def zmm(n):
    return Register(ConcreteType.f64x8, "zmm"+str(n))





# x86_64 instructions
# The type system is not doing it for me. I want pattern matching!!!
# Should I move everything to Julia?

def match(operands, pattern):

    if len(operands) != len(pattern):
        return False

    for i in range(len(operands)):
        op = operands[i]
        pattern = patterns[i]
        if not isinstance(op, pattern[0]):
            return False
        if len(pattern) > 1 and op.type_info != pattern[1]:
            return False

    return True




def mov(*operands):

    if match(operands, [(Register,i64), (Register,i64)]) or \
       match(operands, [(Constant,i64), (Register,i64)]) or \
       match(operands, [(MemoryAddress), (Register,i64)]) or \
       match(operands, [(Register,i64), (MemoryAddress)]):

        return AssemblyStatement("movq", *operands)

    else:
        raise Exception("Invalid operands: mov")


def add(src, dest):
    if match(operands, [(Register,i64), (Register,i64)]) or \
       match(operands, [(Constant,i64), (Register,i64)]):

        return AssemblyStatement("addq", *operands)

    else:
        raise Exception("Invalid operands: mov")


def cmp(ops):
    if match(ops, [(Constant,i64), (Register,i64)]):
        return AssemblyStatement("cmpq", ops)
    else:
        raise Exception("Invalid operands: cmp")


def jl(label):
    return AssemblyStatement("jl " + label)

def vaddpd(r_lhs, r_rhs, r_out):
    pass

def vmulpd(r_lhs, r_rhs, r_out):
    pass

def vbroadcastsd(m_in, r_out):
    pass

def vmovapd(src, dest):
    pass

def vfmadd231pd():
    pass


