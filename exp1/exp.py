
### Experiment 1 ###
# On Sandy Bridge, run sparse B with different nnzs, compare performance against dense B

from codegen.harness import *
from algorithms.patternsparse_2d import *

metapattern = [[1,4,6],[7,2,5],[9,8,3]]

def pattern(nnz):
    return [[ x <= nnz for x in row]
                       for row in metapattern]

def pattern_update(nnz):
    return [(r,c) for r in range(len(metapattern))
                  for c in range(len(metapattern[0]))
                  if metapattern[r][c] == nnz][0]


def param_space(isa="avx256"):
    return [Parameters(description = f"blocksparse_snb_nnz{i}",
                       m = 48, n = 9, k = 9, lda = 48, ldb = 9, ldc = 48,
                       instruction_sets = [isa],
                       vector_width = 4,
                       C_regs = [[ymm(7), ymm(10), ymm(13)],
                                 [ymm(8), ymm(11), ymm(14)],
                                 [ymm(9), ymm(12), ymm(15)]],
                       stream_reg = ymm(3),
                       bcast_regs = [ymm(0), ymm(1), ymm(2)],
                       temp_regs = [ymm(4), ymm(5), ymm(6)],
                       pattern_update = pattern_update(i),
                       sparsity_pattern = pattern(i))

            for i in range(1,10)]


def make_code() -> str:

    harness = HarnessBuilder(make_gemm, param_space())

    harness.make_test = lambda p: f"""
    /***** Testing {p.description} *****/

    reset(&C_expected);
    reset(&C_actual);
    update_pattern(&B, {p.pattern_update[0]}, {p.pattern_update[1]}, 1);
    fill_sparse(&B, 1, 2);
    sparse2dense(&B, &B_dense);

    ddmm(&A, &B_dense, &C_expected);
    {p.description}(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        {p.description}(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("{p.description}, %lf\\n",
        1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));
    """

    harness.setup = """
    struct timespec start, end;
    struct colmajor A = zeros(48, 9);
    struct colmajor C_expected = zeros(48, 9);
    struct colmajor C_actual = zeros(48, 9);
    struct patternsparse B = create_patternsparse(9, 9, 3, 3);
    struct colmajor B_dense = zeros(9,9);
    fill(&A, 1, 2);
    """

    return harness.make()


def make():
    harness = make_code()
    with open("exp1/exp.c","w") as f:
        f.write(harness)


make()



