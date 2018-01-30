

#include <iostream>
#include <Eigen/Sparse>
#include <Eigen/Dense>
#include <unsupported/Eigen/SparseExtra>

#include "SparseMatrix.hpp"
#include "DenseMatrix.hpp"
#include "timing.h"

using namespace Eigen; 
 




void dxsp_general_8x8x24_16 (const double* A, const double* B, double* C) {
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
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_0[0,0][0,2]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0,6] += A[0,1]*block_0[0,0][1,6]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"         // C[0,1] += A[0,2]*block_0[0,0][2,1]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"        // C[0,5] += A[0,2]*block_0[0,0][2,5]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,1] += A[0,3]*block_0[0,0][3,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_0[0,0][3,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"        // C[0,4] += A[0,3]*block_0[0,0][3,4]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm4, %%zmm26\r\n"        // C[0,2] += A[0,4]*block_0[0,0][4,2]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_0[0,0][4,3]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"        // C[0,5] += A[0,4]*block_0[0,0][4,5]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0,6] += A[0,5]*block_0[0,0][5,6]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_0[0,0][6,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_0[0,0][6,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_0[0,0][7,2]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"        // C[0,3] += A[0,7]*block_0[0,0][7,3]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_0[0,0][7,7]
      "jmp *%%r10\r\n"
      "CASE_1_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 256(%%rdi), %%zmm4\r\n"                            // A [0,0] [0,4]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,4] += A[0,0]*block_1[0,0][0,4]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,7] += A[0,0]*block_1[0,0][0,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"         // C[0,0] += A[0,1]*block_1[0,0][1,0]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,7] += A[0,1]*block_1[0,0][1,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,1] += A[0,2]*block_1[0,0][2,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,2] += A[0,2]*block_1[0,0][2,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"        // C[0,4] += A[0,3]*block_1[0,0][3,4]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"         // C[0,0] += A[0,4]*block_1[0,0][4,0]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm4, %%zmm27\r\n"        // C[0,3] += A[0,4]*block_1[0,0][4,3]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"        // C[0,4] += A[0,4]*block_1[0,0][4,4]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"        // C[0,5] += A[0,4]*block_1[0,0][4,5]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm25\r\n"        // C[0,1] += A[0,6]*block_1[0,0][6,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"        // C[0,2] += A[0,6]*block_1[0,0][6,2]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,5] += A[0,6]*block_1[0,0][6,5]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm7, %%zmm24\r\n"        // C[0,0] += A[0,7]*block_1[0,0][7,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_1[0,0][7,1]
      "jmp *%%r10\r\n"
      "CASE_2_%=:\r\n"
        // Block GEMM microkernel
          // Load A register block @ (d=0,r=0)
          "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
          "vmovapd 64(%%rdi), %%zmm1\r\n"                             // A [0,0] [0,1]
          "vmovapd 128(%%rdi), %%zmm2\r\n"                            // A [0,0] [0,2]
          "vmovapd 192(%%rdi), %%zmm3\r\n"                            // A [0,0] [0,3]
          "vmovapd 320(%%rdi), %%zmm5\r\n"                            // A [0,0] [0,5]
          "vmovapd 384(%%rdi), %%zmm6\r\n"                            // A [0,0] [0,6]
          "vmovapd 448(%%rdi), %%zmm7\r\n"                            // A [0,0] [0,7]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,2] += A[0,0]*block_2[0,0][0,2]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"        // C[0,5] += A[0,0]*block_2[0,0][0,5]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"        // C[0,6] += A[0,0]*block_2[0,0][0,6]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,7] += A[0,0]*block_2[0,0][0,7]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"        // C[0,5] += A[0,1]*block_2[0,0][1,5]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"         // C[0,1] += A[0,2]*block_2[0,0][2,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"        // C[0,4] += A[0,2]*block_2[0,0][2,4]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,7] += A[0,2]*block_2[0,0][2,7]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,2] += A[0,3]*block_2[0,0][3,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"        // C[0,5] += A[0,5]*block_2[0,0][5,5]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0,7] += A[0,5]*block_2[0,0][5,7]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm24\r\n"         // C[0,0] += A[0,6]*block_2[0,0][6,0]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm6, %%zmm28\r\n"        // C[0,4] += A[0,6]*block_2[0,0][6,4]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm7, %%zmm25\r\n"        // C[0,1] += A[0,7]*block_2[0,0][7,1]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm26\r\n"        // C[0,2] += A[0,7]*block_2[0,0][7,2]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm7, %%zmm31\r\n"       // C[0,7] += A[0,7]*block_2[0,0][7,7]
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
      "movq $128, %%rsi\r\n"                                      // Move B to (d=1,r=0, absolute)
      "addq $512, %%rdi\r\n"                                      // Move A to (d=0,r=1, absolute)
      "jmp CASE_1_%=\r\n"
      "BLOCK_1_%=:\r\n"
      "movq $BLOCK_2_%=, %%r10\r\n"
      "movq $128, %%rsi\r\n"                                      // Move B to (d=2,r=0, absolute)
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


 


int main(int argc, char ** argv) {

    struct timespec start, end;
     



    /***** Testing dxsp_general_8x8x24_16 *****/
    {
      const int m = 8;
      const int n = 8;
      const int k = 24;
      const int bk = 8;
      const int bn = 8;

      DenseMatrix a(m,k,m);
      a.random();

      DenseMatrix db("dxsp_general_8x8x24_16.mtx");
      auto b = to_bcsc(db, bk, bn);

      DenseMatrix c_expected(m,n,m);
      DenseMatrix c_actual(m,n,m);

      gemm(a, db, c_expected);
      dxsp_general_8x8x24_16(a.values, b->values, c_actual.values);
      assert_equals(c_expected, c_actual);

      clock_gettime(CLOCK_MONOTONIC, &start);
      for (int t=0; t<3000; t++)
        dxsp_general_8x8x24_16(a.values, b->values, c_actual.values);
      clock_gettime(CLOCK_MONOTONIC, &end);

      std::cout << "dxsp_general_8x8x24_16, " << microsecs(start,end)/3000.0 << std::endl;
    }
    

 



}
