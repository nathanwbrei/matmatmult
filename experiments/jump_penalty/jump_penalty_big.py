
import random

from experiments.harness2 import HarnessBuilder
from generators.dxsp_general import choose_params as general_params
from generators.libxsmm import choose_params as libxsmm_params
from codegen.matrix import Matrix
from components.parameters import Parameters

def random_pattern(nnz, k, n, seed):
    random.seed(seed)
    urn = [(ri,ci) for ri in range(k) for ci in range(n)]
    samples = [urn.pop(random.randint(0,len(urn)-1)) for x in range(nnz)]
    pattern = Matrix.full(k,n,False)
    for sample in samples:
        pattern[sample[0], sample[1]] = True
    return pattern

EXP5_NAME = "exp5"
EXP5_HOME = "experiments/jump_penalty/generated/"
# TODO: Manage this in a sane way

class Scenario:
    
    def __init__(self, nnzs:int, njumps:int):

        self.name = f"jump_penalty_{njumps}_{nnzs}"
        self.pattern = random_pattern(nnzs, 96, 96, 2222)
        self.mtx_filename = EXP5_HOME + self.name + ".mtx"

        self.basic_params = Parameters(
            algorithm = "dxsp_general",
            mtx_filename = self.mtx_filename,
            output_filename = self.name + ".cpp",
            output_funcname = self.name,
            m = 96, 
            n = 96, 
            k = 96,
            lda = 96, 
            ldb = 0, 
            ldc = 96,
            bm = 96//6,
            bn = 96//njumps,
            bk = 96)

    def make_mtx(self):
        self.pattern.store(self.mtx_filename)

    def make_libxsmm_test(self):
        pp = libxsmm_params(self.basic_params)
        pp.output_filename = "libxsmm_gemms.h"
        return pp

#    def make_unrolled_test(self):
#        return self.params

    def make_jump_test(self):
        return general_params(self.basic_params)

    def all_params(self):
        yield self.make_libxsmm_test()
#        yield self.make_unrolled_test()
        yield self.make_jump_test()


def all_scenarios():

    yield Scenario(500,1)
    yield Scenario(500,2)
    yield Scenario(500,4)

    yield Scenario(1000,1)
    yield Scenario(1000,2)
    yield Scenario(1000,4)

    yield Scenario(2000,1)
    yield Scenario(2000,2)
    yield Scenario(2000,4)

    yield Scenario(4000,1)
    yield Scenario(4000,2)
    yield Scenario(4000,4)


# TODO: Drop dest_dir, exp_name from this
def make(dest_dir: str, exp_name: str) -> None:

    for scenario in all_scenarios():
        scenario.make_mtx()

    param_space = [x for sc in all_scenarios() 
                     for x in sc.all_params() ]

    harness = HarnessBuilder()
    harness.imports += '#include "libxsmm_gemms.h"\n'

    for param in param_space:
        harness.add_test(param)

    cpp_filename = EXP5_HOME + EXP5_NAME + ".cpp"
    harness.make(cpp_filename)




