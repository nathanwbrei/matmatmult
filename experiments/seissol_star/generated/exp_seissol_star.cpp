

#include <iostream>
#include <memory>

#include "SparseMatrix.hpp"
#include "DenseMatrix.hpp"
#include "timing.h"
#include "libxsmm_gemms.h"
 



void exp_seissol_star9x15_unrolled (const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"
    "movq %1, %%rsi\n\t"
    "movq %2, %%rdx\n\t"
      // unrolled_40x15x9
        // for r12 <- 0:1:5)
        "movq $0, %%r12\r\n"
        "LOOP_TOP_0_%=:\r\n"
          // Unrolling over bn and bk
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm17\r\n"                             // C [0,0] [0,0]
            "vmovapd 320(%%rdx), %%zmm18\r\n"                           // C [0,0] [0,1]
            "vmovapd 640(%%rdx), %%zmm19\r\n"                           // C [0,0] [0,2]
            "vmovapd 960(%%rdx), %%zmm20\r\n"                           // C [0,0] [0,3]
            "vmovapd 1280(%%rdx), %%zmm21\r\n"                          // C [0,0] [0,4]
            "vmovapd 1600(%%rdx), %%zmm22\r\n"                          // C [0,0] [0,5]
            "vmovapd 1920(%%rdx), %%zmm23\r\n"                          // C [0,0] [0,6]
            "vmovapd 2240(%%rdx), %%zmm24\r\n"                          // C [0,0] [0,7]
            "vmovapd 2560(%%rdx), %%zmm25\r\n"                          // C [0,0] [0,8]
            "vmovapd 2880(%%rdx), %%zmm26\r\n"                          // C [0,0] [0,9]
            "vmovapd 3200(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,10]
            "vmovapd 3520(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,11]
            "vmovapd 3840(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,12]
            "vmovapd 4160(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,13]
            "vmovapd 4480(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,14]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
              "vmovapd 320(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
              "vmovapd 640(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
              "vmovapd 960(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
              "vmovapd 1280(%%rdi), %%zmm4\r\n"                           // A [0,0] [0,4]
              "vmovapd 1600(%%rdi), %%zmm5\r\n"                           // A [0,0] [0,5]
              "vmovapd 1920(%%rdi), %%zmm6\r\n"                           // A [0,0] [0,6]
              "vmovapd 2240(%%rdi), %%zmm7\r\n"                           // A [0,0] [0,7]
              "vmovapd 2560(%%rdi), %%zmm8\r\n"                           // A [0,0] [0,8]
            "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm23\r\n"       // C[0:8,6] += A[0:8,0]*B[0,0][0,6]
            "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"       // C[0:8,7] += A[0:8,1]*B[0,0][1,7]
            "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"       // C[0:8,8] += A[0:8,2]*B[0,0][2,8]
            "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm23\r\n"       // C[0:8,6] += A[0:8,3]*B[0,0][3,6]
            "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"       // C[0:8,7] += A[0:8,3]*B[0,0][3,7]
            "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"       // C[0:8,8] += A[0:8,3]*B[0,0][3,8]
            "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"       // C[0:8,7] += A[0:8,4]*B[0,0][4,7]
            "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"       // C[0:8,8] += A[0:8,4]*B[0,0][4,8]
            "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm23\r\n"       // C[0:8,6] += A[0:8,5]*B[0,0][5,6]
            "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"       // C[0:8,8] += A[0:8,5]*B[0,0][5,8]
            "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm17\r\n"         // C[0:8,0] += A[0:8,6]*B[0,0][6,0]
            "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm18\r\n"        // C[0:8,1] += A[0:8,6]*B[0,0][6,1]
            "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm19\r\n"        // C[0:8,2] += A[0:8,6]*B[0,0][6,2]
            "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm20\r\n"        // C[0:8,3] += A[0:8,6]*B[0,0][6,3]
            "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm6, %%zmm22\r\n"       // C[0:8,5] += A[0:8,6]*B[0,0][6,5]
            "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0:8,9] += A[0:8,6]*B[0,0][6,9]
            "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0:8,12] += A[0:8,6]*B[0,0][6,12]
            "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0:8,14] += A[0:8,6]*B[0,0][6,14]
            "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm17\r\n"         // C[0:8,0] += A[0:8,7]*B[0,0][7,0]
            "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm7, %%zmm18\r\n"        // C[0:8,1] += A[0:8,7]*B[0,0][7,1]
            "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm19\r\n"        // C[0:8,2] += A[0:8,7]*B[0,0][7,2]
            "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm20\r\n"        // C[0:8,3] += A[0:8,7]*B[0,0][7,3]
            "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm21\r\n"        // C[0:8,4] += A[0:8,7]*B[0,0][7,4]
            "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0:8,10] += A[0:8,7]*B[0,0][7,10]
            "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0:8,12] += A[0:8,7]*B[0,0][7,12]
            "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0:8,13] += A[0:8,7]*B[0,0][7,13]
            "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm8, %%zmm17\r\n"        // C[0:8,0] += A[0:8,8]*B[0,0][8,0]
            "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm8, %%zmm18\r\n"        // C[0:8,1] += A[0:8,8]*B[0,0][8,1]
            "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm8, %%zmm19\r\n"        // C[0:8,2] += A[0:8,8]*B[0,0][8,2]
            "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm8, %%zmm21\r\n"        // C[0:8,4] += A[0:8,8]*B[0,0][8,4]
            "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm8, %%zmm22\r\n"       // C[0:8,5] += A[0:8,8]*B[0,0][8,5]
            "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm8, %%zmm28\r\n"       // C[0:8,11] += A[0:8,8]*B[0,0][8,11]
            "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm8, %%zmm30\r\n"       // C[0:8,13] += A[0:8,8]*B[0,0][8,13]
            "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm8, %%zmm31\r\n"       // C[0:8,14] += A[0:8,8]*B[0,0][8,14]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm17, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm18, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm19, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
            "vmovapd %%zmm20, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
            "vmovapd %%zmm21, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
            "vmovapd %%zmm22, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
            "vmovapd %%zmm23, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
            "vmovapd %%zmm24, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
            "vmovapd %%zmm25, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
            "vmovapd %%zmm26, 2880(%%rdx)\r\n"                          // C [0,0] [0,9]
            "vmovapd %%zmm27, 3200(%%rdx)\r\n"                          // C [0,0] [0,10]
            "vmovapd %%zmm28, 3520(%%rdx)\r\n"                          // C [0,0] [0,11]
            "vmovapd %%zmm29, 3840(%%rdx)\r\n"                          // C [0,0] [0,12]
            "vmovapd %%zmm30, 4160(%%rdx)\r\n"                          // C [0,0] [0,13]
            "vmovapd %%zmm31, 4480(%%rdx)\r\n"                          // C [0,0] [0,14]
        "addq $64, %%rdi\r\n"                                       // Move A to (d=1,r=0)
        "addq $64, %%rdx\r\n"                                       // Move C to (d=1,r=0)
        "addq $1, %%r12\r\n"
        "cmp $5, %%r12\r\n"
        "jl LOOP_TOP_0_%=\r\n"

    : : "m"(A), "m"(B), "m"(C) : "r12","rdi","rdx","zmm0","zmm1","zmm17","zmm18","zmm19","zmm2","zmm20","zmm21","zmm22","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8");
};



