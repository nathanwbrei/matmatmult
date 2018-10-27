
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



from algorithms.parameters import Parameters, BlockParameters, TiledParameters
from codegen.operands import *
from codegen.matrix import *



full_pattern: Matrix[bool] = Matrix(
    [[0,0,0, 0,0,0, 1,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,1,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,1, 0,0,0, 0,0,0],

     [0,0,0, 0,0,0, 1,1,1, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,1,1, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 1,0,1, 0,0,0, 0,0,0],

     [1,1,1, 1,0,1, 0,0,0, 1,0,0, 1,0,1],
     [1,1,1, 1,1,0, 0,0,0, 0,1,0, 1,1,0],
     [1,1,1, 0,1,1, 0,0,0, 0,0,1, 0,1,1]])


square_pattern = full_pattern[:, 0:9]
skinny_pattern = full_pattern[:,0:3] | full_pattern[:,6:9]

Z = full_pattern[0:3, 0:3]
A = full_pattern[6:9, 0:3]
B = full_pattern[6:9, 3:6]
C = full_pattern[3:6, 6:9]
D = full_pattern[0:3, 6:9]

pattern_index = [Z, A, B, C, D]

blocks_full: Matrix[int] = Matrix(
    [[0, 0, 4, 0, 0],
     [0, 0, 3, 0, 0],
     [1, 2, 0, 4, 2]])

blocks_partial_3: Matrix[int] = Matrix(
    [[0, 0, 4, 0, 0],
     [0, 0, 1, 0, 0],
     [1, 2, 0, 4, 2]])

blocks_partial_2: Matrix[int] = Matrix(
    [[0, 0, 4, 0, 0],
     [0, 0, 1, 0, 0],
     [1, 1, 0, 4, 1]])

blocks_bsc: Matrix[int] = Matrix(
    [[0, 0, 1, 0, 0],
     [0, 0, 1, 0, 0],
     [1, 1, 0, 1, 1]])


spsp_3x3 = BlockParameters(
    name = "Star",
    m = 40, n = 15, k = 9, bm = 8, bn = 3, bk = 3,
    blocks = blocks_full,
    pattern_index = pattern_index)

tiled_full = TiledParameters(
    name = "StarTiledFull",
    m = 40, n = 15, k = 9, bm = 8, bn = 15, bk = 9,
    pattern = full_pattern
)

tiled_square = TiledParameters(
    name = "StarTiledSquare",
    m = 40, n = 15, k = 9, bm = 8, bn = 9, bk = 9,
    pattern = square_pattern
)

tiled_skinny = TiledParameters(
    name = "StarTiledSkinny",
    m = 40, n = 15, k = 9, bm = 8, bn = 3, bk = 9,
    pattern = skinny_pattern
)

