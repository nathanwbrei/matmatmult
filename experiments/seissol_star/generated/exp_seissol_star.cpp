

#include <iostream>
#include <memory>

#include "SparseMatrix.hpp"
#include "DenseMatrix.hpp"
#include "timing.h"
#include "libxsmm_gemms.h"
 



void unrolled_8 (const double* A, const double* B, double* C) {
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
            "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
            "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
            "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 1920(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
              "vmovapd 2240(%%rdi), %%zmm1\r\n"                           // A [0,2] [0,1]
              "vmovapd 2560(%%rdi), %%zmm2\r\n"                           // A [0,2] [0,2]
            "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"         // C[0,0] += A[0,0]*B[2,0][0,0]
            "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"        // C[0,1] += A[0,0]*B[2,0][0,1]
            "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,2] += A[0,0]*B[2,0][0,2]
            "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"         // C[0,0] += A[0,1]*B[2,0][1,0]
            "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,1] += A[0,1]*B[2,0][1,1]
            "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,2] += A[0,1]*B[2,0][1,2]
            "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"        // C[0,0] += A[0,2]*B[2,0][2,0]
            "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"        // C[0,1] += A[0,2]*B[2,0][2,1]
            "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0,2] += A[0,2]*B[2,0][2,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
          "addq $960, %%rdx\r\n"                                      // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
            "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
            "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 1920(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
              "vmovapd 2240(%%rdi), %%zmm1\r\n"                           // A [0,2] [0,1]
              "vmovapd 2560(%%rdi), %%zmm2\r\n"                           // A [0,2] [0,2]
            "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"        // C[0,0] += A[0,0]*B[2,1][0,0]
            "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,2] += A[0,0]*B[2,1][0,2]
            "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"        // C[0,0] += A[0,1]*B[2,1][1,0]
            "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,1] += A[0,1]*B[2,1][1,1]
            "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"        // C[0,1] += A[0,2]*B[2,1][2,1]
            "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,2] += A[0,2]*B[2,1][2,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
          "addq $960, %%rdx\r\n"                                      // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
            "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
            "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
              "vmovapd 320(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
              "vmovapd 640(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
            "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,0] += A[0,0]*B[0,2][0,0]
            "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,1] += A[0,1]*B[0,2][1,1]
            "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,2] += A[0,2]*B[0,2][2,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=1)
              "vmovapd 960(%%rdi), %%zmm0\r\n"                            // A [0,1] [0,0]
              "vmovapd 1280(%%rdi), %%zmm1\r\n"                           // A [0,1] [0,1]
              "vmovapd 1600(%%rdi), %%zmm2\r\n"                           // A [0,1] [0,2]
            "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,0] += A[0,0]*B[1,2][0,0]
            "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,1] += A[0,0]*B[1,2][0,1]
            "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,2] += A[0,0]*B[1,2][0,2]
            "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,1] += A[0,1]*B[1,2][1,1]
            "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,2] += A[0,1]*B[1,2][1,2]
            "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,0] += A[0,2]*B[1,2][2,0]
            "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,2] += A[0,2]*B[1,2][2,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
          "addq $960, %%rdx\r\n"                                      // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
            "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
            "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 1920(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
              "vmovapd 2240(%%rdi), %%zmm1\r\n"                           // A [0,2] [0,1]
              "vmovapd 2560(%%rdi), %%zmm2\r\n"                           // A [0,2] [0,2]
            "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,0] += A[0,0]*B[2,3][0,0]
            "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,1] += A[0,1]*B[2,3][1,1]
            "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,2] += A[0,2]*B[2,3][2,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
          "addq $960, %%rdx\r\n"                                      // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
            "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
            "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 1920(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
              "vmovapd 2240(%%rdi), %%zmm1\r\n"                           // A [0,2] [0,1]
              "vmovapd 2560(%%rdi), %%zmm2\r\n"                           // A [0,2] [0,2]
            "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,0] += A[0,0]*B[2,4][0,0]
            "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,2] += A[0,0]*B[2,4][0,2]
            "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,0] += A[0,1]*B[2,4][1,0]
            "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,1] += A[0,1]*B[2,4][1,1]
            "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,1] += A[0,2]*B[2,4][2,1]
            "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,2] += A[0,2]*B[2,4][2,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "addq $64, %%rdi\r\n"                                       // Move A to (d=1,r=0)
        "addq $-3776, %%rdx\r\n"                                    // Move C to (d=1,r=-4)
        "addq $1, %%r12\r\n"
        "cmp $5, %%r12\r\n"
        "jl LOOP_TOP_0_%=\r\n"

    : : "m"(A), "m"(B), "m"(C) : "r12","rdi","rdx","zmm0","zmm1","zmm2","zmm29","zmm30","zmm31");
};



