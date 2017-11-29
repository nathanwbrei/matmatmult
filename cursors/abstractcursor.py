from codegen.operands import MemoryAddress, Register
from codegen.ast import AsmStmt, Command
from codegen.matrix import Matrix
from codegen.coords import Coords

from typing import NamedTuple, List, Tuple



class BlockInfo(NamedTuple):
    br: int                 # Cell rows in block
    bc: int                 # Cell cols in block
    pattern_index: int      # Pattern location in index
    pattern: Matrix[bool]   # The pattern itself



class CursorLocation:
    current_block: Coords  # Absolute coords of current block
    current_cell: Coords   # Relative?

    def __init__(self,
                 current_block: Coords = Coords(absolute=True),
                 current_cell: Coords = Coords(absolute=False)):
        assert(current_cell.absolute == False)
        assert(current_block.absolute == True)
        self.current_block = current_block
        self.current_cell = current_cell


class CursorDef:
    name: str
    base_ptr: Register
    index_ptr: Register
    r: int
    c: int
    br: int
    bc: int

    @property
    def Br(self) -> int:
        return self.r // self.br

    @property
    def Bc(self) -> int:
        return self.c // self.bc

    @property
    def brf(self) -> int:
        return self.r % self.br

    @property
    def bcf(self) -> int:
        return self.c % self.bc

    def has_nonzero_cell(self,
                         src: CursorLocation,
                         dest_block: Coords,
                         dest_cell: Coords
                        ) -> bool:
        raise NotImplementedError()

    def offset(self,
               src: CursorLocation,
               dest_block: Coords,
               dest_cell: Coords
              ) -> int:
        raise NotImplementedError()

    def move(self,
             src: CursorLocation,
             dest_block: Coords
            ) -> Tuple[AsmStmt, CursorLocation]:
        raise NotImplementedError()

    def look(self,
             src: CursorLocation,
             dest_block: Coords,
             dest_cell: Coords
            ) -> MemoryAddress:
        raise NotImplementedError()

    def start_location(self, dest_block: Coords = Coords(absolute=True)) -> CursorLocation:
        raise NotImplementedError()

    def get_block(self, src: CursorLocation=None, dest_block: Coords=None) -> BlockInfo:
        raise NotImplementedError()


class CursorMovement(Command):
    matrix: CursorDef

class CursorLookup(MemoryAddress):
    matrix: CursorDef
    src: CursorLocation
    dest: CursorLocation





