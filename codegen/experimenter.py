
from codegen.harness import *
from codegen.libxsmm_standard import *
from codegen.ccode import *


def run():

    # First test: Use libxsmm_standard 48x9x9 dense_x_sparse on SNB
    # Vary:       Sparsity patterns
    # Expect:     As matrix becomes sparse, mult becomes memory-bound
    #             TODO: [Calculate roofline of IVB]
    #             As matrix becomes dense, mult becomes instruction-cache bound
    #             TODO: [What is instr cache size? What is instr size?]

    # Ultimately: Vary fraction nonzero x matrix width x registerblocking x architecture

    # Now repeat on different architectures using the same register blocking
    # Second test: Use the 1D libxsmm register blocking. What happens now?

    dest_filename = "../dense_x_blocksparse/gemms_dense_x_blocksparse.c"

    with open(dest_filename, "w") as f:
        f.write(make_exp_code(alg_builder = make_gemm,
                              alg_namer = lambda p: f"libxsmm_{len(p.C_regs)}x{len(p.C_regs[0])}",
                              params = [snb, hsw]))



def make_exp_code(alg_builder, alg_namer, params) -> str:

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
        test_name = alg_namer(param)
        test_asm = alg_builder(param)
        test_c = make_cfunc(test_name, test_asm, True)
        result += test_c + "\n\n"

    main_code = harness.make_main()
    result += main_code
    return result






