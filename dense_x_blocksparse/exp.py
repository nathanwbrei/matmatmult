
from codegen import experimenter
from codegen.libxsmm_standard import *


def pattern(nnz):
    metapattern = [[1,4,6],[7,2,5],[9,8,3]]
    return [[x <= nnz for x in row]
                      for row in metapattern]

def param_space():
    return [Parameters(m = 48, n = 9, k = 9, lda = 48, ldb = 9, ldc = 48,
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


