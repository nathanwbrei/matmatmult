
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




### Experiment 3 ###
# Run SeisSol-Star using different decompositions:
#   1. Tiledsparse, fully unrolled
#   2. Tiledsparse, square
#   3. Tiledsparse, 

from experiments.harness import *

from algorithms.parameters import *
from algorithms.mntravelers import *
from algorithms.ktravelers import *

from scenarios import seissol_star

def make_gemm(p:Parameters):
    make_kt = make_kt_unroll
    asm = make_mnt_loop(p, make_kt)
    return asm

params = [seissol_star.tiled_full]


def make_code() -> str:

    harness = HarnessBuilder(make_gemm, params)

    harness.make_test = lambda p: f"""
    /***** Testing {p.name} *****/

    reset(&C_expected);
    reset(&C_actual);

    ddmm(&A, &B_dense, &C_expected);
    {p.name}(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        {p.name}(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("{p.name}, %lf\\n",
        1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));
    """

    harness.setup = """
    struct timespec start, end;
    struct colmajor A = zeros(40, 9);
    struct colmajor C_expected = zeros(40, 15);
    struct colmajor C_actual = zeros(40, 15);
    struct patternsparse B = create_patternsparse(9, 15, 9, 15);
    struct colmajor B_dense = zeros(9,15);
    fill(&A, 1, 2);

    """

    pattern = seissol_star.full_pattern
    for ci in range(pattern.cols):
        for ri in range(pattern.rows):
            if pattern[ri,ci] != 0:
                harness.setup += f"    update_pattern(&B, {ri}, {ci}, 1);\n"
    harness.setup += f"""\
    fill_sparse(&B, 1, 2);
    sparse2dense(&B, &B_dense);
    """
    return harness.make()

def make():
    harness = make_code()
    with open("exp3/exp.c","w") as f:
        f.write(harness)

make()