void unrolled_40 (const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"
    "movq %1, %%rsi\n\t"
    "movq %2, %%rdx\n\t"
      // unrolled_40x15x9
        // for r12 <- 0:1:1)
        "movq $0, %%r12\r\n"
        "LOOP_TOP_1_%=:\r\n"
          // Unrolling over bn and bk
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
            "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
            "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 1920(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
              "vmovapd 2240(%%rdi), %%zmm1\r\n"                           // A [0,2] [0,1]
              "vmovapd 2560(%%rdi), %%zmm2\r\n"                           // A [0,2] [0,2]
            "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"         // C[0,0] += A[0,0]*B[2,0][0,0]
            "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"        // C[0,1] += A[0,0]*B[2,0][0,1]
            "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,2] += A[0,0]*B[2,0][0,2]
            "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"         // C[0,0] += A[0,1]*B[2,0][1,0]
            "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,1] += A[0,1]*B[2,0][1,1]
            "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,2] += A[0,1]*B[2,0][1,2]
            "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"        // C[0,0] += A[0,2]*B[2,0][2,0]
            "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"        // C[0,1] += A[0,2]*B[2,0][2,1]
            "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0,2] += A[0,2]*B[2,0][2,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
          "addq $960, %%rdx\r\n"                                      // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
            "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
            "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 1920(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
              "vmovapd 2240(%%rdi), %%zmm1\r\n"                           // A [0,2] [0,1]
              "vmovapd 2560(%%rdi), %%zmm2\r\n"                           // A [0,2] [0,2]
            "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"        // C[0,0] += A[0,0]*B[2,1][0,0]
            "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,2] += A[0,0]*B[2,1][0,2]
            "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"        // C[0,0] += A[0,1]*B[2,1][1,0]
            "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,1] += A[0,1]*B[2,1][1,1]
            "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"        // C[0,1] += A[0,2]*B[2,1][2,1]
            "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,2] += A[0,2]*B[2,1][2,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
          "addq $960, %%rdx\r\n"                                      // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
            "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
            "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
              "vmovapd 320(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
              "vmovapd 640(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
            "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,0] += A[0,0]*B[0,2][0,0]
            "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,1] += A[0,1]*B[0,2][1,1]
            "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,2] += A[0,2]*B[0,2][2,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=1)
              "vmovapd 960(%%rdi), %%zmm0\r\n"                            // A [0,1] [0,0]
              "vmovapd 1280(%%rdi), %%zmm1\r\n"                           // A [0,1] [0,1]
              "vmovapd 1600(%%rdi), %%zmm2\r\n"                           // A [0,1] [0,2]
            "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,0] += A[0,0]*B[1,2][0,0]
            "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,1] += A[0,0]*B[1,2][0,1]
            "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,2] += A[0,0]*B[1,2][0,2]
            "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,1] += A[0,1]*B[1,2][1,1]
            "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,2] += A[0,1]*B[1,2][1,2]
            "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,0] += A[0,2]*B[1,2][2,0]
            "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,2] += A[0,2]*B[1,2][2,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
          "addq $960, %%rdx\r\n"                                      // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
            "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
            "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 1920(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
              "vmovapd 2240(%%rdi), %%zmm1\r\n"                           // A [0,2] [0,1]
              "vmovapd 2560(%%rdi), %%zmm2\r\n"                           // A [0,2] [0,2]
            "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,0] += A[0,0]*B[2,3][0,0]
            "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,1] += A[0,1]*B[2,3][1,1]
            "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,2] += A[0,2]*B[2,3][2,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
          "addq $960, %%rdx\r\n"                                      // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
            "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
            "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 1920(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
              "vmovapd 2240(%%rdi), %%zmm1\r\n"                           // A [0,2] [0,1]
              "vmovapd 2560(%%rdi), %%zmm2\r\n"                           // A [0,2] [0,2]
            "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0,0] += A[0,0]*B[2,4][0,0]
            "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,2] += A[0,0]*B[2,4][0,2]
            "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,0] += A[0,1]*B[2,4][1,0]
            "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,1] += A[0,1]*B[2,4][1,1]
            "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,1] += A[0,2]*B[2,4][2,1]
            "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,2] += A[0,2]*B[2,4][2,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
        "addq $64, %%rdi\r\n"                                       // Move A to (d=1,r=0)
        "addq $-3776, %%rdx\r\n"                                    // Move C to (d=1,r=-4)
        "addq $1, %%r12\r\n"
        "cmp $1, %%r12\r\n"
        "jl LOOP_TOP_1_%=\r\n"

    : : "m"(A), "m"(B), "m"(C) : "r12","rdi","rdx","zmm0","zmm1","zmm2","zmm29","zmm30","zmm31");
};



