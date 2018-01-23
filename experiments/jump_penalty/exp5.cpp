

#include <stdio.h>
#include "../include/timing.h"
#include "../include/matrixops.hpp"
#include "baseline.hpp"
 




void dxsp_general_8x8x8_4 (const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"
    "movq %1, %%rsi\n\t"
    "movq %2, %%rdx\n\t"
      // Unrolled FullyGeneralSparse
      "jmp END_SWITCH_%=\r\n"
      "CASE_0_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"         // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_0[0,0][7,2]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm24\r\n"                             // C [0,0] [0,0]
        "vmovapd 64(%%rdx), %%zmm25\r\n"                            // C [0,0] [0,1]
        "vmovapd 128(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,2]
        "vmovapd 192(%%rdx), %%zmm27\r\n"                           // C [0,0] [0,3]
        "vmovapd 256(%%rdx), %%zmm28\r\n"                           // C [0,0] [0,4]
        "vmovapd 320(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,5]
        "vmovapd 384(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,6]
        "vmovapd 448(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,7]
      "movq $BLOCK_0_%=, %%r10\r\n"
      "movq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm24, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm25, 64(%%rdx)\r\n"                            // C [0,0] [0,1]
        "vmovapd %%zmm26, 128(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm27, 192(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm28, 256(%%rdx)\r\n"                           // C [0,0] [0,4]
        "vmovapd %%zmm29, 320(%%rdx)\r\n"                           // C [0,0] [0,5]
        "vmovapd %%zmm30, 384(%%rdx)\r\n"                           // C [0,0] [0,6]
        "vmovapd %%zmm31, 448(%%rdx)\r\n"                           // C [0,0] [0,7]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rsi","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm6","zmm7");
};




