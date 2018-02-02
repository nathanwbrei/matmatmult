

#include <iostream>
#include <memory>

#include "SparseMatrix.hpp"
#include "DenseMatrix.hpp"
#include "timing.h"
#include "libxsmm_gemms.h"
 



void poc_micro_csc (const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"
    "movq %1, %%rsi\n\t"
    "movq %2, %%rdx\n\t"
      // MicroSparse GEMM
        // Load C register block @ (d=0,r=0)
        "vmovapd 0(%%rdx), %%zmm17\r\n"                             // C [0,0] [0,0]
        "vmovapd 64(%%rdx), %%zmm18\r\n"                            // C [0,0] [0,1]
        "vmovapd 128(%%rdx), %%zmm19\r\n"                           // C [0,0] [0,2]
        "vmovapd 192(%%rdx), %%zmm20\r\n"                           // C [0,0] [0,3]
        "vmovapd 256(%%rdx), %%zmm21\r\n"                           // C [0,0] [0,4]
        "vmovapd 320(%%rdx), %%zmm22\r\n"                           // C [0,0] [0,5]
        "vmovapd 384(%%rdx), %%zmm23\r\n"                           // C [0,0] [0,6]
        "vmovapd 448(%%rdx), %%zmm24\r\n"                           // C [0,0] [0,7]
        "vmovapd 512(%%rdx), %%zmm25\r\n"                           // C [0,0] [0,8]
        "vmovapd 576(%%rdx), %%zmm26\r\n"                           // C [0,0] [0,9]
        "vmovapd 640(%%rdx), %%zmm27\r\n"                           // C [0,0] [0,10]
        "vmovapd 704(%%rdx), %%zmm28\r\n"                           // C [0,0] [0,11]
        "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,12]
        "vmovapd 832(%%rdx), %%zmm30\r\n"                           // C [0,0] [0,13]
        "vmovapd 896(%%rdx), %%zmm31\r\n"                           // C [0,0] [0,14]
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
          "vmovapd 512(%%rdi), %%zmm8\r\n"                            // A [0,0] [0,8]
        "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm23\r\n"       // C[0,6] += A[0,0]*B[0,0][0,6]
        "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"       // C[0,7] += A[0,1]*B[0,0][1,7]
        "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"       // C[0,8] += A[0,2]*B[0,0][2,8]
        "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm23\r\n"       // C[0,6] += A[0,3]*B[0,0][3,6]
        "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"       // C[0,7] += A[0,3]*B[0,0][3,7]
        "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"       // C[0,8] += A[0,3]*B[0,0][3,8]
        "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm4, %%zmm24\r\n"       // C[0,7] += A[0,4]*B[0,0][4,7]
        "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm4, %%zmm25\r\n"       // C[0,8] += A[0,4]*B[0,0][4,8]
        "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm23\r\n"       // C[0,6] += A[0,5]*B[0,0][5,6]
        "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm5, %%zmm25\r\n"       // C[0,8] += A[0,5]*B[0,0][5,8]
        "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm6, %%zmm17\r\n"         // C[0,0] += A[0,6]*B[0,0][6,0]
        "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm6, %%zmm18\r\n"        // C[0,1] += A[0,6]*B[0,0][6,1]
        "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm19\r\n"        // C[0,2] += A[0,6]*B[0,0][6,2]
        "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm6, %%zmm20\r\n"        // C[0,3] += A[0,6]*B[0,0][6,3]
        "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm6, %%zmm22\r\n"       // C[0,5] += A[0,6]*B[0,0][6,5]
        "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm6, %%zmm26\r\n"       // C[0,9] += A[0,6]*B[0,0][6,9]
        "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm29\r\n"       // C[0,12] += A[0,6]*B[0,0][6,12]
        "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm6, %%zmm31\r\n"       // C[0,14] += A[0,6]*B[0,0][6,14]
        "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm7, %%zmm17\r\n"         // C[0,0] += A[0,7]*B[0,0][7,0]
        "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm7, %%zmm18\r\n"        // C[0,1] += A[0,7]*B[0,0][7,1]
        "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm19\r\n"        // C[0,2] += A[0,7]*B[0,0][7,2]
        "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm7, %%zmm20\r\n"        // C[0,3] += A[0,7]*B[0,0][7,3]
        "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm21\r\n"        // C[0,4] += A[0,7]*B[0,0][7,4]
        "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm7, %%zmm27\r\n"       // C[0,10] += A[0,7]*B[0,0][7,10]
        "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm7, %%zmm29\r\n"       // C[0,12] += A[0,7]*B[0,0][7,12]
        "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm7, %%zmm30\r\n"       // C[0,13] += A[0,7]*B[0,0][7,13]
        "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm8, %%zmm17\r\n"        // C[0,0] += A[0,8]*B[0,0][8,0]
        "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm8, %%zmm18\r\n"        // C[0,1] += A[0,8]*B[0,0][8,1]
        "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm8, %%zmm19\r\n"        // C[0,2] += A[0,8]*B[0,0][8,2]
        "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm8, %%zmm21\r\n"        // C[0,4] += A[0,8]*B[0,0][8,4]
        "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm8, %%zmm22\r\n"       // C[0,5] += A[0,8]*B[0,0][8,5]
        "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm8, %%zmm28\r\n"       // C[0,11] += A[0,8]*B[0,0][8,11]
        "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm8, %%zmm30\r\n"       // C[0,13] += A[0,8]*B[0,0][8,13]
        "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm8, %%zmm31\r\n"       // C[0,14] += A[0,8]*B[0,0][8,14]
        // Store C register block @ (d=0,r=0)
        "vmovapd %%zmm17, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
        "vmovapd %%zmm18, 64(%%rdx)\r\n"                            // C [0,0] [0,1]
        "vmovapd %%zmm19, 128(%%rdx)\r\n"                           // C [0,0] [0,2]
        "vmovapd %%zmm20, 192(%%rdx)\r\n"                           // C [0,0] [0,3]
        "vmovapd %%zmm21, 256(%%rdx)\r\n"                           // C [0,0] [0,4]
        "vmovapd %%zmm22, 320(%%rdx)\r\n"                           // C [0,0] [0,5]
        "vmovapd %%zmm23, 384(%%rdx)\r\n"                           // C [0,0] [0,6]
        "vmovapd %%zmm24, 448(%%rdx)\r\n"                           // C [0,0] [0,7]
        "vmovapd %%zmm25, 512(%%rdx)\r\n"                           // C [0,0] [0,8]
        "vmovapd %%zmm26, 576(%%rdx)\r\n"                           // C [0,0] [0,9]
        "vmovapd %%zmm27, 640(%%rdx)\r\n"                           // C [0,0] [0,10]
        "vmovapd %%zmm28, 704(%%rdx)\r\n"                           // C [0,0] [0,11]
        "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,12]
        "vmovapd %%zmm30, 832(%%rdx)\r\n"                           // C [0,0] [0,13]
        "vmovapd %%zmm31, 896(%%rdx)\r\n"                           // C [0,0] [0,14]

    : : "m"(A), "m"(B), "m"(C) : "zmm0","zmm1","zmm17","zmm18","zmm19","zmm2","zmm20","zmm21","zmm22","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8");
};

 


void test_poc_libxsmm() {
    const int m = 8;
    const int n = 15;
    const int k = 9;
    const int bk = 0;
    const int bn = 0;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("src/cpptests/star.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    poc_libxsmm(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        poc_libxsmm(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "poc_libxsmm, " << microsecs(start,end)/3000.0 << std::endl;
}



void test_poc_micro_csc() {
    const int m = 8;
    const int n = 15;
    const int k = 9;
    const int bk = 0;
    const int bn = 0;
    struct timespec start, end;

    DenseMatrix a(m,k,m);
    a.random();

    DenseMatrix db("src/cpptests/star.mtx");
    auto b = to_csc(db);

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, db, c_expected);
    poc_micro_csc(a.values, b->values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        poc_micro_csc(a.values, b->values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "poc_micro_csc, " << microsecs(start,end)/3000.0 << std::endl;
}


 

int main(int argc, char** argv) {
    test_poc_libxsmm();
    test_poc_micro_csc();

    return 0;
}
