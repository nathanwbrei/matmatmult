
class Gemm:
    def __init__(self, funcName):
        self.funcName = funcName
        self.body = []  # :: [Asm]

    def gen(self):
        asm_text = "\n".join(s.gen() for s in self.body)
        return """

void %1s (const double* A, const double* B, double* C) {
  __asm__ __volatile__(""" % self.funcName + asm_text

class Loop(AssemblyBlock):
    def __init__(self):
        pass

class AssemblyBlock:
    """ Represents a block of assembly statements"""
    def __init__(self):
        self.body = []

    def gen(self):
        # Concatenate each assembly statement
        pass

    def calculate_inputs_and_outputs():
        pass


class AssemblyStatement:
    """ Represents a single assembly statement"""
    def __init__(self, operation, inputs, output, implied_inputs=[], implied_outputs=[]):
        self.operation = operation               # :: str
        self.inputs = inputs                     # :: [Operand]
        self.output = output                     # :: Operand
        self.implied_inputs = implied_inputs     # :: [Operand]
        self.implied_outputs = implied_outputs   # :: [Operand]

    def gen(self, syntax="gas"):
        result = operation
        result += " ".join(x.gen())

class TypeInfo:
    Int32 = 0
    Int64 = 1
    Float64 = 2
    Float64x2 = 3  # SSE
    Float64x4 = 4  # AVX(256)
    Float64x8 = 5  # AVX512

class Operand:
    symbols = []
    def __init__(self, type_info, isSymbolic=false):
        self.type_info = type_info
        self.isSymbolic = isSymbolic
        if (isSymbolic):
            self.symbol_id = len(Operand.symbols) + 1
            Operand.symbols.append(self)

class Constant(Operand):
    pass

class Register(Operand):
    pass

class MemoryAddress(Operand):
    pass


