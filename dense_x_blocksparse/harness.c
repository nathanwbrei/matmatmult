
#include<stdio.h>
#include<time.h>
#include "../common/timing.h"
#include "../common/colmajor.h"
#include "blocksparse.h"

void gemm_dense(double * A, double * B, double * C);
void gemm_dense(double * A, double * B, double * C);
void gemm_dense(double * A, double * B, double * C);

void gemm_blocksparse_1(double * A, double * B, double * C);
void gemm_blocksparse_3(double * A, double * B, double * C);
void gemm_blocksparse_7(double * A, double * B, double * C);
void gemm_blocksparse_15(double * A, double * B, double * C);
void gemm_blocksparse_31(double * A, double * B, double * C);
void gemm_blocksparse_63(double * A, double * B, double * C);
void gemm_blocksparse_127(double * A, double * B, double * C);
void gemm_blocksparse_255(double * A, double * B, double * C);
void gemm_blocksparse_511(double * A, double * B, double * C);

const int impl_count = 9;

const int impl_patterns[impl_count] = {1, 3, 7, 15, 31, 63, 127, 255, 511};

void (*impl_pointers[impl_count]) (double * A, double * B, double * C) = {
  & gemm_blocksparse_1,
  & gemm_blocksparse_3,
  & gemm_blocksparse_7,
  & gemm_blocksparse_15,
  & gemm_blocksparse_31,
  & gemm_blocksparse_63,
  & gemm_blocksparse_127,
  & gemm_blocksparse_255,
  & gemm_blocksparse_511
};

void run_tests() {
  
  double A[] = {1.,2.,3.,4.,5.,6.,7.,8.,10.};
  // For each pattern
  for (int testcase=0; testcase<impl_count; testcase++) {
    int pattern = impl_patterns[testcase];

    struct colmajor A = zeros(48,9);
    fill(&A, 1, 1);
    struct blocksparse B_bsp = make_random_blocksparse(16,3,1,18);
    struct colmajor B_cm = blocksparse_to_colmajor(B_bsp);
    struct colmajor C_expected = zeros(48,9);
    struct colmajor C_actual = zeros(48,9);

    // Test dense x dense version
    clock_t dense_ticks_before = clock();
    uint64_t dense_cycles_before = tsc();
    for (int t=0; t<2000; t++)
      gemm_dense(A.values, B_cm.values, C_expected.values);
    uint64_t dense_cycles_after = tsc();
    clock_t dense_ticks_after = clock();

    // Test blockwise sparse version
    clock_t blocksparse_ticks_before = clock();
    uint64_t blocksparse_cycles_before = tsc();
    for (int t=0; t<2000; t++)
      impl_pointers[testcase](A.values,B_bsp.values,C_actual.values);
    uint64_t blocksparse_cycles_after = tsc();
    clock_t blocksparse_ticks_after = clock();

    // Verify that result is correct
    assert_equals(C_expected, C_actual);

    // Emit timing information
    printf("%d, %lld, %ld, %lld, %ld\n",
      pattern,
      dense_cycles_after - dense_cycles_before,
      dense_ticks_after - dense_ticks_before,
      blocksparse_cycles_after - blocksparse_cycles_before,
      blocksparse_ticks_after - blocksparse_ticks_before);
  }
}


int main(int argc, char ** argv) {
  run_tests();
  return 0;
}




