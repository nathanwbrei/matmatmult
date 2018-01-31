

#include <iostream>
#include <memory>

#include "SparseMatrix.hpp"
#include "DenseMatrix.hpp"
#include "timing.h"
#include "libxsmm_gemms.h"
 



void jump_penalty_1_50_general (const double* A, const double* B, double* C) {
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
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_0[0,0][0,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"       // C[0,2] += A[0,0]*block_0[0,0][0,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_0[0,0][0,3]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_0[0,0][0,4]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_0[0,0][0,6]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_0[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_0[0,0][1,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_0[0,0][1,3]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_0[0,0][1,4]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"        // C[0,0] += A[0,2]*block_0[0,0][2,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"       // C[0,2] += A[0,2]*block_0[0,0][2,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_0[0,0][2,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_0[0,0][2,4]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_0[0,0][2,6]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_0[0,0][3,3]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_0[0,0][3,5]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_0[0,0][3,6]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_0[0,0][3,7]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_0[0,0][4,1]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_0[0,0][4,4]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_0[0,0][4,5]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_0[0,0][4,6]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_0[0,0][4,7]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_0[0,0][5,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_0[0,0][5,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_0[0,0][5,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_0[0,0][5,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_0[0,0][6,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_0[0,0][6,3]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_0[0,0][6,5]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_0[0,0][6,6]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_0[0,0][7,0]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_0[0,0][7,3]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_0[0,0][7,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_0[0,0][7,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_0[0,0][7,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
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
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
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



void jump_penalty_2_50_general (const double* A, const double* B, double* C) {
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
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_0[0,0][0,2]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_0[0,0][0,3]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_0[0,0][0,5]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_0[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_0[0,0][1,4]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_0[0,0][1,5]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"        // C[0,0] += A[0,2]*block_0[0,0][2,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_0[0,0][3,5]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_0[0,0][4,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_0[0,0][4,4]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_0[0,0][5,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_0[0,0][5,3]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_0[0,0][5,4]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_0[0,0][5,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_0[0,0][6,3]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_0[0,0][6,6]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_0[0,0][7,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_0[0,0][7,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_0[0,0][7,3]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_0[0,0][7,6]
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
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_1[0,0][0,5]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_1[0,0][0,6]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_1[0,0][0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_1[0,0][1,3]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_1[0,0][3,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"        // C[0,3] += A[0,3]*block_1[0,0][3,3]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_1[0,0][3,5]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_1[0,0][4,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_1[0,0][4,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_1[0,0][4,3]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_1[0,0][4,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_1[0,0][5,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_1[0,0][5,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"        // C[0,3] += A[0,5]*block_1[0,0][5,3]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_1[0,0][5,7]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_1[0,0][6,5]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0,3] += A[0,7]*block_1[0,0][7,3]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_1[0,0][7,5]
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
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "addq $232, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
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



void jump_penalty_4_50_general (const double* A, const double* B, double* C) {
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
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_0[0,0][0,4]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"        // C[0,6] += A[0,0]*block_0[0,0][0,6]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_0[0,0][1,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_0[0,0][1,2]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_0[0,0][2,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_0[0,0][3,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_0[0,0][5,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"        // C[0,4] += A[0,7]*block_0[0,0][7,4]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"        // C[0,5] += A[0,7]*block_0[0,0][7,5]
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
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_1[0,0][0,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_1[0,0][1,2]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_1[0,0][1,3]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,6] += A[0,1]*block_1[0,0][1,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"         // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_1[0,0][2,2]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_1[0,0][3,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_1[0,0][3,2]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"        // C[0,6] += A[0,4]*block_1[0,0][4,6]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"        // C[0,5] += A[0,5]*block_1[0,0][5,5]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"        // C[0,4] += A[0,6]*block_1[0,0][6,4]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_1[0,0][6,6]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_1[0,0][7,2]
      "jmp *%%r10\r\n"
      "CASE_2_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_2[0,0][2,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"        // C[0,6] += A[0,3]*block_2[0,0][3,6]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"        // C[0,7] += A[0,3]*block_2[0,0][3,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_2[0,0][4,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"        // C[0,7] += A[0,4]*block_2[0,0][4,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"         // C[0,0] += A[0,5]*block_2[0,0][5,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"        // C[0,6] += A[0,5]*block_2[0,0][5,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_2[0,0][6,1]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"        // C[0,3] += A[0,6]*block_2[0,0][6,3]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"        // C[0,5] += A[0,7]*block_2[0,0][7,5]
      "jmp *%%r10\r\n"
      "CASE_3_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_3[0,0][0,4]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"        // C[0,5] += A[0,0]*block_3[0,0][0,5]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,7] += A[0,0]*block_3[0,0][0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_3[0,0][3,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"        // C[0,5] += A[0,3]*block_3[0,0][3,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"         // C[0,1] += A[0,4]*block_3[0,0][4,1]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_3[0,0][4,2]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"        // C[0,6] += A[0,4]*block_3[0,0][4,6]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"        // C[0,6] += A[0,6]*block_3[0,0][6,6]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"        // C[0,4] += A[0,7]*block_3[0,0][7,4]
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
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "addq $120, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "addq $120, %%rsi\r\n"                                      // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
      "movq $BLOCK_3_%=, %%r10\r\n"
      "addq $80, %%rsi\r\n"                                       // Move B to (d=3,r=0, absolute)
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



void jump_penalty_8_50_general (const double* A, const double* B, double* C) {
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
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_0[0,0][0,0]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"        // C[0,4] += A[0,1]*block_0[0,0][1,4]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,7] += A[0,1]*block_0[0,0][1,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_0[0,0][2,3]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_0[0,0][5,1]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"        // C[0,5] += A[0,5]*block_0[0,0][5,5]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"        // C[0,5] += A[0,6]*block_0[0,0][6,5]
      "jmp *%%r10\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"        // C[0,6] += A[0,2]*block_1[0,0][2,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"         // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"        // C[0,7] += A[0,6]*block_1[0,0][6,7]
      "jmp *%%r10\r\n"
      "CASE_2_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_2[0,0][0,3]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"        // C[0,6] += A[0,0]*block_2[0,0][0,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_2[0,0][1,2]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,6] += A[0,1]*block_2[0,0][1,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_2[0,0][2,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"        // C[0,4] += A[0,2]*block_2[0,0][2,4]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"         // C[0,1] += A[0,3]*block_2[0,0][3,1]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"        // C[0,6] += A[0,3]*block_2[0,0][3,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_2[0,0][5,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"        // C[0,6] += A[0,7]*block_2[0,0][7,6]
      "jmp *%%r10\r\n"
      "CASE_3_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,7] += A[0,1]*block_3[0,0][1,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"        // C[0,5] += A[0,2]*block_3[0,0][2,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"        // C[0,6] += A[0,2]*block_3[0,0][2,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"         // C[0,2] += A[0,3]*block_3[0,0][3,2]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"         // C[0,3] += A[0,3]*block_3[0,0][3,3]
      "jmp *%%r10\r\n"
      "CASE_4_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,7] += A[0,1]*block_4[0,0][1,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"         // C[0,3] += A[0,5]*block_4[0,0][5,3]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"        // C[0,4] += A[0,5]*block_4[0,0][5,4]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"        // C[0,6] += A[0,5]*block_4[0,0][5,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"         // C[0,0] += A[0,7]*block_4[0,0][7,0]
      "jmp *%%r10\r\n"
      "CASE_5_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_5[0,0][0,3]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_5[0,0][2,0]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"         // C[0,0] += A[0,5]*block_5[0,0][5,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"        // C[0,7] += A[0,6]*block_5[0,0][6,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_5[0,0][7,2]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"        // C[0,7] += A[0,7]*block_5[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_6_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"         // C[0,6] += A[0,1]*block_6[0,0][1,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"        // C[0,6] += A[0,4]*block_6[0,0][4,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"         // C[0,0] += A[0,7]*block_6[0,0][7,0]
      "jmp *%%r10\r\n"
      "CASE_7_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"         // C[0,2] += A[0,0]*block_7[0,0][0,2]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_7[0,0][2,3]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"         // C[0,1] += A[0,3]*block_7[0,0][3,1]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_7[0,0][4,3]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"        // C[0,3] += A[0,5]*block_7[0,0][5,3]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"        // C[0,4] += A[0,7]*block_7[0,0][7,4]
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
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "addq $80, %%rsi\r\n"                                       // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "addq $40, %%rsi\r\n"                                       // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
      "movq $BLOCK_3_%=, %%r10\r\n"
      "addq $80, %%rsi\r\n"                                       // Move B to (d=3,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=3, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_3_%=:\r\n"
      "movq $BLOCK_4_%=, %%r10\r\n"
      "addq $40, %%rsi\r\n"                                       // Move B to (d=4,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=4, absolute)
      "jmp CASE_4_%=\r\n"
      "BLOCK_4_%=:\r\n"
      "movq $BLOCK_5_%=, %%r10\r\n"
      "addq $40, %%rsi\r\n"                                       // Move B to (d=5,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=5, absolute)
      "jmp CASE_5_%=\r\n"
      "BLOCK_5_%=:\r\n"
      "movq $BLOCK_6_%=, %%r10\r\n"
      "addq $48, %%rsi\r\n"                                       // Move B to (d=6,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=6, absolute)
      "jmp CASE_6_%=\r\n"
      "BLOCK_6_%=:\r\n"
      "movq $BLOCK_7_%=, %%r10\r\n"
      "addq $24, %%rsi\r\n"                                       // Move B to (d=7,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=7, absolute)
      "jmp CASE_7_%=\r\n"
      "BLOCK_7_%=:\r\n"
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



void jump_penalty_2_100_general (const double* A, const double* B, double* C) {
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
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"       // C[0,2] += A[0,0]*block_0[0,0][0,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_0[0,0][0,3]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_0[0,0][0,5]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_0[0,0][0,6]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_0[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_0[0,0][1,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,2] += A[0,1]*block_0[0,0][1,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_0[0,0][1,4]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_0[0,0][1,5]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"        // C[0,0] += A[0,2]*block_0[0,0][2,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"       // C[0,2] += A[0,2]*block_0[0,0][2,2]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_0[0,0][2,3]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_0[0,0][2,4]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_0[0,0][3,5]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_0[0,0][3,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_0[0,0][4,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_0[0,0][4,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_0[0,0][4,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_0[0,0][4,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_0[0,0][4,6]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_0[0,0][4,7]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_0[0,0][5,1]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_0[0,0][5,3]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_0[0,0][5,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_0[0,0][5,5]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_0[0,0][5,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_0[0,0][6,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_0[0,0][6,4]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_0[0,0][6,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_0[0,0][6,6]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_0[0,0][6,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_0[0,0][7,0]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_0[0,0][7,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_0[0,0][7,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_0[0,0][7,4]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_0[0,0][7,5]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_0[0,0][7,6]
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
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_1[0,0][0,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_1[0,0][0,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_1[0,0][0,3]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_1[0,0][0,5]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_1[0,0][0,6]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_1[0,0][0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_1[0,0][1,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_1[0,0][1,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_1[0,0][1,3]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_1[0,0][1,4]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_1[0,0][1,6]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_1[0,0][1,7]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_1[0,0][2,4]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_1[0,0][2,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_1[0,0][3,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_1[0,0][3,2]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_1[0,0][3,3]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_1[0,0][3,4]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_1[0,0][3,5]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_1[0,0][3,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_1[0,0][4,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_1[0,0][4,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_1[0,0][4,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_1[0,0][4,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_1[0,0][4,4]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_1[0,0][4,5]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_1[0,0][4,6]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_1[0,0][4,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_1[0,0][5,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_1[0,0][5,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_1[0,0][5,3]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_1[0,0][5,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_1[0,0][5,5]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_1[0,0][5,6]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_1[0,0][5,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_1[0,0][6,0]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_1[0,0][6,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_1[0,0][6,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_1[0,0][6,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_1[0,0][6,6]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_1[0,0][6,7]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_1[0,0][7,1]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_1[0,0][7,3]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_1[0,0][7,5]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_1[0,0][7,7]
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
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "addq $408, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
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



void jump_penalty_4_100_general (const double* A, const double* B, double* C) {
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
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_0[0,0][0,4]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_0[0,0][0,6]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_0[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_0[0,0][1,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_0[0,0][1,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_0[0,0][2,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"        // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_0[0,0][3,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_0[0,0][4,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_0[0,0][4,5]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_0[0,0][4,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_0[0,0][5,0]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_0[0,0][5,5]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_0[0,0][6,4]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_0[0,0][7,4]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_0[0,0][7,5]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_0[0,0][7,6]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
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
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_1[0,0][0,3]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_1[0,0][0,5]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_1[0,0][0,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_1[0,0][1,2]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_1[0,0][1,3]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"        // C[0,4] += A[0,1]*block_1[0,0][1,4]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_1[0,0][1,5]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_1[0,0][1,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"         // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_1[0,0][2,2]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"        // C[0,4] += A[0,2]*block_1[0,0][2,4]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_1[0,0][2,5]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_1[0,0][2,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_1[0,0][3,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_1[0,0][3,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_1[0,0][3,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_1[0,0][4,1]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_1[0,0][4,6]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_1[0,0][5,4]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_1[0,0][5,5]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_1[0,0][5,6]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_1[0,0][5,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_1[0,0][6,4]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_1[0,0][6,5]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_1[0,0][6,6]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_1[0,0][7,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_1[0,0][7,6]
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
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_2[0,0][0,3]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_2[0,0][0,4]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_2[0,0][1,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_2[0,0][2,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_2[0,0][2,3]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_2[0,0][3,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_2[0,0][3,2]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_2[0,0][3,6]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_2[0,0][3,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_2[0,0][4,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"        // C[0,4] += A[0,4]*block_2[0,0][4,4]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_2[0,0][4,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_2[0,0][5,0]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_2[0,0][5,6]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_2[0,0][5,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_2[0,0][6,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"        // C[0,3] += A[0,6]*block_2[0,0][6,3]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_2[0,0][7,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_2[0,0][7,5]
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
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_3[0,0][0,4]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_3[0,0][0,5]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_3[0,0][0,7]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_3[0,0][1,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_3[0,0][1,4]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_3[0,0][1,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_3[0,0][2,1]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_3[0,0][3,0]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_3[0,0][3,5]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_3[0,0][3,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"         // C[0,0] += A[0,4]*block_3[0,0][4,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_3[0,0][4,1]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_3[0,0][4,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_3[0,0][4,3]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_3[0,0][4,6]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_3[0,0][5,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_3[0,0][5,5]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_3[0,0][5,6]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_3[0,0][6,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"        // C[0,3] += A[0,6]*block_3[0,0][6,3]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_3[0,0][6,6]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_3[0,0][6,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_3[0,0][7,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_3[0,0][7,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_3[0,0][7,4]
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
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "addq $208, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "addq $232, %%rsi\r\n"                                      // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
      "movq $BLOCK_3_%=, %%r10\r\n"
      "addq $160, %%rsi\r\n"                                      // Move B to (d=3,r=0, absolute)
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



void jump_penalty_8_100_general (const double* A, const double* B, double* C) {
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
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_0[0,0][0,0]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_0[0,0][1,3]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"        // C[0,4] += A[0,1]*block_0[0,0][1,4]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_0[0,0][1,7]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_0[0,0][2,3]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_0[0,0][5,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"        // C[0,5] += A[0,5]*block_0[0,0][5,5]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"        // C[0,5] += A[0,6]*block_0[0,0][6,5]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_0[0,0][6,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_0[0,0][7,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"        // C[0,4] += A[0,7]*block_0[0,0][7,4]
      "jmp *%%r10\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_1[0,0][1,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"        // C[0,6] += A[0,2]*block_1[0,0][2,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"         // C[0,0] += A[0,5]*block_1[0,0][5,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"        // C[0,5] += A[0,5]*block_1[0,0][5,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"        // C[0,7] += A[0,6]*block_1[0,0][6,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"        // C[0,7] += A[0,7]*block_1[0,0][7,7]
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
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_2[0,0][0,3]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"        // C[0,6] += A[0,0]*block_2[0,0][0,6]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_2[0,0][1,2]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"        // C[0,4] += A[0,1]*block_2[0,0][1,4]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_2[0,0][1,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_2[0,0][2,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"        // C[0,4] += A[0,2]*block_2[0,0][2,4]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_2[0,0][3,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_2[0,0][3,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_2[0,0][3,2]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_2[0,0][3,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_2[0,0][4,1]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_2[0,0][5,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_2[0,0][7,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"        // C[0,4] += A[0,7]*block_2[0,0][7,4]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_2[0,0][7,6]
      "jmp *%%r10\r\n"
      "CASE_3_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"         // C[0,1] += A[0,0]*block_3[0,0][0,1]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_3[0,0][1,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,7] += A[0,1]*block_3[0,0][1,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_3[0,0][2,3]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"        // C[0,4] += A[0,2]*block_3[0,0][2,4]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"        // C[0,5] += A[0,2]*block_3[0,0][2,5]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"        // C[0,6] += A[0,2]*block_3[0,0][2,6]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0,7] += A[0,2]*block_3[0,0][2,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_3[0,0][3,2]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"        // C[0,3] += A[0,3]*block_3[0,0][3,3]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_3[0,0][6,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"        // C[0,5] += A[0,7]*block_3[0,0][7,5]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"        // C[0,7] += A[0,7]*block_3[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_4_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_4[0,0][1,3]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,7] += A[0,1]*block_4[0,0][1,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"        // C[0,5] += A[0,3]*block_4[0,0][3,5]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"        // C[0,3] += A[0,5]*block_4[0,0][5,3]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"        // C[0,4] += A[0,5]*block_4[0,0][5,4]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"        // C[0,6] += A[0,5]*block_4[0,0][5,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_4[0,0][6,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_4[0,0][6,1]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"         // C[0,0] += A[0,7]*block_4[0,0][7,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"        // C[0,7] += A[0,7]*block_4[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_5_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_5[0,0][0,3]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_5[0,0][2,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"        // C[0,3] += A[0,3]*block_5[0,0][3,3]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"        // C[0,7] += A[0,4]*block_5[0,0][4,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"         // C[0,0] += A[0,5]*block_5[0,0][5,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"        // C[0,7] += A[0,6]*block_5[0,0][6,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_5[0,0][7,2]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"        // C[0,7] += A[0,7]*block_5[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_6_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,6] += A[0,1]*block_6[0,0][1,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_6[0,0][2,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_6[0,0][2,2]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_6[0,0][2,3]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_6[0,0][2,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_6[0,0][3,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"        // C[0,4] += A[0,3]*block_6[0,0][3,4]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_6[0,0][4,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"        // C[0,6] += A[0,4]*block_6[0,0][4,6]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_6[0,0][4,7]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"        // C[0,6] += A[0,5]*block_6[0,0][5,6]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"        // C[0,3] += A[0,6]*block_6[0,0][6,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_6[0,0][6,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_6[0,0][7,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_6[0,0][7,2]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"        // C[0,4] += A[0,7]*block_6[0,0][7,4]
      "jmp *%%r10\r\n"
      "CASE_7_%=:\r\n"
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
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_7[0,0][0,2]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,7] += A[0,1]*block_7[0,0][1,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_7[0,0][2,3]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"         // C[0,1] += A[0,3]*block_7[0,0][3,1]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_7[0,0][4,3]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"        // C[0,4] += A[0,4]*block_7[0,0][4,4]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"        // C[0,7] += A[0,4]*block_7[0,0][4,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"        // C[0,3] += A[0,5]*block_7[0,0][5,3]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"        // C[0,5] += A[0,6]*block_7[0,0][6,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"         // C[0,1] += A[0,7]*block_7[0,0][7,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"        // C[0,4] += A[0,7]*block_7[0,0][7,4]
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
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "addq $136, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "addq $72, %%rsi\r\n"                                       // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
      "movq $BLOCK_3_%=, %%r10\r\n"
      "addq $128, %%rsi\r\n"                                      // Move B to (d=3,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=3, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_3_%=:\r\n"
      "movq $BLOCK_4_%=, %%r10\r\n"
      "addq $104, %%rsi\r\n"                                      // Move B to (d=4,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=4, absolute)
      "jmp CASE_4_%=\r\n"
      "BLOCK_4_%=:\r\n"
      "movq $BLOCK_5_%=, %%r10\r\n"
      "addq $80, %%rsi\r\n"                                       // Move B to (d=5,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=5, absolute)
      "jmp CASE_5_%=\r\n"
      "BLOCK_5_%=:\r\n"
      "movq $BLOCK_6_%=, %%r10\r\n"
      "addq $64, %%rsi\r\n"                                       // Move B to (d=6,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=6, absolute)
      "jmp CASE_6_%=\r\n"
      "BLOCK_6_%=:\r\n"
      "movq $BLOCK_7_%=, %%r10\r\n"
      "addq $128, %%rsi\r\n"                                      // Move B to (d=7,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=7, absolute)
      "jmp CASE_7_%=\r\n"
      "BLOCK_7_%=:\r\n"
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



void jump_penalty_16_100_general (const double* A, const double* B, double* C) {
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
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_0[0,0][0,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"        // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"        // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"        // C[0,6] += A[0,4]*block_0[0,0][4,6]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_0[0,0][5,2]
      "jmp *%%r10\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"        // C[0,5] += A[0,0]*block_1[0,0][0,5]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"        // C[0,4] += A[0,1]*block_1[0,0][1,4]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"         // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_1[0,0][2,3]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0,7] += A[0,2]*block_1[0,0][2,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_1[0,0][4,1]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_1[0,0][4,2]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"        // C[0,4] += A[0,4]*block_1[0,0][4,4]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"         // C[0,0] += A[0,5]*block_1[0,0][5,0]
      "jmp *%%r10\r\n"
      "CASE_2_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_2[0,0][0,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"        // C[0,6] += A[0,0]*block_2[0,0][0,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,7] += A[0,0]*block_2[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"         // C[0,3] += A[0,4]*block_2[0,0][4,3]
      "jmp *%%r10\r\n"
      "CASE_3_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"         // C[0,1] += A[0,0]*block_3[0,0][0,1]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,6] += A[0,1]*block_3[0,0][1,6]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"        // C[0,6] += A[0,3]*block_3[0,0][3,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"        // C[0,4] += A[0,5]*block_3[0,0][5,4]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"        // C[0,5] += A[0,5]*block_3[0,0][5,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"         // C[0,2] += A[0,7]*block_3[0,0][7,2]
      "jmp *%%r10\r\n"
      "CASE_4_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_4[0,0][0,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_4[0,0][1,2]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_4[0,0][1,3]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,7] += A[0,1]*block_4[0,0][1,7]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_4[0,0][2,3]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_4[0,0][3,1]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"        // C[0,5] += A[0,3]*block_4[0,0][3,5]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"         // C[0,0] += A[0,4]*block_4[0,0][4,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_4[0,0][4,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"        // C[0,7] += A[0,4]*block_4[0,0][4,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"         // C[0,0] += A[0,5]*block_4[0,0][5,0]
      "jmp *%%r10\r\n"
      "CASE_5_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"         // C[0,3] += A[0,1]*block_5[0,0][1,3]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"        // C[0,5] += A[0,1]*block_5[0,0][1,5]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"        // C[0,7] += A[0,3]*block_5[0,0][3,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"        // C[0,7] += A[0,4]*block_5[0,0][4,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"         // C[0,1] += A[0,5]*block_5[0,0][5,1]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"        // C[0,6] += A[0,5]*block_5[0,0][5,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"        // C[0,4] += A[0,7]*block_5[0,0][7,4]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"        // C[0,7] += A[0,7]*block_5[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_6_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"        // C[0,5] += A[0,0]*block_6[0,0][0,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"         // C[0,2] += A[0,1]*block_6[0,0][1,2]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"         // C[0,1] += A[0,2]*block_6[0,0][2,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"        // C[0,6] += A[0,2]*block_6[0,0][2,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"        // C[0,4] += A[0,5]*block_6[0,0][5,4]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"        // C[0,5] += A[0,6]*block_6[0,0][6,5]
      "jmp *%%r10\r\n"
      "CASE_7_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,7] += A[0,0]*block_7[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"         // C[0,3] += A[0,1]*block_7[0,0][1,3]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"         // C[0,1] += A[0,4]*block_7[0,0][4,1]
      "jmp *%%r10\r\n"
      "CASE_8_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"         // C[0,5] += A[0,1]*block_8[0,0][1,5]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"         // C[0,3] += A[0,3]*block_8[0,0][3,3]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"        // C[0,5] += A[0,4]*block_8[0,0][4,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"        // C[0,5] += A[0,6]*block_8[0,0][6,5]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"        // C[0,7] += A[0,6]*block_8[0,0][6,7]
      "jmp *%%r10\r\n"
      "CASE_9_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"         // C[0,1] += A[0,0]*block_9[0,0][0,1]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"        // C[0,4] += A[0,1]*block_9[0,0][1,4]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"         // C[0,1] += A[0,3]*block_9[0,0][3,1]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"        // C[0,3] += A[0,3]*block_9[0,0][3,3]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_9[0,0][5,2]
      "jmp *%%r10\r\n"
      "CASE_10_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_10[0,0][0,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"        // C[0,4] += A[0,2]*block_10[0,0][2,4]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"        // C[0,6] += A[0,3]*block_10[0,0][3,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"         // C[0,1] += A[0,6]*block_10[0,0][6,1]
      "jmp *%%r10\r\n"
      "CASE_11_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"        // C[0,7] += A[0,3]*block_11[0,0][3,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"        // C[0,5] += A[0,4]*block_11[0,0][4,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"         // C[0,3] += A[0,5]*block_11[0,0][5,3]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"        // C[0,7] += A[0,5]*block_11[0,0][5,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"        // C[0,4] += A[0,6]*block_11[0,0][6,4]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"        // C[0,5] += A[0,6]*block_11[0,0][6,5]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"        // C[0,7] += A[0,6]*block_11[0,0][6,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"         // C[0,1] += A[0,7]*block_11[0,0][7,1]
      "jmp *%%r10\r\n"
      "CASE_12_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_12[0,0][0,3]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_12[0,0][1,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_12[0,0][2,3]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"        // C[0,4] += A[0,3]*block_12[0,0][3,4]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"         // C[0,0] += A[0,5]*block_12[0,0][5,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_12[0,0][6,0]
      "jmp *%%r10\r\n"
      "CASE_13_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"         // C[0,3] += A[0,0]*block_13[0,0][0,3]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"        // C[0,7] += A[0,3]*block_13[0,0][3,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"        // C[0,5] += A[0,5]*block_13[0,0][5,5]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"        // C[0,4] += A[0,6]*block_13[0,0][6,4]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"         // C[0,2] += A[0,7]*block_13[0,0][7,2]
      "jmp *%%r10\r\n"
      "CASE_14_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"         // C[0,2] += A[0,0]*block_14[0,0][0,2]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"        // C[0,5] += A[0,0]*block_14[0,0][0,5]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"        // C[0,5] += A[0,1]*block_14[0,0][1,5]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,7] += A[0,1]*block_14[0,0][1,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"         // C[0,2] += A[0,2]*block_14[0,0][2,2]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_14[0,0][6,2]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"        // C[0,7] += A[0,7]*block_14[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_15_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"        // C[0,5] += A[0,0]*block_15[0,0][0,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"        // C[0,5] += A[0,2]*block_15[0,0][2,5]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0,7] += A[0,2]*block_15[0,0][2,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"         // C[0,3] += A[0,6]*block_15[0,0][6,3]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"         // C[0,4] += A[0,7]*block_15[0,0][7,4]
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
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "addq $64, %%rsi\r\n"                                       // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "addq $72, %%rsi\r\n"                                       // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
      "movq $BLOCK_3_%=, %%r10\r\n"
      "addq $32, %%rsi\r\n"                                       // Move B to (d=3,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=3, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_3_%=:\r\n"
      "movq $BLOCK_4_%=, %%r10\r\n"
      "addq $48, %%rsi\r\n"                                       // Move B to (d=4,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=4, absolute)
      "jmp CASE_4_%=\r\n"
      "BLOCK_4_%=:\r\n"
      "movq $BLOCK_5_%=, %%r10\r\n"
      "addq $88, %%rsi\r\n"                                       // Move B to (d=5,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=5, absolute)
      "jmp CASE_5_%=\r\n"
      "BLOCK_5_%=:\r\n"
      "movq $BLOCK_6_%=, %%r10\r\n"
      "addq $64, %%rsi\r\n"                                       // Move B to (d=6,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=6, absolute)
      "jmp CASE_6_%=\r\n"
      "BLOCK_6_%=:\r\n"
      "movq $BLOCK_7_%=, %%r10\r\n"
      "addq $48, %%rsi\r\n"                                       // Move B to (d=7,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=7, absolute)
      "jmp CASE_7_%=\r\n"
      "BLOCK_7_%=:\r\n"
      "movq $BLOCK_8_%=, %%r10\r\n"
      "addq $24, %%rsi\r\n"                                       // Move B to (d=8,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=8, absolute)
      "jmp CASE_8_%=\r\n"
      "BLOCK_8_%=:\r\n"
      "movq $BLOCK_9_%=, %%r10\r\n"
      "addq $40, %%rsi\r\n"                                       // Move B to (d=9,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=9, absolute)
      "jmp CASE_9_%=\r\n"
      "BLOCK_9_%=:\r\n"
      "movq $BLOCK_10_%=, %%r10\r\n"
      "addq $40, %%rsi\r\n"                                       // Move B to (d=10,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=10, absolute)
      "jmp CASE_10_%=\r\n"
      "BLOCK_10_%=:\r\n"
      "movq $BLOCK_11_%=, %%r10\r\n"
      "addq $32, %%rsi\r\n"                                       // Move B to (d=11,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=11, absolute)
      "jmp CASE_11_%=\r\n"
      "BLOCK_11_%=:\r\n"
      "movq $BLOCK_12_%=, %%r10\r\n"
      "addq $64, %%rsi\r\n"                                       // Move B to (d=12,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=12, absolute)
      "jmp CASE_12_%=\r\n"
      "BLOCK_12_%=:\r\n"
      "movq $BLOCK_13_%=, %%r10\r\n"
      "addq $48, %%rsi\r\n"                                       // Move B to (d=13,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=13, absolute)
      "jmp CASE_13_%=\r\n"
      "BLOCK_13_%=:\r\n"
      "movq $BLOCK_14_%=, %%r10\r\n"
      "addq $40, %%rsi\r\n"                                       // Move B to (d=14,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=14, absolute)
      "jmp CASE_14_%=\r\n"
      "BLOCK_14_%=:\r\n"
      "movq $BLOCK_15_%=, %%r10\r\n"
      "addq $56, %%rsi\r\n"                                       // Move B to (d=15,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=15, absolute)
      "jmp CASE_15_%=\r\n"
      "BLOCK_15_%=:\r\n"
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



void jump_penalty_4_200_general (const double* A, const double* B, double* C) {
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
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_0[0,0][0,4]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_0[0,0][0,5]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_0[0,0][0,6]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_0[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_0[0,0][1,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,2] += A[0,1]*block_0[0,0][1,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_0[0,0][1,3]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_0[0,0][1,5]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"        // C[0,0] += A[0,2]*block_0[0,0][2,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"       // C[0,2] += A[0,2]*block_0[0,0][2,2]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_0[0,0][2,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_0[0,0][2,4]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_0[0,0][2,6]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_0[0,0][3,3]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_0[0,0][3,7]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_0[0,0][4,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_0[0,0][4,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_0[0,0][4,6]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_0[0,0][4,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_0[0,0][5,0]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_0[0,0][5,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_0[0,0][5,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_0[0,0][5,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_0[0,0][5,5]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"       // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_0[0,0][6,2]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_0[0,0][6,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_0[0,0][6,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_0[0,0][6,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_0[0,0][6,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_0[0,0][7,0]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_0[0,0][7,4]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_0[0,0][7,5]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_0[0,0][7,6]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
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
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_1[0,0][0,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_1[0,0][0,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_1[0,0][0,3]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_1[0,0][0,5]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_1[0,0][0,6]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_1[0,0][0,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_1[0,0][1,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_1[0,0][1,2]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_1[0,0][1,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_1[0,0][1,4]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_1[0,0][1,5]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_1[0,0][1,6]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_1[0,0][1,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_1[0,0][2,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"       // C[0,2] += A[0,2]*block_1[0,0][2,2]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_1[0,0][2,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_1[0,0][2,5]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_1[0,0][2,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_1[0,0][3,0]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_1[0,0][3,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_1[0,0][3,3]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_1[0,0][3,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_1[0,0][3,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_1[0,0][3,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_1[0,0][4,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_1[0,0][4,2]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_1[0,0][4,3]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_1[0,0][4,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_1[0,0][5,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_1[0,0][5,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_1[0,0][5,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_1[0,0][5,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_1[0,0][5,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_1[0,0][5,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_1[0,0][5,6]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_1[0,0][5,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_1[0,0][6,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_1[0,0][6,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_1[0,0][6,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_1[0,0][6,4]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_1[0,0][6,5]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_1[0,0][6,6]
        "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_1[0,0][6,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_1[0,0][7,0]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_1[0,0][7,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_1[0,0][7,3]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_1[0,0][7,4]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_1[0,0][7,5]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_1[0,0][7,6]
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
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_2[0,0][0,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_2[0,0][0,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_2[0,0][0,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_2[0,0][0,6]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_2[0,0][1,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,2] += A[0,1]*block_2[0,0][1,2]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_2[0,0][1,5]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_2[0,0][1,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_2[0,0][2,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_2[0,0][2,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"       // C[0,2] += A[0,2]*block_2[0,0][2,2]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_2[0,0][2,3]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_2[0,0][2,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_2[0,0][2,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_2[0,0][2,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_2[0,0][3,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_2[0,0][3,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_2[0,0][3,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_2[0,0][3,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_2[0,0][3,4]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_2[0,0][3,6]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_2[0,0][3,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_2[0,0][4,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_2[0,0][4,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_2[0,0][4,2]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_2[0,0][4,4]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_2[0,0][4,5]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_2[0,0][4,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_2[0,0][5,0]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_2[0,0][5,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_2[0,0][5,3]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_2[0,0][5,4]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_2[0,0][5,5]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_2[0,0][5,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_2[0,0][5,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_2[0,0][6,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_2[0,0][6,1]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_2[0,0][6,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_2[0,0][6,3]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_2[0,0][6,4]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_2[0,0][6,5]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_2[0,0][6,7]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_2[0,0][7,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_2[0,0][7,2]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_2[0,0][7,3]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_2[0,0][7,4]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_2[0,0][7,5]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_2[0,0][7,6]
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
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_3[0,0][0,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_3[0,0][0,4]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_3[0,0][0,5]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_3[0,0][0,6]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_3[0,0][0,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_3[0,0][1,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_3[0,0][1,3]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_3[0,0][1,4]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_3[0,0][1,5]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_3[0,0][1,6]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_3[0,0][1,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_3[0,0][2,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_3[0,0][2,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_3[0,0][2,3]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_3[0,0][2,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_3[0,0][2,6]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_3[0,0][2,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_3[0,0][3,0]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_3[0,0][3,4]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_3[0,0][3,5]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_3[0,0][3,6]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_3[0,0][3,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"         // C[0,0] += A[0,4]*block_3[0,0][4,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_3[0,0][4,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_3[0,0][4,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_3[0,0][4,3]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_3[0,0][4,4]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_3[0,0][4,5]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_3[0,0][4,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_3[0,0][5,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_3[0,0][5,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_3[0,0][5,2]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_3[0,0][5,3]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_3[0,0][5,4]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_3[0,0][5,5]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_3[0,0][5,6]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_3[0,0][6,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_3[0,0][6,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_3[0,0][6,3]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_3[0,0][6,4]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_3[0,0][6,6]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_3[0,0][6,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_3[0,0][7,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_3[0,0][7,1]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_3[0,0][7,4]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_3[0,0][7,7]
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
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "addq $408, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "addq $416, %%rsi\r\n"                                      // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
      "movq $BLOCK_3_%=, %%r10\r\n"
      "addq $408, %%rsi\r\n"                                      // Move B to (d=3,r=0, absolute)
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



void jump_penalty_8_200_general (const double* A, const double* B, double* C) {
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
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_0[0,0][1,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_0[0,0][1,4]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_0[0,0][1,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_0[0,0][2,2]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_0[0,0][2,3]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_0[0,0][3,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_0[0,0][4,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_0[0,0][5,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"        // C[0,3] += A[0,5]*block_0[0,0][5,3]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_0[0,0][5,5]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"        // C[0,3] += A[0,6]*block_0[0,0][6,3]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_0[0,0][6,5]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_0[0,0][6,6]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_0[0,0][6,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_0[0,0][7,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_0[0,0][7,4]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
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
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_1[0,0][1,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"        // C[0,4] += A[0,1]*block_1[0,0][1,4]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_1[0,0][1,6]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_1[0,0][2,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_1[0,0][2,6]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_1[0,0][3,2]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"        // C[0,3] += A[0,3]*block_1[0,0][3,3]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_1[0,0][3,5]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_1[0,0][4,3]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"        // C[0,4] += A[0,4]*block_1[0,0][4,4]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"         // C[0,0] += A[0,5]*block_1[0,0][5,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_1[0,0][5,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"        // C[0,3] += A[0,5]*block_1[0,0][5,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_1[0,0][5,4]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_1[0,0][5,5]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_1[0,0][5,6]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_1[0,0][6,4]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_1[0,0][6,6]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_1[0,0][6,7]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_1[0,0][7,5]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_1[0,0][7,7]
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
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_2[0,0][0,3]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_2[0,0][0,6]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_2[0,0][1,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_2[0,0][1,2]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_2[0,0][1,3]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_2[0,0][1,4]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_2[0,0][1,5]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_2[0,0][1,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_2[0,0][2,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_2[0,0][2,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_2[0,0][2,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_2[0,0][2,3]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_2[0,0][2,4]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_2[0,0][2,5]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_2[0,0][3,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_2[0,0][3,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_2[0,0][3,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_2[0,0][3,3]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_2[0,0][3,6]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_2[0,0][4,1]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_2[0,0][5,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_2[0,0][5,2]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_2[0,0][5,6]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_2[0,0][5,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_2[0,0][6,0]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_2[0,0][6,5]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_2[0,0][6,6]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_2[0,0][7,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_2[0,0][7,4]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_2[0,0][7,6]
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
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"         // C[0,1] += A[0,0]*block_3[0,0][0,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_3[0,0][0,4]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_3[0,0][1,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_3[0,0][1,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_3[0,0][2,3]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"        // C[0,4] += A[0,2]*block_3[0,0][2,4]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"        // C[0,5] += A[0,2]*block_3[0,0][2,5]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_3[0,0][2,6]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_3[0,0][2,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_3[0,0][3,2]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"        // C[0,3] += A[0,3]*block_3[0,0][3,3]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"        // C[0,4] += A[0,4]*block_3[0,0][4,4]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_3[0,0][5,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"        // C[0,4] += A[0,5]*block_3[0,0][5,4]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_3[0,0][5,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_3[0,0][6,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_3[0,0][6,5]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"        // C[0,4] += A[0,7]*block_3[0,0][7,4]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_3[0,0][7,5]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_3[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_4_%=:\r\n"
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
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_4[0,0][0,3]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"        // C[0,5] += A[0,0]*block_4[0,0][0,5]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_4[0,0][0,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_4[0,0][1,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_4[0,0][1,3]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_4[0,0][1,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_4[0,0][2,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_4[0,0][2,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_4[0,0][2,7]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_4[0,0][3,5]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_4[0,0][3,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_4[0,0][4,3]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_4[0,0][4,5]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_4[0,0][4,7]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"        // C[0,3] += A[0,5]*block_4[0,0][5,3]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"        // C[0,4] += A[0,5]*block_4[0,0][5,4]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_4[0,0][5,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_4[0,0][6,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_4[0,0][6,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"        // C[0,4] += A[0,6]*block_4[0,0][6,4]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_4[0,0][7,0]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_4[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_5_%=:\r\n"
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
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_5[0,0][0,3]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_5[0,0][0,4]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_5[0,0][0,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_5[0,0][1,1]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_5[0,0][1,2]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_5[0,0][2,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_5[0,0][2,2]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_5[0,0][2,3]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_5[0,0][3,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"        // C[0,3] += A[0,3]*block_5[0,0][3,3]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_5[0,0][4,5]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_5[0,0][4,6]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_5[0,0][4,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"         // C[0,0] += A[0,5]*block_5[0,0][5,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_5[0,0][5,2]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_5[0,0][5,4]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_5[0,0][5,6]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_5[0,0][6,5]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_5[0,0][6,7]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_5[0,0][7,2]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0,3] += A[0,7]*block_5[0,0][7,3]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_5[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_6_%=:\r\n"
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
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_6[0,0][0,2]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_6[0,0][0,3]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_6[0,0][0,4]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_6[0,0][0,5]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_6[0,0][0,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_6[0,0][1,3]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_6[0,0][1,6]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_6[0,0][1,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_6[0,0][2,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_6[0,0][2,2]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_6[0,0][2,3]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_6[0,0][2,6]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_6[0,0][2,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_6[0,0][3,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_6[0,0][3,4]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_6[0,0][3,5]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_6[0,0][3,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_6[0,0][4,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_6[0,0][4,3]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_6[0,0][4,6]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_6[0,0][4,7]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_6[0,0][5,6]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"        // C[0,3] += A[0,6]*block_6[0,0][6,3]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_6[0,0][6,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_6[0,0][7,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_6[0,0][7,2]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_6[0,0][7,4]
      "jmp *%%r10\r\n"
      "CASE_7_%=:\r\n"
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
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_7[0,0][0,2]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_7[0,0][0,5]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_7[0,0][0,6]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_7[0,0][0,7]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_7[0,0][1,2]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"        // C[0,4] += A[0,1]*block_7[0,0][1,4]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_7[0,0][1,5]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_7[0,0][1,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_7[0,0][2,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_7[0,0][2,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_7[0,0][2,3]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_7[0,0][2,5]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_7[0,0][2,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_7[0,0][3,1]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_7[0,0][4,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_7[0,0][4,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_7[0,0][4,4]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_7[0,0][4,5]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_7[0,0][4,6]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_7[0,0][4,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_7[0,0][5,2]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"        // C[0,3] += A[0,5]*block_7[0,0][5,3]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_7[0,0][6,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"         // C[0,0] += A[0,7]*block_7[0,0][7,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_7[0,0][7,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_7[0,0][7,4]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_7[0,0][7,6]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_7[0,0][7,7]
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
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "addq $208, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "addq $192, %%rsi\r\n"                                      // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
      "movq $BLOCK_3_%=, %%r10\r\n"
      "addq $248, %%rsi\r\n"                                      // Move B to (d=3,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=3, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_3_%=:\r\n"
      "movq $BLOCK_4_%=, %%r10\r\n"
      "addq $160, %%rsi\r\n"                                      // Move B to (d=4,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=4, absolute)
      "jmp CASE_4_%=\r\n"
      "BLOCK_4_%=:\r\n"
      "movq $BLOCK_5_%=, %%r10\r\n"
      "addq $176, %%rsi\r\n"                                      // Move B to (d=5,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=5, absolute)
      "jmp CASE_5_%=\r\n"
      "BLOCK_5_%=:\r\n"
      "movq $BLOCK_6_%=, %%r10\r\n"
      "addq $176, %%rsi\r\n"                                      // Move B to (d=6,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=6, absolute)
      "jmp CASE_6_%=\r\n"
      "BLOCK_6_%=:\r\n"
      "movq $BLOCK_7_%=, %%r10\r\n"
      "addq $216, %%rsi\r\n"                                      // Move B to (d=7,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=7, absolute)
      "jmp CASE_7_%=\r\n"
      "BLOCK_7_%=:\r\n"
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



void jump_penalty_16_200_general (const double* A, const double* B, double* C) {
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
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_0[0,0][0,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"        // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"        // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"        // C[0,6] += A[0,3]*block_0[0,0][3,6]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"        // C[0,6] += A[0,4]*block_0[0,0][4,6]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"        // C[0,6] += A[0,6]*block_0[0,0][6,6]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"        // C[0,5] += A[0,7]*block_0[0,0][7,5]
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
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"         // C[0,1] += A[0,0]*block_1[0,0][0,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"        // C[0,5] += A[0,0]*block_1[0,0][0,5]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"        // C[0,4] += A[0,1]*block_1[0,0][1,4]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,7] += A[0,1]*block_1[0,0][1,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_1[0,0][2,3]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"        // C[0,5] += A[0,2]*block_1[0,0][2,5]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_1[0,0][2,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_1[0,0][3,1]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_1[0,0][4,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_1[0,0][4,2]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"        // C[0,4] += A[0,4]*block_1[0,0][4,4]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"         // C[0,0] += A[0,5]*block_1[0,0][5,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"        // C[0,4] += A[0,5]*block_1[0,0][5,4]
      "jmp *%%r10\r\n"
      "CASE_2_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_2[0,0][0,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_2[0,0][0,2]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_2[0,0][0,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_2[0,0][0,6]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_2[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_2[0,0][2,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"        // C[0,5] += A[0,2]*block_2[0,0][2,5]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_2[0,0][2,7]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"        // C[0,4] += A[0,3]*block_2[0,0][3,4]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_2[0,0][4,3]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_2[0,0][4,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_2[0,0][5,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"        // C[0,3] += A[0,6]*block_2[0,0][6,3]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"        // C[0,4] += A[0,6]*block_2[0,0][6,4]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_2[0,0][7,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_2[0,0][7,2]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"        // C[0,5] += A[0,7]*block_2[0,0][7,5]
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
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_3[0,0][0,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,6] += A[0,1]*block_3[0,0][1,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_3[0,0][2,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_3[0,0][2,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_3[0,0][3,6]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"        // C[0,4] += A[0,4]*block_3[0,0][4,4]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"        // C[0,5] += A[0,4]*block_3[0,0][4,5]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"        // C[0,4] += A[0,5]*block_3[0,0][5,4]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"        // C[0,5] += A[0,5]*block_3[0,0][5,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_3[0,0][6,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_3[0,0][6,2]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_3[0,0][7,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_3[0,0][7,2]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0,3] += A[0,7]*block_3[0,0][7,3]
      "jmp *%%r10\r\n"
      "CASE_4_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_4[0,0][0,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_4[0,0][1,2]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_4[0,0][1,3]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_4[0,0][1,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_4[0,0][2,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_4[0,0][2,3]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_4[0,0][3,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"        // C[0,5] += A[0,3]*block_4[0,0][3,5]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"        // C[0,6] += A[0,3]*block_4[0,0][3,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"         // C[0,0] += A[0,4]*block_4[0,0][4,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_4[0,0][4,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"        // C[0,5] += A[0,4]*block_4[0,0][4,5]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_4[0,0][4,6]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_4[0,0][4,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_4[0,0][5,0]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_4[0,0][5,6]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_4[0,0][6,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_4[0,0][6,6]
      "jmp *%%r10\r\n"
      "CASE_5_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_5[0,0][1,3]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"        // C[0,5] += A[0,1]*block_5[0,0][1,5]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"        // C[0,7] += A[0,3]*block_5[0,0][3,7]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"        // C[0,7] += A[0,4]*block_5[0,0][4,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"         // C[0,1] += A[0,5]*block_5[0,0][5,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"        // C[0,6] += A[0,5]*block_5[0,0][5,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"         // C[0,0] += A[0,7]*block_5[0,0][7,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"        // C[0,4] += A[0,7]*block_5[0,0][7,4]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"        // C[0,7] += A[0,7]*block_5[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_6_%=:\r\n"
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
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"        // C[0,5] += A[0,0]*block_6[0,0][0,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_6[0,0][1,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,6] += A[0,1]*block_6[0,0][1,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"         // C[0,1] += A[0,2]*block_6[0,0][2,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"        // C[0,6] += A[0,2]*block_6[0,0][2,6]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"        // C[0,3] += A[0,3]*block_6[0,0][3,3]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_6[0,0][4,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"        // C[0,6] += A[0,4]*block_6[0,0][4,6]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_6[0,0][5,2]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"        // C[0,4] += A[0,5]*block_6[0,0][5,4]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_6[0,0][6,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"        // C[0,5] += A[0,6]*block_6[0,0][6,5]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"        // C[0,4] += A[0,7]*block_6[0,0][7,4]
      "jmp *%%r10\r\n"
      "CASE_7_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"        // C[0,6] += A[0,0]*block_7[0,0][0,6]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,7] += A[0,0]*block_7[0,0][0,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_7[0,0][1,2]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_7[0,0][1,3]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"         // C[0,1] += A[0,3]*block_7[0,0][3,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"        // C[0,4] += A[0,3]*block_7[0,0][3,4]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_7[0,0][4,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"        // C[0,5] += A[0,5]*block_7[0,0][5,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_7[0,0][6,1]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"         // C[0,0] += A[0,7]*block_7[0,0][7,0]
      "jmp *%%r10\r\n"
      "CASE_8_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"        // C[0,5] += A[0,1]*block_8[0,0][1,5]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"         // C[0,1] += A[0,3]*block_8[0,0][3,1]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"         // C[0,3] += A[0,3]*block_8[0,0][3,3]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"        // C[0,5] += A[0,4]*block_8[0,0][4,5]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"        // C[0,5] += A[0,6]*block_8[0,0][6,5]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"        // C[0,7] += A[0,6]*block_8[0,0][6,7]
      "jmp *%%r10\r\n"
      "CASE_9_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_9[0,0][0,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_9[0,0][0,4]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"        // C[0,5] += A[0,0]*block_9[0,0][0,5]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"        // C[0,4] += A[0,1]*block_9[0,0][1,4]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_9[0,0][3,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_9[0,0][3,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"        // C[0,3] += A[0,3]*block_9[0,0][3,3]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"        // C[0,5] += A[0,3]*block_9[0,0][3,5]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"        // C[0,7] += A[0,3]*block_9[0,0][3,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_9[0,0][5,2]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_9[0,0][6,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_9[0,0][7,2]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"        // C[0,6] += A[0,7]*block_9[0,0][7,6]
      "jmp *%%r10\r\n"
      "CASE_10_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_10[0,0][0,0]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"         // C[0,1] += A[0,0]*block_10[0,0][0,1]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_10[0,0][2,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"        // C[0,4] += A[0,2]*block_10[0,0][2,4]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"        // C[0,6] += A[0,2]*block_10[0,0][2,6]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_10[0,0][2,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_10[0,0][3,2]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"        // C[0,6] += A[0,3]*block_10[0,0][3,6]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_10[0,0][4,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_10[0,0][5,1]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_10[0,0][6,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_10[0,0][6,2]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"        // C[0,3] += A[0,6]*block_10[0,0][6,3]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"        // C[0,5] += A[0,6]*block_10[0,0][6,5]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_10[0,0][7,2]
      "jmp *%%r10\r\n"
      "CASE_11_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"        // C[0,5] += A[0,2]*block_11[0,0][2,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"         // C[0,3] += A[0,3]*block_11[0,0][3,3]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"        // C[0,7] += A[0,3]*block_11[0,0][3,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"        // C[0,5] += A[0,4]*block_11[0,0][4,5]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"        // C[0,6] += A[0,4]*block_11[0,0][4,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"        // C[0,3] += A[0,5]*block_11[0,0][5,3]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"        // C[0,7] += A[0,5]*block_11[0,0][5,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"        // C[0,4] += A[0,6]*block_11[0,0][6,4]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"        // C[0,5] += A[0,6]*block_11[0,0][6,5]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"        // C[0,7] += A[0,6]*block_11[0,0][6,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"         // C[0,1] += A[0,7]*block_11[0,0][7,1]
      "jmp *%%r10\r\n"
      "CASE_12_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_12[0,0][0,1]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_12[0,0][0,3]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_12[0,0][0,4]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_12[0,0][1,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_12[0,0][1,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_12[0,0][2,3]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_12[0,0][3,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_12[0,0][3,2]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"        // C[0,4] += A[0,3]*block_12[0,0][3,4]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_12[0,0][3,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_12[0,0][5,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_12[0,0][6,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_12[0,0][6,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_12[0,0][6,7]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0,3] += A[0,7]*block_12[0,0][7,3]
      "jmp *%%r10\r\n"
      "CASE_13_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"         // C[0,1] += A[0,0]*block_13[0,0][0,1]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_13[0,0][0,3]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"         // C[0,1] += A[0,2]*block_13[0,0][2,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_13[0,0][2,3]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"        // C[0,4] += A[0,2]*block_13[0,0][2,4]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_13[0,0][3,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"        // C[0,7] += A[0,3]*block_13[0,0][3,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_13[0,0][4,3]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"        // C[0,5] += A[0,5]*block_13[0,0][5,5]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"        // C[0,4] += A[0,6]*block_13[0,0][6,4]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_13[0,0][7,2]
      "jmp *%%r10\r\n"
      "CASE_14_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_14[0,0][0,2]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"        // C[0,5] += A[0,0]*block_14[0,0][0,5]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"        // C[0,5] += A[0,1]*block_14[0,0][1,5]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,6] += A[0,1]*block_14[0,0][1,6]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,7] += A[0,1]*block_14[0,0][1,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_14[0,0][2,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_14[0,0][2,2]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"        // C[0,4] += A[0,2]*block_14[0,0][2,4]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"         // C[0,1] += A[0,3]*block_14[0,0][3,1]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_14[0,0][6,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"        // C[0,5] += A[0,6]*block_14[0,0][6,5]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0,3] += A[0,7]*block_14[0,0][7,3]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"        // C[0,4] += A[0,7]*block_14[0,0][7,4]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_14[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_15_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"        // C[0,5] += A[0,0]*block_15[0,0][0,5]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"        // C[0,5] += A[0,1]*block_15[0,0][1,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"         // C[0,3] += A[0,2]*block_15[0,0][2,3]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"        // C[0,5] += A[0,2]*block_15[0,0][2,5]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0,7] += A[0,2]*block_15[0,0][2,7]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"        // C[0,6] += A[0,3]*block_15[0,0][3,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_15[0,0][6,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"        // C[0,3] += A[0,6]*block_15[0,0][6,3]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"        // C[0,4] += A[0,7]*block_15[0,0][7,4]
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
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "addq $88, %%rsi\r\n"                                       // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "addq $112, %%rsi\r\n"                                      // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
      "movq $BLOCK_3_%=, %%r10\r\n"
      "addq $136, %%rsi\r\n"                                      // Move B to (d=3,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=3, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_3_%=:\r\n"
      "movq $BLOCK_4_%=, %%r10\r\n"
      "addq $112, %%rsi\r\n"                                      // Move B to (d=4,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=4, absolute)
      "jmp CASE_4_%=\r\n"
      "BLOCK_4_%=:\r\n"
      "movq $BLOCK_5_%=, %%r10\r\n"
      "addq $144, %%rsi\r\n"                                      // Move B to (d=5,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=5, absolute)
      "jmp CASE_5_%=\r\n"
      "BLOCK_5_%=:\r\n"
      "movq $BLOCK_6_%=, %%r10\r\n"
      "addq $72, %%rsi\r\n"                                       // Move B to (d=6,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=6, absolute)
      "jmp CASE_6_%=\r\n"
      "BLOCK_6_%=:\r\n"
      "movq $BLOCK_7_%=, %%r10\r\n"
      "addq $104, %%rsi\r\n"                                      // Move B to (d=7,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=7, absolute)
      "jmp CASE_7_%=\r\n"
      "BLOCK_7_%=:\r\n"
      "movq $BLOCK_8_%=, %%r10\r\n"
      "addq $80, %%rsi\r\n"                                       // Move B to (d=8,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=8, absolute)
      "jmp CASE_8_%=\r\n"
      "BLOCK_8_%=:\r\n"
      "movq $BLOCK_9_%=, %%r10\r\n"
      "addq $48, %%rsi\r\n"                                       // Move B to (d=9,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=9, absolute)
      "jmp CASE_9_%=\r\n"
      "BLOCK_9_%=:\r\n"
      "movq $BLOCK_10_%=, %%r10\r\n"
      "addq $104, %%rsi\r\n"                                      // Move B to (d=10,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=10, absolute)
      "jmp CASE_10_%=\r\n"
      "BLOCK_10_%=:\r\n"
      "movq $BLOCK_11_%=, %%r10\r\n"
      "addq $120, %%rsi\r\n"                                      // Move B to (d=11,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=11, absolute)
      "jmp CASE_11_%=\r\n"
      "BLOCK_11_%=:\r\n"
      "movq $BLOCK_12_%=, %%r10\r\n"
      "addq $88, %%rsi\r\n"                                       // Move B to (d=12,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=12, absolute)
      "jmp CASE_12_%=\r\n"
      "BLOCK_12_%=:\r\n"
      "movq $BLOCK_13_%=, %%r10\r\n"
      "addq $120, %%rsi\r\n"                                      // Move B to (d=13,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=13, absolute)
      "jmp CASE_13_%=\r\n"
      "BLOCK_13_%=:\r\n"
      "movq $BLOCK_14_%=, %%r10\r\n"
      "addq $88, %%rsi\r\n"                                       // Move B to (d=14,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=14, absolute)
      "jmp CASE_14_%=\r\n"
      "BLOCK_14_%=:\r\n"
      "movq $BLOCK_15_%=, %%r10\r\n"
      "addq $112, %%rsi\r\n"                                      // Move B to (d=15,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=15, absolute)
      "jmp CASE_15_%=\r\n"
      "BLOCK_15_%=:\r\n"
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



void jump_penalty_8_400_general (const double* A, const double* B, double* C) {
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
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"       // C[0,2] += A[0,0]*block_0[0,0][0,2]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_0[0,0][0,4]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_0[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,2] += A[0,1]*block_0[0,0][1,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_0[0,0][1,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_0[0,0][1,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_0[0,0][1,5]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_0[0,0][1,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"        // C[0,0] += A[0,2]*block_0[0,0][2,0]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"       // C[0,2] += A[0,2]*block_0[0,0][2,2]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_0[0,0][2,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_0[0,0][2,4]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_0[0,0][2,6]
        "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_0[0,0][2,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_0[0,0][3,3]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_0[0,0][3,5]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_0[0,0][3,6]
        "vfmadd231pd 416(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_0[0,0][3,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_0[0,0][4,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_0[0,0][4,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_0[0,0][4,4]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_0[0,0][4,6]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_0[0,0][5,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_0[0,0][5,3]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_0[0,0][5,4]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_0[0,0][5,5]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 424(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_0[0,0][5,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_0[0,0][6,2]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_0[0,0][6,3]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_0[0,0][6,4]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_0[0,0][6,5]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_0[0,0][6,6]
        "vfmadd231pd 432(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_0[0,0][6,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_0[0,0][7,0]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_0[0,0][7,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_0[0,0][7,3]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_0[0,0][7,4]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_0[0,0][7,5]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_0[0,0][7,6]
        "vfmadd231pd 440(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
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
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_1[0,0][0,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_1[0,0][0,5]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_1[0,0][0,6]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_1[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_1[0,0][1,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_1[0,0][1,3]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_1[0,0][1,4]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_1[0,0][1,6]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_1[0,0][1,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"        // C[0,0] += A[0,2]*block_1[0,0][2,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_1[0,0][2,2]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_1[0,0][2,5]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_1[0,0][2,6]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_1[0,0][2,7]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_1[0,0][3,2]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_1[0,0][3,3]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_1[0,0][3,4]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_1[0,0][3,5]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_1[0,0][3,6]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_1[0,0][3,7]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_1[0,0][4,3]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_1[0,0][4,4]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_1[0,0][4,5]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_1[0,0][4,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_1[0,0][5,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_1[0,0][5,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_1[0,0][5,3]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_1[0,0][5,4]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_1[0,0][5,5]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_1[0,0][5,6]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_1[0,0][6,0]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_1[0,0][6,4]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_1[0,0][6,6]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_1[0,0][6,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_1[0,0][7,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_1[0,0][7,2]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_1[0,0][7,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_1[0,0][7,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_1[0,0][7,7]
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
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_2[0,0][0,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"       // C[0,2] += A[0,0]*block_2[0,0][0,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_2[0,0][0,3]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_2[0,0][0,4]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_2[0,0][0,6]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_2[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_2[0,0][1,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_2[0,0][1,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,2] += A[0,1]*block_2[0,0][1,2]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_2[0,0][1,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_2[0,0][1,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_2[0,0][1,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_2[0,0][1,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"        // C[0,0] += A[0,2]*block_2[0,0][2,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_2[0,0][2,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"       // C[0,2] += A[0,2]*block_2[0,0][2,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_2[0,0][2,3]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_2[0,0][2,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_2[0,0][2,5]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_2[0,0][2,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_2[0,0][3,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_2[0,0][3,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_2[0,0][3,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_2[0,0][3,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_2[0,0][3,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_2[0,0][3,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_2[0,0][3,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_2[0,0][3,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_2[0,0][4,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_2[0,0][4,1]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_2[0,0][4,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_2[0,0][4,4]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_2[0,0][4,5]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_2[0,0][4,6]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_2[0,0][5,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_2[0,0][5,2]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_2[0,0][5,4]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_2[0,0][5,6]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_2[0,0][5,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_2[0,0][6,0]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_2[0,0][6,2]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_2[0,0][6,4]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_2[0,0][6,5]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_2[0,0][6,6]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_2[0,0][7,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"       // C[0,1] += A[0,7]*block_2[0,0][7,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_2[0,0][7,2]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_2[0,0][7,4]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_2[0,0][7,5]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_2[0,0][7,6]
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
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_3[0,0][0,1]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_3[0,0][0,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_3[0,0][0,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_3[0,0][1,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_3[0,0][1,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,2] += A[0,1]*block_3[0,0][1,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_3[0,0][1,4]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_3[0,0][1,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_3[0,0][1,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_3[0,0][2,0]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"       // C[0,2] += A[0,2]*block_3[0,0][2,2]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_3[0,0][2,3]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_3[0,0][2,4]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_3[0,0][2,5]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_3[0,0][2,6]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_3[0,0][2,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_3[0,0][3,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_3[0,0][3,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_3[0,0][3,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_3[0,0][3,3]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_3[0,0][3,4]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_3[0,0][3,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_3[0,0][4,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_3[0,0][4,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_3[0,0][4,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_3[0,0][4,4]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_3[0,0][4,6]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_3[0,0][4,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_3[0,0][5,0]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_3[0,0][5,2]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_3[0,0][5,4]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_3[0,0][5,6]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_3[0,0][6,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_3[0,0][6,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_3[0,0][6,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_3[0,0][6,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_3[0,0][6,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_3[0,0][6,5]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_3[0,0][7,0]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_3[0,0][7,1]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_3[0,0][7,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_3[0,0][7,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_3[0,0][7,5]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_3[0,0][7,6]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_3[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_4_%=:\r\n"
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
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_4[0,0][0,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_4[0,0][0,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_4[0,0][0,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_4[0,0][0,5]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_4[0,0][0,6]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_4[0,0][0,7]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_4[0,0][1,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,2] += A[0,1]*block_4[0,0][1,2]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_4[0,0][1,3]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_4[0,0][1,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_4[0,0][2,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_4[0,0][2,1]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_4[0,0][2,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_4[0,0][2,5]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_4[0,0][2,6]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_4[0,0][2,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_4[0,0][3,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_4[0,0][3,1]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_4[0,0][3,3]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_4[0,0][3,5]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_4[0,0][3,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_4[0,0][4,0]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_4[0,0][4,3]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_4[0,0][4,4]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_4[0,0][4,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_4[0,0][4,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_4[0,0][5,0]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_4[0,0][5,2]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_4[0,0][5,3]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_4[0,0][5,4]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_4[0,0][5,5]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_4[0,0][5,6]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_4[0,0][6,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_4[0,0][6,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_4[0,0][6,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_4[0,0][6,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_4[0,0][6,4]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_4[0,0][6,6]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_4[0,0][7,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_4[0,0][7,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_4[0,0][7,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_4[0,0][7,3]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_4[0,0][7,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_4[0,0][7,5]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_4[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_5_%=:\r\n"
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
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_5[0,0][0,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_5[0,0][0,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_5[0,0][0,2]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_5[0,0][0,3]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_5[0,0][0,4]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_5[0,0][0,6]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_5[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_5[0,0][1,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_5[0,0][1,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,2] += A[0,1]*block_5[0,0][1,2]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_5[0,0][1,4]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_5[0,0][1,5]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_5[0,0][1,6]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_5[0,0][1,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"        // C[0,0] += A[0,2]*block_5[0,0][2,0]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"       // C[0,2] += A[0,2]*block_5[0,0][2,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_5[0,0][2,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_5[0,0][2,4]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_5[0,0][2,5]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_5[0,0][2,6]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_5[0,0][2,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_5[0,0][3,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_5[0,0][3,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_5[0,0][3,2]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_5[0,0][3,3]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_5[0,0][3,5]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_5[0,0][3,6]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_5[0,0][3,7]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_5[0,0][4,2]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_5[0,0][4,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_5[0,0][4,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_5[0,0][4,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_5[0,0][4,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_5[0,0][5,0]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_5[0,0][5,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_5[0,0][5,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_5[0,0][5,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_5[0,0][5,5]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_5[0,0][5,6]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_5[0,0][6,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_5[0,0][6,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_5[0,0][6,2]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_5[0,0][6,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_5[0,0][6,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_5[0,0][6,6]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_5[0,0][6,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_5[0,0][7,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_5[0,0][7,1]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_5[0,0][7,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_5[0,0][7,3]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_5[0,0][7,6]
        "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_5[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_6_%=:\r\n"
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
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_6[0,0][0,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"       // C[0,2] += A[0,0]*block_6[0,0][0,2]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_6[0,0][0,3]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_6[0,0][0,4]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_6[0,0][0,5]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_6[0,0][0,6]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_6[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_6[0,0][1,0]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_6[0,0][1,3]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_6[0,0][1,4]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_6[0,0][1,6]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_6[0,0][1,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"        // C[0,0] += A[0,2]*block_6[0,0][2,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_6[0,0][2,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"       // C[0,2] += A[0,2]*block_6[0,0][2,2]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_6[0,0][2,3]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_6[0,0][2,4]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_6[0,0][2,5]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_6[0,0][2,6]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_6[0,0][2,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_6[0,0][3,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_6[0,0][3,1]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_6[0,0][3,4]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_6[0,0][3,5]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_6[0,0][3,6]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_6[0,0][4,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_6[0,0][4,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_6[0,0][4,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_6[0,0][4,3]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_6[0,0][4,4]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_6[0,0][4,5]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_6[0,0][4,6]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_6[0,0][4,7]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_6[0,0][5,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_6[0,0][5,2]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_6[0,0][5,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_6[0,0][5,5]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_6[0,0][5,6]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_6[0,0][6,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_6[0,0][6,1]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_6[0,0][6,3]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_6[0,0][6,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_6[0,0][6,6]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_6[0,0][6,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_6[0,0][7,0]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_6[0,0][7,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_6[0,0][7,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_6[0,0][7,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_6[0,0][7,4]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_6[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_7_%=:\r\n"
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
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_7[0,0][0,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,3] += A[0,0]*block_7[0,0][0,3]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_7[0,0][0,4]
        "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_7[0,0][0,5]
        "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_7[0,0][0,6]
        "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_7[0,0][0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_7[0,0][1,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,2] += A[0,1]*block_7[0,0][1,2]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,3] += A[0,1]*block_7[0,0][1,3]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_7[0,0][1,4]
        "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_7[0,0][1,5]
        "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_7[0,0][1,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_7[0,0][2,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_7[0,0][2,1]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_7[0,0][2,3]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_7[0,0][2,4]
        "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_7[0,0][2,5]
        "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_7[0,0][2,6]
        "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_7[0,0][2,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_7[0,0][3,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_7[0,0][3,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,2] += A[0,3]*block_7[0,0][3,2]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,3] += A[0,3]*block_7[0,0][3,3]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_7[0,0][3,4]
        "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_7[0,0][3,5]
        "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_7[0,0][3,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_7[0,0][4,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_7[0,0][4,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"       // C[0,2] += A[0,4]*block_7[0,0][4,2]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_7[0,0][4,3]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_7[0,0][4,4]
        "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_7[0,0][4,5]
        "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_7[0,0][4,6]
        "vfmadd231pd 416(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_7[0,0][4,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_7[0,0][5,0]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_7[0,0][5,2]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"       // C[0,3] += A[0,5]*block_7[0,0][5,3]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_7[0,0][5,4]
        "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_7[0,0][5,5]
        "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_7[0,0][5,6]
        "vfmadd231pd 424(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_7[0,0][5,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_7[0,0][6,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_7[0,0][6,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_7[0,0][6,2]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_7[0,0][6,3]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_7[0,0][6,4]
        "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_7[0,0][6,5]
        "vfmadd231pd 432(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_7[0,0][6,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_7[0,0][7,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_7[0,0][7,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_7[0,0][7,2]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_7[0,0][7,3]
        "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_7[0,0][7,4]
        "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_7[0,0][7,5]
        "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_7[0,0][7,6]
        "vfmadd231pd 440(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_7[0,0][7,7]
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
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "addq $448, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "addq $352, %%rsi\r\n"                                      // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
      "movq $BLOCK_3_%=, %%r10\r\n"
      "addq $416, %%rsi\r\n"                                      // Move B to (d=3,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=3, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_3_%=:\r\n"
      "movq $BLOCK_4_%=, %%r10\r\n"
      "addq $360, %%rsi\r\n"                                      // Move B to (d=4,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=4, absolute)
      "jmp CASE_4_%=\r\n"
      "BLOCK_4_%=:\r\n"
      "movq $BLOCK_5_%=, %%r10\r\n"
      "addq $360, %%rsi\r\n"                                      // Move B to (d=5,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=5, absolute)
      "jmp CASE_5_%=\r\n"
      "BLOCK_5_%=:\r\n"
      "movq $BLOCK_6_%=, %%r10\r\n"
      "addq $416, %%rsi\r\n"                                      // Move B to (d=6,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=6, absolute)
      "jmp CASE_6_%=\r\n"
      "BLOCK_6_%=:\r\n"
      "movq $BLOCK_7_%=, %%r10\r\n"
      "addq $400, %%rsi\r\n"                                      // Move B to (d=7,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=7, absolute)
      "jmp CASE_7_%=\r\n"
      "BLOCK_7_%=:\r\n"
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



void jump_penalty_16_400_general (const double* A, const double* B, double* C) {
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
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_0[0,0][0,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_0[0,0][0,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_0[0,0][1,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_0[0,0][2,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_0[0,0][3,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"        // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_0[0,0][3,5]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_0[0,0][3,6]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_0[0,0][3,7]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_0[0,0][4,4]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_0[0,0][4,6]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_0[0,0][5,2]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"        // C[0,3] += A[0,5]*block_0[0,0][5,3]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_0[0,0][5,4]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_0[0,0][6,2]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_0[0,0][6,5]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_0[0,0][6,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_0[0,0][7,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_0[0,0][7,5]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_0[0,0][7,6]
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
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_1[0,0][0,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_1[0,0][0,5]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_1[0,0][0,6]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_1[0,0][1,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_1[0,0][1,4]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_1[0,0][1,5]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_1[0,0][1,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_1[0,0][2,3]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_1[0,0][2,5]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_1[0,0][2,6]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_1[0,0][2,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_1[0,0][3,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_1[0,0][3,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"        // C[0,3] += A[0,3]*block_1[0,0][3,3]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_1[0,0][3,5]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_1[0,0][4,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_1[0,0][4,2]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0,4] += A[0,4]*block_1[0,0][4,4]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_1[0,0][4,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_1[0,0][5,0]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_1[0,0][5,4]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_1[0,0][6,4]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_1[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_2_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_2[0,0][0,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_2[0,0][0,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_2[0,0][0,2]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_2[0,0][0,3]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_2[0,0][0,4]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_2[0,0][0,5]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_2[0,0][0,6]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_2[0,0][0,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_2[0,0][2,0]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_2[0,0][2,4]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_2[0,0][2,5]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_2[0,0][2,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_2[0,0][3,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"        // C[0,3] += A[0,3]*block_2[0,0][3,3]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_2[0,0][3,4]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_2[0,0][4,3]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_2[0,0][4,5]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_2[0,0][4,6]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_2[0,0][4,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_2[0,0][5,0]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_2[0,0][5,5]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_2[0,0][5,7]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"        // C[0,3] += A[0,6]*block_2[0,0][6,3]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_2[0,0][6,4]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_2[0,0][7,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_2[0,0][7,2]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_2[0,0][7,5]
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
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_3[0,0][0,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_3[0,0][1,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_3[0,0][2,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_3[0,0][2,3]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_3[0,0][3,2]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"        // C[0,3] += A[0,3]*block_3[0,0][3,3]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"        // C[0,5] += A[0,3]*block_3[0,0][3,5]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_3[0,0][3,6]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"        // C[0,4] += A[0,4]*block_3[0,0][4,4]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_3[0,0][4,5]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_3[0,0][4,7]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"        // C[0,4] += A[0,5]*block_3[0,0][5,4]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_3[0,0][5,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_3[0,0][6,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_3[0,0][6,2]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_3[0,0][7,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_3[0,0][7,2]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0,3] += A[0,7]*block_3[0,0][7,3]
      "jmp *%%r10\r\n"
      "CASE_4_%=:\r\n"
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
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_4[0,0][0,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_4[0,0][1,2]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_4[0,0][1,3]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_4[0,0][1,6]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_4[0,0][1,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_4[0,0][2,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_4[0,0][2,3]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_4[0,0][2,5]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_4[0,0][3,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_4[0,0][3,4]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_4[0,0][3,5]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_4[0,0][3,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"         // C[0,0] += A[0,4]*block_4[0,0][4,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_4[0,0][4,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_4[0,0][4,5]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_4[0,0][4,6]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_4[0,0][4,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_4[0,0][5,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"        // C[0,3] += A[0,5]*block_4[0,0][5,3]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_4[0,0][5,6]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_4[0,0][6,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"        // C[0,3] += A[0,6]*block_4[0,0][6,3]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_4[0,0][6,6]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0,3] += A[0,7]*block_4[0,0][7,3]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_4[0,0][7,4]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_4[0,0][7,6]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_4[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_5_%=:\r\n"
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
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_5[0,0][0,3]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_5[0,0][0,4]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_5[0,0][0,6]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_5[0,0][0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_5[0,0][1,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_5[0,0][1,3]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"        // C[0,5] += A[0,1]*block_5[0,0][1,5]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_5[0,0][2,2]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_5[0,0][2,6]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_5[0,0][2,7]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_5[0,0][3,6]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_5[0,0][3,7]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"        // C[0,4] += A[0,4]*block_5[0,0][4,4]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_5[0,0][4,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_5[0,0][5,1]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"        // C[0,3] += A[0,5]*block_5[0,0][5,3]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_5[0,0][5,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_5[0,0][6,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_5[0,0][6,6]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_5[0,0][6,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"         // C[0,0] += A[0,7]*block_5[0,0][7,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_5[0,0][7,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"        // C[0,4] += A[0,7]*block_5[0,0][7,4]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_5[0,0][7,5]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_5[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_6_%=:\r\n"
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
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_6[0,0][0,5]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_6[0,0][1,2]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_6[0,0][1,3]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_6[0,0][1,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_6[0,0][2,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_6[0,0][2,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_6[0,0][2,6]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_6[0,0][3,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"        // C[0,3] += A[0,3]*block_6[0,0][3,3]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"         // C[0,0] += A[0,4]*block_6[0,0][4,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_6[0,0][4,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_6[0,0][4,3]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"        // C[0,4] += A[0,4]*block_6[0,0][4,4]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_6[0,0][4,6]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_6[0,0][5,2]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_6[0,0][5,4]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_6[0,0][5,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_6[0,0][6,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_6[0,0][6,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_6[0,0][6,5]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_6[0,0][7,4]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_6[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_7_%=:\r\n"
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
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_7[0,0][0,6]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_7[0,0][0,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_7[0,0][1,2]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_7[0,0][1,3]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_7[0,0][2,2]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_7[0,0][2,3]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_7[0,0][2,6]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_7[0,0][2,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_7[0,0][3,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_7[0,0][3,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_7[0,0][3,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"        // C[0,4] += A[0,3]*block_7[0,0][3,4]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_7[0,0][4,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_7[0,0][4,7]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"        // C[0,5] += A[0,5]*block_7[0,0][5,5]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_7[0,0][6,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"        // C[0,5] += A[0,6]*block_7[0,0][6,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"         // C[0,0] += A[0,7]*block_7[0,0][7,0]
      "jmp *%%r10\r\n"
      "CASE_8_%=:\r\n"
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
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"         // C[0,1] += A[0,0]*block_8[0,0][0,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_8[0,0][0,6]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_8[0,0][0,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_8[0,0][1,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_8[0,0][1,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_8[0,0][1,5]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"        // C[0,4] += A[0,2]*block_8[0,0][2,4]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_8[0,0][2,5]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_8[0,0][3,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_8[0,0][3,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"        // C[0,3] += A[0,3]*block_8[0,0][3,3]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_8[0,0][4,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_8[0,0][4,2]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_8[0,0][4,5]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_8[0,0][5,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_8[0,0][6,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"        // C[0,3] += A[0,6]*block_8[0,0][6,3]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_8[0,0][6,5]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_8[0,0][6,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_8[0,0][7,2]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_8[0,0][7,5]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_8[0,0][7,6]
      "jmp *%%r10\r\n"
      "CASE_9_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_9[0,0][0,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_9[0,0][0,4]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"        // C[0,5] += A[0,0]*block_9[0,0][0,5]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"        // C[0,4] += A[0,1]*block_9[0,0][1,4]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"        // C[0,5] += A[0,1]*block_9[0,0][1,5]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_9[0,0][3,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_9[0,0][3,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"        // C[0,3] += A[0,3]*block_9[0,0][3,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_9[0,0][3,5]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_9[0,0][3,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_9[0,0][4,1]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_9[0,0][4,3]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_9[0,0][5,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_9[0,0][5,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_9[0,0][6,0]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_9[0,0][6,7]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_9[0,0][7,2]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_9[0,0][7,6]
      "jmp *%%r10\r\n"
      "CASE_10_%=:\r\n"
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
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"         // C[0,0] += A[0,0]*block_10[0,0][0,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_10[0,0][0,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_10[0,0][0,2]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_10[0,0][1,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_10[0,0][1,4]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_10[0,0][1,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_10[0,0][2,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_10[0,0][2,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_10[0,0][2,2]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_10[0,0][2,4]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_10[0,0][2,6]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_10[0,0][2,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"        // C[0,0] += A[0,3]*block_10[0,0][3,0]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_10[0,0][3,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_10[0,0][3,4]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_10[0,0][3,6]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_10[0,0][3,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_10[0,0][4,0]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_10[0,0][4,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_10[0,0][5,1]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"       // C[0,2] += A[0,5]*block_10[0,0][5,2]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_10[0,0][5,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_10[0,0][6,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_10[0,0][6,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,2] += A[0,6]*block_10[0,0][6,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"       // C[0,3] += A[0,6]*block_10[0,0][6,3]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_10[0,0][6,5]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_10[0,0][6,6]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_10[0,0][6,7]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"       // C[0,2] += A[0,7]*block_10[0,0][7,2]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_10[0,0][7,5]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_10[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_11_%=:\r\n"
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
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_11[0,0][0,3]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_11[0,0][0,5]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_11[0,0][0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_11[0,0][1,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_11[0,0][1,3]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"        // C[0,4] += A[0,1]*block_11[0,0][1,4]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_11[0,0][2,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_11[0,0][2,3]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_11[0,0][2,5]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_11[0,0][2,6]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"        // C[0,3] += A[0,3]*block_11[0,0][3,3]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_11[0,0][3,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"        // C[0,0] += A[0,4]*block_11[0,0][4,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_11[0,0][4,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_11[0,0][4,3]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_11[0,0][4,5]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_11[0,0][4,6]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_11[0,0][5,0]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"        // C[0,3] += A[0,5]*block_11[0,0][5,3]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_11[0,0][5,7]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_11[0,0][6,4]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_11[0,0][6,5]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_11[0,0][6,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_11[0,0][7,1]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,5] += A[0,7]*block_11[0,0][7,5]
      "jmp *%%r10\r\n"
      "CASE_12_%=:\r\n"
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
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_12[0,0][0,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_12[0,0][0,3]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_12[0,0][0,4]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_12[0,0][0,5]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_12[0,0][0,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_12[0,0][1,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_12[0,0][1,1]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_12[0,0][1,4]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_12[0,0][1,5]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_12[0,0][1,7]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,3] += A[0,2]*block_12[0,0][2,3]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_12[0,0][2,4]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"         // C[0,0] += A[0,3]*block_12[0,0][3,0]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_12[0,0][3,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_12[0,0][3,4]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_12[0,0][3,5]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_12[0,0][3,7]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"        // C[0,1] += A[0,4]*block_12[0,0][4,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_12[0,0][4,2]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"       // C[0,3] += A[0,4]*block_12[0,0][4,3]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_12[0,0][4,5]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_12[0,0][4,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_12[0,0][5,0]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_12[0,0][5,4]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_12[0,0][6,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_12[0,0][6,1]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_12[0,0][6,4]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_12[0,0][6,6]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,7] += A[0,6]*block_12[0,0][6,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_12[0,0][7,0]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_12[0,0][7,1]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,3] += A[0,7]*block_12[0,0][7,3]
      "jmp *%%r10\r\n"
      "CASE_13_%=:\r\n"
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
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"         // C[0,1] += A[0,0]*block_13[0,0][0,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_13[0,0][0,3]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_13[0,0][0,6]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,2] += A[0,1]*block_13[0,0][1,2]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"        // C[0,4] += A[0,1]*block_13[0,0][1,4]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_13[0,0][1,6]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_13[0,0][2,1]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_13[0,0][2,3]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"        // C[0,4] += A[0,2]*block_13[0,0][2,4]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_13[0,0][3,2]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,7] += A[0,3]*block_13[0,0][3,7]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_13[0,0][4,3]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0,6] += A[0,4]*block_13[0,0][4,6]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_13[0,0][5,5]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_13[0,0][6,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"        // C[0,3] += A[0,6]*block_13[0,0][6,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_13[0,0][6,4]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"         // C[0,0] += A[0,7]*block_13[0,0][7,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_13[0,0][7,2]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_13[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_14_%=:\r\n"
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
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"        // C[0,1] += A[0,0]*block_14[0,0][0,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_14[0,0][0,2]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,3] += A[0,0]*block_14[0,0][0,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,4] += A[0,0]*block_14[0,0][0,4]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_14[0,0][0,5]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,6] += A[0,0]*block_14[0,0][0,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_14[0,0][1,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_14[0,0][1,1]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0,4] += A[0,1]*block_14[0,0][1,4]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_14[0,0][1,5]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_14[0,0][1,6]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_14[0,0][1,7]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"         // C[0,0] += A[0,2]*block_14[0,0][2,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_14[0,0][2,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_14[0,0][2,3]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,4] += A[0,2]*block_14[0,0][2,4]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_14[0,0][2,5]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_14[0,0][2,6]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_14[0,0][3,1]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0,4] += A[0,3]*block_14[0,0][3,4]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,5] += A[0,3]*block_14[0,0][3,5]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0,5] += A[0,4]*block_14[0,0][4,5]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"        // C[0,1] += A[0,5]*block_14[0,0][5,1]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_14[0,0][5,5]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_14[0,0][5,6]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_14[0,0][5,7]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_14[0,0][6,2]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"        // C[0,3] += A[0,6]*block_14[0,0][6,3]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_14[0,0][6,5]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0,3] += A[0,7]*block_14[0,0][7,3]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_14[0,0][7,4]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,6] += A[0,7]*block_14[0,0][7,6]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_14[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_15_%=:\r\n"
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
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_15[0,0][0,2]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,5] += A[0,0]*block_15[0,0][0,5]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_15[0,0][0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_15[0,0][1,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,1] += A[0,1]*block_15[0,0][1,1]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,3] += A[0,1]*block_15[0,0][1,3]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,5] += A[0,1]*block_15[0,0][1,5]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_15[0,0][1,7]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_15[0,0][2,1]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,3] += A[0,2]*block_15[0,0][2,3]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,5] += A[0,2]*block_15[0,0][2,5]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,6] += A[0,2]*block_15[0,0][2,6]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_15[0,0][2,7]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,6] += A[0,3]*block_15[0,0][3,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"         // C[0,0] += A[0,4]*block_15[0,0][4,0]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0,7] += A[0,4]*block_15[0,0][4,7]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm5, %%zmm24\r\n"        // C[0,0] += A[0,5]*block_15[0,0][5,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm5, %%zmm26\r\n"        // C[0,2] += A[0,5]*block_15[0,0][5,2]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm27\r\n"        // C[0,3] += A[0,5]*block_15[0,0][5,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0,4] += A[0,5]*block_15[0,0][5,4]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0,5] += A[0,5]*block_15[0,0][5,5]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_15[0,0][5,6]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_15[0,0][5,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"        // C[0,0] += A[0,6]*block_15[0,0][6,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_15[0,0][6,1]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm6, %%zmm27\r\n"        // C[0,3] += A[0,6]*block_15[0,0][6,3]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"       // C[0,4] += A[0,6]*block_15[0,0][6,4]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[0,6] += A[0,6]*block_15[0,0][6,6]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm7, %%zmm28\r\n"       // C[0,4] += A[0,7]*block_15[0,0][7,4]
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
      "addq $0, %%rsi\r\n"                                        // Move B to (d=0,r=0, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=0, absolute)
      "jmp CASE_0_%=\r\n"
      "BLOCK_0_%=:\r\n"
      "movq $BLOCK_1_%=, %%r10\r\n"
      "addq $200, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "addq $216, %%rsi\r\n"                                      // Move B to (d=2,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_%=:\r\n"
      "movq $BLOCK_3_%=, %%r10\r\n"
      "addq $216, %%rsi\r\n"                                      // Move B to (d=3,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=3, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_3_%=:\r\n"
      "movq $BLOCK_4_%=, %%r10\r\n"
      "addq $144, %%rsi\r\n"                                      // Move B to (d=4,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=4, absolute)
      "jmp CASE_4_%=\r\n"
      "BLOCK_4_%=:\r\n"
      "movq $BLOCK_5_%=, %%r10\r\n"
      "addq $216, %%rsi\r\n"                                      // Move B to (d=5,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=5, absolute)
      "jmp CASE_5_%=\r\n"
      "BLOCK_5_%=:\r\n"
      "movq $BLOCK_6_%=, %%r10\r\n"
      "addq $200, %%rsi\r\n"                                      // Move B to (d=6,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=6, absolute)
      "jmp CASE_6_%=\r\n"
      "BLOCK_6_%=:\r\n"
      "movq $BLOCK_7_%=, %%r10\r\n"
      "addq $176, %%rsi\r\n"                                      // Move B to (d=7,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=7, absolute)
      "jmp CASE_7_%=\r\n"
      "BLOCK_7_%=:\r\n"
      "movq $BLOCK_8_%=, %%r10\r\n"
      "addq $144, %%rsi\r\n"                                      // Move B to (d=8,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=8, absolute)
      "jmp CASE_8_%=\r\n"
      "BLOCK_8_%=:\r\n"
      "movq $BLOCK_9_%=, %%r10\r\n"
      "addq $176, %%rsi\r\n"                                      // Move B to (d=9,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=9, absolute)
      "jmp CASE_9_%=\r\n"
      "BLOCK_9_%=:\r\n"
      "movq $BLOCK_10_%=, %%r10\r\n"
      "addq $144, %%rsi\r\n"                                      // Move B to (d=10,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=10, absolute)
      "jmp CASE_10_%=\r\n"
      "BLOCK_10_%=:\r\n"
      "movq $BLOCK_11_%=, %%r10\r\n"
      "addq $256, %%rsi\r\n"                                      // Move B to (d=11,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=11, absolute)
      "jmp CASE_11_%=\r\n"
      "BLOCK_11_%=:\r\n"
      "movq $BLOCK_12_%=, %%r10\r\n"
      "addq $200, %%rsi\r\n"                                      // Move B to (d=12,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=12, absolute)
      "jmp CASE_12_%=\r\n"
      "BLOCK_12_%=:\r\n"
      "movq $BLOCK_13_%=, %%r10\r\n"
      "addq $256, %%rsi\r\n"                                      // Move B to (d=13,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=13, absolute)
      "jmp CASE_13_%=\r\n"
      "BLOCK_13_%=:\r\n"
      "movq $BLOCK_14_%=, %%r10\r\n"
      "addq $160, %%rsi\r\n"                                      // Move B to (d=14,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=14, absolute)
      "jmp CASE_14_%=\r\n"
      "BLOCK_14_%=:\r\n"
      "movq $BLOCK_15_%=, %%r10\r\n"
      "addq $264, %%rsi\r\n"                                      // Move B to (d=15,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=15, absolute)
      "jmp CASE_15_%=\r\n"
      "BLOCK_15_%=:\r\n"
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

 


void test_jump_penalty_1_50_libxsmm() {
    const int m = 8;
    const int n = 8;
    const int k = 8;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_1_50.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_1_50_libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_1_50_libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_1_50_libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_1_50_general() {
    const int m = 8;
    const int n = 8;
    const int k = 8;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_1_50.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_1_50_general(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_1_50_general(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_1_50_general, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_2_50_libxsmm() {
    const int m = 8;
    const int n = 8;
    const int k = 16;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_2_50.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_2_50_libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_2_50_libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_2_50_libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_2_50_general() {
    const int m = 8;
    const int n = 8;
    const int k = 16;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_2_50.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_2_50_general(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_2_50_general(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_2_50_general, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_4_50_libxsmm() {
    const int m = 8;
    const int n = 8;
    const int k = 32;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_4_50.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_4_50_libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_4_50_libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_4_50_libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_4_50_general() {
    const int m = 8;
    const int n = 8;
    const int k = 32;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_4_50.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_4_50_general(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_4_50_general(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_4_50_general, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_8_50_libxsmm() {
    const int m = 8;
    const int n = 8;
    const int k = 64;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_8_50.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_8_50_libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_8_50_libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_8_50_libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_8_50_general() {
    const int m = 8;
    const int n = 8;
    const int k = 64;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_8_50.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_8_50_general(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_8_50_general(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_8_50_general, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_2_100_libxsmm() {
    const int m = 8;
    const int n = 8;
    const int k = 16;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_2_100.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_2_100_libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_2_100_libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_2_100_libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_2_100_general() {
    const int m = 8;
    const int n = 8;
    const int k = 16;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_2_100.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_2_100_general(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_2_100_general(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_2_100_general, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_4_100_libxsmm() {
    const int m = 8;
    const int n = 8;
    const int k = 32;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_4_100.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_4_100_libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_4_100_libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_4_100_libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_4_100_general() {
    const int m = 8;
    const int n = 8;
    const int k = 32;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_4_100.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_4_100_general(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_4_100_general(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_4_100_general, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_8_100_libxsmm() {
    const int m = 8;
    const int n = 8;
    const int k = 64;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_8_100.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_8_100_libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_8_100_libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_8_100_libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_8_100_general() {
    const int m = 8;
    const int n = 8;
    const int k = 64;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_8_100.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_8_100_general(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_8_100_general(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_8_100_general, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_16_100_libxsmm() {
    const int m = 8;
    const int n = 8;
    const int k = 128;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_16_100.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_16_100_libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_16_100_libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_16_100_libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_16_100_general() {
    const int m = 8;
    const int n = 8;
    const int k = 128;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_16_100.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_16_100_general(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_16_100_general(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_16_100_general, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_4_200_libxsmm() {
    const int m = 8;
    const int n = 8;
    const int k = 32;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_4_200.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_4_200_libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_4_200_libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_4_200_libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_4_200_general() {
    const int m = 8;
    const int n = 8;
    const int k = 32;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_4_200.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_4_200_general(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_4_200_general(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_4_200_general, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_8_200_libxsmm() {
    const int m = 8;
    const int n = 8;
    const int k = 64;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_8_200.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_8_200_libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_8_200_libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_8_200_libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_8_200_general() {
    const int m = 8;
    const int n = 8;
    const int k = 64;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_8_200.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_8_200_general(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_8_200_general(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_8_200_general, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_16_200_libxsmm() {
    const int m = 8;
    const int n = 8;
    const int k = 128;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_16_200.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_16_200_libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_16_200_libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_16_200_libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_16_200_general() {
    const int m = 8;
    const int n = 8;
    const int k = 128;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_16_200.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_16_200_general(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_16_200_general(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_16_200_general, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_8_400_libxsmm() {
    const int m = 8;
    const int n = 8;
    const int k = 64;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_8_400.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_8_400_libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_8_400_libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_8_400_libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_8_400_general() {
    const int m = 8;
    const int n = 8;
    const int k = 64;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_8_400.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_8_400_general(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_8_400_general(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_8_400_general, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_16_400_libxsmm() {
    const int m = 8;
    const int n = 8;
    const int k = 128;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_16_400.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_16_400_libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_16_400_libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_16_400_libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_jump_penalty_16_400_general() {
    const int m = 8;
    const int n = 8;
    const int k = 128;
    const int bk = 8;
    const int bn = 8;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/jump_penalty/generated/jump_penalty_16_400.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    jump_penalty_16_400_general(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        jump_penalty_16_400_general(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "jump_penalty_16_400_general, " << microsecs(start,end)/3000.0 << std::endl;
}


 

int main(int argc, char** argv) {
    test_jump_penalty_1_50_libxsmm();
    test_jump_penalty_1_50_general();
    test_jump_penalty_2_50_libxsmm();
    test_jump_penalty_2_50_general();
    test_jump_penalty_4_50_libxsmm();
    test_jump_penalty_4_50_general();
    test_jump_penalty_8_50_libxsmm();
    test_jump_penalty_8_50_general();
    test_jump_penalty_2_100_libxsmm();
    test_jump_penalty_2_100_general();
    test_jump_penalty_4_100_libxsmm();
    test_jump_penalty_4_100_general();
    test_jump_penalty_8_100_libxsmm();
    test_jump_penalty_8_100_general();
    test_jump_penalty_16_100_libxsmm();
    test_jump_penalty_16_100_general();
    test_jump_penalty_4_200_libxsmm();
    test_jump_penalty_4_200_general();
    test_jump_penalty_8_200_libxsmm();
    test_jump_penalty_8_200_general();
    test_jump_penalty_16_200_libxsmm();
    test_jump_penalty_16_200_general();
    test_jump_penalty_8_400_libxsmm();
    test_jump_penalty_8_400_general();
    test_jump_penalty_16_400_libxsmm();
    test_jump_penalty_16_400_general();

    return 0;
}
