
from codegen.experimenter import *
from codegen.libxsmm_standard import *


def pattern(nnz):
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

### Experiment 1 ###
# On Sandy Bridge, run sparse B with different nnzs, compare performance against dense B

def make_code() -> str:

    harness = HarnessBuilder()
    harness.testcase = lambda p: "Reset C_actual"
    harness.setup = "Set A,B,C_expected,C_actual"
    harness.teardown = "Noop"
    harness.alg_builder = make_gemm
    harness.params = param_space()
    return harness.make()



    result = ""
    harness = HarnessBuilder()
    harness.vars = [
        DenseMatrix(name="C_expected", rows=params.m, cols=params.n),
        DenseMatrix(name="C_actual", rows=params.m, cols=params.n),
        DenseMatrix(name="A", rows=params.m, cols=params.k),
        BlockSparseMatrix(name="B", rows=params.k, cols=params.n,
                          sparsity_pattern=params.sparsity_pattern)
    ]
    result += harness.make_imports()

    for param in params:
        test_asm = alg_builder(param)
        test_c = make_cfunc(param.description, test_asm, True)
        result += test_c + "\n\n"

    main_code = harness.make_main()
    result += main_code
    return result

