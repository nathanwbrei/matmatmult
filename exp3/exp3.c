

#include<stdio.h>
#include<time.h>
#include "../include/timing.h"
#include "../include/colmajor.h"
#include "../include/patternsparse.h"
#include "libxsmm_gemms.h"




void StarTiledFull (const double* A, const double* B, double* C) {
  __asm__ __volatile__("movq %0, %%rdi\n\t"
                       "movq %1, %%rsi\n\t"
                       "movq %2, %%rdx\n\t"
                       "movq $0, %%r13\n\t"
                       "0:\n\t"
                       "movq $0, %%r12\n\t"
                       "1:\n\t"
                       "vmovapd 0(%%rdx), %%zmm0\n\t"
                       "vmovapd 320(%%rdx), %%zmm1\n\t"
                       "vmovapd 640(%%rdx), %%zmm2\n\t"
                       "vmovapd 960(%%rdx), %%zmm3\n\t"
                       "vmovapd 1280(%%rdx), %%zmm4\n\t"
                       "vmovapd 1600(%%rdx), %%zmm5\n\t"
                       "vmovapd 1920(%%rdx), %%zmm6\n\t"
                       "vmovapd 2240(%%rdx), %%zmm7\n\t"
                       "vmovapd 2560(%%rdx), %%zmm8\n\t"
                       "vmovapd 2880(%%rdx), %%zmm9\n\t"
                       "vmovapd 3200(%%rdx), %%zmm10\n\t"
                       "vmovapd 3520(%%rdx), %%zmm11\n\t"
                       "vmovapd 3840(%%rdx), %%zmm12\n\t"
                       "vmovapd 4160(%%rdx), %%zmm13\n\t"
                       "vmovapd 4480(%%rdx), %%zmm14\n\t"
                       "vmovapd 0(%%rdi), %%zmm23\n\t"
                       "vmovapd 320(%%rdi), %%zmm24\n\t"
                       "vmovapd 640(%%rdi), %%zmm25\n\t"
                       "vmovapd 960(%%rdi), %%zmm26\n\t"
                       "vmovapd 1280(%%rdi), %%zmm27\n\t"
                       "vmovapd 1600(%%rdi), %%zmm28\n\t"
                       "vmovapd 1920(%%rdi), %%zmm29\n\t"
                       "vmovapd 2240(%%rdi), %%zmm30\n\t"
                       "vmovapd 2560(%%rdi), %%zmm31\n\t"
                       "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm23, %%zmm6\n\t"
                       "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm24, %%zmm7\n\t"
                       "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm25, %%zmm8\n\t"
                       "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm26, %%zmm6\n\t"
                       "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm26, %%zmm7\n\t"
                       "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm26, %%zmm8\n\t"
                       "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm27, %%zmm7\n\t"
                       "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm27, %%zmm8\n\t"
                       "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm28, %%zmm6\n\t"
                       "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm28, %%zmm8\n\t"
                       "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm29, %%zmm0\n\t"
                       "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm29, %%zmm1\n\t"
                       "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm29, %%zmm2\n\t"
                       "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm29, %%zmm3\n\t"
                       "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm29, %%zmm5\n\t"
                       "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm29, %%zmm9\n\t"
                       "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm29, %%zmm12\n\t"
                       "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm29, %%zmm14\n\t"
                       "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm30, %%zmm0\n\t"
                       "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm30, %%zmm1\n\t"
                       "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm30, %%zmm2\n\t"
                       "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm30, %%zmm3\n\t"
                       "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm30, %%zmm4\n\t"
                       "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm30, %%zmm10\n\t"
                       "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm30, %%zmm12\n\t"
                       "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm30, %%zmm13\n\t"
                       "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm31, %%zmm0\n\t"
                       "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm31, %%zmm1\n\t"
                       "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm31, %%zmm2\n\t"
                       "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm31, %%zmm4\n\t"
                       "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm31, %%zmm5\n\t"
                       "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm31, %%zmm11\n\t"
                       "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm31, %%zmm13\n\t"
                       "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm31, %%zmm14\n\t"
                       "vmovapd %%zmm0, 0(%%rdx)\n\t"
                       "vmovapd %%zmm1, 320(%%rdx)\n\t"
                       "vmovapd %%zmm2, 640(%%rdx)\n\t"
                       "vmovapd %%zmm3, 960(%%rdx)\n\t"
                       "vmovapd %%zmm4, 1280(%%rdx)\n\t"
                       "vmovapd %%zmm5, 1600(%%rdx)\n\t"
                       "vmovapd %%zmm6, 1920(%%rdx)\n\t"
                       "vmovapd %%zmm7, 2240(%%rdx)\n\t"
                       "vmovapd %%zmm8, 2560(%%rdx)\n\t"
                       "vmovapd %%zmm9, 2880(%%rdx)\n\t"
                       "vmovapd %%zmm10, 3200(%%rdx)\n\t"
                       "vmovapd %%zmm11, 3520(%%rdx)\n\t"
                       "vmovapd %%zmm12, 3840(%%rdx)\n\t"
                       "vmovapd %%zmm13, 4160(%%rdx)\n\t"
                       "vmovapd %%zmm14, 4480(%%rdx)\n\t"
                       "addq $64, %%rdi\n\t"
                       "addq $64, %%rdx\n\t"
                       "addq $1, %%r12\n\t"
                       "cmpq $5, %%r12\n\t"
                       "jl 1b\n\t"
                       "addq $-320, %%rdi\n\t"
                       "addq $4480, %%rdx\n\t"
                       "addq $272, %%rsi\n\t"
                       "addq $15, %%r13\n\t"
                       "cmpq $15, %%r13\n\t"
                       "jl 0b\n\t"
                       : : "m"(A), "m"(B), "m"(C) : "r12","r13","rdi","rdx","rsi","zmm0","zmm1","zmm10","zmm11","zmm12","zmm13","zmm14","zmm2","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8","zmm9");
};


 


