

#include<stdio.h>
#include<time.h>
#include "../include/timing.h"
#include "../include/colmajor.h"
#include "../include/gemms_libxsmm.h"
#include "../include/test.c"



int main(int argc, char ** argv) {

    struct colmajor A = zeros(48, 9);
    struct colmajor B = zeros(9,9);
    struct colmajor C_expected = zeros(48, 9);
    struct colmajor C_actual = zeros(48, 9);
    struct timespec start, end;
    fill(&A, 3, 2);
    fill(&B, 7, 2);
    ddmm(&A, &B, &C_expected);



    /***** Testing libxsmm dense 48x9x9 snb *****/
    reset(&C_actual);
    gemm_dense_snb(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<30000; t++) {
        gemm_dense_snb(A.values, B.values, C_actual.values);
        __asm__ __volatile__("");
    }
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("libxsmm_dense_snb, %lf\n",
           1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));



    /***** Testing libxsmm dense 48x9x9 hsw *****/
    reset(&C_actual);
    gemm_dense_hsw(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<30000; t++) {
        gemm_dense_hsw(A.values, B.values, C_actual.values);
        __asm__ __volatile__("");
    }
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("libxsmm_dense_hsw, %lf\n",
           1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));



    /***** Testing libxsmm dense 48x9x9 knl *****/
    reset(&C_actual);
    gemm_dense_knl(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<30000; t++) {
      gemm_dense_knl(A.values, B.values, C_actual.values);
      __asm__ __volatile__("");
    }
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("libxsmm_dense_hsw, %lf\n",
           1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));




    /***** Testing libxsmm sparse 48x9x9 knl *****/
    reset(&C_actual);
    test(A.values, B.values, C_actual.values);
    //assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<30000; t++) {
      test(A.values, B.values, C_actual.values);
      __asm__ __volatile__("");
    }
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("libxsmm_sparse_knl, %lf\n",
           1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));

};