void dxsp_general_8x8x8_20 (const double* A, const double* B, double* C) {
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
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_0[0,0][0,2]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"         // C[0,1] += A[0,1]*block_0[0,0][1,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_0[0,0][1,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_0[0,0][4,5]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0,3] += A[0,7]*block_0[0,0][7,3]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm24\r\n"                             // C [0,0] [0,0]
        "vmovapd 64(%%rdx), %%zmm25\r\n"                            // C [0,0] [0,1]
        "vmovapd 128(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,2]
        "vmovapd 192(%%rdx), %%zmm27\r\n"                           // C [0,0] [0,3]
        "vmovapd 256(%%rdx), %%zmm28\r\n"                           // C [0,0] [0,4]
        "vmovapd 320(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,5]
        "vmovapd 384(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,6]
        "vmovapd 448(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,7]
      "movq $BLOCK_0_%=, %%r10\r\n"
      "movq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm24, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm25, 64(%%rdx)\r\n"                            // C [0,0] [0,1]
        "vmovapd %%zmm26, 128(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm27, 192(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm28, 256(%%rdx)\r\n"                           // C [0,0] [0,4]
        "vmovapd %%zmm29, 320(%%rdx)\r\n"                           // C [0,0] [0,5]
        "vmovapd %%zmm30, 384(%%rdx)\r\n"                           // C [0,0] [0,6]
        "vmovapd %%zmm31, 448(%%rdx)\r\n"                           // C [0,0] [0,7]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rsi","zmm0","zmm1","zmm2","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void dxsp_general_8x8x8_36 (const double* A, const double* B, double* C) {
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
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_0[0,0][0,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_0[0,0][0,5]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_0[0,0][0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_0[0,0][1,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_0[0,0][1,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_0[0,0][1,4]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_0[0,0][1,5]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_0[0,0][2,4]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_0[0,0][3,5]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_0[0,0][4,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_0[0,0][4,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_0[0,0][5,0]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_0[0,0][5,3]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_0[0,0][5,4]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_0[0,0][6,5]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_0[0,0][6,7]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_0[0,0][7,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_0[0,0][7,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_0[0,0][7,5]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm24\r\n"                             // C [0,0] [0,0]
        "vmovapd 64(%%rdx), %%zmm25\r\n"                            // C [0,0] [0,1]
        "vmovapd 128(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,2]
        "vmovapd 192(%%rdx), %%zmm27\r\n"                           // C [0,0] [0,3]
        "vmovapd 256(%%rdx), %%zmm28\r\n"                           // C [0,0] [0,4]
        "vmovapd 320(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,5]
        "vmovapd 384(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,6]
        "vmovapd 448(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,7]
      "movq $BLOCK_0_%=, %%r10\r\n"
      "movq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm24, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm25, 64(%%rdx)\r\n"                            // C [0,0] [0,1]
        "vmovapd %%zmm26, 128(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm27, 192(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm28, 256(%%rdx)\r\n"                           // C [0,0] [0,4]
        "vmovapd %%zmm29, 320(%%rdx)\r\n"                           // C [0,0] [0,5]
        "vmovapd %%zmm30, 384(%%rdx)\r\n"                           // C [0,0] [0,6]
        "vmovapd %%zmm31, 448(%%rdx)\r\n"                           // C [0,0] [0,7]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rsi","zmm0","zmm1","zmm2","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void dxsp_general_8x8x8_52 (const double* A, const double* B, double* C) {
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
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_0[0,0][0,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_0[0,0][0,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"       // C[0,2] += A[0,0]*block_0[0,0][0,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_0[0,0][0,3]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_0[0,0][0,5]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_0[0,0][0,6]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_0[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_0[0,0][1,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,2] += A[0,1]*block_0[0,0][1,2]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_0[0,0][1,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_0[0,0][1,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_0[0,0][1,7]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_0[0,0][2,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_0[0,0][2,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_0[0,0][3,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_0[0,0][3,5]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_0[0,0][3,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_0[0,0][4,0]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_0[0,0][4,4]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_0[0,0][4,5]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_0[0,0][4,6]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_0[0,0][4,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_0[0,0][5,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_0[0,0][5,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_0[0,0][5,3]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_0[0,0][5,4]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_0[0,0][5,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_0[0,0][6,2]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_0[0,0][6,3]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_0[0,0][6,5]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_0[0,0][6,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_0[0,0][7,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"       // C[0,1] += A[0,7]*block_0[0,0][7,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_0[0,0][7,3]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_0[0,0][7,5]
        "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm24\r\n"                             // C [0,0] [0,0]
        "vmovapd 64(%%rdx), %%zmm25\r\n"                            // C [0,0] [0,1]
        "vmovapd 128(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,2]
        "vmovapd 192(%%rdx), %%zmm27\r\n"                           // C [0,0] [0,3]
        "vmovapd 256(%%rdx), %%zmm28\r\n"                           // C [0,0] [0,4]
        "vmovapd 320(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,5]
        "vmovapd 384(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,6]
        "vmovapd 448(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,7]
      "movq $BLOCK_0_%=, %%r10\r\n"
      "movq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm24, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm25, 64(%%rdx)\r\n"                            // C [0,0] [0,1]
        "vmovapd %%zmm26, 128(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm27, 192(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm28, 256(%%rdx)\r\n"                           // C [0,0] [0,4]
        "vmovapd %%zmm29, 320(%%rdx)\r\n"                           // C [0,0] [0,5]
        "vmovapd %%zmm30, 384(%%rdx)\r\n"                           // C [0,0] [0,6]
        "vmovapd %%zmm31, 448(%%rdx)\r\n"                           // C [0,0] [0,7]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rsi","zmm0","zmm1","zmm2","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void dxsp_general_8x8x16_4 (const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"
    "movq %1, %%rsi\n\t"
    "movq %2, %%rdx\n\t"
      // Unrolled FullyGeneralSparse
      "jmp END_SWITCH_%=\r\n"
      "CASE_0_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"         // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_0[0,0][7,2]
      "jmp *%%r10\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"         // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"        // C[0,5] += A[0,4]*block_1[0,0][4,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"        // C[0,5] += A[0,6]*block_1[0,0][6,5]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"         // C[0,0] += A[0,7]*block_1[0,0][7,0]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm24\r\n"                             // C [0,0] [0,0]
        "vmovapd 64(%%rdx), %%zmm25\r\n"                            // C [0,0] [0,1]
        "vmovapd 128(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,2]
        "vmovapd 192(%%rdx), %%zmm27\r\n"                           // C [0,0] [0,3]
        "vmovapd 256(%%rdx), %%zmm28\r\n"                           // C [0,0] [0,4]
        "vmovapd 320(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,5]
        "vmovapd 384(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,6]
        "vmovapd 448(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,7]
      "movq $BLOCK_0_%=, %%r10\r\n"
      "movq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "movq $32, %%rsi\r\n"                                       // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm24, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm25, 64(%%rdx)\r\n"                            // C [0,0] [0,1]
        "vmovapd %%zmm26, 128(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm27, 192(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm28, 256(%%rdx)\r\n"                           // C [0,0] [0,4]
        "vmovapd %%zmm29, 320(%%rdx)\r\n"                           // C [0,0] [0,5]
        "vmovapd %%zmm30, 384(%%rdx)\r\n"                           // C [0,0] [0,6]
        "vmovapd %%zmm31, 448(%%rdx)\r\n"                           // C [0,0] [0,7]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rsi","zmm2","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm6","zmm7");
};




void dxsp_general_8x8x16_20 (const double* A, const double* B, double* C) {
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
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_0[0,0][0,2]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"         // C[0,1] += A[0,1]*block_0[0,0][1,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_0[0,0][1,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_0[0,0][4,5]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0,3] += A[0,7]*block_0[0,0][7,3]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_1[0,0][0,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_1[0,0][0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_1[0,0][1,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_1[0,0][2,2]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_1[0,0][3,4]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"         // C[0,0] += A[0,4]*block_1[0,0][4,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_1[0,0][4,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_1[0,0][4,3]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_1[0,0][4,4]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_1[0,0][4,5]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_1[0,0][5,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_1[0,0][5,2]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_1[0,0][6,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_1[0,0][6,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_1[0,0][7,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_1[0,0][7,1]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm24\r\n"                             // C [0,0] [0,0]
        "vmovapd 64(%%rdx), %%zmm25\r\n"                            // C [0,0] [0,1]
        "vmovapd 128(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,2]
        "vmovapd 192(%%rdx), %%zmm27\r\n"                           // C [0,0] [0,3]
        "vmovapd 256(%%rdx), %%zmm28\r\n"                           // C [0,0] [0,4]
        "vmovapd 320(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,5]
        "vmovapd 384(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,6]
        "vmovapd 448(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,7]
      "movq $BLOCK_0_%=, %%r10\r\n"
      "movq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "movq $160, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm24, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm25, 64(%%rdx)\r\n"                            // C [0,0] [0,1]
        "vmovapd %%zmm26, 128(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm27, 192(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm28, 256(%%rdx)\r\n"                           // C [0,0] [0,4]
        "vmovapd %%zmm29, 320(%%rdx)\r\n"                           // C [0,0] [0,5]
        "vmovapd %%zmm30, 384(%%rdx)\r\n"                           // C [0,0] [0,6]
        "vmovapd %%zmm31, 448(%%rdx)\r\n"                           // C [0,0] [0,7]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rsi","zmm0","zmm1","zmm2","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void dxsp_general_8x8x16_36 (const double* A, const double* B, double* C) {
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
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_0[0,0][0,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_0[0,0][0,5]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_0[0,0][0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_0[0,0][1,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_0[0,0][1,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_0[0,0][1,4]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_0[0,0][1,5]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_0[0,0][2,4]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_0[0,0][3,5]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_0[0,0][4,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_0[0,0][4,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_0[0,0][5,0]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_0[0,0][5,3]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_0[0,0][5,4]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_0[0,0][6,5]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_0[0,0][6,7]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_0[0,0][7,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_0[0,0][7,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_0[0,0][7,5]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_1[0,0][0,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_1[0,0][0,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_1[0,0][0,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_1[0,0][0,3]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_1[0,0][0,5]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_1[0,0][0,6]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_1[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_1[0,0][1,3]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_1[0,0][1,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_1[0,0][2,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_1[0,0][2,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_1[0,0][2,6]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_1[0,0][3,1]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_1[0,0][3,4]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_1[0,0][3,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_1[0,0][4,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_1[0,0][4,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_1[0,0][4,2]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_1[0,0][4,3]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_1[0,0][4,4]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_1[0,0][4,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_1[0,0][5,0]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_1[0,0][5,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_1[0,0][5,4]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_1[0,0][5,6]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_1[0,0][6,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_1[0,0][6,3]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_1[0,0][6,5]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_1[0,0][7,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_1[0,0][7,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_1[0,0][7,2]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_1[0,0][7,6]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm24\r\n"                             // C [0,0] [0,0]
        "vmovapd 64(%%rdx), %%zmm25\r\n"                            // C [0,0] [0,1]
        "vmovapd 128(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,2]
        "vmovapd 192(%%rdx), %%zmm27\r\n"                           // C [0,0] [0,3]
        "vmovapd 256(%%rdx), %%zmm28\r\n"                           // C [0,0] [0,4]
        "vmovapd 320(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,5]
        "vmovapd 384(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,6]
        "vmovapd 448(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,7]
      "movq $BLOCK_0_%=, %%r10\r\n"
      "movq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "movq $288, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm24, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm25, 64(%%rdx)\r\n"                            // C [0,0] [0,1]
        "vmovapd %%zmm26, 128(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm27, 192(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm28, 256(%%rdx)\r\n"                           // C [0,0] [0,4]
        "vmovapd %%zmm29, 320(%%rdx)\r\n"                           // C [0,0] [0,5]
        "vmovapd %%zmm30, 384(%%rdx)\r\n"                           // C [0,0] [0,6]
        "vmovapd %%zmm31, 448(%%rdx)\r\n"                           // C [0,0] [0,7]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rsi","zmm0","zmm1","zmm2","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void dxsp_general_8x8x16_52 (const double* A, const double* B, double* C) {
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
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_0[0,0][0,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_0[0,0][0,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"       // C[0,2] += A[0,0]*block_0[0,0][0,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_0[0,0][0,3]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_0[0,0][0,5]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_0[0,0][0,6]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_0[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_0[0,0][1,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,2] += A[0,1]*block_0[0,0][1,2]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_0[0,0][1,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_0[0,0][1,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_0[0,0][1,7]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_0[0,0][2,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_0[0,0][2,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_0[0,0][3,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_0[0,0][3,5]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_0[0,0][3,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_0[0,0][4,0]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_0[0,0][4,4]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_0[0,0][4,5]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_0[0,0][4,6]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_0[0,0][4,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_0[0,0][5,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_0[0,0][5,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_0[0,0][5,3]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_0[0,0][5,4]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_0[0,0][5,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_0[0,0][6,2]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_0[0,0][6,3]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_0[0,0][6,5]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_0[0,0][6,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_0[0,0][7,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"       // C[0,1] += A[0,7]*block_0[0,0][7,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_0[0,0][7,3]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_0[0,0][7,5]
        "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_1[0,0][0,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_1[0,0][0,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"       // C[0,2] += A[0,0]*block_1[0,0][0,2]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_1[0,0][0,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_1[0,0][0,5]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_1[0,0][0,6]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_1[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_1[0,0][1,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,2] += A[0,1]*block_1[0,0][1,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_1[0,0][1,3]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_1[0,0][1,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"       // C[0,2] += A[0,2]*block_1[0,0][2,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_1[0,0][2,3]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_1[0,0][2,6]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_1[0,0][2,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_1[0,0][3,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_1[0,0][3,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_1[0,0][3,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_1[0,0][3,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_1[0,0][3,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_1[0,0][3,5]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_1[0,0][3,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_1[0,0][4,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_1[0,0][4,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_1[0,0][4,2]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_1[0,0][4,3]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_1[0,0][4,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_1[0,0][4,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_1[0,0][4,6]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_1[0,0][4,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_1[0,0][5,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_1[0,0][5,1]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_1[0,0][5,2]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_1[0,0][5,3]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_1[0,0][5,4]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_1[0,0][5,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_1[0,0][5,7]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_1[0,0][6,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_1[0,0][6,3]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_1[0,0][6,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_1[0,0][6,6]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_1[0,0][6,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_1[0,0][7,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"       // C[0,1] += A[0,7]*block_1[0,0][7,1]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_1[0,0][7,2]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_1[0,0][7,4]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_1[0,0][7,6]
        "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_1[0,0][7,7]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm24\r\n"                             // C [0,0] [0,0]
        "vmovapd 64(%%rdx), %%zmm25\r\n"                            // C [0,0] [0,1]
        "vmovapd 128(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,2]
        "vmovapd 192(%%rdx), %%zmm27\r\n"                           // C [0,0] [0,3]
        "vmovapd 256(%%rdx), %%zmm28\r\n"                           // C [0,0] [0,4]
        "vmovapd 320(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,5]
        "vmovapd 384(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,6]
        "vmovapd 448(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,7]
      "movq $BLOCK_0_%=, %%r10\r\n"
      "movq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "movq $416, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm24, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm25, 64(%%rdx)\r\n"                            // C [0,0] [0,1]
        "vmovapd %%zmm26, 128(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm27, 192(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm28, 256(%%rdx)\r\n"                           // C [0,0] [0,4]
        "vmovapd %%zmm29, 320(%%rdx)\r\n"                           // C [0,0] [0,5]
        "vmovapd %%zmm30, 384(%%rdx)\r\n"                           // C [0,0] [0,6]
        "vmovapd %%zmm31, 448(%%rdx)\r\n"                           // C [0,0] [0,7]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rsi","zmm0","zmm1","zmm2","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void dxsp_general_8x8x24_4 (const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"
    "movq %1, %%rsi\n\t"
    "movq %2, %%rdx\n\t"
      // Unrolled FullyGeneralSparse
      "jmp END_SWITCH_%=\r\n"
      "CASE_0_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"         // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_0[0,0][7,2]
      "jmp *%%r10\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"         // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"        // C[0,5] += A[0,4]*block_1[0,0][4,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"        // C[0,5] += A[0,6]*block_1[0,0][6,5]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"         // C[0,0] += A[0,7]*block_1[0,0][7,0]
      "jmp *%%r10\r\n"
      "CASE_2_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"         // C[0,5] += A[0,0]*block_2[0,0][0,5]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"        // C[0,6] += A[0,0]*block_2[0,0][0,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,7] += A[0,0]*block_2[0,0][0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"         // C[0,2] += A[0,3]*block_2[0,0][3,2]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm24\r\n"                             // C [0,0] [0,0]
        "vmovapd 64(%%rdx), %%zmm25\r\n"                            // C [0,0] [0,1]
        "vmovapd 128(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,2]
        "vmovapd 192(%%rdx), %%zmm27\r\n"                           // C [0,0] [0,3]
        "vmovapd 256(%%rdx), %%zmm28\r\n"                           // C [0,0] [0,4]
        "vmovapd 320(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,5]
        "vmovapd 384(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,6]
        "vmovapd 448(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,7]
      "movq $BLOCK_0_%=, %%r10\r\n"
      "movq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "movq $32, %%rsi\r\n"                                       // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "movq $32, %%rsi\r\n"                                       // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm24, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm25, 64(%%rdx)\r\n"                            // C [0,0] [0,1]
        "vmovapd %%zmm26, 128(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm27, 192(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm28, 256(%%rdx)\r\n"                           // C [0,0] [0,4]
        "vmovapd %%zmm29, 320(%%rdx)\r\n"                           // C [0,0] [0,5]
        "vmovapd %%zmm30, 384(%%rdx)\r\n"                           // C [0,0] [0,6]
        "vmovapd %%zmm31, 448(%%rdx)\r\n"                           // C [0,0] [0,7]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rsi","zmm0","zmm2","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm6","zmm7");
};




void dxsp_general_8x8x24_20 (const double* A, const double* B, double* C) {
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
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_0[0,0][0,2]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"         // C[0,1] += A[0,1]*block_0[0,0][1,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_0[0,0][1,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_0[0,0][4,5]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0,3] += A[0,7]*block_0[0,0][7,3]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_1[0,0][0,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_1[0,0][0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_1[0,0][1,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_1[0,0][2,2]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_1[0,0][3,4]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"         // C[0,0] += A[0,4]*block_1[0,0][4,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_1[0,0][4,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_1[0,0][4,3]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_1[0,0][4,4]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_1[0,0][4,5]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_1[0,0][5,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_1[0,0][5,2]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_1[0,0][6,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_1[0,0][6,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_1[0,0][7,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_1[0,0][7,1]
      "jmp *%%r10\r\n"
      "CASE_2_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_2[0,0][0,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"        // C[0,5] += A[0,0]*block_2[0,0][0,5]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_2[0,0][0,6]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_2[0,0][0,7]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"        // C[0,5] += A[0,1]*block_2[0,0][1,5]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_2[0,0][1,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"         // C[0,1] += A[0,2]*block_2[0,0][2,1]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"        // C[0,4] += A[0,2]*block_2[0,0][2,4]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_2[0,0][2,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_2[0,0][3,2]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"        // C[0,5] += A[0,4]*block_2[0,0][4,5]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_2[0,0][5,5]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_2[0,0][5,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_2[0,0][6,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_2[0,0][6,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"        // C[0,4] += A[0,6]*block_2[0,0][6,4]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_2[0,0][7,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_2[0,0][7,2]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0,3] += A[0,7]*block_2[0,0][7,3]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_2[0,0][7,7]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm24\r\n"                             // C [0,0] [0,0]
        "vmovapd 64(%%rdx), %%zmm25\r\n"                            // C [0,0] [0,1]
        "vmovapd 128(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,2]
        "vmovapd 192(%%rdx), %%zmm27\r\n"                           // C [0,0] [0,3]
        "vmovapd 256(%%rdx), %%zmm28\r\n"                           // C [0,0] [0,4]
        "vmovapd 320(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,5]
        "vmovapd 384(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,6]
        "vmovapd 448(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,7]
      "movq $BLOCK_0_%=, %%r10\r\n"
      "movq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "movq $160, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "movq $160, %%rsi\r\n"                                      // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm24, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm25, 64(%%rdx)\r\n"                            // C [0,0] [0,1]
        "vmovapd %%zmm26, 128(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm27, 192(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm28, 256(%%rdx)\r\n"                           // C [0,0] [0,4]
        "vmovapd %%zmm29, 320(%%rdx)\r\n"                           // C [0,0] [0,5]
        "vmovapd %%zmm30, 384(%%rdx)\r\n"                           // C [0,0] [0,6]
        "vmovapd %%zmm31, 448(%%rdx)\r\n"                           // C [0,0] [0,7]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rsi","zmm0","zmm1","zmm2","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void dxsp_general_8x8x24_36 (const double* A, const double* B, double* C) {
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
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_0[0,0][0,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_0[0,0][0,5]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_0[0,0][0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_0[0,0][1,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_0[0,0][1,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_0[0,0][1,4]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_0[0,0][1,5]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_0[0,0][2,4]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_0[0,0][3,5]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_0[0,0][4,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_0[0,0][4,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_0[0,0][5,0]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_0[0,0][5,3]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_0[0,0][5,4]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_0[0,0][6,5]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_0[0,0][6,7]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_0[0,0][7,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_0[0,0][7,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_0[0,0][7,5]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_1[0,0][0,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_1[0,0][0,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_1[0,0][0,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_1[0,0][0,3]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_1[0,0][0,5]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_1[0,0][0,6]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_1[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_1[0,0][1,3]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_1[0,0][1,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_1[0,0][2,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_1[0,0][2,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_1[0,0][2,6]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_1[0,0][3,1]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_1[0,0][3,4]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_1[0,0][3,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_1[0,0][4,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_1[0,0][4,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_1[0,0][4,2]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_1[0,0][4,3]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_1[0,0][4,4]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_1[0,0][4,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_1[0,0][5,0]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_1[0,0][5,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_1[0,0][5,4]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_1[0,0][5,6]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_1[0,0][6,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_1[0,0][6,3]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_1[0,0][6,5]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_1[0,0][7,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_1[0,0][7,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_1[0,0][7,2]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_1[0,0][7,6]
      "jmp *%%r10\r\n"
      "CASE_2_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_2[0,0][0,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_2[0,0][0,2]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_2[0,0][0,3]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_2[0,0][0,5]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_2[0,0][0,6]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_2[0,0][0,7]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_2[0,0][1,5]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_2[0,0][1,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_2[0,0][2,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_2[0,0][2,4]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_2[0,0][2,6]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_2[0,0][2,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_2[0,0][3,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_2[0,0][3,2]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_2[0,0][3,3]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_2[0,0][4,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_2[0,0][4,2]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_2[0,0][4,3]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_2[0,0][4,5]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_2[0,0][4,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_2[0,0][5,1]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_2[0,0][5,4]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_2[0,0][5,5]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_2[0,0][5,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_2[0,0][6,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_2[0,0][6,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_2[0,0][6,3]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_2[0,0][6,4]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_2[0,0][6,5]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_2[0,0][6,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"         // C[0,0] += A[0,7]*block_2[0,0][7,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_2[0,0][7,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_2[0,0][7,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_2[0,0][7,3]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_2[0,0][7,5]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_2[0,0][7,7]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm24\r\n"                             // C [0,0] [0,0]
        "vmovapd 64(%%rdx), %%zmm25\r\n"                            // C [0,0] [0,1]
        "vmovapd 128(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,2]
        "vmovapd 192(%%rdx), %%zmm27\r\n"                           // C [0,0] [0,3]
        "vmovapd 256(%%rdx), %%zmm28\r\n"                           // C [0,0] [0,4]
        "vmovapd 320(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,5]
        "vmovapd 384(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,6]
        "vmovapd 448(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,7]
      "movq $BLOCK_0_%=, %%r10\r\n"
      "movq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "movq $288, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "movq $288, %%rsi\r\n"                                      // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm24, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm25, 64(%%rdx)\r\n"                            // C [0,0] [0,1]
        "vmovapd %%zmm26, 128(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm27, 192(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm28, 256(%%rdx)\r\n"                           // C [0,0] [0,4]
        "vmovapd %%zmm29, 320(%%rdx)\r\n"                           // C [0,0] [0,5]
        "vmovapd %%zmm30, 384(%%rdx)\r\n"                           // C [0,0] [0,6]
        "vmovapd %%zmm31, 448(%%rdx)\r\n"                           // C [0,0] [0,7]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rsi","zmm0","zmm1","zmm2","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void dxsp_general_8x8x24_52 (const double* A, const double* B, double* C) {
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
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_0[0,0][0,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_0[0,0][0,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"       // C[0,2] += A[0,0]*block_0[0,0][0,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_0[0,0][0,3]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_0[0,0][0,5]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_0[0,0][0,6]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_0[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_0[0,0][1,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,2] += A[0,1]*block_0[0,0][1,2]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_0[0,0][1,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_0[0,0][1,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_0[0,0][1,7]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_0[0,0][2,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_0[0,0][2,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_0[0,0][3,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_0[0,0][3,5]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_0[0,0][3,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_0[0,0][4,0]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_0[0,0][4,4]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_0[0,0][4,5]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_0[0,0][4,6]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_0[0,0][4,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_0[0,0][5,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_0[0,0][5,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_0[0,0][5,3]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_0[0,0][5,4]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_0[0,0][5,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_0[0,0][6,2]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_0[0,0][6,3]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_0[0,0][6,5]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_0[0,0][6,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_0[0,0][7,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"       // C[0,1] += A[0,7]*block_0[0,0][7,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_0[0,0][7,3]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_0[0,0][7,5]
        "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_1[0,0][0,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_1[0,0][0,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"       // C[0,2] += A[0,0]*block_1[0,0][0,2]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_1[0,0][0,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_1[0,0][0,5]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_1[0,0][0,6]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_1[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_1[0,0][1,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,2] += A[0,1]*block_1[0,0][1,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_1[0,0][1,3]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_1[0,0][1,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"       // C[0,2] += A[0,2]*block_1[0,0][2,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_1[0,0][2,3]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_1[0,0][2,6]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_1[0,0][2,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_1[0,0][3,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_1[0,0][3,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_1[0,0][3,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_1[0,0][3,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_1[0,0][3,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_1[0,0][3,5]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_1[0,0][3,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_1[0,0][4,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_1[0,0][4,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_1[0,0][4,2]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_1[0,0][4,3]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_1[0,0][4,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_1[0,0][4,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_1[0,0][4,6]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_1[0,0][4,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_1[0,0][5,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_1[0,0][5,1]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_1[0,0][5,2]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_1[0,0][5,3]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_1[0,0][5,4]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_1[0,0][5,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_1[0,0][5,7]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_1[0,0][6,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_1[0,0][6,3]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_1[0,0][6,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_1[0,0][6,6]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_1[0,0][6,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_1[0,0][7,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"       // C[0,1] += A[0,7]*block_1[0,0][7,1]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_1[0,0][7,2]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_1[0,0][7,4]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_1[0,0][7,6]
        "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_1[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_2_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_2[0,0][0,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_2[0,0][0,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"       // C[0,2] += A[0,0]*block_2[0,0][0,2]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_2[0,0][0,3]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_2[0,0][0,5]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_2[0,0][0,6]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_2[0,0][0,7]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_2[0,0][1,3]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_2[0,0][1,4]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_2[0,0][1,5]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_2[0,0][1,6]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_2[0,0][1,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_2[0,0][2,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_2[0,0][2,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"       // C[0,2] += A[0,2]*block_2[0,0][2,2]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_2[0,0][2,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_2[0,0][2,4]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_2[0,0][2,5]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_2[0,0][2,6]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_2[0,0][2,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_2[0,0][3,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_2[0,0][3,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_2[0,0][3,3]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_2[0,0][3,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_2[0,0][4,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_2[0,0][4,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_2[0,0][4,2]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_2[0,0][4,3]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_2[0,0][4,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_2[0,0][4,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_2[0,0][4,6]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_2[0,0][4,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_2[0,0][5,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_2[0,0][5,1]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_2[0,0][5,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_2[0,0][5,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_2[0,0][5,5]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_2[0,0][5,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_2[0,0][5,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_2[0,0][6,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_2[0,0][6,1]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_2[0,0][6,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_2[0,0][6,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_2[0,0][6,5]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_2[0,0][6,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_2[0,0][7,0]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_2[0,0][7,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_2[0,0][7,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_2[0,0][7,3]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_2[0,0][7,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_2[0,0][7,6]
        "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_2[0,0][7,7]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm24\r\n"                             // C [0,0] [0,0]
        "vmovapd 64(%%rdx), %%zmm25\r\n"                            // C [0,0] [0,1]
        "vmovapd 128(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,2]
        "vmovapd 192(%%rdx), %%zmm27\r\n"                           // C [0,0] [0,3]
        "vmovapd 256(%%rdx), %%zmm28\r\n"                           // C [0,0] [0,4]
        "vmovapd 320(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,5]
        "vmovapd 384(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,6]
        "vmovapd 448(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,7]
      "movq $BLOCK_0_%=, %%r10\r\n"
      "movq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "movq $416, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "movq $416, %%rsi\r\n"                                      // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm24, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm25, 64(%%rdx)\r\n"                            // C [0,0] [0,1]
        "vmovapd %%zmm26, 128(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm27, 192(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm28, 256(%%rdx)\r\n"                           // C [0,0] [0,4]
        "vmovapd %%zmm29, 320(%%rdx)\r\n"                           // C [0,0] [0,5]
        "vmovapd %%zmm30, 384(%%rdx)\r\n"                           // C [0,0] [0,6]
        "vmovapd %%zmm31, 448(%%rdx)\r\n"                           // C [0,0] [0,7]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rsi","zmm0","zmm1","zmm2","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void dxsp_general_8x8x32_4 (const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"
    "movq %1, %%rsi\n\t"
    "movq %2, %%rdx\n\t"
      // Unrolled FullyGeneralSparse
      "jmp END_SWITCH_%=\r\n"
      "CASE_0_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"         // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_0[0,0][7,2]
      "jmp *%%r10\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"         // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"        // C[0,5] += A[0,4]*block_1[0,0][4,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"        // C[0,5] += A[0,6]*block_1[0,0][6,5]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"         // C[0,0] += A[0,7]*block_1[0,0][7,0]
      "jmp *%%r10\r\n"
      "CASE_2_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"         // C[0,5] += A[0,0]*block_2[0,0][0,5]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"        // C[0,6] += A[0,0]*block_2[0,0][0,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,7] += A[0,0]*block_2[0,0][0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"         // C[0,2] += A[0,3]*block_2[0,0][3,2]
      "jmp *%%r10\r\n"
      "CASE_3_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_3[0,0][1,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"        // C[0,6] += A[0,3]*block_3[0,0][3,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"         // C[0,3] += A[0,4]*block_3[0,0][4,3]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"        // C[0,6] += A[0,4]*block_3[0,0][4,6]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm24\r\n"                             // C [0,0] [0,0]
        "vmovapd 64(%%rdx), %%zmm25\r\n"                            // C [0,0] [0,1]
        "vmovapd 128(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,2]
        "vmovapd 192(%%rdx), %%zmm27\r\n"                           // C [0,0] [0,3]
        "vmovapd 256(%%rdx), %%zmm28\r\n"                           // C [0,0] [0,4]
        "vmovapd 320(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,5]
        "vmovapd 384(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,6]
        "vmovapd 448(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,7]
      "movq $BLOCK_0_%=, %%r10\r\n"
      "movq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "movq $32, %%rsi\r\n"                                       // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "movq $32, %%rsi\r\n"                                       // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
      "movq $BLOCK_3_%=, %%r10\r\n"
      "movq $32, %%rsi\r\n"                                       // Move B to (d=3,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=3, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_3_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm24, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm25, 64(%%rdx)\r\n"                            // C [0,0] [0,1]
        "vmovapd %%zmm26, 128(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm27, 192(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm28, 256(%%rdx)\r\n"                           // C [0,0] [0,4]
        "vmovapd %%zmm29, 320(%%rdx)\r\n"                           // C [0,0] [0,5]
        "vmovapd %%zmm30, 384(%%rdx)\r\n"                           // C [0,0] [0,6]
        "vmovapd %%zmm31, 448(%%rdx)\r\n"                           // C [0,0] [0,7]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rsi","zmm0","zmm1","zmm2","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm6","zmm7");
};




void dxsp_general_8x8x32_20 (const double* A, const double* B, double* C) {
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
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_0[0,0][0,2]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"         // C[0,1] += A[0,1]*block_0[0,0][1,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_0[0,0][1,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_0[0,0][4,5]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0,3] += A[0,7]*block_0[0,0][7,3]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_1[0,0][0,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_1[0,0][0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_1[0,0][1,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_1[0,0][2,2]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_1[0,0][3,4]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"         // C[0,0] += A[0,4]*block_1[0,0][4,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_1[0,0][4,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_1[0,0][4,3]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_1[0,0][4,4]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_1[0,0][4,5]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_1[0,0][5,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_1[0,0][5,2]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_1[0,0][6,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_1[0,0][6,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_1[0,0][7,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_1[0,0][7,1]
      "jmp *%%r10\r\n"
      "CASE_2_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_2[0,0][0,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"        // C[0,5] += A[0,0]*block_2[0,0][0,5]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_2[0,0][0,6]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_2[0,0][0,7]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"        // C[0,5] += A[0,1]*block_2[0,0][1,5]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_2[0,0][1,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"         // C[0,1] += A[0,2]*block_2[0,0][2,1]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"        // C[0,4] += A[0,2]*block_2[0,0][2,4]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_2[0,0][2,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_2[0,0][3,2]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"        // C[0,5] += A[0,4]*block_2[0,0][4,5]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_2[0,0][5,5]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_2[0,0][5,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_2[0,0][6,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_2[0,0][6,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"        // C[0,4] += A[0,6]*block_2[0,0][6,4]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_2[0,0][7,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_2[0,0][7,2]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0,3] += A[0,7]*block_2[0,0][7,3]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_2[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_3_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_3[0,0][0,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_3[0,0][0,4]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_3[0,0][1,0]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_3[0,0][1,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_3[0,0][2,1]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_3[0,0][2,3]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_3[0,0][3,0]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_3[0,0][3,6]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_3[0,0][4,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_3[0,0][4,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_3[0,0][4,5]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_3[0,0][4,6]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_3[0,0][5,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"        // C[0,3] += A[0,5]*block_3[0,0][5,3]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"        // C[0,4] += A[0,5]*block_3[0,0][5,4]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_3[0,0][5,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_3[0,0][6,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_3[0,0][6,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_3[0,0][7,6]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_3[0,0][7,7]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm24\r\n"                             // C [0,0] [0,0]
        "vmovapd 64(%%rdx), %%zmm25\r\n"                            // C [0,0] [0,1]
        "vmovapd 128(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,2]
        "vmovapd 192(%%rdx), %%zmm27\r\n"                           // C [0,0] [0,3]
        "vmovapd 256(%%rdx), %%zmm28\r\n"                           // C [0,0] [0,4]
        "vmovapd 320(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,5]
        "vmovapd 384(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,6]
        "vmovapd 448(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,7]
      "movq $BLOCK_0_%=, %%r10\r\n"
      "movq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "movq $160, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "movq $160, %%rsi\r\n"                                      // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
      "movq $BLOCK_3_%=, %%r10\r\n"
      "movq $160, %%rsi\r\n"                                      // Move B to (d=3,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=3, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_3_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm24, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm25, 64(%%rdx)\r\n"                            // C [0,0] [0,1]
        "vmovapd %%zmm26, 128(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm27, 192(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm28, 256(%%rdx)\r\n"                           // C [0,0] [0,4]
        "vmovapd %%zmm29, 320(%%rdx)\r\n"                           // C [0,0] [0,5]
        "vmovapd %%zmm30, 384(%%rdx)\r\n"                           // C [0,0] [0,6]
        "vmovapd %%zmm31, 448(%%rdx)\r\n"                           // C [0,0] [0,7]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rsi","zmm0","zmm1","zmm2","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void dxsp_general_8x8x32_36 (const double* A, const double* B, double* C) {
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
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_0[0,0][0,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_0[0,0][0,5]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_0[0,0][0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_0[0,0][1,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_0[0,0][1,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_0[0,0][1,4]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_0[0,0][1,5]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_0[0,0][2,4]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_0[0,0][3,5]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_0[0,0][4,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_0[0,0][4,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_0[0,0][5,0]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_0[0,0][5,3]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_0[0,0][5,4]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_0[0,0][6,5]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_0[0,0][6,7]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_0[0,0][7,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_0[0,0][7,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_0[0,0][7,5]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_1[0,0][0,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_1[0,0][0,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_1[0,0][0,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_1[0,0][0,3]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_1[0,0][0,5]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_1[0,0][0,6]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_1[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_1[0,0][1,3]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_1[0,0][1,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_1[0,0][2,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_1[0,0][2,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_1[0,0][2,6]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_1[0,0][3,1]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_1[0,0][3,4]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_1[0,0][3,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_1[0,0][4,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_1[0,0][4,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_1[0,0][4,2]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_1[0,0][4,3]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_1[0,0][4,4]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_1[0,0][4,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_1[0,0][5,0]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_1[0,0][5,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_1[0,0][5,4]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_1[0,0][5,6]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_1[0,0][6,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_1[0,0][6,3]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_1[0,0][6,5]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_1[0,0][7,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_1[0,0][7,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_1[0,0][7,2]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_1[0,0][7,6]
      "jmp *%%r10\r\n"
      "CASE_2_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_2[0,0][0,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_2[0,0][0,2]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_2[0,0][0,3]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_2[0,0][0,5]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_2[0,0][0,6]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_2[0,0][0,7]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_2[0,0][1,5]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_2[0,0][1,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_2[0,0][2,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_2[0,0][2,4]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_2[0,0][2,6]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_2[0,0][2,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_2[0,0][3,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_2[0,0][3,2]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_2[0,0][3,3]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_2[0,0][4,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_2[0,0][4,2]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_2[0,0][4,3]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_2[0,0][4,5]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_2[0,0][4,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_2[0,0][5,1]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_2[0,0][5,4]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_2[0,0][5,5]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_2[0,0][5,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_2[0,0][6,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_2[0,0][6,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_2[0,0][6,3]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_2[0,0][6,4]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_2[0,0][6,5]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_2[0,0][6,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"         // C[0,0] += A[0,7]*block_2[0,0][7,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_2[0,0][7,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_2[0,0][7,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_2[0,0][7,3]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_2[0,0][7,5]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_2[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_3_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_3[0,0][0,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_3[0,0][0,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_3[0,0][0,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_3[0,0][0,4]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_3[0,0][0,5]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_3[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_3[0,0][1,0]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_3[0,0][1,4]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_3[0,0][1,5]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_3[0,0][1,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_3[0,0][2,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_3[0,0][2,3]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_3[0,0][2,4]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_3[0,0][2,5]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_3[0,0][2,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_3[0,0][3,0]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_3[0,0][3,6]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_3[0,0][4,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_3[0,0][4,2]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_3[0,0][4,3]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_3[0,0][4,5]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_3[0,0][4,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_3[0,0][5,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_3[0,0][5,2]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_3[0,0][5,3]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_3[0,0][5,4]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_3[0,0][5,5]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_3[0,0][5,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_3[0,0][6,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_3[0,0][6,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_3[0,0][6,4]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_3[0,0][6,6]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_3[0,0][6,7]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_3[0,0][7,2]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_3[0,0][7,6]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_3[0,0][7,7]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm24\r\n"                             // C [0,0] [0,0]
        "vmovapd 64(%%rdx), %%zmm25\r\n"                            // C [0,0] [0,1]
        "vmovapd 128(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,2]
        "vmovapd 192(%%rdx), %%zmm27\r\n"                           // C [0,0] [0,3]
        "vmovapd 256(%%rdx), %%zmm28\r\n"                           // C [0,0] [0,4]
        "vmovapd 320(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,5]
        "vmovapd 384(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,6]
        "vmovapd 448(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,7]
      "movq $BLOCK_0_%=, %%r10\r\n"
      "movq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "movq $288, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "movq $288, %%rsi\r\n"                                      // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
      "movq $BLOCK_3_%=, %%r10\r\n"
      "movq $288, %%rsi\r\n"                                      // Move B to (d=3,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=3, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_3_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm24, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm25, 64(%%rdx)\r\n"                            // C [0,0] [0,1]
        "vmovapd %%zmm26, 128(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm27, 192(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm28, 256(%%rdx)\r\n"                           // C [0,0] [0,4]
        "vmovapd %%zmm29, 320(%%rdx)\r\n"                           // C [0,0] [0,5]
        "vmovapd %%zmm30, 384(%%rdx)\r\n"                           // C [0,0] [0,6]
        "vmovapd %%zmm31, 448(%%rdx)\r\n"                           // C [0,0] [0,7]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rsi","zmm0","zmm1","zmm2","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void dxsp_general_8x8x32_52 (const double* A, const double* B, double* C) {
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
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_0[0,0][0,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_0[0,0][0,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"       // C[0,2] += A[0,0]*block_0[0,0][0,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_0[0,0][0,3]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_0[0,0][0,5]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_0[0,0][0,6]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_0[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_0[0,0][1,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,2] += A[0,1]*block_0[0,0][1,2]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_0[0,0][1,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_0[0,0][1,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_0[0,0][1,7]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_0[0,0][2,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_0[0,0][2,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_0[0,0][3,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_0[0,0][3,5]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_0[0,0][3,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_0[0,0][4,0]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_0[0,0][4,4]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_0[0,0][4,5]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_0[0,0][4,6]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_0[0,0][4,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_0[0,0][5,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_0[0,0][5,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_0[0,0][5,3]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_0[0,0][5,4]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_0[0,0][5,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_0[0,0][6,2]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_0[0,0][6,3]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_0[0,0][6,5]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_0[0,0][6,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_0[0,0][7,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"       // C[0,1] += A[0,7]*block_0[0,0][7,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_0[0,0][7,3]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_0[0,0][7,5]
        "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_1[0,0][0,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_1[0,0][0,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"       // C[0,2] += A[0,0]*block_1[0,0][0,2]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_1[0,0][0,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_1[0,0][0,5]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_1[0,0][0,6]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_1[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_1[0,0][1,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,2] += A[0,1]*block_1[0,0][1,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_1[0,0][1,3]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_1[0,0][1,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"       // C[0,2] += A[0,2]*block_1[0,0][2,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_1[0,0][2,3]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_1[0,0][2,6]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_1[0,0][2,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_1[0,0][3,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_1[0,0][3,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_1[0,0][3,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_1[0,0][3,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_1[0,0][3,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_1[0,0][3,5]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_1[0,0][3,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_1[0,0][4,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_1[0,0][4,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_1[0,0][4,2]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_1[0,0][4,3]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_1[0,0][4,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_1[0,0][4,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_1[0,0][4,6]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_1[0,0][4,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_1[0,0][5,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_1[0,0][5,1]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_1[0,0][5,2]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_1[0,0][5,3]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_1[0,0][5,4]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_1[0,0][5,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_1[0,0][5,7]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_1[0,0][6,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_1[0,0][6,3]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_1[0,0][6,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_1[0,0][6,6]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_1[0,0][6,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_1[0,0][7,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"       // C[0,1] += A[0,7]*block_1[0,0][7,1]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_1[0,0][7,2]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_1[0,0][7,4]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_1[0,0][7,6]
        "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_1[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_2_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_2[0,0][0,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_2[0,0][0,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"       // C[0,2] += A[0,0]*block_2[0,0][0,2]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_2[0,0][0,3]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_2[0,0][0,5]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_2[0,0][0,6]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_2[0,0][0,7]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_2[0,0][1,3]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_2[0,0][1,4]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_2[0,0][1,5]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_2[0,0][1,6]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_2[0,0][1,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_2[0,0][2,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_2[0,0][2,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"       // C[0,2] += A[0,2]*block_2[0,0][2,2]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_2[0,0][2,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_2[0,0][2,4]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_2[0,0][2,5]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_2[0,0][2,6]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_2[0,0][2,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_2[0,0][3,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_2[0,0][3,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_2[0,0][3,3]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_2[0,0][3,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_2[0,0][4,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_2[0,0][4,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_2[0,0][4,2]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_2[0,0][4,3]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_2[0,0][4,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_2[0,0][4,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_2[0,0][4,6]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_2[0,0][4,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_2[0,0][5,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_2[0,0][5,1]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_2[0,0][5,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_2[0,0][5,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_2[0,0][5,5]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_2[0,0][5,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_2[0,0][5,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_2[0,0][6,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_2[0,0][6,1]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_2[0,0][6,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_2[0,0][6,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_2[0,0][6,5]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_2[0,0][6,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_2[0,0][7,0]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_2[0,0][7,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_2[0,0][7,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_2[0,0][7,3]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_2[0,0][7,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_2[0,0][7,6]
        "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_2[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_3_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_3[0,0][0,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_3[0,0][0,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_3[0,0][0,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_3[0,0][0,3]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_3[0,0][0,4]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_3[0,0][0,5]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_3[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_3[0,0][1,0]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_3[0,0][1,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_3[0,0][1,3]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_3[0,0][1,4]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_3[0,0][1,5]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_3[0,0][1,6]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_3[0,0][1,7]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_3[0,0][2,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_3[0,0][2,3]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_3[0,0][2,4]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_3[0,0][2,5]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_3[0,0][2,6]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_3[0,0][2,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_3[0,0][3,0]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_3[0,0][3,4]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_3[0,0][3,5]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_3[0,0][3,6]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_3[0,0][3,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_3[0,0][4,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_3[0,0][4,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_3[0,0][4,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_3[0,0][4,3]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_3[0,0][4,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_3[0,0][4,5]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_3[0,0][4,6]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_3[0,0][4,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_3[0,0][5,0]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_3[0,0][5,2]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_3[0,0][5,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_3[0,0][5,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_3[0,0][5,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_3[0,0][5,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_3[0,0][5,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_3[0,0][6,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_3[0,0][6,1]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_3[0,0][6,3]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_3[0,0][6,4]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_3[0,0][6,6]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_3[0,0][6,7]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_3[0,0][7,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_3[0,0][7,2]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_3[0,0][7,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_3[0,0][7,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_3[0,0][7,6]
        "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_3[0,0][7,7]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm24\r\n"                             // C [0,0] [0,0]
        "vmovapd 64(%%rdx), %%zmm25\r\n"                            // C [0,0] [0,1]
        "vmovapd 128(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,2]
        "vmovapd 192(%%rdx), %%zmm27\r\n"                           // C [0,0] [0,3]
        "vmovapd 256(%%rdx), %%zmm28\r\n"                           // C [0,0] [0,4]
        "vmovapd 320(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,5]
        "vmovapd 384(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,6]
        "vmovapd 448(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,7]
      "movq $BLOCK_0_%=, %%r10\r\n"
      "movq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "movq $416, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "movq $416, %%rsi\r\n"                                      // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
      "movq $BLOCK_3_%=, %%r10\r\n"
      "movq $416, %%rsi\r\n"                                      // Move B to (d=3,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=3, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_3_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm24, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm25, 64(%%rdx)\r\n"                            // C [0,0] [0,1]
        "vmovapd %%zmm26, 128(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm27, 192(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm28, 256(%%rdx)\r\n"                           // C [0,0] [0,4]
        "vmovapd %%zmm29, 320(%%rdx)\r\n"                           // C [0,0] [0,5]
        "vmovapd %%zmm30, 384(%%rdx)\r\n"                           // C [0,0] [0,6]
        "vmovapd %%zmm31, 448(%%rdx)\r\n"                           // C [0,0] [0,7]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rsi","zmm0","zmm1","zmm2","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};


 


int main(int argc, char ** argv) {

    struct timespec start, end;
    DenseMatrix A = NULL;
    SparseMatrix B_sparse = NULL;
    SparseMatrix B_dense = NULL;
    DenseMatrix C_expected(8,8,8);
    DenseMatrix C_actual(8,8,8);
     



    /***** Testing dxsp_general_8x8x8_4 *****/

    C_expected.clear();
    C_actual.clear();
    from_mtx(B_dense, "dxsp_general_8x8x8_4");
    to_block_csc(B_dense, B, 8, 8);
    printf("Created B=\n");
    B.show();

    gemm(A, B_dense, C_expected);
    dxsp_general_8x8x8_4(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        dxsp_general_8x8x8_4(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("dxsp_general_8x8x8_4, 8, 8, 8, 8, 8, 8, 4, %lf\n", microsecs(start,end)/3000.0);
    


    /***** Testing dxsp_general_8x8x8_20 *****/

    C_expected.clear();
    C_actual.clear();
    from_mtx(B_dense, "dxsp_general_8x8x8_20");
    to_block_csc(B_dense, B, 8, 8);
    printf("Created B=\n");
    B.show();

    gemm(A, B_dense, C_expected);
    dxsp_general_8x8x8_20(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        dxsp_general_8x8x8_20(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("dxsp_general_8x8x8_20, 8, 8, 8, 8, 8, 8, 20, %lf\n", microsecs(start,end)/3000.0);
    


    /***** Testing dxsp_general_8x8x8_36 *****/

    C_expected.clear();
    C_actual.clear();
    from_mtx(B_dense, "dxsp_general_8x8x8_36");
    to_block_csc(B_dense, B, 8, 8);
    printf("Created B=\n");
    B.show();

    gemm(A, B_dense, C_expected);
    dxsp_general_8x8x8_36(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        dxsp_general_8x8x8_36(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("dxsp_general_8x8x8_36, 8, 8, 8, 8, 8, 8, 36, %lf\n", microsecs(start,end)/3000.0);
    


    /***** Testing dxsp_general_8x8x8_52 *****/

    C_expected.clear();
    C_actual.clear();
    from_mtx(B_dense, "dxsp_general_8x8x8_52");
    to_block_csc(B_dense, B, 8, 8);
    printf("Created B=\n");
    B.show();

    gemm(A, B_dense, C_expected);
    dxsp_general_8x8x8_52(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        dxsp_general_8x8x8_52(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("dxsp_general_8x8x8_52, 8, 8, 8, 8, 8, 8, 52, %lf\n", microsecs(start,end)/3000.0);
    


    /***** Testing dxsp_general_8x8x16_4 *****/

    C_expected.clear();
    C_actual.clear();
    from_mtx(B_dense, "dxsp_general_8x8x16_4");
    to_block_csc(B_dense, B, 8, 8);
    printf("Created B=\n");
    B.show();

    gemm(A, B_dense, C_expected);
    dxsp_general_8x8x16_4(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        dxsp_general_8x8x16_4(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("dxsp_general_8x8x16_4, 8, 8, 16, 8, 8, 8, 4, %lf\n", microsecs(start,end)/3000.0);
    


    /***** Testing dxsp_general_8x8x16_20 *****/

    C_expected.clear();
    C_actual.clear();
    from_mtx(B_dense, "dxsp_general_8x8x16_20");
    to_block_csc(B_dense, B, 8, 8);
    printf("Created B=\n");
    B.show();

    gemm(A, B_dense, C_expected);
    dxsp_general_8x8x16_20(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        dxsp_general_8x8x16_20(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("dxsp_general_8x8x16_20, 8, 8, 16, 8, 8, 8, 20, %lf\n", microsecs(start,end)/3000.0);
    


    /***** Testing dxsp_general_8x8x16_36 *****/

    C_expected.clear();
    C_actual.clear();
    from_mtx(B_dense, "dxsp_general_8x8x16_36");
    to_block_csc(B_dense, B, 8, 8);
    printf("Created B=\n");
    B.show();

    gemm(A, B_dense, C_expected);
    dxsp_general_8x8x16_36(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        dxsp_general_8x8x16_36(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("dxsp_general_8x8x16_36, 8, 8, 16, 8, 8, 8, 36, %lf\n", microsecs(start,end)/3000.0);
    


    /***** Testing dxsp_general_8x8x16_52 *****/

    C_expected.clear();
    C_actual.clear();
    from_mtx(B_dense, "dxsp_general_8x8x16_52");
    to_block_csc(B_dense, B, 8, 8);
    printf("Created B=\n");
    B.show();

    gemm(A, B_dense, C_expected);
    dxsp_general_8x8x16_52(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        dxsp_general_8x8x16_52(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("dxsp_general_8x8x16_52, 8, 8, 16, 8, 8, 8, 52, %lf\n", microsecs(start,end)/3000.0);
    


    /***** Testing dxsp_general_8x8x24_4 *****/

    C_expected.clear();
    C_actual.clear();
    from_mtx(B_dense, "dxsp_general_8x8x24_4");
    to_block_csc(B_dense, B, 8, 8);
    printf("Created B=\n");
    B.show();

    gemm(A, B_dense, C_expected);
    dxsp_general_8x8x24_4(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        dxsp_general_8x8x24_4(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("dxsp_general_8x8x24_4, 8, 8, 24, 8, 8, 8, 4, %lf\n", microsecs(start,end)/3000.0);
    


    /***** Testing dxsp_general_8x8x24_20 *****/

    C_expected.clear();
    C_actual.clear();
    from_mtx(B_dense, "dxsp_general_8x8x24_20");
    to_block_csc(B_dense, B, 8, 8);
    printf("Created B=\n");
    B.show();

    gemm(A, B_dense, C_expected);
    dxsp_general_8x8x24_20(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        dxsp_general_8x8x24_20(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("dxsp_general_8x8x24_20, 8, 8, 24, 8, 8, 8, 20, %lf\n", microsecs(start,end)/3000.0);
    


    /***** Testing dxsp_general_8x8x24_36 *****/

    C_expected.clear();
    C_actual.clear();
    from_mtx(B_dense, "dxsp_general_8x8x24_36");
    to_block_csc(B_dense, B, 8, 8);
    printf("Created B=\n");
    B.show();

    gemm(A, B_dense, C_expected);
    dxsp_general_8x8x24_36(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        dxsp_general_8x8x24_36(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("dxsp_general_8x8x24_36, 8, 8, 24, 8, 8, 8, 36, %lf\n", microsecs(start,end)/3000.0);
    


    /***** Testing dxsp_general_8x8x24_52 *****/

    C_expected.clear();
    C_actual.clear();
    from_mtx(B_dense, "dxsp_general_8x8x24_52");
    to_block_csc(B_dense, B, 8, 8);
    printf("Created B=\n");
    B.show();

    gemm(A, B_dense, C_expected);
    dxsp_general_8x8x24_52(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        dxsp_general_8x8x24_52(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("dxsp_general_8x8x24_52, 8, 8, 24, 8, 8, 8, 52, %lf\n", microsecs(start,end)/3000.0);
    


    /***** Testing dxsp_general_8x8x32_4 *****/

    C_expected.clear();
    C_actual.clear();
    from_mtx(B_dense, "dxsp_general_8x8x32_4");
    to_block_csc(B_dense, B, 8, 8);
    printf("Created B=\n");
    B.show();

    gemm(A, B_dense, C_expected);
    dxsp_general_8x8x32_4(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        dxsp_general_8x8x32_4(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("dxsp_general_8x8x32_4, 8, 8, 32, 8, 8, 8, 4, %lf\n", microsecs(start,end)/3000.0);
    


    /***** Testing dxsp_general_8x8x32_20 *****/

    C_expected.clear();
    C_actual.clear();
    from_mtx(B_dense, "dxsp_general_8x8x32_20");
    to_block_csc(B_dense, B, 8, 8);
    printf("Created B=\n");
    B.show();

    gemm(A, B_dense, C_expected);
    dxsp_general_8x8x32_20(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        dxsp_general_8x8x32_20(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("dxsp_general_8x8x32_20, 8, 8, 32, 8, 8, 8, 20, %lf\n", microsecs(start,end)/3000.0);
    


    /***** Testing dxsp_general_8x8x32_36 *****/

    C_expected.clear();
    C_actual.clear();
    from_mtx(B_dense, "dxsp_general_8x8x32_36");
    to_block_csc(B_dense, B, 8, 8);
    printf("Created B=\n");
    B.show();

    gemm(A, B_dense, C_expected);
    dxsp_general_8x8x32_36(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        dxsp_general_8x8x32_36(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("dxsp_general_8x8x32_36, 8, 8, 32, 8, 8, 8, 36, %lf\n", microsecs(start,end)/3000.0);
    


    /***** Testing dxsp_general_8x8x32_52 *****/

    C_expected.clear();
    C_actual.clear();
    from_mtx(B_dense, "dxsp_general_8x8x32_52");
    to_block_csc(B_dense, B, 8, 8);
    printf("Created B=\n");
    B.show();

    gemm(A, B_dense, C_expected);
    dxsp_general_8x8x32_52(A.values, B.values, C_actual.values);
    assert_equals(C_expected, C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        dxsp_general_8x8x32_52(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("dxsp_general_8x8x32_52, 8, 8, 32, 8, 8, 8, 52, %lf\n", microsecs(start,end)/3000.0);
    

 



}