void general_8 (const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"
    "movq %1, %%rsi\n\t"
    "movq %2, %%rdx\n\t"
      // Unrolled FullyGeneralSparse
      "jmp END_SWITCH_%=\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 320(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
          "vmovapd 640(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"         // C[0,0] += A[0,0]*block_1[0,0][0,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"        // C[0,1] += A[0,0]*block_1[0,0][0,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,2] += A[0,0]*block_1[0,0][0,2]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,1] += A[0,1]*block_1[0,0][1,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,2] += A[0,1]*block_1[0,0][1,2]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"        // C[0,0] += A[0,2]*block_1[0,0][2,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"        // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0,2] += A[0,2]*block_1[0,0][2,2]
      "jmp *%%r10\r\n"
      "CASE_2_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 320(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
          "vmovapd 640(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"         // C[0,0] += A[0,0]*block_2[0,0][0,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,2] += A[0,0]*block_2[0,0][0,2]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"         // C[0,0] += A[0,1]*block_2[0,0][1,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,1] += A[0,1]*block_2[0,0][1,1]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"        // C[0,1] += A[0,2]*block_2[0,0][2,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0,2] += A[0,2]*block_2[0,0][2,2]
      "jmp *%%r10\r\n"
      "CASE_3_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 320(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
          "vmovapd 640(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"         // C[0,0] += A[0,0]*block_3[0,0][0,0]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"         // C[0,1] += A[0,1]*block_3[0,0][1,1]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0,2] += A[0,2]*block_3[0,0][2,2]
      "jmp *%%r10\r\n"
      "CASE_4_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 320(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
          "vmovapd 640(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"         // C[0,0] += A[0,0]*block_4[0,0][0,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"        // C[0,1] += A[0,0]*block_4[0,0][0,1]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,2] += A[0,0]*block_4[0,0][0,2]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,1] += A[0,1]*block_4[0,0][1,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,2] += A[0,1]*block_4[0,0][1,2]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"         // C[0,0] += A[0,2]*block_4[0,0][2,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0,2] += A[0,2]*block_4[0,0][2,2]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
      "addq $0, %%rdx\r\n"                                        // Move C to (d=0,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_0_0_2_%=, %%r10\r\n"
      "addq $0, %%rsi\r\n"                                        // Move B to (d=2,r=0, absolute)
      "addq $1920, %%rdi\r\n"                                     // Move A to (d=0,r=2, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_0_0_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=0,r=1, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_0_1_2_%=, %%r10\r\n"
      "addq $72, %%rsi\r\n"                                       // Move B to (d=2,r=1, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_0_1_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=0,r=2, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_0_2_0_%=, %%r10\r\n"
      "addq $48, %%rsi\r\n"                                       // Move B to (d=0,r=2, absolute)
      "addq $-1920, %%rdi\r\n"                                    // Move A to (d=0,r=0, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_0_2_0_%=:\r\n"
      "movq $BLOCK_0_2_1_%=, %%r10\r\n"
      "addq $24, %%rsi\r\n"                                       // Move B to (d=1,r=2, absolute)
      "addq $960, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_4_%=\r\n"
      "BLOCK_0_2_1_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=0,r=3, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_0_3_2_%=, %%r10\r\n"
      "addq $56, %%rsi\r\n"                                       // Move B to (d=2,r=3, absolute)
      "addq $960, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_0_3_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=0,r=4, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_0_4_2_%=, %%r10\r\n"
      "addq $24, %%rsi\r\n"                                       // Move B to (d=2,r=4, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_0_4_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $-3776, %%rdx\r\n"                                    // Move C to (d=1,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_1_0_2_%=, %%r10\r\n"
      "addq $-224, %%rsi\r\n"                                     // Move B to (d=2,r=0, absolute)
      "addq $64, %%rdi\r\n"                                       // Move A to (d=1,r=2, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_0_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=1,r=1, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_1_1_2_%=, %%r10\r\n"
      "addq $72, %%rsi\r\n"                                       // Move B to (d=2,r=1, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=1,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_1_1_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=1,r=2, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_1_2_0_%=, %%r10\r\n"
      "addq $48, %%rsi\r\n"                                       // Move B to (d=0,r=2, absolute)
      "addq $-1920, %%rdi\r\n"                                    // Move A to (d=1,r=0, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_1_2_0_%=:\r\n"
      "movq $BLOCK_1_2_1_%=, %%r10\r\n"
      "addq $24, %%rsi\r\n"                                       // Move B to (d=1,r=2, absolute)
      "addq $960, %%rdi\r\n"                                      // Move A to (d=1,r=1, absolute)
      "jmp CASE_4_%=\r\n"
      "BLOCK_1_2_1_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=1,r=3, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_1_3_2_%=, %%r10\r\n"
      "addq $56, %%rsi\r\n"                                       // Move B to (d=2,r=3, absolute)
      "addq $960, %%rdi\r\n"                                      // Move A to (d=1,r=2, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_1_3_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=1,r=4, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_1_4_2_%=, %%r10\r\n"
      "addq $24, %%rsi\r\n"                                       // Move B to (d=2,r=4, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=1,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_1_4_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $-3776, %%rdx\r\n"                                    // Move C to (d=2,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_2_0_2_%=, %%r10\r\n"
      "addq $-224, %%rsi\r\n"                                     // Move B to (d=2,r=0, absolute)
      "addq $64, %%rdi\r\n"                                       // Move A to (d=2,r=2, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_2_0_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=2,r=1, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_2_1_2_%=, %%r10\r\n"
      "addq $72, %%rsi\r\n"                                       // Move B to (d=2,r=1, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=2,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_1_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=2,r=2, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_2_2_0_%=, %%r10\r\n"
      "addq $48, %%rsi\r\n"                                       // Move B to (d=0,r=2, absolute)
      "addq $-1920, %%rdi\r\n"                                    // Move A to (d=2,r=0, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_2_2_0_%=:\r\n"
      "movq $BLOCK_2_2_1_%=, %%r10\r\n"
      "addq $24, %%rsi\r\n"                                       // Move B to (d=1,r=2, absolute)
      "addq $960, %%rdi\r\n"                                      // Move A to (d=2,r=1, absolute)
      "jmp CASE_4_%=\r\n"
      "BLOCK_2_2_1_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=2,r=3, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_2_3_2_%=, %%r10\r\n"
      "addq $56, %%rsi\r\n"                                       // Move B to (d=2,r=3, absolute)
      "addq $960, %%rdi\r\n"                                      // Move A to (d=2,r=2, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_2_3_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=2,r=4, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_2_4_2_%=, %%r10\r\n"
      "addq $24, %%rsi\r\n"                                       // Move B to (d=2,r=4, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=2,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_2_4_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $-3776, %%rdx\r\n"                                    // Move C to (d=3,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_3_0_2_%=, %%r10\r\n"
      "addq $-224, %%rsi\r\n"                                     // Move B to (d=2,r=0, absolute)
      "addq $64, %%rdi\r\n"                                       // Move A to (d=3,r=2, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_3_0_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=3,r=1, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_3_1_2_%=, %%r10\r\n"
      "addq $72, %%rsi\r\n"                                       // Move B to (d=2,r=1, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=3,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_3_1_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=3,r=2, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_3_2_0_%=, %%r10\r\n"
      "addq $48, %%rsi\r\n"                                       // Move B to (d=0,r=2, absolute)
      "addq $-1920, %%rdi\r\n"                                    // Move A to (d=3,r=0, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_3_2_0_%=:\r\n"
      "movq $BLOCK_3_2_1_%=, %%r10\r\n"
      "addq $24, %%rsi\r\n"                                       // Move B to (d=1,r=2, absolute)
      "addq $960, %%rdi\r\n"                                      // Move A to (d=3,r=1, absolute)
      "jmp CASE_4_%=\r\n"
      "BLOCK_3_2_1_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=3,r=3, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_3_3_2_%=, %%r10\r\n"
      "addq $56, %%rsi\r\n"                                       // Move B to (d=2,r=3, absolute)
      "addq $960, %%rdi\r\n"                                      // Move A to (d=3,r=2, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_3_3_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=3,r=4, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_3_4_2_%=, %%r10\r\n"
      "addq $24, %%rsi\r\n"                                       // Move B to (d=2,r=4, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=3,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_3_4_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $-3776, %%rdx\r\n"                                    // Move C to (d=4,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_4_0_2_%=, %%r10\r\n"
      "addq $-224, %%rsi\r\n"                                     // Move B to (d=2,r=0, absolute)
      "addq $64, %%rdi\r\n"                                       // Move A to (d=4,r=2, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_4_0_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=4,r=1, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_4_1_2_%=, %%r10\r\n"
      "addq $72, %%rsi\r\n"                                       // Move B to (d=2,r=1, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=4,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_4_1_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=4,r=2, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_4_2_0_%=, %%r10\r\n"
      "addq $48, %%rsi\r\n"                                       // Move B to (d=0,r=2, absolute)
      "addq $-1920, %%rdi\r\n"                                    // Move A to (d=4,r=0, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_4_2_0_%=:\r\n"
      "movq $BLOCK_4_2_1_%=, %%r10\r\n"
      "addq $24, %%rsi\r\n"                                       // Move B to (d=1,r=2, absolute)
      "addq $960, %%rdi\r\n"                                      // Move A to (d=4,r=1, absolute)
      "jmp CASE_4_%=\r\n"
      "BLOCK_4_2_1_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=4,r=3, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_4_3_2_%=, %%r10\r\n"
      "addq $56, %%rsi\r\n"                                       // Move B to (d=2,r=3, absolute)
      "addq $960, %%rdi\r\n"                                      // Move A to (d=4,r=2, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_4_3_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=4,r=4, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_4_4_2_%=, %%r10\r\n"
      "addq $24, %%rsi\r\n"                                       // Move B to (d=2,r=4, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=4,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_4_4_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rdx","rsi","zmm0","zmm1","zmm2","zmm29","zmm30","zmm31");
};