void exp_seissol_star9x15_general (const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"
    "movq %1, %%rsi\n\t"
    "movq %2, %%rdx\n\t"
      // Unrolled FullyGeneralSparse
      "jmp END_SWITCH_%=\r\n"
      "CASE_0_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 320(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
          "vmovapd 640(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 960(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 1280(%%rdi), %%zmm4\r\n"                           // A [0,0] [0,4]
          "vmovapd 1600(%%rdi), %%zmm5\r\n"                           // A [0,0] [0,5]
          "vmovapd 1920(%%rdi), %%zmm6\r\n"                           // A [0,0] [0,6]
          "vmovapd 2240(%%rdi), %%zmm7\r\n"                           // A [0,0] [0,7]
          "vmovapd 2560(%%rdi), %%zmm8\r\n"                           // A [0,0] [0,8]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm23\r\n"       // C[0:8,6] += A[0:8,0]*block_0[0,0][0,6]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"       // C[0:8,7] += A[0:8,1]*block_0[0,0][1,7]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"       // C[0:8,8] += A[0:8,2]*block_0[0,0][2,8]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm23\r\n"       // C[0:8,6] += A[0:8,3]*block_0[0,0][3,6]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"       // C[0:8,7] += A[0:8,3]*block_0[0,0][3,7]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"       // C[0:8,8] += A[0:8,3]*block_0[0,0][3,8]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"       // C[0:8,7] += A[0:8,4]*block_0[0,0][4,7]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"       // C[0:8,8] += A[0:8,4]*block_0[0,0][4,8]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm23\r\n"       // C[0:8,6] += A[0:8,5]*block_0[0,0][5,6]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"       // C[0:8,8] += A[0:8,5]*block_0[0,0][5,8]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm17\r\n"         // C[0:8,0] += A[0:8,6]*block_0[0,0][6,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm18\r\n"        // C[0:8,1] += A[0:8,6]*block_0[0,0][6,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm19\r\n"        // C[0:8,2] += A[0:8,6]*block_0[0,0][6,2]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm20\r\n"        // C[0:8,3] += A[0:8,6]*block_0[0,0][6,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm6, %%zmm22\r\n"       // C[0:8,5] += A[0:8,6]*block_0[0,0][6,5]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0:8,9] += A[0:8,6]*block_0[0,0][6,9]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0:8,12] += A[0:8,6]*block_0[0,0][6,12]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0:8,14] += A[0:8,6]*block_0[0,0][6,14]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm17\r\n"         // C[0:8,0] += A[0:8,7]*block_0[0,0][7,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm7, %%zmm18\r\n"        // C[0:8,1] += A[0:8,7]*block_0[0,0][7,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm19\r\n"        // C[0:8,2] += A[0:8,7]*block_0[0,0][7,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm20\r\n"        // C[0:8,3] += A[0:8,7]*block_0[0,0][7,3]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm21\r\n"        // C[0:8,4] += A[0:8,7]*block_0[0,0][7,4]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0:8,10] += A[0:8,7]*block_0[0,0][7,10]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0:8,12] += A[0:8,7]*block_0[0,0][7,12]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0:8,13] += A[0:8,7]*block_0[0,0][7,13]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm8, %%zmm17\r\n"        // C[0:8,0] += A[0:8,8]*block_0[0,0][8,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm8, %%zmm18\r\n"        // C[0:8,1] += A[0:8,8]*block_0[0,0][8,1]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm8, %%zmm19\r\n"        // C[0:8,2] += A[0:8,8]*block_0[0,0][8,2]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm8, %%zmm21\r\n"        // C[0:8,4] += A[0:8,8]*block_0[0,0][8,4]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm8, %%zmm22\r\n"       // C[0:8,5] += A[0:8,8]*block_0[0,0][8,5]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm8, %%zmm28\r\n"       // C[0:8,11] += A[0:8,8]*block_0[0,0][8,11]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm8, %%zmm30\r\n"       // C[0:8,13] += A[0:8,8]*block_0[0,0][8,13]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm8, %%zmm31\r\n"       // C[0:8,14] += A[0:8,8]*block_0[0,0][8,14]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
      "addq $0, %%rdx\r\n"                                        // Move C to (d=0,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm17\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm18\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm19\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm20\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm21\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm22\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm23\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm24\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm25\r\n"                          // C [0,0] [0,8]
        "vmovapd 2880(%%rdx), %%zmm26\r\n"                          // C [0,0] [0,9]
        "vmovapd 3200(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,10]
        "vmovapd 3520(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,11]
        "vmovapd 3840(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,12]
        "vmovapd 4160(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,13]
        "vmovapd 4480(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,14]
      "movq $BLOCK_0_0_0_%=, %%r10\r\n"
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_0_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm17, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm18, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm19, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm20, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm21, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm22, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm23, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm24, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm25, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
        "vmovapd %%zmm26, 2880(%%rdx)\r\n"                          // C [0,0] [0,9]
        "vmovapd %%zmm27, 3200(%%rdx)\r\n"                          // C [0,0] [0,10]
        "vmovapd %%zmm28, 3520(%%rdx)\r\n"                          // C [0,0] [0,11]
        "vmovapd %%zmm29, 3840(%%rdx)\r\n"                          // C [0,0] [0,12]
        "vmovapd %%zmm30, 4160(%%rdx)\r\n"                          // C [0,0] [0,13]
        "vmovapd %%zmm31, 4480(%%rdx)\r\n"                          // C [0,0] [0,14]
      "addq $64, %%rdx\r\n"                                       // Move C to (d=1,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm17\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm18\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm19\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm20\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm21\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm22\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm23\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm24\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm25\r\n"                          // C [0,0] [0,8]
        "vmovapd 2880(%%rdx), %%zmm26\r\n"                          // C [0,0] [0,9]
        "vmovapd 3200(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,10]
        "vmovapd 3520(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,11]
        "vmovapd 3840(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,12]
        "vmovapd 4160(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,13]
        "vmovapd 4480(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,14]
      "movq $BLOCK_1_0_0_%=, %%r10\r\n"
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $64, %%rdi\r\n"                                       // Move A to (d=1,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_1_0_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm17, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm18, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm19, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm20, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm21, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm22, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm23, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm24, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm25, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
        "vmovapd %%zmm26, 2880(%%rdx)\r\n"                          // C [0,0] [0,9]
        "vmovapd %%zmm27, 3200(%%rdx)\r\n"                          // C [0,0] [0,10]
        "vmovapd %%zmm28, 3520(%%rdx)\r\n"                          // C [0,0] [0,11]
        "vmovapd %%zmm29, 3840(%%rdx)\r\n"                          // C [0,0] [0,12]
        "vmovapd %%zmm30, 4160(%%rdx)\r\n"                          // C [0,0] [0,13]
        "vmovapd %%zmm31, 4480(%%rdx)\r\n"                          // C [0,0] [0,14]
      "addq $64, %%rdx\r\n"                                       // Move C to (d=2,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm17\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm18\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm19\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm20\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm21\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm22\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm23\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm24\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm25\r\n"                          // C [0,0] [0,8]
        "vmovapd 2880(%%rdx), %%zmm26\r\n"                          // C [0,0] [0,9]
        "vmovapd 3200(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,10]
        "vmovapd 3520(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,11]
        "vmovapd 3840(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,12]
        "vmovapd 4160(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,13]
        "vmovapd 4480(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,14]
      "movq $BLOCK_2_0_0_%=, %%r10\r\n"
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $64, %%rdi\r\n"                                       // Move A to (d=2,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_2_0_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm17, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm18, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm19, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm20, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm21, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm22, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm23, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm24, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm25, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
        "vmovapd %%zmm26, 2880(%%rdx)\r\n"                          // C [0,0] [0,9]
        "vmovapd %%zmm27, 3200(%%rdx)\r\n"                          // C [0,0] [0,10]
        "vmovapd %%zmm28, 3520(%%rdx)\r\n"                          // C [0,0] [0,11]
        "vmovapd %%zmm29, 3840(%%rdx)\r\n"                          // C [0,0] [0,12]
        "vmovapd %%zmm30, 4160(%%rdx)\r\n"                          // C [0,0] [0,13]
        "vmovapd %%zmm31, 4480(%%rdx)\r\n"                          // C [0,0] [0,14]
      "addq $64, %%rdx\r\n"                                       // Move C to (d=3,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm17\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm18\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm19\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm20\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm21\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm22\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm23\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm24\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm25\r\n"                          // C [0,0] [0,8]
        "vmovapd 2880(%%rdx), %%zmm26\r\n"                          // C [0,0] [0,9]
        "vmovapd 3200(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,10]
        "vmovapd 3520(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,11]
        "vmovapd 3840(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,12]
        "vmovapd 4160(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,13]
        "vmovapd 4480(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,14]
      "movq $BLOCK_3_0_0_%=, %%r10\r\n"
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $64, %%rdi\r\n"                                       // Move A to (d=3,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_3_0_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm17, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm18, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm19, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm20, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm21, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm22, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm23, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm24, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm25, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
        "vmovapd %%zmm26, 2880(%%rdx)\r\n"                          // C [0,0] [0,9]
        "vmovapd %%zmm27, 3200(%%rdx)\r\n"                          // C [0,0] [0,10]
        "vmovapd %%zmm28, 3520(%%rdx)\r\n"                          // C [0,0] [0,11]
        "vmovapd %%zmm29, 3840(%%rdx)\r\n"                          // C [0,0] [0,12]
        "vmovapd %%zmm30, 4160(%%rdx)\r\n"                          // C [0,0] [0,13]
        "vmovapd %%zmm31, 4480(%%rdx)\r\n"                          // C [0,0] [0,14]
      "addq $64, %%rdx\r\n"                                       // Move C to (d=4,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm17\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm18\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm19\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm20\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm21\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm22\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm23\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm24\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm25\r\n"                          // C [0,0] [0,8]
        "vmovapd 2880(%%rdx), %%zmm26\r\n"                          // C [0,0] [0,9]
        "vmovapd 3200(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,10]
        "vmovapd 3520(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,11]
        "vmovapd 3840(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,12]
        "vmovapd 4160(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,13]
        "vmovapd 4480(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,14]
      "movq $BLOCK_4_0_0_%=, %%r10\r\n"
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $64, %%rdi\r\n"                                       // Move A to (d=4,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_4_0_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm17, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm18, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm19, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm20, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm21, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm22, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm23, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm24, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm25, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
        "vmovapd %%zmm26, 2880(%%rdx)\r\n"                          // C [0,0] [0,9]
        "vmovapd %%zmm27, 3200(%%rdx)\r\n"                          // C [0,0] [0,10]
        "vmovapd %%zmm28, 3520(%%rdx)\r\n"                          // C [0,0] [0,11]
        "vmovapd %%zmm29, 3840(%%rdx)\r\n"                          // C [0,0] [0,12]
        "vmovapd %%zmm30, 4160(%%rdx)\r\n"                          // C [0,0] [0,13]
        "vmovapd %%zmm31, 4480(%%rdx)\r\n"                          // C [0,0] [0,14]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rdx","rsi","zmm0","zmm1","zmm17","zmm18","zmm19","zmm2","zmm20","zmm21","zmm22","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8");
};



