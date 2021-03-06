#include <immintrin.h>
#include <iostream>
#include <memory>

#include "SparseMatrix.hpp"
#include "DenseMatrix.hpp"
#include "timing.h"



void playground() {

  double xs_underlying[64] = {0,1,2,3,4,5,6,7,
                              8,9,10,11,12,13,14,15,
                              0,0,0,0,0,0,0,0,
                              0,0,0,0,0,0,0,0,
                              0,0,0,0,0,0,0,0,
                              0,0,0,0,0,0,0,0,
                              0,0,0,0,0,0,0,0,
                              0,0,0,0,0,0,0,0 };
/*                            16.9,17,18,19,20,21,22,23,
                              24,25,26,27,28,29,30,31,
                              32,33,34,35,36,37,38,39,
                              40,41,42,43,44,45,46,47,
                              48,49,50,51,52,53,54,55,
                              56,57,58,59,60,61,62,63};
*/
  double * xs = xs_underlying; 

  std::cout << "xs = " << std::endl;
  for (int r=0; r<8; r++){
    for (int c=0; c<8; c++){
      std::cout << xs[r*8+c] << ", ";
    } 
  std::cout << std::endl;
  }
  

    // https://stackoverflow.com/questions/25622745/transpose-an-8x8-float-using-avx-avx2/25627536#25627536
    // https://stackoverflow.com/questions/29519222/how-to-transpose-a-16x16-matrix-using-simd-instructions/41262731#comment69729282_41262731

    //permute n 32-bit rows
    //permute n 64-bit rows
    //...
    //permute n simd_width/2-bit rows

    /*
    __t0 = _mm256_unpacklo_ps(row0, row1);
    __t1 = _mm256_unpackhi_ps(row0, row1);
    __t2 = _mm256_unpacklo_ps(row2, row3);
    __t3 = _mm256_unpackhi_ps(row2, row3);
    __t4 = _mm256_unpacklo_ps(row4, row5);
    __t5 = _mm256_unpackhi_ps(row4, row5);
    __t6 = _mm256_unpacklo_ps(row6, row7);
    __t7 = _mm256_unpackhi_ps(row6, row7);
    __tt0 = _mm256_shuffle_ps(__t0,__t2,_MM_SHUFFLE(1,0,1,0));
    __tt1 = _mm256_shuffle_ps(__t0,__t2,_MM_SHUFFLE(3,2,3,2));
    __tt2 = _mm256_shuffle_ps(__t1,__t3,_MM_SHUFFLE(1,0,1,0));
    __tt3 = _mm256_shuffle_ps(__t1,__t3,_MM_SHUFFLE(3,2,3,2));
    __tt4 = _mm256_shuffle_ps(__t4,__t6,_MM_SHUFFLE(1,0,1,0));
    __tt5 = _mm256_shuffle_ps(__t4,__t6,_MM_SHUFFLE(3,2,3,2));
    __tt6 = _mm256_shuffle_ps(__t5,__t7,_MM_SHUFFLE(1,0,1,0));
    __tt7 = _mm256_shuffle_ps(__t5,__t7,_MM_SHUFFLE(3,2,3,2));
    row0 = _mm256_permute2f128_ps(__tt0, __tt4, 0x20);
    row1 = _mm256_permute2f128_ps(__tt1, __tt5, 0x20);
    row2 = _mm256_permute2f128_ps(__tt2, __tt6, 0x20);
    row3 = _mm256_permute2f128_ps(__tt3, __tt7, 0x20);
    row4 = _mm256_permute2f128_ps(__tt0, __tt4, 0x31);
    row5 = _mm256_permute2f128_ps(__tt1, __tt5, 0x31);
    row6 = _mm256_permute2f128_ps(__tt2, __tt6, 0x31);
    row7 = _mm256_permute2f128_ps(__tt3, __tt7, 0x31);
    */

  __asm__ __volatile__(
    "movq %0, %%rdx\n\t"    // xs

    "vmovupd 0(%%rdx), %%zmm24\n\t"         // C[0,:]
    "vmovupd 64(%%rdx), %%zmm25\n\t"        // C[1,:]
    "vmovupd 128(%%rdx), %%zmm26\n\t"       // C[2,:]
    "vmovupd 192(%%rdx), %%zmm27\n\t"       // C[3,:]
    "vmovupd 256(%%rdx), %%zmm28\n\t"       // C[4,:]
    "vmovupd 320(%%rdx), %%zmm29\n\t"       // C[5,:]
    "vmovupd 384(%%rdx), %%zmm30\n\t"       // C[6,:]
    "vmovupd 448(%%rdx), %%zmm31\n\t"       // C[7,:]

    "vunpcklpd %%zmm24, zmm25, %%zmm16%{%%k1%}\n\t"  // t0
    "vunpckhpd %%zmm24, zmm25, %%zmm17%{%%k1%}\n\t"
    "vunpcklpd %%zmm26, zmm27, %%zmm18%{%%k1%}\n\t"
    "vunpckhpd %%zmm26, zmm27, %%zmm19%{%%k1%}\n\t"
    "vunpcklpd %%zmm28, zmm29, %%zmm20%{%%k1%}\n\t"
    "vunpckhpd %%zmm28, zmm29, %%zmm21%{%%k1%}\n\t"
    "vunpcklpd %%zmm30, zmm31, %%zmm22%{%%k1%}\n\t"
    "vunpckhpd %%zmm30, zmm31, %%zmm23%{%%k1%}\n\t"  // t7

    "vshufpd $68,  %%zmm16, %%zmm18, %%zmm8%{%%k1%}\n\t"   // tt0
    "vshufpd $238, %%zmm16, %%zmm18, %%zmm9%{%%k1%}\n\t"
    "vshufpd $68,  %%zmm17, %%zmm19, %%zmm10%{%%k1%}\n\t"
    "vshufpd $238, %%zmm17, %%zmm19, %%zmm11%{%%k1%}\n\t"
    "vshufpd $68,  %%zmm20, %%zmm22, %%zmm12%{%%k1%}\n\t"
    "vshufpd $238, %%zmm20, %%zmm22, %%zmm13%{%%k1%}\n\t"
    "vshufpd $68,  %%zmm21, %%zmm23, %%zmm14%{%%k1%}\n\t"
    "vshufpd $238, %%zmm21, %%zmm23, %%zmm15%{%%k1%}\n\t"  // tt7

    "kxnorw %%k0, %%k0, %%k1\n\t"  // set k1=all true.
    //"vunpcklpd %%zmm24, %%zmm25, %%zmm26%{%%k1%}\n\t"
    //"vunpckhpd %%zmm24, %%zmm25, %%zmm27%{%%k1%}\n\t"
    "vshufpd $0, %%zmm24, %%zmm25, %%zmm27%{%%k1%}\n\t"
    "vshufpd $1, %%zmm24, %%zmm25, %%zmm28%{%%k1%}\n\t"
    "vshufpd $2, %%zmm24, %%zmm25, %%zmm29%{%%k1%}\n\t"
    "vshufpd $3, %%zmm24, %%zmm25, %%zmm30%{%%k1%}\n\t"
    "vshufpd $68, %%zmm24, %%zmm25, %%zmm31%{%%k1%}\n\t"
    
    "vmovupd %%zmm24, 0(%%rdx)\n\t"         // C[0,:]
    "vmovupd %%zmm25, 64(%%rdx)\n\t"        // C[1,:]
    "vmovupd %%zmm26, 128(%%rdx)\n\t"       // C[2,:]
    "vmovupd %%zmm27, 192(%%rdx)\n\t"       // C[3,:]
    "vmovupd %%zmm28, 256(%%rdx)\n\t"       // C[4,:]
    "vmovupd %%zmm29, 320(%%rdx)\n\t"       // C[5,:]
    "vmovupd %%zmm30, 384(%%rdx)\n\t"       // C[6,:]
    "vmovupd %%zmm31, 448(%%rdx)\n\t"       // C[7,:]

    :
    : "m"(xs)
    : "rdx","zmm0","zmm1","zmm17","zmm18","zmm19","zmm2","zmm20","zmm21","zmm22","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8");

  std::cout << std::endl << "xs = " << std::endl;
  for (int r=0; r<8; r++){
    for (int c=0; c<8; c++){
      std::cout << xs[r*8+c] << ", ";
    } 
    std::cout << std::endl;     
  }
}


