
### Experiment 2 ###
# On KNL, run sparse B with different nnzs, compare performance against dense B

from codegen.harness import *
from algorithms.patternsparse_1d import *

metapattern = [[1,4,6],[7,2,5],[9,8,3]]

def pattern(nnz):
    return [[ x <= nnz for x in row]
                       for row in metapattern]

def pattern_update(nnz):
    return [(r,c) for r in range(len(metapattern))
                  for c in range(len(metapattern[0]))
                  if metapattern[r][c] == nnz][0]


def param_space():
    return [Parameters(description = f"patternsparse_1d_nnz{i}",
                       m = 48, n = 9, k = 9, lda = 48, ldb = 9, ldc = 48,
                       A_regs = [zmm(x) for x in range(0, 8)],     # zmm0..zmm7
                       C_regs = [zmm(x) for x in range(23, 32)],   # zmm23..zmm31
                       pattern_update = pattern_update(i),
                       pattern = pattern(i))

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
    with open("exp2/exp.c","w") as f:
        f.write(harness)


make()



