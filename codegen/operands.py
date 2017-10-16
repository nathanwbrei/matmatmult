from enum import Enum


AsmType = Enum('AsmType', ['unknown','i8','i16','i32','i64','f32','f64',
			   'f32x4','f32x8','f32x16','f64x2','f64x4','f64x8'])

AsmType.__doc__ = """Enum of different concrete types, the useful subset of
    the cross product {Int,Float} x {size} x {vector length}.
    Each Operand has exactly one concrete type."""

Syntax = Enum('Syntax', ['inline', 'intel', 'pretty'])



class Operand:
    """ Base class for different types of operands.
        Any Operand may contain either a value or a symbol.
        Contains mechanism for interning symbolic operands. """
    symbols = []
    def __init__(self, type_info=AsmType.unknown, value=None):
        self.type_info = type_info
        self.value = value
        if (value is None):
            self.symbol = len(Operand.symbols)
            Operand.symbols.append(self)
        else:
            self.symbol = None


class Constant(Operand):
    def gen(self, env={}, syntax:Syntax = Syntax.inline):

        if self.value is not None:
            base = str(self.value)
        elif self.symbol in env:
            base = env[self.symbol]
        else:
            base = "?" + str(self.symbol)

        if syntax == Syntax.inline:
        	return "?" + base
        else:
        	return base

def c(n):
	"""Sugar for conveniently defining integer constants"""
	return Constant(AsmType.i64, value=int(n))



class Label(Operand):
    def __init__(self, value):
        self.value = value
        self.type_info = AsmType.i64

    def gen(self, env):
        return str(self.value)



class Register(Operand):

    def __add__(self, offset):
        if isinstance(offset, Constant):
            return MemoryAddress(self, offset)
        elif isinstance(offset, int):
            return MemoryAddress(self, Constant(AsmType.i64,offset))

    def gen(self, env, syntax="inline"):
        if self.value is not None:
            return "%%" + str(self.value)
        elif self.symbol in env:
            return "%%" + env[self.symbol]
        else:
            return "%?" + str(self.symbol)


rax = Register(AsmType.i64, "rax")
rbx = Register(AsmType.i64, "rbx")
rcx = Register(AsmType.i64, "rcx")
rdx = Register(AsmType.i64, "rdx")
rdi = Register(AsmType.i64, "rdi")
rsi = Register(AsmType.i64, "rsi")

r   = lambda n: Register(AsmType.i64, "r"+str(n))
ymm = lambda n: Register(AsmType.f64x4, "ymm"+str(n))
zmm = lambda n: Register(AsmType.f64x8, "zmm"+str(n))




class MemoryAddress(Operand):

    def __init__(self, pointer: Register, offset: Constant, alignment: int = None):
        # Only consider pointer-offset addresses for now.
        # Pointer is always a register, offset always a constant.
        # These components are allowed to be symbolic. The MemoryAddress
        # itself is not.

        self.type_info = AsmType.unknown
        self.pointer = pointer
        self.offset = offset
        self.alignment = alignment


    def gen(self, env = {}, syntax: Syntax = Syntax.inline) -> str:

        pointer_str = self.pointer.gen(env, syntax)
        offset_str = self.offset.get(env, Syntax.intel)

        if syntax -- Syntax.inline:
	        return offset_str + "(" + pointer_str + ")"
	    else:
        	return "[" + pointer_str + " + " + offset_str + "]"




