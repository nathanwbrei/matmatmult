

#include<stdio.h>
#include<time.h>
#include "../common/timing.h"
#include "../common/colmajor.h"
#include "../common/gemms_libxsmm.h"



int main(int argc, char ** argv) {

    clock_t ticks_before, ticks_after;
    uint64_t cycles_before, cycles_after;
    struct colmajor A = zeros(48, 9);
    struct colmajor B = zeros(9,9);
    struct colmajor C_expected = zeros(48, 9);
    struct colmajor C_actual = zeros(48, 9);
    fill(&A, 3, 2);
    fill(&B, 7, 2);
    ddmm(&A, &B, &C_expected);


    /***** Testing libxsmm dense 48x9x9 snb *****/

    reset(&C_actual);
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
        ticks_after - ticks_before );
    


    /***** Testing libxsmm dense 48x9x9 hsw *****/

    reset(&C_actual);
    gemm_dense_hsw(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    ticks_before = clock();
    cycles_before = tsc();
    for (int t=0; t<3000; t++)
        gemm_dense_hsw(A.values, B.values, C_actual.values);
    ticks_after = clock();
    cycles_after = tsc();

    printf("libxsmm_dense_hsw, %lud, %ld\n",
        cycles_after - cycles_before,
        ticks_after - ticks_before );



    /***** Testing libxsmm dense 48x9x9 snb *****/

    reset(&C_actual);
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
        ticks_after - ticks_before );

}

