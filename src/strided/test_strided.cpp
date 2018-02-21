#include <immintrin.h>
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
 
void playground() {

//  int indirects_underlying[16] = {2,8,16,24,32,40,48,56,0,0,0,0,0,0,0,0};
  int indirects_underlying[16] = {0,8,16,24,32,40,48,56,0,0,0,0,0,0,0,0};
  int * indirects = indirects_underlying;

  double xs_underlying[64] = {0.1,1.1,2.1,3.1,4.1,5.1,6.1,7.1,
                              8,9,10,11,12,13,14,15,
                              16.9,17,18,19,20,21,22,23,
                              24,25,26,27,28,29,30,31,
                              32,33,34,35,36,37,38,39,
                              40,41,42,43,44,45,46,47,
                              48,49,50,51,52,53,54,55,
                              56,57,58,59,60,61,62,63};

  double * xs = xs_underlying; 

  double ys_underlying[8] = {0,0,0,7,0,0,0,0};
  double * ys = ys_underlying;

  std::cout << "ys = ";
  for (int i=0; i<8; i++){
      std::cout << ys[i] << ", ";
  }
  std::cout << std::endl;

  __asm__ __volatile__(
    "movq %0, %%r10\n\t"    // xs
    "movq %1, %%r11\n\t"    // ys
    "movq %2, %%r12\n\t"    // indirects

    // TODO: Figure why it won't accept loading into ymm
    // "vmovdqu 0(%%r12), %%ymm20\n\t"   // get indices, only need the 8
    "vmovdqu32 0(%%r12), %%zmm20\n\t"    // get indices, need 16 for no good reason

    "kxnorw %%k0, %%k0, %%k1\n\t"  // set k1=all true. DOES WORK.
    // "kxnorw %%k1, %%k0, %%k0\n\t"  // set k1=all true. DOES NOT WORK.

    "vpgatherdq 8(%%r10,%%ymm20,8), %%zmm24%{%%k1%}\r\n"
    "vmovupd %%zmm24, 0(%%r11)\r\n"

    :
    : "m"(xs), "m"(ys), "m"(indirects)
    : "r10","r11","r12","zmm0","zmm1","zmm17","zmm18","zmm19","zmm2","zmm20","zmm21","zmm22","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8");

  std::cout << "ys = ";
  for (int i=0; i<8; i++){
      std::cout << ys[i] << ", ";
  }
  std::cout << std::endl;

}

void gatherscatter_spxd(const double* A, const double* B, double* C) {

  int column_offsets[8] = {0,64,128,192,256,320,384,448};
  int * indirects = column_offsets;


  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"    // A
    "movq %1, %%rsi\n\t"    // B
    "movq %2, %%rdx\n\t"    // C

    // Load indirects into zmm registers
//    "vmovups %[indirects], zmm22\r\n"
 //   "kxnor k1, k0, k0\r\n"
//    "vpgatherdd , zmm24"

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

    : 
    : "m"(A), "m"(B), "m"(C), [indirects] "m" (indirects)
    : "zmm0","zmm1","zmm17","zmm18","zmm19","zmm2","zmm20","zmm21","zmm22","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8");
};