int main(int argc, char ** argv) {

    struct timespec start, end;
    struct colmajor A = zeros(40, 9);
    struct colmajor C_expected = zeros(40, 15);
    struct colmajor C_actual = zeros(40, 15);
    struct patternsparse B = create_patternsparse(9, 15, 9, 15);
    struct colmajor B_dense = zeros(9,15);
    fill(&A, 1, 2);

        update_pattern(&B, 6, 0, 1);
    update_pattern(&B, 7, 0, 1);
    update_pattern(&B, 8, 0, 1);
    update_pattern(&B, 6, 1, 1);
    update_pattern(&B, 7, 1, 1);
    update_pattern(&B, 8, 1, 1);
    update_pattern(&B, 6, 2, 1);
    update_pattern(&B, 7, 2, 1);
    update_pattern(&B, 8, 2, 1);
    update_pattern(&B, 6, 3, 1);
    update_pattern(&B, 7, 3, 1);
    update_pattern(&B, 7, 4, 1);
    update_pattern(&B, 8, 4, 1);
    update_pattern(&B, 6, 5, 1);
    update_pattern(&B, 8, 5, 1);
    update_pattern(&B, 0, 6, 1);
    update_pattern(&B, 3, 6, 1);
    update_pattern(&B, 5, 6, 1);
    update_pattern(&B, 1, 7, 1);
    update_pattern(&B, 3, 7, 1);
    update_pattern(&B, 4, 7, 1);
    update_pattern(&B, 2, 8, 1);
    update_pattern(&B, 3, 8, 1);
    update_pattern(&B, 4, 8, 1);
    update_pattern(&B, 5, 8, 1);
    update_pattern(&B, 6, 9, 1);
    update_pattern(&B, 7, 10, 1);
    update_pattern(&B, 8, 11, 1);
    update_pattern(&B, 6, 12, 1);
    update_pattern(&B, 7, 12, 1);
    update_pattern(&B, 7, 13, 1);
    update_pattern(&B, 8, 13, 1);
    update_pattern(&B, 6, 14, 1);
    update_pattern(&B, 8, 14, 1);
    fill_sparse(&B, 1, 2);
    sparse2dense(&B, &B_dense);

    print_matrix(&B_dense);
     

    /***** Testing Libxsmm *****/

    reset(&C_expected);
    reset(&C_actual);

    ddmm(&A, &B_dense, &C_expected);
    seissol_star_knl(A.values, B_dense.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
      seissol_star_knl(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("Libxsmm, %lf\n",
           1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));


    /***** Testing StarTiledFull *****/

    reset(&C_expected);
    reset(&C_actual);

    ddmm(&A, &B_dense, &C_expected);
    StarTiledFull(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        StarTiledFull(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("StarTiledFull, %lf\n",
        1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));
    

 



}
