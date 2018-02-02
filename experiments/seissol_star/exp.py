
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