void rowmajor_spxd(const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"    // A
    "movq %1, %%rsi\n\t"    // B
    "movq %2, %%rdx\n\t"    // C

    // Gather entire C-block
    "vmovapd 0(%%rdx), %%zmm24\n\t"         // C[0,:]
    "vmovapd 64(%%rdx), %%zmm25\n\t"        // C[1,:]
    "vmovapd 128(%%rdx), %%zmm26\n\t"       // C[2,:]
    "vmovapd 192(%%rdx), %%zmm27\n\t"       // C[3,:]
    "vmovapd 256(%%rdx), %%zmm28\n\t"       // C[4,:]
    "vmovapd 320(%%rdx), %%zmm29\n\t"       // C[5,:]
    "vmovapd 384(%%rdx), %%zmm30\n\t"       // C[6,:]
    "vmovapd 448(%%rdx), %%zmm31\n\t"       // C[7,:]

    // Gather B[ki,:] for all ki
    "vmovapd 0(%%rsi), %%zmm0\n\t"          // B[0,:]
    "vmovapd 64(%%rsi), %%zmm1\n\t"         // B[1,:]
    "vmovapd 128(%%rsi), %%zmm2\n\t"        // B[2,:]
    "vmovapd 192(%%rsi), %%zmm3\n\t"        // B[3,:]
    "vmovapd 256(%%rsi), %%zmm4\n\t"        // B[4,:]
    "vmovapd 320(%%rsi), %%zmm5\n\t"        // B[4,:]
    "vmovapd 384(%%rsi), %%zmm6\n\t"        // B[4,:]
    "vmovapd 448(%%rsi), %%zmm7\n\t"        // B[4,:]

    // C[0,:] += broadcast(A[ri,0]) * B[0,:] for ri in range(r) if A[ri,0] != 0
    "vfmadd231pd 0(%%rdi)%{1to8%}, %%zmm0, %%zmm24\n\t"       // C[0,:] += A[0,0] .* B[0,:]
    "vfmadd231pd 8(%%rdi)%{1to8%}, %%zmm0, %%zmm31\n\t"       // C[7,:] += A[7,0] .* B[0,:]

    // C[1,:] += broadcast(A[ri,1]) * B[1,:] for ri in range(r) if A[ri,1] != 0
    "vfmadd231pd 16(%%rdi)%{1to8%}, %%zmm1, %%zmm25\n\t"       // C[1,:] += A[1,1] * B[1,:]
    "vfmadd231pd 24(%%rdi)%{1to8%}, %%zmm1, %%zmm27\n\t"       // C[3,:] += A[3,1] * B[1,:]

    // C[2,:] += broadcast(A[ri,2]) * B[2,:] for ri in range(r) if A[ri,2] != 0
    "vfmadd231pd 32(%%rdi)%{1to8%}, %%zmm2, %%zmm26\n\t"       // C[2,:] += A[2,2] * B[2,:]
    "vfmadd231pd 40(%%rdi)%{1to8%}, %%zmm2, %%zmm31\n\t"       // C[7,:] += A[7,2] * B[2,:]

    // C[3,:] += broadcast(A[ri,3]) * B[3,:] for ri in range(r) if A[ri,3] != 0
    "vfmadd231pd 48(%%rdi)%{1to8%}, %%zmm3, %%zmm25\n\t"       // C[1,:] += A[1,3] * B[3,:]
    "vfmadd231pd 56(%%rdi)%{1to8%}, %%zmm3, %%zmm27\n\t"       // C[3,:] += A[3,3] * B[3,:]

    // C[4,:] += broadcast(A[ri,4]) * B[4,:] for ri in range(r) if A[ri,4] != 0
    "vfmadd231pd 64(%%rdi)%{1to8%}, %%zmm4, %%zmm28\n\t"       // C[4,:] += A[4,4] * B[4,:]
    "vfmadd231pd 72(%%rdi)%{1to8%}, %%zmm4, %%zmm31\n\t"       // C[7,:] += A[7,4] * B[4,:]

    // C[5,:] += broadcast(A[ri,5]) * B[5,:] for ri in range(r) if A[ri,5] != 0
    "vfmadd231pd 80(%%rdi)%{1to8%}, %%zmm5, %%zmm29\n\t"       // C[5,:] += A[5,5] * B[5,:]

    // C[6,:] += broadcast(A[ri,6]) * B[6,:] for ri in range(r) if A[ri,6] != 0
    "vfmadd231pd 88(%%rdi)%{1to8%}, %%zmm6, %%zmm30\n\t"       // C[6,:] += A[6,6] * B[6,:]

    // C[7,:] += broadcast(A[ri,7]) * B[7,:] for ri in range(r) if A[ri,7] != 0
    "vfmadd231pd 96(%%rdi)%{1to8%}, %%zmm7, %%zmm24\n\t"       // C[0,:] += A[0,7] * B[7,:]
    "vfmadd231pd 104(%%rdi)%{1to8%}, %%zmm7, %%zmm26\n\t"      // C[2,:] += A[2,7] * B[7,:]
    "vfmadd231pd 112(%%rdi)%{1to8%}, %%zmm7, %%zmm28\n\t"      // C[4,:] += A[4,7] * B[7,:]
    "vfmadd231pd 120(%%rdi)%{1to8%}, %%zmm7, %%zmm31\n\t"      // C[7,:] += A[7,7] * B[7,:]

    // Scatter entire C-block
    "vmovapd %%zmm24, 0(%%rdx)\n\t"         // C[0,:]
    "vmovapd %%zmm25, 64(%%rdx)\n\t"        // C[1,:]
    "vmovapd %%zmm26, 128(%%rdx)\n\t"       // C[2,:]
    "vmovapd %%zmm27, 192(%%rdx)\n\t"       // C[3,:]
    "vmovapd %%zmm28, 256(%%rdx)\n\t"       // C[4,:]
    "vmovapd %%zmm29, 320(%%rdx)\n\t"       // C[5,:]
    "vmovapd %%zmm30, 384(%%rdx)\n\t"       // C[6,:]
    "vmovapd %%zmm31, 448(%%rdx)\n\t"       // C[7,:]

    : : "m"(A), "m"(B), "m"(C) : "zmm0","zmm1","zmm17","zmm18","zmm19","zmm2","zmm20","zmm21","zmm22","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8");
};



