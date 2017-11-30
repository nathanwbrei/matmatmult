
### Experiment 4 ###
# Scaling study
#   m = 256, k = 256 (ring buffer of 4), n = 28

# Next thing to try is unrolling the n loop! => 256x256x256
# Then go back and try tilesparse with fringes


from codegen.harness import *

from algorithms.parameters import *
from algorithms.tiledsparse import make_mn_loop

from random import randint, seed



def make_urn(k:int = 256, n:int = 28):
    return [(ri,ci) for ri in range(k) for ci in range(n)]

def sample_no_replacement(urn, samples=128):
    return [urn.pop(randint(0,len(urn)-1)) for x in range(samples)]

def make_param_space(m=128, n=28, k=128, bm=8, bn=28, bk=4):
    params = []
    seed(22)
    urn = make_urn(k, n)
    pattern = Matrix.full(k,n,False)
    for x in range(3):

        pattern_updates = sample_no_replacement(urn, 100)
        for sample in pattern_updates:
            pattern[sample[0], sample[1]] = True

        param = BlockParametersFromPattern(f"scalability_full_{28*x}_nnzs",
                                           m, n, k, bm, bn, bk,
                                           Matrix(pattern))

        param.pattern_updates = pattern_updates

        params.append(param)

    return params



def make_test(p) -> str:

    code = f"""
    /***** Testing {p.name} *****/

    reset(&C_expected);
    reset(&C_actual);

    """

    for ri,ci in p.pattern_updates:
        code += f"    update_pattern(&B, {ri}, {ci}, 1);\n"

    code += f"""
    sparse2dense(&B, &B_dense);

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
    return code


def make(m=128, n=28, k=128, bm=8, bn=28, bk=4) -> str:

    params = make_param_space(m,n,k,bm,bn,bk)
    harness = HarnessBuilder(make_mn_loop, params)
    harness.make_test = make_test
    harness.setup = f"""
    struct timespec start, end;
    struct colmajor A = zeros({m}, {k});
    struct colmajor C_expected = zeros({m}, {n});
    struct colmajor C_actual = zeros({m}, {n});
    struct patternsparse B = create_patternsparse({k}, {n}, {k}, {n});
    struct colmajor B_dense = zeros({k},{n});
    fill(&A, 1, 2);
    fill_sparse(&B, 1, 2);
    """
    return harness.make("exp4/exp4.cpp")


#make()



