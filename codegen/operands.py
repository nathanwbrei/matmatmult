from enum import Enum
from typing import List, Dict


AsmType = Enum('AsmType', ['unknown','i8','i16','i32','i64','f32','f64',
                           'f32x4','f32x8','f32x16','f64x2','f64x4','f64x8'])

AsmType.__doc__ = """Enum of different concrete types, the useful subset of
    the cross product {Int,Float} x {size} x {vector length}.
    Each Operand has exactly one concrete type."""

Syntax = Enum('Syntax', ['inline', 'intel', 'pretty'])
inline = Syntax.inline
intel = Syntax.intel
pretty = Syntax.pretty


class Operand:
    """ Base class for different types of operands. """
    def gen(self, syntax:Syntax = inline):
        pass

class Constant(Operand):
    def __init__(self, value:int):
        self.value = value

    def gen(self, syntax:Syntax = inline):
        if syntax == inline:
            return "$" + str(self.value)
        else:
            return str(self.value)

def c(n):
    """Sugar for conveniently defining integer constants"""
    return Constant(value=int(n))



class Label(Operand):
    _interns: Dict[str, int] = {}
    _last: int = -1
    def __init__(self, value: str) -> None:
        self.value = value
        if value in Label._interns:
            self.ordinal = Label._interns[value]
        else:
            self.ordinal = Label._last + 1
            Label._last += 1
            Label._interns[value] = self.ordinal

    def gen(self, syntax=inline):
        if syntax == Syntax.inline:
            return str(self.ordinal)
        else:
            return str(self.value)

def l(label: str):
    return Label(label)


class Register(Operand):

    def __init__(self, typeinfo:AsmType, value:str):
        self.typeinfo = typeinfo
        self.value = value

    def __add__(self, offset):
        if isinstance(offset, Constant):
            return MemoryAddress(self, None, None, offset)
        elif isinstance(offset, int):
            return MemoryAddress(self, None, None, Constant(offset))

    def gen(self, syntax:Syntax=inline):
        if syntax is inline:
            return "%%" + str(self.value)
        else:
            return (self.value)


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


    def gen(self, syntax: Syntax = inline) -> str:

        base_str = self.base.gen(syntax)
        offset_str = self.offset.gen(Syntax.intel)
        if not self.bcast:
            bcast_str = ""
        elif syntax == inline:
            bcast_str = "%{1to8%}"
        else:
            bcast_str = "x8"

        if self.index is not None and self.scale is not None:
            index_str = self.index.gen(syntax)
            scale_str = self.scale.gen(intel)

            if syntax == inline:
                return f"{offset_str}({base_str}, {index_str}, {scale_str}){bcast_str}"
            else:
                return f"[{base_str} + {index_str}*{scale_str} + {offset_str}]{bcast_str}"
        else:
            if syntax == inline:
                return f"{offset_str}({base_str}){bcast_str}"
            else:
                return f"[{base_str} + {offset_str}]{bcast_str}"


    def __repr__(self):
        return self.gen(syntax=Syntax.pretty)


def mem(base, index, scale, offset):
    return MemoryAddress(base, index, scale, offset)