void gatherscatter_spxd(const double* A, const double* B, double* C) {


  int indices_underlying[16] = {0,8,16,24,32,40,48,56,0,0,0,0,0,0,0,0};
  int * indices = indices_underlying;

  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"    // A
    "movq %1, %%rsi\n\t"    // B
    "movq %2, %%rdx\n\t"    // C
    "movq %3, %%r12\n\t"    // indices

    "vmovdqu32 0(%%r12), %%zmm20\n\t"    // get indices, need 16 for no good reason

    // Gather entire C-block
    "kxnorw %%k0, %%k0, %%k1\n\t"  // set k1=all true. 
    "kxnorw %%k0, %%k0, %%k2\n\t"  // set k2=all true. 
    "kxnorw %%k0, %%k0, %%k3\n\t"  // set k3=all true. 
    "kxnorw %%k0, %%k0, %%k4\n\t"  // set k4=all true. 

    "vpgatherdq 0(%%rdx,%%ymm20,8), %%zmm24%{%%k1%}\n\t"    // C[0,:]
    "vpgatherdq 8(%%rdx,%%ymm20,8), %%zmm25%{%%k2%}\n\t"    // C[1,:]
    "vpgatherdq 16(%%rdx,%%ymm20,8), %%zmm26%{%%k3%}\n\t"   // C[2,:]
    "vpgatherdq 24(%%rdx,%%ymm20,8), %%zmm27%{%%k4%}\n\t"   // C[3,:]

    "kxnorw %%k0, %%k0, %%k1\n\t"  // set k1=all true. 
    "kxnorw %%k0, %%k0, %%k2\n\t"  // set k2=all true. 
    "kxnorw %%k0, %%k0, %%k3\n\t"  // set k3=all true. 
    "kxnorw %%k0, %%k0, %%k4\n\t"  // set k4=all true. 

    "vpgatherdq 0(%%rdx,%%ymm20,8), %%zmm28%{%%k1%}\n\t"    // C[4,:]
    "vpgatherdq 0(%%rdx,%%ymm20,8), %%zmm29%{%%k2%}\n\t"    // C[5,:]
    "vpgatherdq 0(%%rdx,%%ymm20,8), %%zmm30%{%%k3%}\n\t"    // C[6,:]
    "vpgatherdq 0(%%rdx,%%ymm20,8), %%zmm31%{%%k4%}\n\t"    // C[7,:]



    // Gather B[ki,:] for all ki
    "kxnorw %%k0, %%k0, %%k1\n\t"
    "kxnorw %%k0, %%k0, %%k2\n\t"
    "kxnorw %%k0, %%k0, %%k3\n\t"
    "kxnorw %%k0, %%k0, %%k4\n\t"

    "vpgatherdq 0(%%rsi,%%ymm20,8), %%zmm0%{%%k1%}\n\t"    // B[0,:]
    "vpgatherdq 8(%%rsi,%%ymm20,8), %%zmm1%{%%k2%}\n\t"    // B[1,:]
    "vpgatherdq 16(%%rsi,%%ymm20,8), %%zmm2%{%%k3%}\n\t"   // B[2,:]
    "vpgatherdq 24(%%rsi,%%ymm20,8), %%zmm3%{%%k4%}\n\t"   // B[3,:]

    "kxnorw %%k0, %%k0, %%k1\n\t"
    "kxnorw %%k0, %%k0, %%k2\n\t"
    "kxnorw %%k0, %%k0, %%k3\n\t"
    "kxnorw %%k0, %%k0, %%k4\n\t"

    "vpgatherdq 32(%%rsi,%%ymm20,8), %%zmm4%{%%k1%}\n\t"    // B[4,:]
    "vpgatherdq 40(%%rsi,%%ymm20,8), %%zmm5%{%%k2%}\n\t"    // B[5,:]
    "vpgatherdq 48(%%rsi,%%ymm20,8), %%zmm6%{%%k3%}\n\t"    // B[6,:]
    "vpgatherdq 56(%%rsi,%%ymm20,8), %%zmm7%{%%k4%}\n\t"    // B[7,:]



    // C[0,:] += broadcast(A[ri,0]) * B[0,:] for ri in range(r) if A[ri,0] != 0
    "vfmadd231pd 0(%%rdi)%{1to8%}, %%zmm0, %%zmm24\n\t"       // C[0,:] += A[0,0] .* B[0,:]
    "vfmadd231pd 8(%%rdi)%{1to8%}, %%zmm0, %%zmm31\n\t"       // C[7,:] += A[7,0] .* B[0,:]

    // C[1,:] += broadcast(A[ri,1]) * B[1,:] for ri in range(r) if A[ri,1] != 0
    "vfmadd231pd 16(%%rdi)%{1to8%}, %%zmm1, %%zmm25\n\t"       // C[1,:] += A[1,1] * B[1,:]
    "vfmadd231pd 24(%%rdi)%{1to8%}, %%zmm1, %%zmm27\n\t"       // C[3,:] += A[3,1] * B[1,:]

    // C[2,:] += broadcast(A[ri,2]) * B[2,:] for ri in range(r) if A[ri,2] != 0
    "vfmadd231pd 32(%%rdi)%{1to8%}, %%zmm2, %%zmm26\n\t"       // C[2,:] += A[2,2] * B[2,:]
    "vfmadd231pd 40(%%rdi)%{1to8%}, %%zmm2, %%zmm31\n\t"       // C[7,:] += A[7,2] * B[2,:]

    // C[3,:] += broadcast(A[ri,3]) * B[3,:] for ri in range(r) if A[ri,3] != 0
    "vfmadd231pd 48(%%rdi)%{1to8%}, %%zmm3, %%zmm25\n\t"       // C[1,:] += A[1,3] * B[3,:]
    "vfmadd231pd 56(%%rdi)%{1to8%}, %%zmm3, %%zmm27\n\t"       // C[3,:] += A[3,3] * B[3,:]

    // C[4,:] += broadcast(A[ri,4]) * B[4,:] for ri in range(r) if A[ri,4] != 0
    "vfmadd231pd 64(%%rdi)%{1to8%}, %%zmm4, %%zmm28\n\t"       // C[4,:] += A[4,4] * B[4,:]
    "vfmadd231pd 72(%%rdi)%{1to8%}, %%zmm4, %%zmm31\n\t"       // C[7,:] += A[7,4] * B[4,:]

    // C[5,:] += broadcast(A[ri,5]) * B[5,:] for ri in range(r) if A[ri,5] != 0
    "vfmadd231pd 80(%%rdi)%{1to8%}, %%zmm5, %%zmm29\n\t"       // C[5,:] += A[5,5] * B[5,:]

    // C[6,:] += broadcast(A[ri,6]) * B[6,:] for ri in range(r) if A[ri,6] != 0
    "vfmadd231pd 88(%%rdi)%{1to8%}, %%zmm6, %%zmm30\n\t"       // C[6,:] += A[6,6] * B[6,:]

    // C[7,:] += broadcast(A[ri,7]) * B[7,:] for ri in range(r) if A[ri,7] != 0
    "vfmadd231pd 96(%%rdi)%{1to8%}, %%zmm7, %%zmm24\n\t"       // C[0,:] += A[0,7] * B[7,:]
    "vfmadd231pd 104(%%rdi)%{1to8%}, %%zmm7, %%zmm26\n\t"      // C[2,:] += A[2,7] * B[7,:]
    "vfmadd231pd 112(%%rdi)%{1to8%}, %%zmm7, %%zmm28\n\t"      // C[4,:] += A[4,7] * B[7,:]
    "vfmadd231pd 120(%%rdi)%{1to8%}, %%zmm7, %%zmm31\n\t"      // C[7,:] += A[7,7] * B[7,:]

    // Scatter entire C-block
    "kxnorw %%k0, %%k0, %%k1\n\t"
    "kxnorw %%k0, %%k0, %%k2\n\t"
    "kxnorw %%k0, %%k0, %%k3\n\t"
    "kxnorw %%k0, %%k0, %%k4\n\t"

    "vpscatterdq %%zmm24, 0(%%rdx,%%ymm20,8)%{%%k1%}\n\t"    // C[0,:]
    "vpscatterdq %%zmm25, 8(%%rdx,%%ymm20,8)%{%%k2%}\n\t"    // C[1,:]
    "vpscatterdq %%zmm26, 16(%%rdx,%%ymm20,8)%{%%k3%}\n\t"   // C[2,:]
    "vpscatterdq %%zmm27, 24(%%rdx,%%ymm20,8)%{%%k4%}\n\t"   // C[3,:]

    "kxnorw %%k0, %%k0, %%k1\n\t"
    "kxnorw %%k0, %%k0, %%k2\n\t"
    "kxnorw %%k0, %%k0, %%k3\n\t"
    "kxnorw %%k0, %%k0, %%k4\n\t"

    "vpscatterdq %%zmm28, 32(%%rdx,%%ymm20,8)%{%%k1%}\n\t"    // C[4,:]
    "vpscatterdq %%zmm29, 40(%%rdx,%%ymm20,8)%{%%k2%}\n\t"    // C[5,:]
    "vpscatterdq %%zmm30, 48(%%rdx,%%ymm20,8)%{%%k3%}\n\t"    // C[6,:]
    "vpscatterdq %%zmm31, 56(%%rdx,%%ymm20,8)%{%%k4%}\n\t"    // C[7,:]

    : 
    : "m"(A), "m"(B), "m"(C), "m"(indices)
    : "rdx","rdi","rsi","r12","k1","k2","k3","k4","zmm0","zmm1","zmm17","zmm18","zmm19","zmm2","zmm20","zmm21","zmm22","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8");
};



