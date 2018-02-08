void libxsmm(const double* A, const double* B, double* C) {
#ifdef __AVX512F__
  __asm__ __volatile__("movq %0, %%rdi\n\t"
                       "movq %1, %%rsi\n\t"
                       "movq %2, %%rdx\n\t"
                       "movq $0, %%r12\n\t"
                       "movq $0, %%r13\n\t"
                       "movq $0, %%r14\n\t"
                       "0:\n\t"
                       "addq $8, %%r12\n\t"
                       "vmovapd 0(%%rdx), %%zmm17\n\t"
                       "vmovapd 320(%%rdx), %%zmm18\n\t"
                       "vmovapd 640(%%rdx), %%zmm19\n\t"
                       "vmovapd 960(%%rdx), %%zmm20\n\t"
                       "vmovapd 1280(%%rdx), %%zmm21\n\t"
                       "vmovapd 1600(%%rdx), %%zmm22\n\t"
                       "vmovapd 1920(%%rdx), %%zmm23\n\t"
                       "vmovapd 2240(%%rdx), %%zmm24\n\t"
                       "vmovapd 2560(%%rdx), %%zmm25\n\t"
                       "vmovapd 2880(%%rdx), %%zmm26\n\t"
                       "vmovapd 3200(%%rdx), %%zmm27\n\t"
                       "vmovapd 3520(%%rdx), %%zmm28\n\t"
                       "vmovapd 3840(%%rdx), %%zmm29\n\t"
                       "vmovapd 4160(%%rdx), %%zmm30\n\t"
                       "vmovapd 4480(%%rdx), %%zmm31\n\t"
                       "movq $72, %%r15\n\t"
                       "movq $216, %%rax\n\t"
                       "movq $360, %%rbx\n\t"
                       "movq $504, %%r11\n\t"
                       "movq %%rsi, %%r10\n\t"
                       "addq $648, %%r10\n\t"
                       "vmovapd 0(%%rdi), %%zmm0\n\t"
                       "vmovapd 320(%%rdi), %%zmm1\n\t"
                       "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 0(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 0(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 0(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 0(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 0(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 0(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 0(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 0(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 0(%%r10)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 0(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 0(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 0(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 0(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 0(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 640(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm17\n\t"
                       "vfmadd231pd 8(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm18\n\t"
                       "vfmadd231pd 8(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm19\n\t"
                       "vfmadd231pd 8(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm20\n\t"
                       "vfmadd231pd 8(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm21\n\t"
                       "vfmadd231pd 8(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm22\n\t"
                       "vfmadd231pd 8(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 8(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 8(%%rsi,%%r15,8)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 8(%%r10)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 8(%%r10,%%r15,1)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 8(%%r10,%%r15,2)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 8(%%r10,%%rax,1)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 8(%%r10,%%r15,4)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 8(%%r10,%%rbx,1)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vmovapd 960(%%rdi), %%zmm1\n\t"
                       "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 16(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 16(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 16(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 16(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 16(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 16(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 16(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 16(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 16(%%r10)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 16(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 16(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 16(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 16(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 16(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 1280(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm1, %%zmm17\n\t"
                       "vfmadd231pd 24(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm18\n\t"
                       "vfmadd231pd 24(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm19\n\t"
                       "vfmadd231pd 24(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm20\n\t"
                       "vfmadd231pd 24(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm21\n\t"
                       "vfmadd231pd 24(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm22\n\t"
                       "vfmadd231pd 24(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 24(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 24(%%rsi,%%r15,8)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 24(%%r10)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 24(%%r10,%%r15,1)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 24(%%r10,%%r15,2)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 24(%%r10,%%rax,1)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 24(%%r10,%%r15,4)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 24(%%r10,%%rbx,1)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vmovapd 1600(%%rdi), %%zmm1\n\t"
                       "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 32(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 32(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 32(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 32(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 32(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 32(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 32(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 32(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 32(%%r10)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 32(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 32(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 32(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 32(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 32(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 1920(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm17\n\t"
                       "vfmadd231pd 40(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm18\n\t"
                       "vfmadd231pd 40(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm19\n\t"
                       "vfmadd231pd 40(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm20\n\t"
                       "vfmadd231pd 40(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm21\n\t"
                       "vfmadd231pd 40(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm22\n\t"
                       "vfmadd231pd 40(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 40(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 40(%%rsi,%%r15,8)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 40(%%r10)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 40(%%r10,%%r15,1)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 40(%%r10,%%r15,2)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 40(%%r10,%%rax,1)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 40(%%r10,%%r15,4)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 40(%%r10,%%rbx,1)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vmovapd 2240(%%rdi), %%zmm1\n\t"
                       "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 48(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 48(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 48(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 48(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 48(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 48(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 48(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 48(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 48(%%r10)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 48(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 48(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 48(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 48(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 48(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 2560(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm17\n\t"
                       "vfmadd231pd 56(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm18\n\t"
                       "vfmadd231pd 56(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm19\n\t"
                       "vfmadd231pd 56(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm20\n\t"
                       "vfmadd231pd 56(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm21\n\t"
                       "vfmadd231pd 56(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm22\n\t"
                       "vfmadd231pd 56(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 56(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 56(%%rsi,%%r15,8)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 56(%%r10)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 56(%%r10,%%r15,1)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 56(%%r10,%%r15,2)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 56(%%r10,%%rax,1)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 56(%%r10,%%r15,4)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 56(%%r10,%%rbx,1)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 64(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 64(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 64(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 64(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 64(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 64(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 64(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 64(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 64(%%r10)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 64(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 64(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 64(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 64(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 64(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd %%zmm17, 0(%%rdx)\n\t"
                       "vmovapd %%zmm18, 320(%%rdx)\n\t"
                       "vmovapd %%zmm19, 640(%%rdx)\n\t"
                       "vmovapd %%zmm20, 960(%%rdx)\n\t"
                       "vmovapd %%zmm21, 1280(%%rdx)\n\t"
                       "vmovapd %%zmm22, 1600(%%rdx)\n\t"
                       "vmovapd %%zmm23, 1920(%%rdx)\n\t"
                       "vmovapd %%zmm24, 2240(%%rdx)\n\t"
                       "vmovapd %%zmm25, 2560(%%rdx)\n\t"
                       "vmovapd %%zmm26, 2880(%%rdx)\n\t"
                       "vmovapd %%zmm27, 3200(%%rdx)\n\t"
                       "vmovapd %%zmm28, 3520(%%rdx)\n\t"
                       "vmovapd %%zmm29, 3840(%%rdx)\n\t"
                       "vmovapd %%zmm30, 4160(%%rdx)\n\t"
                       "vmovapd %%zmm31, 4480(%%rdx)\n\t"
                       "addq $64, %%rdx\n\t"
                       "addq $64, %%rdi\n\t"
                       "cmpq $40, %%r12\n\t"
                       "jl 0b\n\t"
                       : : "m"(A), "m"(B), "m"(C) : "k1","rax","rbx","rcx","rdx","rdi","rsi","r8","r9","r10","r11","r12","r13","r14","r15","zmm0","zmm1","zmm2","zmm3","zmm4","zmm5","zmm6","zmm7","zmm8","zmm9","zmm10","zmm11","zmm12","zmm13","zmm14","zmm15","zmm16","zmm17","zmm18","zmm19","zmm20","zmm21","zmm22","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm30","zmm31");
#else
#pragma message ("LIBXSMM KERNEL COMPILATION ERROR in: " __FILE__)
#error No kernel was compiled, lacking support for current architecture?
#endif

#ifndef NDEBUG
#ifdef _OPENMP
#pragma omp atomic
#endif
libxsmm_num_total_flops += 10800;
#endif
}