void exp_seissol_star9x9_unrolled (const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"
    "movq %1, %%rsi\n\t"
    "movq %2, %%rdx\n\t"
      // unrolled_40x9x9
        // for r12 <- 0:1:5)
        "movq $0, %%r12\r\n"
        "LOOP_TOP_1_%=:\r\n"
          // Unrolling over bn and bk
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
            "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
            "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
            "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
            "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
            "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
            "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
            "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
            "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
              "vmovapd 320(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
              "vmovapd 640(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
              "vmovapd 960(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
              "vmovapd 1280(%%rdi), %%zmm4\r\n"                           // A [0,0] [0,4]
              "vmovapd 1600(%%rdi), %%zmm5\r\n"                           // A [0,0] [0,5]
              "vmovapd 1920(%%rdi), %%zmm6\r\n"                           // A [0,0] [0,6]
              "vmovapd 2240(%%rdi), %%zmm7\r\n"                           // A [0,0] [0,7]
              "vmovapd 2560(%%rdi), %%zmm8\r\n"                           // A [0,0] [0,8]
            "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0:8,6] += A[0:8,0]*B[0,0][0,6]
            "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0:8,7] += A[0:8,1]*B[0,0][1,7]
            "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0:8,8] += A[0:8,2]*B[0,0][2,8]
            "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0:8,6] += A[0:8,3]*B[0,0][3,6]
            "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0:8,7] += A[0:8,3]*B[0,0][3,7]
            "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0:8,8] += A[0:8,3]*B[0,0][3,8]
            "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0:8,7] += A[0:8,4]*B[0,0][4,7]
            "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0:8,8] += A[0:8,4]*B[0,0][4,8]
            "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0:8,6] += A[0:8,5]*B[0,0][5,6]
            "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0:8,8] += A[0:8,5]*B[0,0][5,8]
            "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm23\r\n"         // C[0:8,0] += A[0:8,6]*B[0,0][6,0]
            "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0:8,1] += A[0:8,6]*B[0,0][6,1]
            "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0:8,2] += A[0:8,6]*B[0,0][6,2]
            "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0:8,3] += A[0:8,6]*B[0,0][6,3]
            "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0:8,5] += A[0:8,6]*B[0,0][6,5]
            "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm23\r\n"         // C[0:8,0] += A[0:8,7]*B[0,0][7,0]
            "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0:8,1] += A[0:8,7]*B[0,0][7,1]
            "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0:8,2] += A[0:8,7]*B[0,0][7,2]
            "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0:8,3] += A[0:8,7]*B[0,0][7,3]
            "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0:8,4] += A[0:8,7]*B[0,0][7,4]
            "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm8, %%zmm23\r\n"        // C[0:8,0] += A[0:8,8]*B[0,0][8,0]
            "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm8, %%zmm24\r\n"        // C[0:8,1] += A[0:8,8]*B[0,0][8,1]
            "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm8, %%zmm25\r\n"        // C[0:8,2] += A[0:8,8]*B[0,0][8,2]
            "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm8, %%zmm27\r\n"        // C[0:8,4] += A[0:8,8]*B[0,0][8,4]
            "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm8, %%zmm28\r\n"       // C[0:8,5] += A[0:8,8]*B[0,0][8,5]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
            "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
            "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
            "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
            "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
            "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
            "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
        "addq $64, %%rdi\r\n"                                       // Move A to (d=1,r=0)
        "addq $64, %%rdx\r\n"                                       // Move C to (d=1,r=0)
        "addq $1, %%r12\r\n"
        "cmp $5, %%r12\r\n"
        "jl LOOP_TOP_1_%=\r\n"

    : : "m"(A), "m"(B), "m"(C) : "r12","rdi","rdx","zmm0","zmm1","zmm2","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8");
};