void general_40 (const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"
    "movq %1, %%rsi\n\t"
    "movq %2, %%rdx\n\t"
      // Unrolled FullyGeneralSparse
      "jmp END_SWITCH_%=\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 320(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
          "vmovapd 640(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"         // C[0,0] += A[0,0]*block_1[0,0][0,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"        // C[0,1] += A[0,0]*block_1[0,0][0,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,2] += A[0,0]*block_1[0,0][0,2]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,1] += A[0,1]*block_1[0,0][1,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,2] += A[0,1]*block_1[0,0][1,2]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"        // C[0,0] += A[0,2]*block_1[0,0][2,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"        // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0,2] += A[0,2]*block_1[0,0][2,2]
      "jmp *%%r10\r\n"
      "CASE_2_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 320(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
          "vmovapd 640(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"         // C[0,0] += A[0,0]*block_2[0,0][0,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,2] += A[0,0]*block_2[0,0][0,2]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"         // C[0,0] += A[0,1]*block_2[0,0][1,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,1] += A[0,1]*block_2[0,0][1,1]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"        // C[0,1] += A[0,2]*block_2[0,0][2,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0,2] += A[0,2]*block_2[0,0][2,2]
      "jmp *%%r10\r\n"
      "CASE_3_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 320(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
          "vmovapd 640(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"         // C[0,0] += A[0,0]*block_3[0,0][0,0]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"         // C[0,1] += A[0,1]*block_3[0,0][1,1]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0,2] += A[0,2]*block_3[0,0][2,2]
      "jmp *%%r10\r\n"
      "CASE_4_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 320(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
          "vmovapd 640(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"         // C[0,0] += A[0,0]*block_4[0,0][0,0]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"        // C[0,1] += A[0,0]*block_4[0,0][0,1]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,2] += A[0,0]*block_4[0,0][0,2]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,1] += A[0,1]*block_4[0,0][1,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,2] += A[0,1]*block_4[0,0][1,2]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"         // C[0,0] += A[0,2]*block_4[0,0][2,0]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0,2] += A[0,2]*block_4[0,0][2,2]
      "jmp *%%r10\r\n"
      "END_SWITCH_%=:\r\n"
      "addq $0, %%rdx\r\n"                                        // Move C to (d=0,r=0, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_0_0_2_%=, %%r10\r\n"
      "addq $0, %%rsi\r\n"                                        // Move B to (d=2,r=0, absolute)
      "addq $1920, %%rdi\r\n"                                     // Move A to (d=0,r=2, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_0_0_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=0,r=1, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_0_1_2_%=, %%r10\r\n"
      "addq $72, %%rsi\r\n"                                       // Move B to (d=2,r=1, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_0_1_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=0,r=2, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_0_2_0_%=, %%r10\r\n"
      "addq $48, %%rsi\r\n"                                       // Move B to (d=0,r=2, absolute)
      "addq $-1920, %%rdi\r\n"                                    // Move A to (d=0,r=0, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_0_2_0_%=:\r\n"
      "movq $BLOCK_0_2_1_%=, %%r10\r\n"
      "addq $24, %%rsi\r\n"                                       // Move B to (d=1,r=2, absolute)
      "addq $960, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_4_%=\r\n"
      "BLOCK_0_2_1_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=0,r=3, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_0_3_2_%=, %%r10\r\n"
      "addq $56, %%rsi\r\n"                                       // Move B to (d=2,r=3, absolute)
      "addq $960, %%rdi\r\n"                                      // Move A to (d=0,r=2, absolute)
      "jmp CASE_3_%=\r\n"
      "BLOCK_0_3_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]
      "addq $960, %%rdx\r\n"                                      // Move C to (d=0,r=4, absolute)
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm29\r\n"                             // C [0,0] [0,0]
        "vmovapd 320(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,1]
        "vmovapd 640(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,2]
      "movq $BLOCK_0_4_2_%=, %%r10\r\n"
      "addq $24, %%rsi\r\n"                                       // Move B to (d=2,r=4, absolute)
      "addq $0, %%rdi\r\n"                                        // Move A to (d=0,r=2, absolute)
      "jmp CASE_2_%=\r\n"
      "BLOCK_0_4_2_%=:\r\n"
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm29, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm30, 320(%%rdx)\r\n"                           // C [0,0] [0,1]
        "vmovapd %%zmm31, 640(%%rdx)\r\n"                           // C [0,0] [0,2]

    : : "m"(A), "m"(B), "m"(C) : "r10","rdi","rdx","rsi","zmm0","zmm1","zmm2","zmm29","zmm30","zmm31");
};

 