void registertranspose_spxd(const double* A, const double* B, double* C) {

  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"    // A
    "movq %1, %%rsi\n\t"    // B
    "movq %2, %%rdx\n\t"    // C

    // Gather entire C-block
    "vmovapd 0(%%rdx), %%zmm24\n\t"         // C[0,:]
    "vmovapd 64(%%rdx), %%zmm25\n\t"        // C[1,:]
    "vmovapd 128(%%rdx), %%zmm26\n\t"       // C[2,:]
    "vmovapd 192(%%rdx), %%zmm27\n\t"       // C[3,:]
    "vmovapd 256(%%rdx), %%zmm28\n\t"       // C[4,:]
    "vmovapd 320(%%rdx), %%zmm29\n\t"       // C[5,:]
    "vmovapd 384(%%rdx), %%zmm30\n\t"       // C[6,:]
    "vmovapd 448(%%rdx), %%zmm31\n\t"       // C[7,:]

    // Gather B[ki,:] for all ki
    "vmovapd 0(%%rsi), %%zmm0\n\t"          // B[0,:]
    "vmovapd 64(%%rsi), %%zmm1\n\t"         // B[1,:]
    "vmovapd 128(%%rsi), %%zmm2\n\t"        // B[2,:]
    "vmovapd 192(%%rsi), %%zmm3\n\t"        // B[3,:]
    "vmovapd 256(%%rsi), %%zmm4\n\t"        // B[4,:]
    "vmovapd 320(%%rsi), %%zmm5\n\t"        // B[4,:]
    "vmovapd 384(%%rsi), %%zmm6\n\t"        // B[4,:]
    "vmovapd 448(%%rsi), %%zmm7\n\t"        // B[4,:]

    // Transpose C block
    // Transpose B block


    // C[0,:] += broadcast(A[ri,0]) * B[0,:] for ri in range(r) if A[ri,0] != 0
    "vfmadd231pd 0(%%rdi)%{1to8%}, %%zmm0, %%zmm24\n\t"       // C[0,:] += A[0,0] .* B[0,:]
    "vfmadd231pd 8(%%rdi)%{1to8%}, %%zmm0, %%zmm31\n\t"       // C[7,:] += A[7,0] .* B[0,:]

    // C[1,:] += broadcast(A[ri,1]) * B[1,:] for ri in range(r) if A[ri,1] != 0
    "vfmadd231pd 16(%%rdi)%{1to8%}, %%zmm1, %%zmm25\n\t"       // C[1,:] += A[1,1] * B[1,:]
    "vfmadd231pd 24(%%rdi)%{1to8%}, %%zmm1, %%zmm27\n\t"       // C[3,:] += A[3,1] * B[1,:]

    // C[2,:] += broadcast(A[ri,2]) * B[2,:] for ri in range(r) if A[ri,2] != 0
    "vfmadd231pd 32(%%rdi)%{1to8%}, %%zmm2, %%zmm26\n\t"       // C[2,:] += A[2,2] * B[2,:]
    "vfmadd231pd 40(%%rdi)%{1to8%}, %%zmm2, %%zmm31\n\t"       // C[7,:] += A[7,2] * B[2,:]

    // C[3,:] += broadcast(A[ri,3]) * B[3,:] for ri in range(r) if A[ri,3] != 0
    "vfmadd231pd 48(%%rdi)%{1to8%}, %%zmm3, %%zmm25\n\t"       // C[1,:] += A[1,3] * B[3,:]
    "vfmadd231pd 56(%%rdi)%{1to8%}, %%zmm3, %%zmm27\n\t"       // C[3,:] += A[3,3] * B[3,:]

    // C[4,:] += broadcast(A[ri,4]) * B[4,:] for ri in range(r) if A[ri,4] != 0
    "vfmadd231pd 64(%%rdi)%{1to8%}, %%zmm4, %%zmm28\n\t"       // C[4,:] += A[4,4] * B[4,:]
    "vfmadd231pd 72(%%rdi)%{1to8%}, %%zmm4, %%zmm31\n\t"       // C[7,:] += A[7,4] * B[4,:]

    // C[5,:] += broadcast(A[ri,5]) * B[5,:] for ri in range(r) if A[ri,5] != 0
    "vfmadd231pd 80(%%rdi)%{1to8%}, %%zmm5, %%zmm29\n\t"       // C[5,:] += A[5,5] * B[5,:]

    // C[6,:] += broadcast(A[ri,6]) * B[6,:] for ri in range(r) if A[ri,6] != 0
    "vfmadd231pd 88(%%rdi)%{1to8%}, %%zmm6, %%zmm30\n\t"       // C[6,:] += A[6,6] * B[6,:]

    // C[7,:] += broadcast(A[ri,7]) * B[7,:] for ri in range(r) if A[ri,7] != 0
    "vfmadd231pd 96(%%rdi)%{1to8%}, %%zmm7, %%zmm24\n\t"       // C[0,:] += A[0,7] * B[7,:]
    "vfmadd231pd 104(%%rdi)%{1to8%}, %%zmm7, %%zmm26\n\t"      // C[2,:] += A[2,7] * B[7,:]
    "vfmadd231pd 112(%%rdi)%{1to8%}, %%zmm7, %%zmm28\n\t"      // C[4,:] += A[4,7] * B[7,:]
    "vfmadd231pd 120(%%rdi)%{1to8%}, %%zmm7, %%zmm31\n\t"      // C[7,:] += A[7,7] * B[7,:]

    // Transpose C block

    // Scatter entire C-block
    "vmovapd %%zmm24, 0(%%rdx)\n\t"         // C[0,:]
    "vmovapd %%zmm25, 64(%%rdx)\n\t"        // C[1,:]
    "vmovapd %%zmm26, 128(%%rdx)\n\t"       // C[2,:]
    "vmovapd %%zmm27, 192(%%rdx)\n\t"       // C[3,:]
    "vmovapd %%zmm28, 256(%%rdx)\n\t"       // C[4,:]
    "vmovapd %%zmm29, 320(%%rdx)\n\t"       // C[5,:]
    "vmovapd %%zmm30, 384(%%rdx)\n\t"       // C[6,:]
    "vmovapd %%zmm31, 448(%%rdx)\n\t"       // C[7,:]

    : 
    : "m"(A), "m"(B), "m"(C)
    : "rdx","rdi","rsi","r12","k1","k2","k3","k4","zmm0","zmm1","zmm17","zmm18","zmm19","zmm2","zmm20","zmm21","zmm22","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8");
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
    //test_rowmajor_spxd();
    //test_gatherscatter_spxd();
    //test_libxsmm_dense();
    //test_libxsmm_sparse();
    return 0;
}