void exp_seissol_star9x9_general (const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"
    "movq %1, %%rsi\n\t"
    "movq %2, %%rdx\n\t"
      // Unrolled FullyGeneralSparse
      "jmp END_SWITCH_%=\r\n"
      "CASE_0_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 320(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
          "vmovapd 640(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 960(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 1280(%%rdi), %%zmm4\r\n"                           // A [0,0] [0,4]
          "vmovapd 1600(%%rdi), %%zmm5\r\n"                           // A [0,0] [0,5]
          "vmovapd 1920(%%rdi), %%zmm6\r\n"                           // A [0,0] [0,6]
          "vmovapd 2240(%%rdi), %%zmm7\r\n"                           // A [0,0] [0,7]
          "vmovapd 2560(%%rdi), %%zmm8\r\n"                           // A [0,0] [0,8]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0:8,6] += A[0:8,0]*block_0[0,0][0,6]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0:8,7] += A[0:8,1]*block_0[0,0][1,7]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0:8,8] += A[0:8,2]*block_0[0,0][2,8]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0:8,6] += A[0:8,3]*block_0[0,0][3,6]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0:8,7] += A[0:8,3]*block_0[0,0][3,7]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0:8,8] += A[0:8,3]*block_0[0,0][3,8]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0:8,7] += A[0:8,4]*block_0[0,0][4,7]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0:8,8] += A[0:8,4]*block_0[0,0][4,8]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0:8,6] += A[0:8,5]*block_0[0,0][5,6]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0:8,8] += A[0:8,5]*block_0[0,0][5,8]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm23\r\n"         // C[0:8,0] += A[0:8,6]*block_0[0,0][6,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0:8,1] += A[0:8,6]*block_0[0,0][6,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0:8,2] += A[0:8,6]*block_0[0,0][6,2]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0:8,3] += A[0:8,6]*block_0[0,0][6,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0:8,5] += A[0:8,6]*block_0[0,0][6,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm23\r\n"         // C[0:8,0] += A[0:8,7]*block_0[0,0][7,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0:8,1] += A[0:8,7]*block_0[0,0][7,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0:8,2] += A[0:8,7]*block_0[0,0][7,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0:8,3] += A[0:8,7]*block_0[0,0][7,3]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0:8,4] += A[0:8,7]*block_0[0,0][7,4]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm8, %%zmm23\r\n"        // C[0:8,0] += A[0:8,8]*block_0[0,0][8,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm8, %%zmm24\r\n"        // C[0:8,1] += A[0:8,8]*block_0[0,0][8,1]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm8, %%zmm25\r\n"        // C[0:8,2] += A[0:8,8]*block_0[0,0][8,2]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm8, %%zmm27\r\n"        // C[0:8,4] += A[0:8,8]*block_0[0,0][8,4]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm8, %%zmm28\r\n"       // C[0:8,5] += A[0:8,8]*block_0[0,0][8,5]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
      "addq $0, %%rdx\r\n"                                        // Move C to (d=0,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_0_0_0_%=, %%r10\r\n"
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_0_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $64, %%rdx\r\n"                                       // Move C to (d=1,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_1_0_0_%=, %%r10\r\n"
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $64, %%rdi\r\n"                                       // Move A to (d=1,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_1_0_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $64, %%rdx\r\n"                                       // Move C to (d=2,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_2_0_0_%=, %%r10\r\n"
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $64, %%rdi\r\n"                                       // Move A to (d=2,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_2_0_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $64, %%rdx\r\n"                                       // Move C to (d=3,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_3_0_0_%=, %%r10\r\n"
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $64, %%rdi\r\n"                                       // Move A to (d=3,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_3_0_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $64, %%rdx\r\n"                                       // Move C to (d=4,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_4_0_0_%=, %%r10\r\n"
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $64, %%rdi\r\n"                                       // Move A to (d=4,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_4_0_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rdx","rsi","zmm0","zmm1","zmm2","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8");
};