void test_libxsmm() {
    const int m = 40;
    const int n = 15;
    const int k = 9;
    const int bk = 3;
    const int bn = 3;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star.mtx");
    auto b = &db;

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_unrolled_8() {
    const int m = 40;
    const int n = 15;
    const int k = 9;
    const int bk = 3;
    const int bn = 3;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    unrolled_8(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        unrolled_8(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "unrolled_8, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_unrolled_40() {
    const int m = 40;
    const int n = 15;
    const int k = 9;
    const int bk = 3;
    const int bn = 3;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    unrolled_40(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        unrolled_40(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "unrolled_40, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_general_8() {
    const int m = 40;
    const int n = 15;
    const int k = 9;
    const int bk = 3;
    const int bn = 3;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    general_8(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        general_8(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "general_8, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_general_40() {
    const int m = 40;
    const int n = 15;
    const int k = 9;
    const int bk = 3;
    const int bn = 3;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("experiments/seissol_star/generated/seissol_star.mtx");
    auto b = to_bcsc(db, bk, bn);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    general_40(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        general_40(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "general_40, " << microsecs(start,end)/3000.0 << std::endl;
}


 

int main(int argc, char** argv) {
    test_libxsmm();
    test_unrolled_8();
    test_unrolled_40();
    test_general_8();
    test_general_40();

    return 0;
}
