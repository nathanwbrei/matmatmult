
class ConcreteType:
    """Enum of different concrete types, the useful subset of
       the cross product {Int,Float} x {size} x {vector length}.
       Each Operand has exactly one concrete type, which is often
       machine-dependent."""

    unknown,i8,i16,i32,i64,f32,f64,
    f32x4,f32x8,f32x16,f64x2,f64x4,f64x8 = range(13)

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
    def gen(self, env):
        if self.value is not None:
            return "$" + str(self.value)
        elif self.symbol in env:
            return "$" + env[self.symbol]
        else:
            return "$?" + str(self.symbol)


class Label(Operand):
    def __init__(self, value):
        self.value = value
        self.type_info = ConcreteType.i64

    def gen(self, env):
        return str(self.value)



class Register(Operand):

    def __add__(self, offset):
        if isinstance(offset, Constant):
            return MemoryAddress(self, offset)
        elif isinstance(offset, int):
            return MemoryAddress(self, Constant(ConcreteType.i64,offset))

    def gen(self, env):
        if self.value is not None:
            return "%%" + str(self.value)
        elif self.symbol in env:
            return "%%" + env[self.symbol]
        else:
            return "%?" + str(self.symbol)


class MemoryAddress(Operand):
    def __init__(self, pointer, offset):
        # Only consider pointer-offset addresses for now.
        # Pointer is always a register, offset always a constant.
        # These components are allowed to be symbolic. The MemoryAddress
        # itself is not.

        self.type_info = ConcreteType.unknown
        self.pointer = pointer
        self.offset = offset

    def gen(self, env, syntax="inline"):
        pointer_str = self.pointer.gen(env)

        if self.offset.value is not None:
            offset_str = str(self.offset.value)
        elif self.offset.symbol in env:
            offset_str = env[self.offset.symbol]
        else:
            offset_str = "?" + str(self.offset.symbol)

        return offset_str + "(" + pointer_str + ")"



class AssemblyStatement:
    """ Represents a single assembly statement"""
    def __init__(self, operation, inputs, output,
                 implied_inputs=[], implied_outputs=[],
                 nicer_operation=None, comment=None):
        self.operation = operation               # :: str
        self.inputs = inputs                     # :: [Operand]
        self.output = output                     # :: Operand
        self.implied_inputs = implied_inputs     # :: [Operand]
        self.implied_outputs = implied_outputs   # :: [Operand]
        self.nicer_operation = nicer_operation   # :: str
        self.comment = comment                   # :: str


    def gen(self, env={}, syntax="inline"):

        if syntax == "inline":
            result = '"' + self.operation + " "
            result += ", ".join(x.gen(env,syntax) for x in self.inputs)
            result += ", " + self.output.gen(env,syntax) + "\\n\\t\""
            return result

        else:
            if self.nicer_operation is None:
                result = self.operation
            else:
                result = self.nicer_operation
            result += ", ".join(x.gen(env,syntax) for x in self.inputs)
            result += " -> " + self.output.gen(env,syntax)
            if self.comment is not None:
                result += "\t\t; " + self.comment
            return result


class Asm:
    """ Represents a block of assembly statements"""
    def __init__(self, comment = None):
        self.body = []  # [AssemblyStatement | Label | Asm]
        self.comment = comment

    def loop(self, iteration_variable, initial_value, final_value, increment):
        pass

    def gen(self, env={}, syntax="inline"):
        return "\n    ".join(s.gen(env) for s in body)
        # Concatenate each assembly statement

    def prettyprint(self, env={}):
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

    def gen(self, env={}):
        asm_text = "\n".join(s.gen(env) for s in self.body)
        return """

void %1s (const double* A, const double* B, double* C) {
  __asm__ __volatile__(\n""" % self.funcName + asm_text

