
### Experiment 1 ###
# On Sandy Bridge, run sparse B with different nnzs, compare performance against dense B

from codegen.experimenter import *
from codegen.libxsmm_standard import *


def pattern_update(nnz):
    metapattern = [[1,4,6],[7,2,5],[9,8,3]]
    return [[x <= nnz for x in row]
                      for row in metapattern]

def param_space():
    return [Parameters(description = f"blocksparse_snb_nnz{i}",
                       m = 48, n = 9, k = 9, lda = 48, ldb = 9, ldc = 48,
                       instruction_sets = ["avx256"],
                       vector_width = 4,
                       C_regs = [[ymm(7), ymm(10), ymm(13)],
                                 [ymm(8), ymm(11), ymm(14)],
                                 [ymm(9), ymm(12), ymm(15)]],
                       stream_reg = ymm(3),
                       bcast_regs = [ymm(0), ymm(1), ymm(2)],
                       temp_regs = [ymm(4), ymm(5), ymm(6)],
                       sparsity_pattern = pattern(i))

            for i in range(1,10)]


def make_code() -> str:

    harness = HarnessBuilder(make_gemm, param_space())

    harness.make_test = lambda p: f"""
        reset(*C_expected);
        reset(*C_actual);
        update_pattern(*B, {p.pattern_row}, {p.pattern_col}, 1);
        sparse2dense(*B, *B_dense);

        gemm(A.values, B_dense.values, C_expected.values);
        assert_equals(*C_expected, *C_actual);

        ticks_before = clock();
        cycles_before = tsc();
        for (int t=0; t<2000; t++)
            {p.description}(A.values, B.values, C_actual.values);
        ticks_after = clock();
        cycles_after = tsc();

        printf("{p.description}, %lld, %ld\n",
            cycles_after - cycles_before,
            ticks_after - ticks_before );
    """

    harness.setup = """
        clock_t ticks_before, ticks_after;
        uint64_t cycles_before, cycles_after;
        struct colmajor A = zeros(48, 9);
        struct colmajor C_expected = zeros(48, 9);
        struct colmajor C_actual = zeros(48, 9);
        struct sparse_csc B = create_sparse(9, 9);
        fill_dense(A, 1, 2);"
    """

    return harness.make()


