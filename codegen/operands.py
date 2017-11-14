from enum import Enum
from typing import List, Dict


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
    # TODO: Do we really need symbolic operands?
    symbols: List[int] = []
    def __init__(self, type_info=AsmType.unknown, value=None):
        self.type_info = type_info
        self.value = value
        if (value is None):
            self.symbol = len(Operand.symbols)
            Operand.symbols.append(self)
        else:
            self.symbol = None

    def gen(self, env, syntax):
        pass


class Constant(Operand):
    def gen(self, env={}, syntax:Syntax = Syntax.inline):

        if self.value is not None:
            base = str(self.value)
        elif self.symbol in env:
            base = env[self.symbol]
        else:
            base = "?" + str(self.symbol)

        if syntax == Syntax.inline:
            return "$" + base
        else:
            return base

def c(n):
    """Sugar for conveniently defining integer constants"""
    return Constant(AsmType.i64, value=int(n))



class Label(Operand):
    _interns: Dict[str, int] = {}
    _last: int = -1
    def __init__(self, value: str) -> None:
        self.value = value
        self.type_info = AsmType.i64
        if value in Label._interns:
            self.ordinal = Label._interns[value]
        else:
            self.ordinal = Label._last + 1
            Label._last += 1
            Label._interns[value] = self.ordinal

    def gen(self, env={}, syntax=Syntax.inline):
        if syntax == Syntax.inline:
            return str(self.ordinal)
        else:
            return str(self.value)

def l(label: str):
    return Label(label)


class Register(Operand):

    def __add__(self, offset):
        if isinstance(offset, Constant):
            return MemoryAddress(self, None, None, offset)
        elif isinstance(offset, int):
            return MemoryAddress(self, None, None, Constant(AsmType.i64,offset))

    def gen(self, env={}, syntax:Syntax=Syntax.inline):

        if self.value is not None:
            base = str(self.value)
        elif self.symbol in env:
            base = env[self.symbol]
        else:
            base = "?" + str(self.symbol)

        if syntax is Syntax.inline:
            return "%%" + base
        else:
            return base


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

    def __init__(self,
                 base: Register,
                 index: Register,
                 scale: Constant,
                 offset: Constant,
                 alignment: int = None,
                 bcast: bool = False) -> None:
        self.base = base
        self.index = index
        self.scale = scale
        self.offset = offset
        self.alignment = alignment
        self.bcast = bcast
        self.type_info = AsmType.unknown


    def gen(self, env = {}, syntax: Syntax = Syntax.inline) -> str:

        base_str = self.base.gen(env, syntax)
        offset_str = self.offset.gen(env, Syntax.intel)
        if not self.bcast:
            bcast_str = ""
        elif syntax == Syntax.inline:
            bcast_str = "%{1to8%}"
        else:
            bcast_str = "x8"

        if self.index is not None and self.scale is not None:
            index_str = self.index.gen(env, syntax)
            scale_str = self.scale.gen(env, syntax.intel)

            if syntax == Syntax.inline:
                return f"{offset_str}({base_str}, {index_str}, {scale_str}){bcast_str}"
            else:
                return f"[{base_str} + {index_str}*{scale_str} + {offset_str}]{bcast_str}"
        else:
            if syntax == Syntax.inline:
                return f"{offset_str}({base_str}){bcast_str}"
            else:
                return f"[{base_str} + {offset_str}]{bcast_str}"


def bcast(ma:MemoryAddress):
    ma.bcast = True

def mem(base, index, scale, offset):
    return MemoryAddress(base, index, scale, offset)