void libxsmm_dense(const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"
    "movq %1, %%rsi\n\t"
    "movq %2, %%rdx\n\t"
    "movq $0, %%r12\n\t"
    "movq $0, %%r13\n\t"
    "movq $0, %%r14\n\t"
    "0:\n\t"
    "addq $8, %%r12\n\t"
    "vmovapd 0(%%rdx), %%zmm24\n\t"
    "vmovapd 64(%%rdx), %%zmm25\n\t"
    "vmovapd 128(%%rdx), %%zmm26\n\t"
    "vmovapd 192(%%rdx), %%zmm27\n\t"
    "vmovapd 256(%%rdx), %%zmm28\n\t"
    "vmovapd 320(%%rdx), %%zmm29\n\t"
    "vmovapd 384(%%rdx), %%zmm30\n\t"
    "vmovapd 448(%%rdx), %%zmm31\n\t"
    "movq $64, %%r15\n\t"
    "movq $192, %%rax\n\t"
    "movq $320, %%rbx\n\t"
    "movq $448, %%r11\n\t"
    "vpxord %%zmm16, %%zmm16, %%zmm16\n\t"
    "vpxord %%zmm17, %%zmm17, %%zmm17\n\t"
    "vpxord %%zmm18, %%zmm18, %%zmm18\n\t"
    "vpxord %%zmm19, %%zmm19, %%zmm19\n\t"
    "vpxord %%zmm20, %%zmm20, %%zmm20\n\t"
    "vpxord %%zmm21, %%zmm21, %%zmm21\n\t"
    "vpxord %%zmm22, %%zmm22, %%zmm22\n\t"
    "vpxord %%zmm23, %%zmm23, %%zmm23\n\t"
    "vmovapd 0(%%rdi), %%zmm0\n\t"
    "vmovapd 64(%%rdi), %%zmm1\n\t"
    "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm24\n\t"
    "vfmadd231pd 0(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm25\n\t"
    "vfmadd231pd 0(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm26\n\t"
    "vfmadd231pd 0(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm27\n\t"
    "vfmadd231pd 0(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm28\n\t"
    "vfmadd231pd 0(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm29\n\t"
    "vfmadd231pd 0(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm30\n\t"
    "vfmadd231pd 0(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm31\n\t"
    "vmovapd 128(%%rdi), %%zmm0\n\t"
    "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm16\n\t"
    "vfmadd231pd 8(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm17\n\t"
    "vfmadd231pd 8(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm18\n\t"
    "vfmadd231pd 8(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm19\n\t"
    "vfmadd231pd 8(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm20\n\t"
    "vfmadd231pd 8(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm21\n\t"
    "vfmadd231pd 8(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm22\n\t"
    "vfmadd231pd 8(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm23\n\t"
    "vmovapd 192(%%rdi), %%zmm1\n\t"
    "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm24\n\t"
    "vfmadd231pd 16(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm25\n\t"
    "vfmadd231pd 16(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm26\n\t"
    "vfmadd231pd 16(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm27\n\t"
    "vfmadd231pd 16(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm28\n\t"
    "vfmadd231pd 16(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm29\n\t"
    "vfmadd231pd 16(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm30\n\t"
    "vfmadd231pd 16(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm31\n\t"
    "vmovapd 256(%%rdi), %%zmm0\n\t"
    "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm1, %%zmm16\n\t"
    "vfmadd231pd 24(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm17\n\t"
    "vfmadd231pd 24(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm18\n\t"
    "vfmadd231pd 24(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm19\n\t"
    "vfmadd231pd 24(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm20\n\t"
    "vfmadd231pd 24(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm21\n\t"
    "vfmadd231pd 24(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm22\n\t"
    "vfmadd231pd 24(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm23\n\t"
    "vmovapd 320(%%rdi), %%zmm1\n\t"
    "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm24\n\t"
    "vfmadd231pd 32(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm25\n\t"
    "vfmadd231pd 32(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm26\n\t"
    "vfmadd231pd 32(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm27\n\t"
    "vfmadd231pd 32(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm28\n\t"
    "vfmadd231pd 32(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm29\n\t"
    "vfmadd231pd 32(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm30\n\t"
    "vfmadd231pd 32(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm31\n\t"
    "vmovapd 384(%%rdi), %%zmm0\n\t"
    "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm16\n\t"
    "vfmadd231pd 40(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm17\n\t"
    "vfmadd231pd 40(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm18\n\t"
    "vfmadd231pd 40(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm19\n\t"
    "vfmadd231pd 40(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm20\n\t"
    "vfmadd231pd 40(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm21\n\t"
    "vfmadd231pd 40(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm22\n\t"
    "vfmadd231pd 40(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm23\n\t"
    "vmovapd 448(%%rdi), %%zmm1\n\t"
    "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm24\n\t"
    "vfmadd231pd 48(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm25\n\t"
    "vfmadd231pd 48(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm26\n\t"
    "vfmadd231pd 48(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm27\n\t"
    "vfmadd231pd 48(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm28\n\t"
    "vfmadd231pd 48(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm29\n\t"
    "vfmadd231pd 48(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm30\n\t"
    "vfmadd231pd 48(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm31\n\t"
    "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm16\n\t"
    "vfmadd231pd 56(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm17\n\t"
    "vfmadd231pd 56(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm18\n\t"
    "vfmadd231pd 56(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm19\n\t"
    "vfmadd231pd 56(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm20\n\t"
    "vfmadd231pd 56(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm21\n\t"
    "vfmadd231pd 56(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm22\n\t"
    "vfmadd231pd 56(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm23\n\t"
    "vaddpd %%zmm16, %%zmm24, %%zmm24\n\t"
    "vaddpd %%zmm17, %%zmm25, %%zmm25\n\t"
    "vaddpd %%zmm18, %%zmm26, %%zmm26\n\t"
    "vaddpd %%zmm19, %%zmm27, %%zmm27\n\t"
    "vaddpd %%zmm20, %%zmm28, %%zmm28\n\t"
    "vaddpd %%zmm21, %%zmm29, %%zmm29\n\t"
    "vaddpd %%zmm22, %%zmm30, %%zmm30\n\t"
    "vaddpd %%zmm23, %%zmm31, %%zmm31\n\t"
    "vmovapd %%zmm24, 0(%%rdx)\n\t"
    "vmovapd %%zmm25, 64(%%rdx)\n\t"
    "vmovapd %%zmm26, 128(%%rdx)\n\t"
    "vmovapd %%zmm27, 192(%%rdx)\n\t"
    "vmovapd %%zmm28, 256(%%rdx)\n\t"
    "vmovapd %%zmm29, 320(%%rdx)\n\t"
    "vmovapd %%zmm30, 384(%%rdx)\n\t"
    "vmovapd %%zmm31, 448(%%rdx)\n\t"
    "addq $64, %%rdx\n\t"
    "addq $64, %%rdi\n\t"
    "cmpq $8, %%r12\n\t"
    "jl 0b\n\t"
    : : "m"(A), "m"(B), "m"(C) : "k1","rax","rbx","rcx","rdx","rdi","rsi","r8","r9","r10","r11","r12","r13","r14","r15","zmm0","zmm1","zmm2","zmm3","zmm4","zmm5","zmm6","zmm7","zmm8","zmm9","zmm10","zmm11","zmm12","zmm13","zmm14","zmm15","zmm16","zmm17","zmm18","zmm19","zmm20","zmm21","zmm22","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm30","zmm31");

}

