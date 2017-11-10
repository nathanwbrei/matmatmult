

#include<stdio.h>
#include<time.h>
#include "../include/timing.h"
#include "../include/colmajor.h"
#include "../include/gemms_libxsmm.h"
#include "../include/test.c"



int main(int argc, char ** argv) {

    clock_t ticks_before, ticks_after;
    uint64_t cycles_before, cycles_after;
    struct colmajor A = zeros(48, 9);
    struct colmajor B = zeros(9,9);
    struct colmajor C_expected = zeros(48, 9);
    struct colmajor C_actual = zeros(48, 9);
struct timespec start, end;
    fill(&A, 3, 2);
    fill(&B, 7, 2);
    ddmm(&A, &B, &C_expected);


    /***** Testing libxsmm dense 48x9x9 snb *****/

/*    reset(&C_actual);
    gemm_dense_snb(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    ticks_before = clock();
    cycles_before = tsc();
    for (int t=0; t<3000; t++)
        gemm_dense_snb(A.values, B.values, C_actual.values);
    ticks_after = clock();
    cycles_after = tsc();

    printf("libxsmm_dense_snb, %lud, %ld\n",
        cycles_after - cycles_before,
        ticks_after - ticks_before );*/
    


    /***** Testing libxsmm dense 48x9x9 hsw *****/

    reset(&C_actual);
    gemm_dense_hsw(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    /*ticks_before = clock();
    cycles_before = tsc();*/
 clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<30000; t++) {
        gemm_dense_hsw(A.values, B.values, C_actual.values);
        __asm__ __volatile__("");
    }
 clock_gettime(CLOCK_MONOTONIC, &end);

    printf("libxsmm dense, %lu, %ld, %lf\n",
        cycles_after - cycles_before,
        ticks_after - ticks_before,
1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));


    reset(&C_actual);
   test(A.values, B.values, C_actual.values);
    //assert_equals(&C_expected, &C_actual);

    /*ticks_before = clock();
    cycles_before = tsc();*/
 clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<30000; t++) {
        test(A.values, B.values, C_actual.values);
        __asm__ __volatile__("");
    }
 clock_gettime(CLOCK_MONOTONIC, &end);

    printf("libxsmm sparse, %lu, %ld, %lf\n",
        cycles_after - cycles_before,
        ticks_after - ticks_before,
1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));



/*    ticks_after = clock();
    cycles_after = tsc();

    printf("libxsmm_dense_hsw, %lud, %ld\n",
        cycles_after - cycles_before,
        ticks_after - ticks_before );*/



    /***** Testing libxsmm dense 48x9x9 snb *****/

/*    reset(&C_actual);
    gemm_dense_knl(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    ticks_before = clock();
    cycles_before = tsc();
    for (int t=0; t<3000; t++)
        gemm_dense_knl(A.values, B.values, C_actual.values);
    ticks_after = clock();
    cycles_after = tsc();

    printf("libxsmm_dense_knl, %lud, %ld\n",
        cycles_after - cycles_before,
        ticks_after - ticks_before );*/

}

