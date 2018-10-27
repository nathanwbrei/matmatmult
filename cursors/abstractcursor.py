
#  @author Nathan Brei (nathan.w.brei AT tum.de)

#  @section LICENSE
#  Copyright (c) 2018, SeisSol Group
#  All rights reserved.
 
#  Redistribution and use in source and binary forms, with or without
#  modification, are permitted provided that the following conditions are met:

#  1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.

#  2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.

#  3. Neither the name of the copyright holder nor the names of its
#     contributors may be used to endorse or promote products derived from this
#     software without specific prior written permission.

#  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
#  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
#  IMPLIED WARRANTIES OF  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
#  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
#  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
#  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
#  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
#  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
#  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
#  ARISING IN ANY WAY OUT OF THE  USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
#  POSSIBILITY OF SUCH DAMAGE.


from codegen.operands import MemoryAddress, Register
from codegen.ast import AsmStmt, Command
from cursors.matrix import Matrix
from cursors.coords import Coords

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
                 current_cell: Coords = Coords(absolute=False)
                ) -> None:
        assert(current_cell.absolute == False)
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


    def has_nonzero_block(self, src: CursorLocation, dest_block: Coords) -> bool:
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
            ) -> Tuple[MemoryAddress, str]:
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