void libxsmm_sparse(const double* A, const double* B, double* C) {
      unsigned int l_n = 0;
      #pragma nounroll_and_jam
      for ( l_n = 0; l_n < 8; l_n++) {
    #if defined(__SSE3__) || defined(__AVX__)
    #if defined(__SSE3__) && defined(__AVX__)
        __m256d b0 = _mm256_broadcast_sd(&B[(l_n*8)+0]);
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        __m128d b0 = _mm_loaddup_pd(&B[(l_n*8)+0]);
    #endif
        __m128d c0_0 = _mm_load_sd(&C[(l_n*8)+0]);
        __m128d a0_0 = _mm_load_sd(&A[0]);
    #if defined(__SSE3__) && defined(__AVX__)
        c0_0 = _mm_add_sd(c0_0, _mm_mul_sd(a0_0, _mm256_castpd256_pd128(b0)));
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        c0_0 = _mm_add_sd(c0_0, _mm_mul_sd(a0_0, b0));
    #endif
        _mm_store_sd(&C[(l_n*8)+0], c0_0);
        __m128d c0_1 = _mm_load_sd(&C[(l_n*8)+7]);
        __m128d a0_1 = _mm_load_sd(&A[1]);
    #if defined(__SSE3__) && defined(__AVX__)
        c0_1 = _mm_add_sd(c0_1, _mm_mul_sd(a0_1, _mm256_castpd256_pd128(b0)));
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        c0_1 = _mm_add_sd(c0_1, _mm_mul_sd(a0_1, b0));
    #endif
        _mm_store_sd(&C[(l_n*8)+7], c0_1);
    #else
        C[(l_n*8)+0] += A[0] * B[(l_n*8)+0];
        C[(l_n*8)+7] += A[1] * B[(l_n*8)+0];
    #endif

    #if defined(__SSE3__) || defined(__AVX__)
    #if defined(__SSE3__) && defined(__AVX__)
        __m256d b1 = _mm256_broadcast_sd(&B[(l_n*8)+1]);
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        __m128d b1 = _mm_loaddup_pd(&B[(l_n*8)+1]);
    #endif
        __m128d c1_0 = _mm_load_sd(&C[(l_n*8)+1]);
        __m128d a1_0 = _mm_load_sd(&A[2]);
    #if defined(__SSE3__) && defined(__AVX__)
        c1_0 = _mm_add_sd(c1_0, _mm_mul_sd(a1_0, _mm256_castpd256_pd128(b1)));
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        c1_0 = _mm_add_sd(c1_0, _mm_mul_sd(a1_0, b1));
    #endif
        _mm_store_sd(&C[(l_n*8)+1], c1_0);
        __m128d c1_1 = _mm_load_sd(&C[(l_n*8)+3]);
        __m128d a1_1 = _mm_load_sd(&A[3]);
    #if defined(__SSE3__) && defined(__AVX__)
        c1_1 = _mm_add_sd(c1_1, _mm_mul_sd(a1_1, _mm256_castpd256_pd128(b1)));
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        c1_1 = _mm_add_sd(c1_1, _mm_mul_sd(a1_1, b1));
    #endif
        _mm_store_sd(&C[(l_n*8)+3], c1_1);
    #else
        C[(l_n*8)+1] += A[2] * B[(l_n*8)+1];
        C[(l_n*8)+3] += A[3] * B[(l_n*8)+1];
    #endif

    #if defined(__SSE3__) || defined(__AVX__)
    #if defined(__SSE3__) && defined(__AVX__)
        __m256d b2 = _mm256_broadcast_sd(&B[(l_n*8)+2]);
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        __m128d b2 = _mm_loaddup_pd(&B[(l_n*8)+2]);
    #endif
        __m128d c2_0 = _mm_load_sd(&C[(l_n*8)+2]);
        __m128d a2_0 = _mm_load_sd(&A[4]);
    #if defined(__SSE3__) && defined(__AVX__)
        c2_0 = _mm_add_sd(c2_0, _mm_mul_sd(a2_0, _mm256_castpd256_pd128(b2)));
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        c2_0 = _mm_add_sd(c2_0, _mm_mul_sd(a2_0, b2));
    #endif
        _mm_store_sd(&C[(l_n*8)+2], c2_0);
        __m128d c2_1 = _mm_load_sd(&C[(l_n*8)+7]);
        __m128d a2_1 = _mm_load_sd(&A[5]);
    #if defined(__SSE3__) && defined(__AVX__)
        c2_1 = _mm_add_sd(c2_1, _mm_mul_sd(a2_1, _mm256_castpd256_pd128(b2)));
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        c2_1 = _mm_add_sd(c2_1, _mm_mul_sd(a2_1, b2));
    #endif
        _mm_store_sd(&C[(l_n*8)+7], c2_1);
    #else
        C[(l_n*8)+2] += A[4] * B[(l_n*8)+2];
        C[(l_n*8)+7] += A[5] * B[(l_n*8)+2];
    #endif

    #if defined(__SSE3__) || defined(__AVX__)
    #if defined(__SSE3__) && defined(__AVX__)
        __m256d b3 = _mm256_broadcast_sd(&B[(l_n*8)+3]);
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        __m128d b3 = _mm_loaddup_pd(&B[(l_n*8)+3]);
    #endif
        __m128d c3_0 = _mm_load_sd(&C[(l_n*8)+1]);
        __m128d a3_0 = _mm_load_sd(&A[6]);
    #if defined(__SSE3__) && defined(__AVX__)
        c3_0 = _mm_add_sd(c3_0, _mm_mul_sd(a3_0, _mm256_castpd256_pd128(b3)));
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        c3_0 = _mm_add_sd(c3_0, _mm_mul_sd(a3_0, b3));
    #endif
        _mm_store_sd(&C[(l_n*8)+1], c3_0);
        __m128d c3_1 = _mm_load_sd(&C[(l_n*8)+3]);
        __m128d a3_1 = _mm_load_sd(&A[7]);
    #if defined(__SSE3__) && defined(__AVX__)
        c3_1 = _mm_add_sd(c3_1, _mm_mul_sd(a3_1, _mm256_castpd256_pd128(b3)));
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        c3_1 = _mm_add_sd(c3_1, _mm_mul_sd(a3_1, b3));
    #endif
        _mm_store_sd(&C[(l_n*8)+3], c3_1);
    #else
        C[(l_n*8)+1] += A[6] * B[(l_n*8)+3];
        C[(l_n*8)+3] += A[7] * B[(l_n*8)+3];
    #endif

    #if defined(__SSE3__) || defined(__AVX__)
    #if defined(__SSE3__) && defined(__AVX__)
        __m256d b4 = _mm256_broadcast_sd(&B[(l_n*8)+4]);
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        __m128d b4 = _mm_loaddup_pd(&B[(l_n*8)+4]);
    #endif
        __m128d c4_0 = _mm_load_sd(&C[(l_n*8)+4]);
        __m128d a4_0 = _mm_load_sd(&A[8]);
    #if defined(__SSE3__) && defined(__AVX__)
        c4_0 = _mm_add_sd(c4_0, _mm_mul_sd(a4_0, _mm256_castpd256_pd128(b4)));
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        c4_0 = _mm_add_sd(c4_0, _mm_mul_sd(a4_0, b4));
    #endif
        _mm_store_sd(&C[(l_n*8)+4], c4_0);
        __m128d c4_1 = _mm_load_sd(&C[(l_n*8)+7]);
        __m128d a4_1 = _mm_load_sd(&A[9]);
    #if defined(__SSE3__) && defined(__AVX__)
        c4_1 = _mm_add_sd(c4_1, _mm_mul_sd(a4_1, _mm256_castpd256_pd128(b4)));
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        c4_1 = _mm_add_sd(c4_1, _mm_mul_sd(a4_1, b4));
    #endif
        _mm_store_sd(&C[(l_n*8)+7], c4_1);
    #else
        C[(l_n*8)+4] += A[8] * B[(l_n*8)+4];
        C[(l_n*8)+7] += A[9] * B[(l_n*8)+4];
    #endif

    #if defined(__SSE3__) || defined(__AVX__)
    #if defined(__SSE3__) && defined(__AVX__)
        __m256d b5 = _mm256_broadcast_sd(&B[(l_n*8)+5]);
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        __m128d b5 = _mm_loaddup_pd(&B[(l_n*8)+5]);
    #endif
        __m128d c5_0 = _mm_load_sd(&C[(l_n*8)+5]);
        __m128d a5_0 = _mm_load_sd(&A[10]);
    #if defined(__SSE3__) && defined(__AVX__)
        c5_0 = _mm_add_sd(c5_0, _mm_mul_sd(a5_0, _mm256_castpd256_pd128(b5)));
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        c5_0 = _mm_add_sd(c5_0, _mm_mul_sd(a5_0, b5));
    #endif
        _mm_store_sd(&C[(l_n*8)+5], c5_0);
    #else
        C[(l_n*8)+5] += A[10] * B[(l_n*8)+5];
    #endif

    #if defined(__SSE3__) || defined(__AVX__)
    #if defined(__SSE3__) && defined(__AVX__)
        __m256d b6 = _mm256_broadcast_sd(&B[(l_n*8)+6]);
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        __m128d b6 = _mm_loaddup_pd(&B[(l_n*8)+6]);
    #endif
        __m128d c6_0 = _mm_load_sd(&C[(l_n*8)+6]);
        __m128d a6_0 = _mm_load_sd(&A[11]);
    #if defined(__SSE3__) && defined(__AVX__)
        c6_0 = _mm_add_sd(c6_0, _mm_mul_sd(a6_0, _mm256_castpd256_pd128(b6)));
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        c6_0 = _mm_add_sd(c6_0, _mm_mul_sd(a6_0, b6));
    #endif
        _mm_store_sd(&C[(l_n*8)+6], c6_0);
    #else
        C[(l_n*8)+6] += A[11] * B[(l_n*8)+6];
    #endif

    #if defined(__SSE3__) || defined(__AVX__)
    #if defined(__SSE3__) && defined(__AVX__)
        __m256d b7 = _mm256_broadcast_sd(&B[(l_n*8)+7]);
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        __m128d b7 = _mm_loaddup_pd(&B[(l_n*8)+7]);
    #endif
        __m128d c7_0 = _mm_load_sd(&C[(l_n*8)+0]);
        __m128d a7_0 = _mm_load_sd(&A[12]);
    #if defined(__SSE3__) && defined(__AVX__)
        c7_0 = _mm_add_sd(c7_0, _mm_mul_sd(a7_0, _mm256_castpd256_pd128(b7)));
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        c7_0 = _mm_add_sd(c7_0, _mm_mul_sd(a7_0, b7));
    #endif
        _mm_store_sd(&C[(l_n*8)+0], c7_0);
        __m128d c7_1 = _mm_load_sd(&C[(l_n*8)+2]);
        __m128d a7_1 = _mm_load_sd(&A[13]);
    #if defined(__SSE3__) && defined(__AVX__)
        c7_1 = _mm_add_sd(c7_1, _mm_mul_sd(a7_1, _mm256_castpd256_pd128(b7)));
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        c7_1 = _mm_add_sd(c7_1, _mm_mul_sd(a7_1, b7));
    #endif
        _mm_store_sd(&C[(l_n*8)+2], c7_1);
        __m128d c7_2 = _mm_load_sd(&C[(l_n*8)+4]);
        __m128d a7_2 = _mm_load_sd(&A[14]);
    #if defined(__SSE3__) && defined(__AVX__)
        c7_2 = _mm_add_sd(c7_2, _mm_mul_sd(a7_2, _mm256_castpd256_pd128(b7)));
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        c7_2 = _mm_add_sd(c7_2, _mm_mul_sd(a7_2, b7));
    #endif
        _mm_store_sd(&C[(l_n*8)+4], c7_2);
        __m128d c7_3 = _mm_load_sd(&C[(l_n*8)+7]);
        __m128d a7_3 = _mm_load_sd(&A[15]);
    #if defined(__SSE3__) && defined(__AVX__)
        c7_3 = _mm_add_sd(c7_3, _mm_mul_sd(a7_3, _mm256_castpd256_pd128(b7)));
    #endif
    #if defined(__SSE3__) && !defined(__AVX__)
        c7_3 = _mm_add_sd(c7_3, _mm_mul_sd(a7_3, b7));
    #endif
        _mm_store_sd(&C[(l_n*8)+7], c7_3);
    #else
        C[(l_n*8)+0] += A[12] * B[(l_n*8)+7];
        C[(l_n*8)+2] += A[13] * B[(l_n*8)+7];
        C[(l_n*8)+4] += A[14] * B[(l_n*8)+7];
        C[(l_n*8)+7] += A[15] * B[(l_n*8)+7];
    #endif

  }
}


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


