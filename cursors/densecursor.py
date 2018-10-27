
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


from typing import List, Tuple, cast

from codegen import *
from cursors import *


class DenseCursorDef(TiledCursorDef):
    def __init__(self,
                 name: str,
                 base_ptr: Register,
                 rows:int,
                 cols:int,
                 ld: int,
                 block_rows: int,
                 block_cols: int,
                 scalar_bytes:int = 8,
                 vector_width:int = 8) -> None:

        pattern = Matrix.full(block_rows, block_cols, True)
        TiledCursorDef.__init__(self, name, base_ptr, rows, cols, pattern, scalar_bytes, vector_width)
        self.ld = ld

    def offset(self,
               src_block: Coords,
               dest_block: Coords,
               dest_cell: Coords
              ) -> int:
        # TODO: Why not make offset compute the 1D distance
        # from current pointer to desired logical cell instead?

        assert(src_block.absolute == True)
        assert(dest_cell.absolute == False)
        if not dest_block.absolute:
            dest_block += src_block

        Bri, Bci = dest_block.down, dest_block.right
        bri, bci = dest_cell.down, dest_cell.right

        return (Bci*self.bc + bci) * self.ld + Bri*self.br + bri