void breuer(const double* A, const double* B, double* C) {
  unsigned int l_m = 0;

  #pragma simd vectorlength(32)
  #pragma vector aligned
  for ( l_m = 0; l_m < 40; l_m++) {
    C[0+l_m] += A[240+l_m] * B[0];
    C[0+l_m] += A[280+l_m] * B[1];
    C[0+l_m] += A[320+l_m] * B[2];
    C[40+l_m] += A[240+l_m] * B[3];
    C[40+l_m] += A[280+l_m] * B[4];
    C[40+l_m] += A[320+l_m] * B[5];
    C[80+l_m] += A[240+l_m] * B[6];
    C[80+l_m] += A[280+l_m] * B[7];
    C[80+l_m] += A[320+l_m] * B[8];
    C[120+l_m] += A[240+l_m] * B[9];
    C[120+l_m] += A[280+l_m] * B[10];
    C[160+l_m] += A[280+l_m] * B[11];
    C[160+l_m] += A[320+l_m] * B[12];
    C[200+l_m] += A[240+l_m] * B[13];
    C[200+l_m] += A[320+l_m] * B[14];
    C[240+l_m] += A[0+l_m] * B[15];
    C[240+l_m] += A[120+l_m] * B[16];
    C[240+l_m] += A[200+l_m] * B[17];
    C[280+l_m] += A[40+l_m] * B[18];
    C[280+l_m] += A[120+l_m] * B[19];
    C[280+l_m] += A[160+l_m] * B[20];
    C[320+l_m] += A[80+l_m] * B[21];
    C[320+l_m] += A[120+l_m] * B[22];
    C[320+l_m] += A[160+l_m] * B[23];
    C[320+l_m] += A[200+l_m] * B[24];
    C[360+l_m] += A[240+l_m] * B[25];
    C[400+l_m] += A[280+l_m] * B[26];
    C[440+l_m] += A[320+l_m] * B[27];
    C[480+l_m] += A[240+l_m] * B[28];
    C[480+l_m] += A[280+l_m] * B[29];
    C[520+l_m] += A[280+l_m] * B[30];
    C[520+l_m] += A[320+l_m] * B[31];
    C[560+l_m] += A[240+l_m] * B[32];
    C[560+l_m] += A[320+l_m] * B[33];
  }

#ifndef NDEBUG
#ifdef _OPENMP
#pragma omp atomic
#endif
libxsmm_num_total_flops += 2720;
#endif
}