void test_gatherscatter_spxd() {
    const int m = 8;
    const int n = 8;
    const int k = 8;
    struct timespec start, end;

    DenseMatrix a_dense("src/strided/8x8.mtx");
    auto a = to_csc(a_dense);

    DenseMatrix b(m,k,m);
    b.random();

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a_dense, b, c_expected);
    gatherscatter_spxd(a->values, b.values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        gatherscatter_spxd(a->values, b.values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "gatherscatter_spxd, " << microsecs(start,end)/3000.0 << std::endl;
}


void test_libxsmm_dense() {
    const int m = 8;
    const int n = 8;
    const int k = 8;
    const int bk = 0;
    const int bn = 0;
    struct timespec start, end;

    DenseMatrix a("src/strided/8x8.mtx");
    DenseMatrix b(m,k,m);
    b.random();
    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a, b, c_expected);
    libxsmm_dense(a.values, b.values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        libxsmm_dense(a.values, b.values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "libxsmm_dense, " << microsecs(start,end)/3000.0 << std::endl;
}

void test_libxsmm_sparse() {
    const int m = 8;
    const int n = 8;
    const int k = 8;
    struct timespec start, end;

    DenseMatrix a_dense("src/strided/8x8.mtx");
    auto a = to_csc(a_dense);

    DenseMatrix b(m,k,m);
    b.random();

    DenseMatrix c_expected(m,n,m);
    DenseMatrix c_actual(m,n,m);

    gemm(a_dense, b, c_expected);
    libxsmm_sparse(a->values, b.values, c_actual.values);
    assert_equals(c_expected, c_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        libxsmm_sparse(a->values, b.values, c_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    std::cout << "libxsmm_sparse, " << microsecs(start,end)/3000.0 << std::endl;
}


int main(int argc, char** argv) {
    playground();
/*    test_rowmajor_spxd();
    test_gatherscatter_spxd();
    test_libxsmm_dense();
    test_libxsmm_sparse();
*/    return 0;
}