void exp_seissol_star_27x27_unrolled (const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"
    "movq %1, %%rsi\n\t"
    "movq %2, %%rdx\n\t"
      // unrolled_40x27x27
        // for r12 <- 0:1:5)
        "movq $0, %%r12\r\n"
        "LOOP_TOP_2_%=:\r\n"
          // Unrolling over bn and bk
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
            "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
            "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
            "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
            "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
            "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
            "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
            "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
            "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
              "vmovapd 320(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
              "vmovapd 640(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
              "vmovapd 960(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
              "vmovapd 1280(%%rdi), %%zmm4\r\n"                           // A [0,0] [0,4]
              "vmovapd 1600(%%rdi), %%zmm5\r\n"                           // A [0,0] [0,5]
              "vmovapd 1920(%%rdi), %%zmm6\r\n"                           // A [0,0] [0,6]
              "vmovapd 2240(%%rdi), %%zmm7\r\n"                           // A [0,0] [0,7]
              "vmovapd 2560(%%rdi), %%zmm8\r\n"                           // A [0,0] [0,8]
            "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0:8,6] += A[0:8,0]*B[0,0][0,6]
            "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0:8,7] += A[0:8,1]*B[0,0][1,7]
            "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0:8,8] += A[0:8,2]*B[0,0][2,8]
            "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0:8,6] += A[0:8,3]*B[0,0][3,6]
            "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0:8,7] += A[0:8,3]*B[0,0][3,7]
            "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0:8,8] += A[0:8,3]*B[0,0][3,8]
            "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0:8,7] += A[0:8,4]*B[0,0][4,7]
            "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0:8,8] += A[0:8,4]*B[0,0][4,8]
            "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0:8,6] += A[0:8,5]*B[0,0][5,6]
            "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0:8,8] += A[0:8,5]*B[0,0][5,8]
            "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm23\r\n"         // C[0:8,0] += A[0:8,6]*B[0,0][6,0]
            "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0:8,1] += A[0:8,6]*B[0,0][6,1]
            "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0:8,2] += A[0:8,6]*B[0,0][6,2]
            "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0:8,3] += A[0:8,6]*B[0,0][6,3]
            "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0:8,5] += A[0:8,6]*B[0,0][6,5]
            "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm23\r\n"         // C[0:8,0] += A[0:8,7]*B[0,0][7,0]
            "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0:8,1] += A[0:8,7]*B[0,0][7,1]
            "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0:8,2] += A[0:8,7]*B[0,0][7,2]
            "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0:8,3] += A[0:8,7]*B[0,0][7,3]
            "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0:8,4] += A[0:8,7]*B[0,0][7,4]
            "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm8, %%zmm23\r\n"        // C[0:8,0] += A[0:8,8]*B[0,0][8,0]
            "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm8, %%zmm24\r\n"        // C[0:8,1] += A[0:8,8]*B[0,0][8,1]
            "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm8, %%zmm25\r\n"        // C[0:8,2] += A[0:8,8]*B[0,0][8,2]
            "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm8, %%zmm27\r\n"        // C[0:8,4] += A[0:8,8]*B[0,0][8,4]
            "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm8, %%zmm28\r\n"       // C[0:8,5] += A[0:8,8]*B[0,0][8,5]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
            "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
            "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
            "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
            "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
            "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
            "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
          "addq $2880, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
            "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
            "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
            "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
            "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
            "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
            "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
            "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
            "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 1920(%%rdi), %%zmm6\r\n"                           // A [0,0] [0,6]
              "vmovapd 2240(%%rdi), %%zmm7\r\n"                           // A [0,0] [0,7]
              "vmovapd 2560(%%rdi), %%zmm8\r\n"                           // A [0,0] [0,8]
            "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm6, %%zmm23\r\n"       // C[0:8,0] += A[0:8,6]*B[0,1][6,0]
            "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0:8,3] += A[0:8,6]*B[0,1][6,3]
            "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0:8,5] += A[0:8,6]*B[0,1][6,5]
            "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0:8,6] += A[0:8,6]*B[0,1][6,6]
            "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"       // C[0:8,1] += A[0:8,7]*B[0,1][7,1]
            "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0:8,3] += A[0:8,7]*B[0,1][7,3]
            "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0:8,4] += A[0:8,7]*B[0,1][7,4]
            "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0:8,7] += A[0:8,7]*B[0,1][7,7]
            "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm8, %%zmm25\r\n"       // C[0:8,2] += A[0:8,8]*B[0,1][8,2]
            "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm8, %%zmm27\r\n"       // C[0:8,4] += A[0:8,8]*B[0,1][8,4]
            "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm8, %%zmm28\r\n"       // C[0:8,5] += A[0:8,8]*B[0,1][8,5]
            "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm8, %%zmm31\r\n"       // C[0:8,8] += A[0:8,8]*B[0,1][8,8]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
            "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
            "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
            "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
            "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
            "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
            "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
          "addq $2880, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
            "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
            "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
            "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
            "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
            "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
            "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
            "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
            "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 1920(%%rdi), %%zmm6\r\n"                           // A [0,0] [0,6]
              "vmovapd 2240(%%rdi), %%zmm7\r\n"                           // A [0,0] [0,7]
              "vmovapd 2560(%%rdi), %%zmm8\r\n"                           // A [0,0] [0,8]
            "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm6, %%zmm23\r\n"       // C[0:8,0] += A[0:8,6]*B[0,2][6,0]
            "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"       // C[0:8,2] += A[0:8,6]*B[0,2][6,2]
            "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0:8,3] += A[0:8,6]*B[0,2][6,3]
            "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0:8,6] += A[0:8,6]*B[0,2][6,6]
            "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0:8,8] += A[0:8,6]*B[0,2][6,8]
            "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm7, %%zmm23\r\n"       // C[0:8,0] += A[0:8,7]*B[0,2][7,0]
            "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"       // C[0:8,1] += A[0:8,7]*B[0,2][7,1]
            "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0:8,4] += A[0:8,7]*B[0,2][7,4]
            "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0:8,6] += A[0:8,7]*B[0,2][7,6]
            "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0:8,7] += A[0:8,7]*B[0,2][7,7]
            "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm8, %%zmm24\r\n"       // C[0:8,1] += A[0:8,8]*B[0,2][8,1]
            "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm8, %%zmm25\r\n"       // C[0:8,2] += A[0:8,8]*B[0,2][8,2]
            "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm8, %%zmm28\r\n"       // C[0:8,5] += A[0:8,8]*B[0,2][8,5]
            "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm8, %%zmm30\r\n"       // C[0:8,7] += A[0:8,8]*B[0,2][8,7]
            "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm8, %%zmm31\r\n"       // C[0:8,8] += A[0:8,8]*B[0,2][8,8]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
            "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
            "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
            "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
            "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
            "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
            "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
        "addq $64, %%rdi\r\n"                                       // Move A to (d=1,r=0)
        "addq $-5696, %%rdx\r\n"                                    // Move C to (d=1,r=-2)
        "addq $1, %%r12\r\n"
        "cmp $5, %%r12\r\n"
        "jl LOOP_TOP_2_%=\r\n"

    : : "m"(A), "m"(B), "m"(C) : "r12","rdi","rdx","zmm0","zmm1","zmm2","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8");
};



