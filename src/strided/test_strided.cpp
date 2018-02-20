
#include <iostream>
#include <memory>

#include "SparseMatrix.hpp"
#include "DenseMatrix.hpp"
#include "timing.h"


void rowmajor_spxd(const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"    // A
    "movq %1, %%rsi\n\t"    // B
    "movq %2, %%rdx\n\t"    // C

    // Gather entire C-block
    "vmovapd 0(%%rdx), %%zmm24\r\n"         // C[0,:]
    "vmovapd 64(%%rdx), %%zmm25\r\n"        // C[1,:]
    "vmovapd 128(%%rdx), %%zmm26\r\n"       // C[2,:]
    "vmovapd 192(%%rdx), %%zmm27\r\n"       // C[3,:]
    "vmovapd 256(%%rdx), %%zmm28\r\n"       // C[4,:]
    "vmovapd 320(%%rdx), %%zmm29\r\n"       // C[5,:]
    "vmovapd 384(%%rdx), %%zmm30\r\n"       // C[6,:]
    "vmovapd 448(%%rdx), %%zmm31\r\n"       // C[7,:]

    // Gather B[ki,:] for all ki
    "vmovapd 0(%%rsi), %%zmm0\r\n"          // B[0,:]
    "vmovapd 64(%%rsi), %%zmm1\r\n"         // B[1,:]
    "vmovapd 128(%%rsi), %%zmm2\r\n"        // B[2,:]
    "vmovapd 192(%%rsi), %%zmm3\r\n"        // B[3,:]
    "vmovapd 256(%%rsi), %%zmm4\r\n"        // B[4,:]
    "vmovapd 320(%%rsi), %%zmm5\r\n"        // B[4,:]
    "vmovapd 384(%%rsi), %%zmm6\r\n"        // B[4,:]
    "vmovapd 448(%%rsi), %%zmm7\r\n"        // B[4,:]

    // C[0,:] += broadcast(A[ri,0]) * B[0,:] for ri in range(r) if A[ri,0] != 0
    "vfmadd231pd 0(%%rdi)%{1to8%}, %%zmm0, %%zmm24\r\n"       // C[0,:] += A[0,0] .* B[0,:]
    "vfmadd231pd 8(%%rdi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[7,:] += A[7,0] .* B[0,:]

    // C[1,:] += broadcast(A[ri,1]) * B[1,:] for ri in range(r) if A[ri,1] != 0
    "vfmadd231pd 16(%%rdi)%{1to8%}, %%zmm1, %%zmm25\r\n"       // C[1,:] += A[1,1] * B[1,:]
    "vfmadd231pd 24(%%rdi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[3,:] += A[3,1] * B[1,:]

    // C[2,:] += broadcast(A[ri,2]) * B[2,:] for ri in range(r) if A[ri,2] != 0
    "vfmadd231pd 32(%%rdi)%{1to8%}, %%zmm2, %%zmm26\r\n"       // C[2,:] += A[2,2] * B[2,:]
    "vfmadd231pd 40(%%rdi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[7,:] += A[7,2] * B[2,:]

    // C[3,:] += broadcast(A[ri,3]) * B[3,:] for ri in range(r) if A[ri,3] != 0
    "vfmadd231pd 48(%%rdi)%{1to8%}, %%zmm3, %%zmm25\r\n"       // C[1,:] += A[1,3] * B[3,:]
    "vfmadd231pd 56(%%rdi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[3,:] += A[3,3] * B[3,:]

    // C[4,:] += broadcast(A[ri,4]) * B[4,:] for ri in range(r) if A[ri,4] != 0
    "vfmadd231pd 64(%%rdi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[4,:] += A[4,4] * B[4,:]
    "vfmadd231pd 72(%%rdi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[7,:] += A[7,4] * B[4,:]

    // C[5,:] += broadcast(A[ri,5]) * B[5,:] for ri in range(r) if A[ri,5] != 0
    "vfmadd231pd 80(%%rdi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[5,:] += A[5,5] * B[5,:]

    // C[6,:] += broadcast(A[ri,6]) * B[6,:] for ri in range(r) if A[ri,6] != 0
    "vfmadd231pd 88(%%rdi)%{1to8%}, %%zmm6, %%zmm30\r\n"       // C[6,:] += A[6,6] * B[6,:]

    // C[7,:] += broadcast(A[ri,7]) * B[7,:] for ri in range(r) if A[ri,7] != 0
    "vfmadd231pd 96(%%rdi)%{1to8%}, %%zmm7, %%zmm24\r\n"       // C[0,:] += A[0,7] * B[7,:]
    "vfmadd231pd 104(%%rdi)%{1to8%}, %%zmm7, %%zmm26\r\n"      // C[2,:] += A[2,7] * B[7,:]
    "vfmadd231pd 112(%%rdi)%{1to8%}, %%zmm7, %%zmm28\r\n"      // C[4,:] += A[4,7] * B[7,:]
    "vfmadd231pd 120(%%rdi)%{1to8%}, %%zmm7, %%zmm31\r\n"      // C[7,:] += A[7,7] * B[7,:]

    // Scatter entire C-block
    "vmovapd %%zmm24, 0(%%rdx)\r\n"         // C[0,:]
    "vmovapd %%zmm25, 64(%%rdx)\r\n"        // C[1,:]
    "vmovapd %%zmm26, 128(%%rdx)\r\n"       // C[2,:]
    "vmovapd %%zmm27, 192(%%rdx)\r\n"       // C[3,:]
    "vmovapd %%zmm28, 256(%%rdx)\r\n"       // C[4,:]
    "vmovapd %%zmm29, 320(%%rdx)\r\n"       // C[5,:]
    "vmovapd %%zmm30, 384(%%rdx)\r\n"       // C[6,:]
    "vmovapd %%zmm31, 448(%%rdx)\r\n"       // C[7,:]

    : : "m"(A), "m"(B), "m"(C) : "zmm0","zmm1","zmm17","zmm18","zmm19","zmm2","zmm20","zmm21","zmm22","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8");
};
 


void test_rowmajor_spxd() {
    const int m = 8;
    const int n = 8;
    const int k = 8;
    const int bk = 0;
    const int bn = 0;
    struct timespec start, end;

    DenseMatrix a_dense("src/strided/8x8.mtx");
    auto a = to_csc(a_dense);

    DenseMatrix b(m,k,m);
    b.random();

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a_dense, b, c_expected);
    b.transpose();

    rowmajor_spxd(a->values, b.values, c_actual.values);
    c_actual.transpose();
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        rowmajor_spxd(a->values, b.values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "rowmajor_spxd, " << microsecs(start,end)/3000.0 << std::endl;
}



int main(int argc, char** argv) {
    test_rowmajor_spxd();

    return 0;
}

