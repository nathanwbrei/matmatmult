
class ConcreteType:
    """Enum of different concrete types, the useful subset of
       the cross product {Int,Float} x {size} x {vector length}.
       Each Operand has exactly one concrete type, which is often
       machine-dependent."""

    Int32 = 0
    Int64 = 1
    Float64 = 2
    Float64x2 = 3  # SSE/AVX(128)  (snb)
    Float64x4 = 4  # AVX(256)      (hsw)
    Float64x8 = 5  # AVX512        (knl, skx)

class Operand:
    """ Base class for different types of operands.
        Any Operand may contain either a value or a symbol.
        Contains mechanism for interning symbolic operands. """
    symbols = []
    def __init__(self, type_info, value=None):
        self.type_info = type_info
        self.value = value
        if (value is None):
            self.symbol = len(Operand.symbols)
            Operand.symbols.append(self)
        else:
            self.symbol = None


class Constant(Operand):
    def gen(self, env, syntax="gas"):
        if (self.value is None):
            if (self.symbol in env):
                return "$" + env[self.symbol]
            else:
                return "$?" + str(self.symbol)
        else:
            return "$" + self.value


class Register(Operand):
    def gen(self, env, syntax="gas"):
        if (self.value is None):
            if (self.symbol in env):
                return "%%" + env[self.symbol]
            else:
                return "%?" + str(self.symbol)
        else:
            return "%%" + self.value


class MemoryAddress(Operand):
    def __init__(self, type_info, pointer, offset=None):
        # Only consider pointer-offset addresses for now.
        # Pointer is always a register, offset always a constant.
        # TODO: Rethink this.

        self.type_info = type_info
        self.pointer = pointer   # pointer, offset might be symbolic
        self.offset = offset

    def gen(self, env, syntax="gas"):
        pointer_str = self.pointer.gen(env, syntax)
        if (self.offset.value is None):
            if (self.offset.symbol in env):
                offset_str = env[self.offset.symbol]
            else:
                offset_str = "?" + str(self.offset.symbol)
        else:
            offset_str = self.offset.value
        return offset_str + "(" + pointer_str + ")"



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


class AssemblyBlock:
    """ Represents a block of assembly statements"""
    def __init__(self):
        self.body = []  # [AssemblyStatement]

    def gen(self):
        # Concatenate each assembly statement
        pass

    def calculate_inputs_and_outputs():
        pass

class Loop(AssemblyBlock):
    def __init__(self):
        pass



class Gemm:
    def __init__(self, funcName):
        self.funcName = funcName
        self.body = []  # :: [Asm]

    def gen(self):
        asm_text = "\n".join(s.gen() for s in self.body)
        return """

void %1s (const double* A, const double* B, double* C) {
  __asm__ __volatile__(""" % self.funcName + asm_text