void exp_seissol_star_27x27_general (const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"
    "movq %1, %%rsi\n\t"
    "movq %2, %%rdx\n\t"
      // Unrolled FullyGeneralSparse
      "jmp END_SWITCH_%=\r\n"
      "CASE_0_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 320(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
          "vmovapd 640(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 960(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 1280(%%rdi), %%zmm4\r\n"                           // A [0,0] [0,4]
          "vmovapd 1600(%%rdi), %%zmm5\r\n"                           // A [0,0] [0,5]
          "vmovapd 1920(%%rdi), %%zmm6\r\n"                           // A [0,0] [0,6]
          "vmovapd 2240(%%rdi), %%zmm7\r\n"                           // A [0,0] [0,7]
          "vmovapd 2560(%%rdi), %%zmm8\r\n"                           // A [0,0] [0,8]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0:8,6] += A[0:8,0]*block_0[0,0][0,6]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0:8,7] += A[0:8,1]*block_0[0,0][1,7]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0:8,8] += A[0:8,2]*block_0[0,0][2,8]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0:8,6] += A[0:8,3]*block_0[0,0][3,6]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0:8,7] += A[0:8,3]*block_0[0,0][3,7]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0:8,8] += A[0:8,3]*block_0[0,0][3,8]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0:8,7] += A[0:8,4]*block_0[0,0][4,7]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0:8,8] += A[0:8,4]*block_0[0,0][4,8]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0:8,6] += A[0:8,5]*block_0[0,0][5,6]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0:8,8] += A[0:8,5]*block_0[0,0][5,8]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm23\r\n"         // C[0:8,0] += A[0:8,6]*block_0[0,0][6,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0:8,1] += A[0:8,6]*block_0[0,0][6,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0:8,2] += A[0:8,6]*block_0[0,0][6,2]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0:8,3] += A[0:8,6]*block_0[0,0][6,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0:8,5] += A[0:8,6]*block_0[0,0][6,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm23\r\n"         // C[0:8,0] += A[0:8,7]*block_0[0,0][7,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0:8,1] += A[0:8,7]*block_0[0,0][7,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0:8,2] += A[0:8,7]*block_0[0,0][7,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0:8,3] += A[0:8,7]*block_0[0,0][7,3]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0:8,4] += A[0:8,7]*block_0[0,0][7,4]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm8, %%zmm23\r\n"        // C[0:8,0] += A[0:8,8]*block_0[0,0][8,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm8, %%zmm24\r\n"        // C[0:8,1] += A[0:8,8]*block_0[0,0][8,1]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm8, %%zmm25\r\n"        // C[0:8,2] += A[0:8,8]*block_0[0,0][8,2]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm8, %%zmm27\r\n"        // C[0:8,4] += A[0:8,8]*block_0[0,0][8,4]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm8, %%zmm28\r\n"       // C[0:8,5] += A[0:8,8]*block_0[0,0][8,5]
      "jmp *%%r10\r\n"
      "CASE_2_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 1920(%%rdi), %%zmm6\r\n"                           // A [0,0] [0,6]
          "vmovapd 2240(%%rdi), %%zmm7\r\n"                           // A [0,0] [0,7]
          "vmovapd 2560(%%rdi), %%zmm8\r\n"                           // A [0,0] [0,8]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm23\r\n"         // C[0:8,0] += A[0:8,6]*block_2[0,0][6,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0:8,3] += A[0:8,6]*block_2[0,0][6,3]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"        // C[0:8,5] += A[0:8,6]*block_2[0,0][6,5]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"        // C[0:8,6] += A[0:8,6]*block_2[0,0][6,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"         // C[0:8,1] += A[0:8,7]*block_2[0,0][7,1]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0:8,3] += A[0:8,7]*block_2[0,0][7,3]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0:8,4] += A[0:8,7]*block_2[0,0][7,4]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"        // C[0:8,7] += A[0:8,7]*block_2[0,0][7,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm8, %%zmm25\r\n"        // C[0:8,2] += A[0:8,8]*block_2[0,0][8,2]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm8, %%zmm27\r\n"        // C[0:8,4] += A[0:8,8]*block_2[0,0][8,4]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm8, %%zmm28\r\n"        // C[0:8,5] += A[0:8,8]*block_2[0,0][8,5]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm8, %%zmm31\r\n"        // C[0:8,8] += A[0:8,8]*block_2[0,0][8,8]
      "jmp *%%r10\r\n"
      "CASE_3_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 1920(%%rdi), %%zmm6\r\n"                           // A [0,0] [0,6]
          "vmovapd 2240(%%rdi), %%zmm7\r\n"                           // A [0,0] [0,7]
          "vmovapd 2560(%%rdi), %%zmm8\r\n"                           // A [0,0] [0,8]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm23\r\n"         // C[0:8,0] += A[0:8,6]*block_3[0,0][6,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0:8,2] += A[0:8,6]*block_3[0,0][6,2]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0:8,3] += A[0:8,6]*block_3[0,0][6,3]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"        // C[0:8,6] += A[0:8,6]*block_3[0,0][6,6]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0:8,8] += A[0:8,6]*block_3[0,0][6,8]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm23\r\n"         // C[0:8,0] += A[0:8,7]*block_3[0,0][7,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0:8,1] += A[0:8,7]*block_3[0,0][7,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0:8,4] += A[0:8,7]*block_3[0,0][7,4]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"        // C[0:8,6] += A[0:8,7]*block_3[0,0][7,6]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"        // C[0:8,7] += A[0:8,7]*block_3[0,0][7,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm8, %%zmm24\r\n"        // C[0:8,1] += A[0:8,8]*block_3[0,0][8,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm8, %%zmm25\r\n"        // C[0:8,2] += A[0:8,8]*block_3[0,0][8,2]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm8, %%zmm28\r\n"        // C[0:8,5] += A[0:8,8]*block_3[0,0][8,5]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm8, %%zmm30\r\n"        // C[0:8,7] += A[0:8,8]*block_3[0,0][8,7]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm8, %%zmm31\r\n"       // C[0:8,8] += A[0:8,8]*block_3[0,0][8,8]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
      "addq $0, %%rdx\r\n"                                        // Move C to (d=0,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_0_0_0_%=, %%r10\r\n"
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_0_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $2880, %%rdx\r\n"                                     // Move C to (d=0,r=1, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_0_1_0_%=, %%r10\r\n"
      "addq $200, %%rsi\r\n"                                      // Move B to (d=0,r=1, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_0_1_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $2880, %%rdx\r\n"                                     // Move C to (d=0,r=2, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_0_2_0_%=, %%r10\r\n"
      "addq $96, %%rsi\r\n"                                       // Move B to (d=0,r=2, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_0_2_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $-5696, %%rdx\r\n"                                    // Move C to (d=1,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_1_0_0_%=, %%r10\r\n"
      "addq $-296, %%rsi\r\n"                                     // Move B to (d=0,r=0, absolute)
      "addq $64, %%rdi\r\n"                                       // Move A to (d=1,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_1_0_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $2880, %%rdx\r\n"                                     // Move C to (d=1,r=1, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_1_1_0_%=, %%r10\r\n"
      "addq $200, %%rsi\r\n"                                      // Move B to (d=0,r=1, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=1,r=0, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_1_1_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $2880, %%rdx\r\n"                                     // Move C to (d=1,r=2, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_1_2_0_%=, %%r10\r\n"
      "addq $96, %%rsi\r\n"                                       // Move B to (d=0,r=2, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=1,r=0, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_1_2_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $-5696, %%rdx\r\n"                                    // Move C to (d=2,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_2_0_0_%=, %%r10\r\n"
      "addq $-296, %%rsi\r\n"                                     // Move B to (d=0,r=0, absolute)
      "addq $64, %%rdi\r\n"                                       // Move A to (d=2,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_2_0_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $2880, %%rdx\r\n"                                     // Move C to (d=2,r=1, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_2_1_0_%=, %%r10\r\n"
      "addq $200, %%rsi\r\n"                                      // Move B to (d=0,r=1, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=2,r=0, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_1_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $2880, %%rdx\r\n"                                     // Move C to (d=2,r=2, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_2_2_0_%=, %%r10\r\n"
      "addq $96, %%rsi\r\n"                                       // Move B to (d=0,r=2, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=2,r=0, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_2_2_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $-5696, %%rdx\r\n"                                    // Move C to (d=3,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_3_0_0_%=, %%r10\r\n"
      "addq $-296, %%rsi\r\n"                                     // Move B to (d=0,r=0, absolute)
      "addq $64, %%rdi\r\n"                                       // Move A to (d=3,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_3_0_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $2880, %%rdx\r\n"                                     // Move C to (d=3,r=1, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_3_1_0_%=, %%r10\r\n"
      "addq $200, %%rsi\r\n"                                      // Move B to (d=0,r=1, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=3,r=0, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_3_1_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $2880, %%rdx\r\n"                                     // Move C to (d=3,r=2, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_3_2_0_%=, %%r10\r\n"
      "addq $96, %%rsi\r\n"                                       // Move B to (d=0,r=2, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=3,r=0, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_3_2_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $-5696, %%rdx\r\n"                                    // Move C to (d=4,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_4_0_0_%=, %%r10\r\n"
      "addq $-296, %%rsi\r\n"                                     // Move B to (d=0,r=0, absolute)
      "addq $64, %%rdi\r\n"                                       // Move A to (d=4,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_4_0_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $2880, %%rdx\r\n"                                     // Move C to (d=4,r=1, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_4_1_0_%=, %%r10\r\n"
      "addq $200, %%rsi\r\n"                                      // Move B to (d=0,r=1, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=4,r=0, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_4_1_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]
      "addq $2880, %%rdx\r\n"                                     // Move C to (d=4,r=2, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm23\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,2]
        "vmovapd 960(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,3]
        "vmovapd 1280(%%rdx), %%zmm27\r\n"                          // C [0,0] [0,4]
        "vmovapd 1600(%%rdx), %%zmm28\r\n"                          // C [0,0] [0,5]
        "vmovapd 1920(%%rdx), %%zmm29\r\n"                          // C [0,0] [0,6]
        "vmovapd 2240(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,7]
        "vmovapd 2560(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,8]
      "movq $BLOCK_4_2_0_%=, %%r10\r\n"
      "addq $96, %%rsi\r\n"                                       // Move B to (d=0,r=2, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=4,r=0, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_4_2_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm23, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm24, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm25, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm26, 960(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm27, 1280(%%rdx)\r\n"                          // C [0,0] [0,4]
        "vmovapd %%zmm28, 1600(%%rdx)\r\n"                          // C [0,0] [0,5]
        "vmovapd %%zmm29, 1920(%%rdx)\r\n"                          // C [0,0] [0,6]
        "vmovapd %%zmm30, 2240(%%rdx)\r\n"                          // C [0,0] [0,7]
        "vmovapd %%zmm31, 2560(%%rdx)\r\n"                          // C [0,0] [0,8]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rdx","rsi","zmm0","zmm1","zmm2","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8");
};

 


void test_exp_seissol_star9x15_libxsmm() {
    const int m = 40;
    const int n = 15;
    const int k = 9;
    const int bk = 9;
    const int bn = 15;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star_9x15.mtx");
    auto b = &db;

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    exp_seissol_star9x15_libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        exp_seissol_star9x15_libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "exp_seissol_star9x15_libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_exp_seissol_star9x15_breuer_old() {
    const int m = 40;
    const int n = 15;
    const int k = 9;
    const int bk = 9;
    const int bn = 15;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star_9x15.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    exp_seissol_star9x15_breuer_old(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        exp_seissol_star9x15_breuer_old(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "exp_seissol_star9x15_breuer_old, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_exp_seissol_star9x15_breuer_fixed() {
    const int m = 40;
    const int n = 15;
    const int k = 9;
    const int bk = 9;
    const int bn = 15;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star_9x15.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    exp_seissol_star9x15_breuer_fixed(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        exp_seissol_star9x15_breuer_fixed(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "exp_seissol_star9x15_breuer_fixed, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_exp_seissol_star9x15_unrolled() {
    const int m = 40;
    const int n = 15;
    const int k = 9;
    const int bk = 9;
    const int bn = 15;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star_9x15.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    exp_seissol_star9x15_unrolled(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        exp_seissol_star9x15_unrolled(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "exp_seissol_star9x15_unrolled, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_exp_seissol_star9x15_general() {
    const int m = 40;
    const int n = 15;
    const int k = 9;
    const int bk = 9;
    const int bn = 15;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star_9x15.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    exp_seissol_star9x15_general(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        exp_seissol_star9x15_general(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "exp_seissol_star9x15_general, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_exp_seissol_star9x9_libxsmm() {
    const int m = 40;
    const int n = 9;
    const int k = 9;
    const int bk = 9;
    const int bn = 9;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star_9x9.mtx");
    auto b = &db;

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    exp_seissol_star9x9_libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        exp_seissol_star9x9_libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "exp_seissol_star9x9_libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_exp_seissol_star9x9_breuer_old() {
    const int m = 40;
    const int n = 9;
    const int k = 9;
    const int bk = 9;
    const int bn = 9;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star_9x9.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    exp_seissol_star9x9_breuer_old(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        exp_seissol_star9x9_breuer_old(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "exp_seissol_star9x9_breuer_old, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_exp_seissol_star9x9_breuer_fixed() {
    const int m = 40;
    const int n = 9;
    const int k = 9;
    const int bk = 9;
    const int bn = 9;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star_9x9.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    exp_seissol_star9x9_breuer_fixed(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        exp_seissol_star9x9_breuer_fixed(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "exp_seissol_star9x9_breuer_fixed, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_exp_seissol_star9x9_unrolled() {
    const int m = 40;
    const int n = 9;
    const int k = 9;
    const int bk = 9;
    const int bn = 9;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star_9x9.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    exp_seissol_star9x9_unrolled(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        exp_seissol_star9x9_unrolled(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "exp_seissol_star9x9_unrolled, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_exp_seissol_star9x9_general() {
    const int m = 40;
    const int n = 9;
    const int k = 9;
    const int bk = 9;
    const int bn = 9;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star_9x9.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    exp_seissol_star9x9_general(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        exp_seissol_star9x9_general(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "exp_seissol_star9x9_general, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_exp_seissol_star_27x27_libxsmm() {
    const int m = 40;
    const int n = 27;
    const int k = 27;
    const int bk = 9;
    const int bn = 9;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star_27x27.mtx");
    auto b = &db;

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    exp_seissol_star_27x27_libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        exp_seissol_star_27x27_libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "exp_seissol_star_27x27_libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_exp_seissol_star_27x27_breuer_old() {
    const int m = 40;
    const int n = 27;
    const int k = 27;
    const int bk = 9;
    const int bn = 9;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star_27x27.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    exp_seissol_star_27x27_breuer_old(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        exp_seissol_star_27x27_breuer_old(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "exp_seissol_star_27x27_breuer_old, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_exp_seissol_star_27x27_breuer_fixed() {
    const int m = 40;
    const int n = 27;
    const int k = 27;
    const int bk = 9;
    const int bn = 9;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star_27x27.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    exp_seissol_star_27x27_breuer_fixed(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        exp_seissol_star_27x27_breuer_fixed(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "exp_seissol_star_27x27_breuer_fixed, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_exp_seissol_star_27x27_unrolled() {
    const int m = 40;
    const int n = 27;
    const int k = 27;
    const int bk = 9;
    const int bn = 9;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star_27x27.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    exp_seissol_star_27x27_unrolled(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        exp_seissol_star_27x27_unrolled(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "exp_seissol_star_27x27_unrolled, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_exp_seissol_star_27x27_general() {
    const int m = 40;
    const int n = 27;
    const int k = 27;
    const int bk = 9;
    const int bn = 9;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star_27x27.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    exp_seissol_star_27x27_general(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        exp_seissol_star_27x27_general(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "exp_seissol_star_27x27_general, " << microsecs(start,end)/3000.0 << std::endl;
}


 

int main(int argc, char** argv) {
    test_exp_seissol_star9x15_libxsmm();
    test_exp_seissol_star9x15_breuer_old();
    test_exp_seissol_star9x15_breuer_fixed();
    //test_exp_seissol_star9x15_unrolled();
    //test_exp_seissol_star9x15_general();
    test_exp_seissol_star9x9_libxsmm();
    test_exp_seissol_star9x9_breuer_old();
    test_exp_seissol_star9x9_breuer_fixed();
    //test_exp_seissol_star9x9_unrolled();
    //test_exp_seissol_star9x9_general();
    test_exp_seissol_star_27x27_libxsmm();
    test_exp_seissol_star_27x27_breuer_old();
    test_exp_seissol_star_27x27_breuer_fixed();
    //test_exp_seissol_star_27x27_unrolled();
    //test_exp_seissol_star_27x27_general();

    return 0;
}
