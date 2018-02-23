void exp_seissol_star9x15_libxsmm(const double* A, const double* B, double* C) {
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

void exp_seissol_star9x15_breuer_old(const double* A, const double* B, double* C) {
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

void exp_seissol_star9x15_breuer_fixed(const double* A, const double* B, double* C) {
  unsigned int l_m = 0;

  #pragma simd vectorlength(64)
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

void exp_seissol_star9x9_libxsmm(const double* A, const double* B, double* C) {
#ifdef __AVX512F__
  __asm__ __volatile__("movq %0, %%rdi\n\t"
                       "movq %1, %%rsi\n\t"
                       "movq %2, %%rdx\n\t"
                       "movq $0, %%r12\n\t"
                       "movq $0, %%r13\n\t"
                       "movq $0, %%r14\n\t"
                       "0:\n\t"
                       "addq $8, %%r12\n\t"
                       "vmovapd 0(%%rdx), %%zmm23\n\t"
                       "vmovapd 320(%%rdx), %%zmm24\n\t"
                       "vmovapd 640(%%rdx), %%zmm25\n\t"
                       "vmovapd 960(%%rdx), %%zmm26\n\t"
                       "vmovapd 1280(%%rdx), %%zmm27\n\t"
                       "vmovapd 1600(%%rdx), %%zmm28\n\t"
                       "vmovapd 1920(%%rdx), %%zmm29\n\t"
                       "vmovapd 2240(%%rdx), %%zmm30\n\t"
                       "vmovapd 2560(%%rdx), %%zmm31\n\t"
                       "vmovapd 0(%%rdi), %%zmm0\n\t"
                       "vmovapd 320(%%rdi), %%zmm1\n\t"
                       "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 432(%%rsi)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 504(%%rsi)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 576(%%rsi)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 640(%%rdi), %%zmm2\n\t"
                       "vmovapd 960(%%rdi), %%zmm3\n\t"
                       "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 440(%%rsi)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 512(%%rsi)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 584(%%rsi)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vmovapd 1280(%%rdi), %%zmm4\n\t"
                       "vmovapd 1600(%%rdi), %%zmm5\n\t"
                       "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm23\n\t"
                       "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm2, %%zmm24\n\t"
                       "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm2, %%zmm25\n\t"
                       "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm2, %%zmm26\n\t"
                       "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm2, %%zmm27\n\t"
                       "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm2, %%zmm28\n\t"
                       "vfmadd231pd 448(%%rsi)%{1to8%}, %%zmm2, %%zmm29\n\t"
                       "vfmadd231pd 520(%%rsi)%{1to8%}, %%zmm2, %%zmm30\n\t"
                       "vfmadd231pd 592(%%rsi)%{1to8%}, %%zmm2, %%zmm31\n\t"
                       "vmovapd 1920(%%rdi), %%zmm6\n\t"
                       "vmovapd 2240(%%rdi), %%zmm7\n\t"
                       "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm23\n\t"
                       "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm24\n\t"
                       "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm3, %%zmm25\n\t"
                       "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm3, %%zmm26\n\t"
                       "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm3, %%zmm27\n\t"
                       "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm3, %%zmm28\n\t"
                       "vfmadd231pd 456(%%rsi)%{1to8%}, %%zmm3, %%zmm29\n\t"
                       "vfmadd231pd 528(%%rsi)%{1to8%}, %%zmm3, %%zmm30\n\t"
                       "vfmadd231pd 600(%%rsi)%{1to8%}, %%zmm3, %%zmm31\n\t"
                       "vmovapd 2560(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm4, %%zmm23\n\t"
                       "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm4, %%zmm24\n\t"
                       "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm4, %%zmm25\n\t"
                       "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm4, %%zmm26\n\t"
                       "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm4, %%zmm27\n\t"
                       "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm4, %%zmm28\n\t"
                       "vfmadd231pd 464(%%rsi)%{1to8%}, %%zmm4, %%zmm29\n\t"
                       "vfmadd231pd 536(%%rsi)%{1to8%}, %%zmm4, %%zmm30\n\t"
                       "vfmadd231pd 608(%%rsi)%{1to8%}, %%zmm4, %%zmm31\n\t"
                       "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm5, %%zmm23\n\t"
                       "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm24\n\t"
                       "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm5, %%zmm25\n\t"
                       "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm5, %%zmm26\n\t"
                       "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm5, %%zmm27\n\t"
                       "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm5, %%zmm28\n\t"
                       "vfmadd231pd 472(%%rsi)%{1to8%}, %%zmm5, %%zmm29\n\t"
                       "vfmadd231pd 544(%%rsi)%{1to8%}, %%zmm5, %%zmm30\n\t"
                       "vfmadd231pd 616(%%rsi)%{1to8%}, %%zmm5, %%zmm31\n\t"
                       "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm6, %%zmm23\n\t"
                       "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm6, %%zmm24\n\t"
                       "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm6, %%zmm25\n\t"
                       "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm6, %%zmm26\n\t"
                       "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm6, %%zmm27\n\t"
                       "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm6, %%zmm28\n\t"
                       "vfmadd231pd 480(%%rsi)%{1to8%}, %%zmm6, %%zmm29\n\t"
                       "vfmadd231pd 552(%%rsi)%{1to8%}, %%zmm6, %%zmm30\n\t"
                       "vfmadd231pd 624(%%rsi)%{1to8%}, %%zmm6, %%zmm31\n\t"
                       "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm7, %%zmm23\n\t"
                       "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm7, %%zmm24\n\t"
                       "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm7, %%zmm25\n\t"
                       "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm7, %%zmm26\n\t"
                       "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm7, %%zmm27\n\t"
                       "vfmadd231pd 416(%%rsi)%{1to8%}, %%zmm7, %%zmm28\n\t"
                       "vfmadd231pd 488(%%rsi)%{1to8%}, %%zmm7, %%zmm29\n\t"
                       "vfmadd231pd 560(%%rsi)%{1to8%}, %%zmm7, %%zmm30\n\t"
                       "vfmadd231pd 632(%%rsi)%{1to8%}, %%zmm7, %%zmm31\n\t"
                       "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 424(%%rsi)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 496(%%rsi)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 568(%%rsi)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 640(%%rsi)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd %%zmm23, 0(%%rdx)\n\t"
                       "vmovapd %%zmm24, 320(%%rdx)\n\t"
                       "vmovapd %%zmm25, 640(%%rdx)\n\t"
                       "vmovapd %%zmm26, 960(%%rdx)\n\t"
                       "vmovapd %%zmm27, 1280(%%rdx)\n\t"
                       "vmovapd %%zmm28, 1600(%%rdx)\n\t"
                       "vmovapd %%zmm29, 1920(%%rdx)\n\t"
                       "vmovapd %%zmm30, 2240(%%rdx)\n\t"
                       "vmovapd %%zmm31, 2560(%%rdx)\n\t"
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
libxsmm_num_total_flops += 6480;
#endif
}

void exp_seissol_star9x9_breuer_old(const double* A, const double* B, double* C) {
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
  }

#ifndef NDEBUG
#ifdef _OPENMP
#pragma omp atomic
#endif
libxsmm_num_total_flops += 2000;
#endif
}

void exp_seissol_star9x9_breuer_fixed(const double* A, const double* B, double* C) {
  unsigned int l_m = 0;

  #pragma simd vectorlength(64)
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
  }

#ifndef NDEBUG
#ifdef _OPENMP
#pragma omp atomic
#endif
libxsmm_num_total_flops += 2000;
#endif
}

void exp_seissol_star_27x27_libxsmm(const double* A, const double* B, double* C) {
#ifdef __AVX512F__
  __asm__ __volatile__("movq %0, %%rdi\n\t"
                       "movq %1, %%rsi\n\t"
                       "movq %2, %%rdx\n\t"
                       "movq $0, %%r12\n\t"
                       "movq $0, %%r13\n\t"
                       "movq $0, %%r14\n\t"
                       "0:\n\t"
                       "addq $8, %%r12\n\t"
                       "vmovapd 0(%%rdx), %%zmm5\n\t"
                       "vmovapd 320(%%rdx), %%zmm6\n\t"
                       "vmovapd 640(%%rdx), %%zmm7\n\t"
                       "vmovapd 960(%%rdx), %%zmm8\n\t"
                       "vmovapd 1280(%%rdx), %%zmm9\n\t"
                       "vmovapd 1600(%%rdx), %%zmm10\n\t"
                       "vmovapd 1920(%%rdx), %%zmm11\n\t"
                       "vmovapd 2240(%%rdx), %%zmm12\n\t"
                       "vmovapd 2560(%%rdx), %%zmm13\n\t"
                       "vmovapd 2880(%%rdx), %%zmm14\n\t"
                       "vmovapd 3200(%%rdx), %%zmm15\n\t"
                       "vmovapd 3520(%%rdx), %%zmm16\n\t"
                       "vmovapd 3840(%%rdx), %%zmm17\n\t"
                       "vmovapd 4160(%%rdx), %%zmm18\n\t"
                       "vmovapd 4480(%%rdx), %%zmm19\n\t"
                       "vmovapd 4800(%%rdx), %%zmm20\n\t"
                       "vmovapd 5120(%%rdx), %%zmm21\n\t"
                       "vmovapd 5440(%%rdx), %%zmm22\n\t"
                       "vmovapd 5760(%%rdx), %%zmm23\n\t"
                       "vmovapd 6080(%%rdx), %%zmm24\n\t"
                       "vmovapd 6400(%%rdx), %%zmm25\n\t"
                       "vmovapd 6720(%%rdx), %%zmm26\n\t"
                       "vmovapd 7040(%%rdx), %%zmm27\n\t"
                       "vmovapd 7360(%%rdx), %%zmm28\n\t"
                       "vmovapd 7680(%%rdx), %%zmm29\n\t"
                       "vmovapd 8000(%%rdx), %%zmm30\n\t"
                       "vmovapd 8320(%%rdx), %%zmm31\n\t"
                       "pushq %%rdx\n\t"
                       "movq $216, %%r15\n\t"
                       "movq $648, %%rax\n\t"
                       "movq $1080, %%rbx\n\t"
                       "movq $1512, %%r11\n\t"
                       "movq %%rsi, %%r10\n\t"
                       "addq $1944, %%r10\n\t"
                       "movq %%rsi, %%rdx\n\t"
                       "addq $3888, %%rdx\n\t"
                       "vmovapd 0(%%rdi), %%zmm0\n\t"
                       "vmovapd 320(%%rdi), %%zmm1\n\t"
                       "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm5\n\t"
                       "vfmadd231pd 0(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm6\n\t"
                       "vfmadd231pd 0(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm7\n\t"
                       "vfmadd231pd 0(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm8\n\t"
                       "vfmadd231pd 0(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm9\n\t"
                       "vfmadd231pd 0(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm10\n\t"
                       "vfmadd231pd 0(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm11\n\t"
                       "vfmadd231pd 0(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm12\n\t"
                       "vfmadd231pd 0(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm13\n\t"
                       "vfmadd231pd 0(%%r10)%{1to8%}, %%zmm0, %%zmm14\n\t"
                       "vfmadd231pd 0(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm15\n\t"
                       "vfmadd231pd 0(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm16\n\t"
                       "vfmadd231pd 0(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 0(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 0(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 0(%%r10,%%rax,2)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 0(%%r10,%%r11,1)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 0(%%r10,%%r15,8)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 0(%%rdx)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 0(%%rdx,%%r15,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 0(%%rdx,%%r15,2)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 0(%%rdx,%%rax,1)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 0(%%rdx,%%r15,4)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 0(%%rdx,%%rbx,1)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 0(%%rdx,%%rax,2)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 0(%%rdx,%%r11,1)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 0(%%rdx,%%r15,8)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 640(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm5\n\t"
                       "vfmadd231pd 8(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm6\n\t"
                       "vfmadd231pd 8(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm7\n\t"
                       "vfmadd231pd 8(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm8\n\t"
                       "vfmadd231pd 8(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm9\n\t"
                       "vfmadd231pd 8(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm10\n\t"
                       "vfmadd231pd 8(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm11\n\t"
                       "vfmadd231pd 8(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm12\n\t"
                       "vfmadd231pd 8(%%rsi,%%r15,8)%{1to8%}, %%zmm1, %%zmm13\n\t"
                       "vfmadd231pd 8(%%r10)%{1to8%}, %%zmm1, %%zmm14\n\t"
                       "vfmadd231pd 8(%%r10,%%r15,1)%{1to8%}, %%zmm1, %%zmm15\n\t"
                       "vfmadd231pd 8(%%r10,%%r15,2)%{1to8%}, %%zmm1, %%zmm16\n\t"
                       "vfmadd231pd 8(%%r10,%%rax,1)%{1to8%}, %%zmm1, %%zmm17\n\t"
                       "vfmadd231pd 8(%%r10,%%r15,4)%{1to8%}, %%zmm1, %%zmm18\n\t"
                       "vfmadd231pd 8(%%r10,%%rbx,1)%{1to8%}, %%zmm1, %%zmm19\n\t"
                       "vfmadd231pd 8(%%r10,%%rax,2)%{1to8%}, %%zmm1, %%zmm20\n\t"
                       "vfmadd231pd 8(%%r10,%%r11,1)%{1to8%}, %%zmm1, %%zmm21\n\t"
                       "vfmadd231pd 8(%%r10,%%r15,8)%{1to8%}, %%zmm1, %%zmm22\n\t"
                       "vfmadd231pd 8(%%rdx)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 8(%%rdx,%%r15,1)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 8(%%rdx,%%r15,2)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 8(%%rdx,%%rax,1)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 8(%%rdx,%%r15,4)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 8(%%rdx,%%rbx,1)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 8(%%rdx,%%rax,2)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 8(%%rdx,%%r11,1)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 8(%%rdx,%%r15,8)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vmovapd 960(%%rdi), %%zmm1\n\t"
                       "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm5\n\t"
                       "vfmadd231pd 16(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm6\n\t"
                       "vfmadd231pd 16(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm7\n\t"
                       "vfmadd231pd 16(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm8\n\t"
                       "vfmadd231pd 16(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm9\n\t"
                       "vfmadd231pd 16(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm10\n\t"
                       "vfmadd231pd 16(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm11\n\t"
                       "vfmadd231pd 16(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm12\n\t"
                       "vfmadd231pd 16(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm13\n\t"
                       "vfmadd231pd 16(%%r10)%{1to8%}, %%zmm0, %%zmm14\n\t"
                       "vfmadd231pd 16(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm15\n\t"
                       "vfmadd231pd 16(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm16\n\t"
                       "vfmadd231pd 16(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 16(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 16(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 16(%%r10,%%rax,2)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 16(%%r10,%%r11,1)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 16(%%r10,%%r15,8)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 16(%%rdx)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 16(%%rdx,%%r15,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 16(%%rdx,%%r15,2)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 16(%%rdx,%%rax,1)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 16(%%rdx,%%r15,4)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 16(%%rdx,%%rbx,1)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 16(%%rdx,%%rax,2)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 16(%%rdx,%%r11,1)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 16(%%rdx,%%r15,8)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 1280(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm1, %%zmm5\n\t"
                       "vfmadd231pd 24(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm6\n\t"
                       "vfmadd231pd 24(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm7\n\t"
                       "vfmadd231pd 24(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm8\n\t"
                       "vfmadd231pd 24(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm9\n\t"
                       "vfmadd231pd 24(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm10\n\t"
                       "vfmadd231pd 24(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm11\n\t"
                       "vfmadd231pd 24(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm12\n\t"
                       "vfmadd231pd 24(%%rsi,%%r15,8)%{1to8%}, %%zmm1, %%zmm13\n\t"
                       "vfmadd231pd 24(%%r10)%{1to8%}, %%zmm1, %%zmm14\n\t"
                       "vfmadd231pd 24(%%r10,%%r15,1)%{1to8%}, %%zmm1, %%zmm15\n\t"
                       "vfmadd231pd 24(%%r10,%%r15,2)%{1to8%}, %%zmm1, %%zmm16\n\t"
                       "vfmadd231pd 24(%%r10,%%rax,1)%{1to8%}, %%zmm1, %%zmm17\n\t"
                       "vfmadd231pd 24(%%r10,%%r15,4)%{1to8%}, %%zmm1, %%zmm18\n\t"
                       "vfmadd231pd 24(%%r10,%%rbx,1)%{1to8%}, %%zmm1, %%zmm19\n\t"
                       "vfmadd231pd 24(%%r10,%%rax,2)%{1to8%}, %%zmm1, %%zmm20\n\t"
                       "vfmadd231pd 24(%%r10,%%r11,1)%{1to8%}, %%zmm1, %%zmm21\n\t"
                       "vfmadd231pd 24(%%r10,%%r15,8)%{1to8%}, %%zmm1, %%zmm22\n\t"
                       "vfmadd231pd 24(%%rdx)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 24(%%rdx,%%r15,1)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 24(%%rdx,%%r15,2)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 24(%%rdx,%%rax,1)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 24(%%rdx,%%r15,4)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 24(%%rdx,%%rbx,1)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 24(%%rdx,%%rax,2)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 24(%%rdx,%%r11,1)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 24(%%rdx,%%r15,8)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vmovapd 1600(%%rdi), %%zmm1\n\t"
                       "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm0, %%zmm5\n\t"
                       "vfmadd231pd 32(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm6\n\t"
                       "vfmadd231pd 32(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm7\n\t"
                       "vfmadd231pd 32(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm8\n\t"
                       "vfmadd231pd 32(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm9\n\t"
                       "vfmadd231pd 32(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm10\n\t"
                       "vfmadd231pd 32(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm11\n\t"
                       "vfmadd231pd 32(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm12\n\t"
                       "vfmadd231pd 32(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm13\n\t"
                       "vfmadd231pd 32(%%r10)%{1to8%}, %%zmm0, %%zmm14\n\t"
                       "vfmadd231pd 32(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm15\n\t"
                       "vfmadd231pd 32(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm16\n\t"
                       "vfmadd231pd 32(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 32(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 32(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 32(%%r10,%%rax,2)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 32(%%r10,%%r11,1)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 32(%%r10,%%r15,8)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 32(%%rdx)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 32(%%rdx,%%r15,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 32(%%rdx,%%r15,2)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 32(%%rdx,%%rax,1)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 32(%%rdx,%%r15,4)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 32(%%rdx,%%rbx,1)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 32(%%rdx,%%rax,2)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 32(%%rdx,%%r11,1)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 32(%%rdx,%%r15,8)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 1920(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm1, %%zmm5\n\t"
                       "vfmadd231pd 40(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm6\n\t"
                       "vfmadd231pd 40(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm7\n\t"
                       "vfmadd231pd 40(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm8\n\t"
                       "vfmadd231pd 40(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm9\n\t"
                       "vfmadd231pd 40(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm10\n\t"
                       "vfmadd231pd 40(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm11\n\t"
                       "vfmadd231pd 40(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm12\n\t"
                       "vfmadd231pd 40(%%rsi,%%r15,8)%{1to8%}, %%zmm1, %%zmm13\n\t"
                       "vfmadd231pd 40(%%r10)%{1to8%}, %%zmm1, %%zmm14\n\t"
                       "vfmadd231pd 40(%%r10,%%r15,1)%{1to8%}, %%zmm1, %%zmm15\n\t"
                       "vfmadd231pd 40(%%r10,%%r15,2)%{1to8%}, %%zmm1, %%zmm16\n\t"
                       "vfmadd231pd 40(%%r10,%%rax,1)%{1to8%}, %%zmm1, %%zmm17\n\t"
                       "vfmadd231pd 40(%%r10,%%r15,4)%{1to8%}, %%zmm1, %%zmm18\n\t"
                       "vfmadd231pd 40(%%r10,%%rbx,1)%{1to8%}, %%zmm1, %%zmm19\n\t"
                       "vfmadd231pd 40(%%r10,%%rax,2)%{1to8%}, %%zmm1, %%zmm20\n\t"
                       "vfmadd231pd 40(%%r10,%%r11,1)%{1to8%}, %%zmm1, %%zmm21\n\t"
                       "vfmadd231pd 40(%%r10,%%r15,8)%{1to8%}, %%zmm1, %%zmm22\n\t"
                       "vfmadd231pd 40(%%rdx)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 40(%%rdx,%%r15,1)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 40(%%rdx,%%r15,2)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 40(%%rdx,%%rax,1)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 40(%%rdx,%%r15,4)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 40(%%rdx,%%rbx,1)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 40(%%rdx,%%rax,2)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 40(%%rdx,%%r11,1)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 40(%%rdx,%%r15,8)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vmovapd 2240(%%rdi), %%zmm1\n\t"
                       "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm5\n\t"
                       "vfmadd231pd 48(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm6\n\t"
                       "vfmadd231pd 48(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm7\n\t"
                       "vfmadd231pd 48(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm8\n\t"
                       "vfmadd231pd 48(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm9\n\t"
                       "vfmadd231pd 48(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm10\n\t"
                       "vfmadd231pd 48(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm11\n\t"
                       "vfmadd231pd 48(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm12\n\t"
                       "vfmadd231pd 48(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm13\n\t"
                       "vfmadd231pd 48(%%r10)%{1to8%}, %%zmm0, %%zmm14\n\t"
                       "vfmadd231pd 48(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm15\n\t"
                       "vfmadd231pd 48(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm16\n\t"
                       "vfmadd231pd 48(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 48(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 48(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 48(%%r10,%%rax,2)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 48(%%r10,%%r11,1)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 48(%%r10,%%r15,8)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 48(%%rdx)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 48(%%rdx,%%r15,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 48(%%rdx,%%r15,2)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 48(%%rdx,%%rax,1)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 48(%%rdx,%%r15,4)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 48(%%rdx,%%rbx,1)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 48(%%rdx,%%rax,2)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 48(%%rdx,%%r11,1)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 48(%%rdx,%%r15,8)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 2560(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm5\n\t"
                       "vfmadd231pd 56(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm6\n\t"
                       "vfmadd231pd 56(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm7\n\t"
                       "vfmadd231pd 56(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm8\n\t"
                       "vfmadd231pd 56(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm9\n\t"
                       "vfmadd231pd 56(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm10\n\t"
                       "vfmadd231pd 56(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm11\n\t"
                       "vfmadd231pd 56(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm12\n\t"
                       "vfmadd231pd 56(%%rsi,%%r15,8)%{1to8%}, %%zmm1, %%zmm13\n\t"
                       "vfmadd231pd 56(%%r10)%{1to8%}, %%zmm1, %%zmm14\n\t"
                       "vfmadd231pd 56(%%r10,%%r15,1)%{1to8%}, %%zmm1, %%zmm15\n\t"
                       "vfmadd231pd 56(%%r10,%%r15,2)%{1to8%}, %%zmm1, %%zmm16\n\t"
                       "vfmadd231pd 56(%%r10,%%rax,1)%{1to8%}, %%zmm1, %%zmm17\n\t"
                       "vfmadd231pd 56(%%r10,%%r15,4)%{1to8%}, %%zmm1, %%zmm18\n\t"
                       "vfmadd231pd 56(%%r10,%%rbx,1)%{1to8%}, %%zmm1, %%zmm19\n\t"
                       "vfmadd231pd 56(%%r10,%%rax,2)%{1to8%}, %%zmm1, %%zmm20\n\t"
                       "vfmadd231pd 56(%%r10,%%r11,1)%{1to8%}, %%zmm1, %%zmm21\n\t"
                       "vfmadd231pd 56(%%r10,%%r15,8)%{1to8%}, %%zmm1, %%zmm22\n\t"
                       "vfmadd231pd 56(%%rdx)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 56(%%rdx,%%r15,1)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 56(%%rdx,%%r15,2)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 56(%%rdx,%%rax,1)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 56(%%rdx,%%r15,4)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 56(%%rdx,%%rbx,1)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 56(%%rdx,%%rax,2)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 56(%%rdx,%%r11,1)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 56(%%rdx,%%r15,8)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vmovapd 2880(%%rdi), %%zmm1\n\t"
                       "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm0, %%zmm5\n\t"
                       "vfmadd231pd 64(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm6\n\t"
                       "vfmadd231pd 64(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm7\n\t"
                       "vfmadd231pd 64(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm8\n\t"
                       "vfmadd231pd 64(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm9\n\t"
                       "vfmadd231pd 64(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm10\n\t"
                       "vfmadd231pd 64(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm11\n\t"
                       "vfmadd231pd 64(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm12\n\t"
                       "vfmadd231pd 64(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm13\n\t"
                       "vfmadd231pd 64(%%r10)%{1to8%}, %%zmm0, %%zmm14\n\t"
                       "vfmadd231pd 64(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm15\n\t"
                       "vfmadd231pd 64(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm16\n\t"
                       "vfmadd231pd 64(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 64(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 64(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 64(%%r10,%%rax,2)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 64(%%r10,%%r11,1)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 64(%%r10,%%r15,8)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 64(%%rdx)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 64(%%rdx,%%r15,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 64(%%rdx,%%r15,2)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 64(%%rdx,%%rax,1)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 64(%%rdx,%%r15,4)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 64(%%rdx,%%rbx,1)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 64(%%rdx,%%rax,2)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 64(%%rdx,%%r11,1)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 64(%%rdx,%%r15,8)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 3200(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm1, %%zmm5\n\t"
                       "vfmadd231pd 72(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm6\n\t"
                       "vfmadd231pd 72(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm7\n\t"
                       "vfmadd231pd 72(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm8\n\t"
                       "vfmadd231pd 72(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm9\n\t"
                       "vfmadd231pd 72(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm10\n\t"
                       "vfmadd231pd 72(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm11\n\t"
                       "vfmadd231pd 72(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm12\n\t"
                       "vfmadd231pd 72(%%rsi,%%r15,8)%{1to8%}, %%zmm1, %%zmm13\n\t"
                       "vfmadd231pd 72(%%r10)%{1to8%}, %%zmm1, %%zmm14\n\t"
                       "vfmadd231pd 72(%%r10,%%r15,1)%{1to8%}, %%zmm1, %%zmm15\n\t"
                       "vfmadd231pd 72(%%r10,%%r15,2)%{1to8%}, %%zmm1, %%zmm16\n\t"
                       "vfmadd231pd 72(%%r10,%%rax,1)%{1to8%}, %%zmm1, %%zmm17\n\t"
                       "vfmadd231pd 72(%%r10,%%r15,4)%{1to8%}, %%zmm1, %%zmm18\n\t"
                       "vfmadd231pd 72(%%r10,%%rbx,1)%{1to8%}, %%zmm1, %%zmm19\n\t"
                       "vfmadd231pd 72(%%r10,%%rax,2)%{1to8%}, %%zmm1, %%zmm20\n\t"
                       "vfmadd231pd 72(%%r10,%%r11,1)%{1to8%}, %%zmm1, %%zmm21\n\t"
                       "vfmadd231pd 72(%%r10,%%r15,8)%{1to8%}, %%zmm1, %%zmm22\n\t"
                       "vfmadd231pd 72(%%rdx)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 72(%%rdx,%%r15,1)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 72(%%rdx,%%r15,2)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 72(%%rdx,%%rax,1)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 72(%%rdx,%%r15,4)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 72(%%rdx,%%rbx,1)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 72(%%rdx,%%rax,2)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 72(%%rdx,%%r11,1)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 72(%%rdx,%%r15,8)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vmovapd 3520(%%rdi), %%zmm1\n\t"
                       "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm0, %%zmm5\n\t"
                       "vfmadd231pd 80(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm6\n\t"
                       "vfmadd231pd 80(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm7\n\t"
                       "vfmadd231pd 80(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm8\n\t"
                       "vfmadd231pd 80(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm9\n\t"
                       "vfmadd231pd 80(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm10\n\t"
                       "vfmadd231pd 80(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm11\n\t"
                       "vfmadd231pd 80(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm12\n\t"
                       "vfmadd231pd 80(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm13\n\t"
                       "vfmadd231pd 80(%%r10)%{1to8%}, %%zmm0, %%zmm14\n\t"
                       "vfmadd231pd 80(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm15\n\t"
                       "vfmadd231pd 80(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm16\n\t"
                       "vfmadd231pd 80(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 80(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 80(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 80(%%r10,%%rax,2)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 80(%%r10,%%r11,1)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 80(%%r10,%%r15,8)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 80(%%rdx)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 80(%%rdx,%%r15,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 80(%%rdx,%%r15,2)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 80(%%rdx,%%rax,1)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 80(%%rdx,%%r15,4)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 80(%%rdx,%%rbx,1)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 80(%%rdx,%%rax,2)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 80(%%rdx,%%r11,1)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 80(%%rdx,%%r15,8)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 3840(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm1, %%zmm5\n\t"
                       "vfmadd231pd 88(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm6\n\t"
                       "vfmadd231pd 88(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm7\n\t"
                       "vfmadd231pd 88(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm8\n\t"
                       "vfmadd231pd 88(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm9\n\t"
                       "vfmadd231pd 88(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm10\n\t"
                       "vfmadd231pd 88(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm11\n\t"
                       "vfmadd231pd 88(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm12\n\t"
                       "vfmadd231pd 88(%%rsi,%%r15,8)%{1to8%}, %%zmm1, %%zmm13\n\t"
                       "vfmadd231pd 88(%%r10)%{1to8%}, %%zmm1, %%zmm14\n\t"
                       "vfmadd231pd 88(%%r10,%%r15,1)%{1to8%}, %%zmm1, %%zmm15\n\t"
                       "vfmadd231pd 88(%%r10,%%r15,2)%{1to8%}, %%zmm1, %%zmm16\n\t"
                       "vfmadd231pd 88(%%r10,%%rax,1)%{1to8%}, %%zmm1, %%zmm17\n\t"
                       "vfmadd231pd 88(%%r10,%%r15,4)%{1to8%}, %%zmm1, %%zmm18\n\t"
                       "vfmadd231pd 88(%%r10,%%rbx,1)%{1to8%}, %%zmm1, %%zmm19\n\t"
                       "vfmadd231pd 88(%%r10,%%rax,2)%{1to8%}, %%zmm1, %%zmm20\n\t"
                       "vfmadd231pd 88(%%r10,%%r11,1)%{1to8%}, %%zmm1, %%zmm21\n\t"
                       "vfmadd231pd 88(%%r10,%%r15,8)%{1to8%}, %%zmm1, %%zmm22\n\t"
                       "vfmadd231pd 88(%%rdx)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 88(%%rdx,%%r15,1)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 88(%%rdx,%%r15,2)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 88(%%rdx,%%rax,1)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 88(%%rdx,%%r15,4)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 88(%%rdx,%%rbx,1)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 88(%%rdx,%%rax,2)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 88(%%rdx,%%r11,1)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 88(%%rdx,%%r15,8)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vmovapd 4160(%%rdi), %%zmm1\n\t"
                       "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm5\n\t"
                       "vfmadd231pd 96(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm6\n\t"
                       "vfmadd231pd 96(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm7\n\t"
                       "vfmadd231pd 96(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm8\n\t"
                       "vfmadd231pd 96(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm9\n\t"
                       "vfmadd231pd 96(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm10\n\t"
                       "vfmadd231pd 96(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm11\n\t"
                       "vfmadd231pd 96(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm12\n\t"
                       "vfmadd231pd 96(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm13\n\t"
                       "vfmadd231pd 96(%%r10)%{1to8%}, %%zmm0, %%zmm14\n\t"
                       "vfmadd231pd 96(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm15\n\t"
                       "vfmadd231pd 96(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm16\n\t"
                       "vfmadd231pd 96(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 96(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 96(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 96(%%r10,%%rax,2)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 96(%%r10,%%r11,1)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 96(%%r10,%%r15,8)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 96(%%rdx)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 96(%%rdx,%%r15,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 96(%%rdx,%%r15,2)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 96(%%rdx,%%rax,1)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 96(%%rdx,%%r15,4)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 96(%%rdx,%%rbx,1)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 96(%%rdx,%%rax,2)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 96(%%rdx,%%r11,1)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 96(%%rdx,%%r15,8)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 4480(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm1, %%zmm5\n\t"
                       "vfmadd231pd 104(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm6\n\t"
                       "vfmadd231pd 104(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm7\n\t"
                       "vfmadd231pd 104(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm8\n\t"
                       "vfmadd231pd 104(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm9\n\t"
                       "vfmadd231pd 104(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm10\n\t"
                       "vfmadd231pd 104(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm11\n\t"
                       "vfmadd231pd 104(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm12\n\t"
                       "vfmadd231pd 104(%%rsi,%%r15,8)%{1to8%}, %%zmm1, %%zmm13\n\t"
                       "vfmadd231pd 104(%%r10)%{1to8%}, %%zmm1, %%zmm14\n\t"
                       "vfmadd231pd 104(%%r10,%%r15,1)%{1to8%}, %%zmm1, %%zmm15\n\t"
                       "vfmadd231pd 104(%%r10,%%r15,2)%{1to8%}, %%zmm1, %%zmm16\n\t"
                       "vfmadd231pd 104(%%r10,%%rax,1)%{1to8%}, %%zmm1, %%zmm17\n\t"
                       "vfmadd231pd 104(%%r10,%%r15,4)%{1to8%}, %%zmm1, %%zmm18\n\t"
                       "vfmadd231pd 104(%%r10,%%rbx,1)%{1to8%}, %%zmm1, %%zmm19\n\t"
                       "vfmadd231pd 104(%%r10,%%rax,2)%{1to8%}, %%zmm1, %%zmm20\n\t"
                       "vfmadd231pd 104(%%r10,%%r11,1)%{1to8%}, %%zmm1, %%zmm21\n\t"
                       "vfmadd231pd 104(%%r10,%%r15,8)%{1to8%}, %%zmm1, %%zmm22\n\t"
                       "vfmadd231pd 104(%%rdx)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 104(%%rdx,%%r15,1)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 104(%%rdx,%%r15,2)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 104(%%rdx,%%rax,1)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 104(%%rdx,%%r15,4)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 104(%%rdx,%%rbx,1)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 104(%%rdx,%%rax,2)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 104(%%rdx,%%r11,1)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 104(%%rdx,%%r15,8)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vmovapd 4800(%%rdi), %%zmm1\n\t"
                       "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm5\n\t"
                       "vfmadd231pd 112(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm6\n\t"
                       "vfmadd231pd 112(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm7\n\t"
                       "vfmadd231pd 112(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm8\n\t"
                       "vfmadd231pd 112(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm9\n\t"
                       "vfmadd231pd 112(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm10\n\t"
                       "vfmadd231pd 112(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm11\n\t"
                       "vfmadd231pd 112(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm12\n\t"
                       "vfmadd231pd 112(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm13\n\t"
                       "vfmadd231pd 112(%%r10)%{1to8%}, %%zmm0, %%zmm14\n\t"
                       "vfmadd231pd 112(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm15\n\t"
                       "vfmadd231pd 112(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm16\n\t"
                       "vfmadd231pd 112(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 112(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 112(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 112(%%r10,%%rax,2)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 112(%%r10,%%r11,1)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 112(%%r10,%%r15,8)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 112(%%rdx)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 112(%%rdx,%%r15,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 112(%%rdx,%%r15,2)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 112(%%rdx,%%rax,1)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 112(%%rdx,%%r15,4)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 112(%%rdx,%%rbx,1)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 112(%%rdx,%%rax,2)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 112(%%rdx,%%r11,1)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 112(%%rdx,%%r15,8)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 5120(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm1, %%zmm5\n\t"
                       "vfmadd231pd 120(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm6\n\t"
                       "vfmadd231pd 120(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm7\n\t"
                       "vfmadd231pd 120(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm8\n\t"
                       "vfmadd231pd 120(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm9\n\t"
                       "vfmadd231pd 120(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm10\n\t"
                       "vfmadd231pd 120(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm11\n\t"
                       "vfmadd231pd 120(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm12\n\t"
                       "vfmadd231pd 120(%%rsi,%%r15,8)%{1to8%}, %%zmm1, %%zmm13\n\t"
                       "vfmadd231pd 120(%%r10)%{1to8%}, %%zmm1, %%zmm14\n\t"
                       "vfmadd231pd 120(%%r10,%%r15,1)%{1to8%}, %%zmm1, %%zmm15\n\t"
                       "vfmadd231pd 120(%%r10,%%r15,2)%{1to8%}, %%zmm1, %%zmm16\n\t"
                       "vfmadd231pd 120(%%r10,%%rax,1)%{1to8%}, %%zmm1, %%zmm17\n\t"
                       "vfmadd231pd 120(%%r10,%%r15,4)%{1to8%}, %%zmm1, %%zmm18\n\t"
                       "vfmadd231pd 120(%%r10,%%rbx,1)%{1to8%}, %%zmm1, %%zmm19\n\t"
                       "vfmadd231pd 120(%%r10,%%rax,2)%{1to8%}, %%zmm1, %%zmm20\n\t"
                       "vfmadd231pd 120(%%r10,%%r11,1)%{1to8%}, %%zmm1, %%zmm21\n\t"
                       "vfmadd231pd 120(%%r10,%%r15,8)%{1to8%}, %%zmm1, %%zmm22\n\t"
                       "vfmadd231pd 120(%%rdx)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 120(%%rdx,%%r15,1)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 120(%%rdx,%%r15,2)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 120(%%rdx,%%rax,1)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 120(%%rdx,%%r15,4)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 120(%%rdx,%%rbx,1)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 120(%%rdx,%%rax,2)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 120(%%rdx,%%r11,1)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 120(%%rdx,%%r15,8)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vmovapd 5440(%%rdi), %%zmm1\n\t"
                       "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm0, %%zmm5\n\t"
                       "vfmadd231pd 128(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm6\n\t"
                       "vfmadd231pd 128(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm7\n\t"
                       "vfmadd231pd 128(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm8\n\t"
                       "vfmadd231pd 128(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm9\n\t"
                       "vfmadd231pd 128(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm10\n\t"
                       "vfmadd231pd 128(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm11\n\t"
                       "vfmadd231pd 128(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm12\n\t"
                       "vfmadd231pd 128(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm13\n\t"
                       "vfmadd231pd 128(%%r10)%{1to8%}, %%zmm0, %%zmm14\n\t"
                       "vfmadd231pd 128(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm15\n\t"
                       "vfmadd231pd 128(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm16\n\t"
                       "vfmadd231pd 128(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 128(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 128(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 128(%%r10,%%rax,2)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 128(%%r10,%%r11,1)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 128(%%r10,%%r15,8)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 128(%%rdx)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 128(%%rdx,%%r15,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 128(%%rdx,%%r15,2)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 128(%%rdx,%%rax,1)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 128(%%rdx,%%r15,4)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 128(%%rdx,%%rbx,1)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 128(%%rdx,%%rax,2)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 128(%%rdx,%%r11,1)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 128(%%rdx,%%r15,8)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 5760(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm1, %%zmm5\n\t"
                       "vfmadd231pd 136(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm6\n\t"
                       "vfmadd231pd 136(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm7\n\t"
                       "vfmadd231pd 136(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm8\n\t"
                       "vfmadd231pd 136(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm9\n\t"
                       "vfmadd231pd 136(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm10\n\t"
                       "vfmadd231pd 136(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm11\n\t"
                       "vfmadd231pd 136(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm12\n\t"
                       "vfmadd231pd 136(%%rsi,%%r15,8)%{1to8%}, %%zmm1, %%zmm13\n\t"
                       "vfmadd231pd 136(%%r10)%{1to8%}, %%zmm1, %%zmm14\n\t"
                       "vfmadd231pd 136(%%r10,%%r15,1)%{1to8%}, %%zmm1, %%zmm15\n\t"
                       "vfmadd231pd 136(%%r10,%%r15,2)%{1to8%}, %%zmm1, %%zmm16\n\t"
                       "vfmadd231pd 136(%%r10,%%rax,1)%{1to8%}, %%zmm1, %%zmm17\n\t"
                       "vfmadd231pd 136(%%r10,%%r15,4)%{1to8%}, %%zmm1, %%zmm18\n\t"
                       "vfmadd231pd 136(%%r10,%%rbx,1)%{1to8%}, %%zmm1, %%zmm19\n\t"
                       "vfmadd231pd 136(%%r10,%%rax,2)%{1to8%}, %%zmm1, %%zmm20\n\t"
                       "vfmadd231pd 136(%%r10,%%r11,1)%{1to8%}, %%zmm1, %%zmm21\n\t"
                       "vfmadd231pd 136(%%r10,%%r15,8)%{1to8%}, %%zmm1, %%zmm22\n\t"
                       "vfmadd231pd 136(%%rdx)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 136(%%rdx,%%r15,1)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 136(%%rdx,%%r15,2)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 136(%%rdx,%%rax,1)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 136(%%rdx,%%r15,4)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 136(%%rdx,%%rbx,1)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 136(%%rdx,%%rax,2)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 136(%%rdx,%%r11,1)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 136(%%rdx,%%r15,8)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vmovapd 6080(%%rdi), %%zmm1\n\t"
                       "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm5\n\t"
                       "vfmadd231pd 144(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm6\n\t"
                       "vfmadd231pd 144(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm7\n\t"
                       "vfmadd231pd 144(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm8\n\t"
                       "vfmadd231pd 144(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm9\n\t"
                       "vfmadd231pd 144(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm10\n\t"
                       "vfmadd231pd 144(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm11\n\t"
                       "vfmadd231pd 144(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm12\n\t"
                       "vfmadd231pd 144(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm13\n\t"
                       "vfmadd231pd 144(%%r10)%{1to8%}, %%zmm0, %%zmm14\n\t"
                       "vfmadd231pd 144(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm15\n\t"
                       "vfmadd231pd 144(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm16\n\t"
                       "vfmadd231pd 144(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 144(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 144(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 144(%%r10,%%rax,2)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 144(%%r10,%%r11,1)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 144(%%r10,%%r15,8)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 144(%%rdx)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 144(%%rdx,%%r15,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 144(%%rdx,%%r15,2)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 144(%%rdx,%%rax,1)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 144(%%rdx,%%r15,4)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 144(%%rdx,%%rbx,1)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 144(%%rdx,%%rax,2)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 144(%%rdx,%%r11,1)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 144(%%rdx,%%r15,8)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 6400(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm1, %%zmm5\n\t"
                       "vfmadd231pd 152(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm6\n\t"
                       "vfmadd231pd 152(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm7\n\t"
                       "vfmadd231pd 152(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm8\n\t"
                       "vfmadd231pd 152(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm9\n\t"
                       "vfmadd231pd 152(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm10\n\t"
                       "vfmadd231pd 152(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm11\n\t"
                       "vfmadd231pd 152(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm12\n\t"
                       "vfmadd231pd 152(%%rsi,%%r15,8)%{1to8%}, %%zmm1, %%zmm13\n\t"
                       "vfmadd231pd 152(%%r10)%{1to8%}, %%zmm1, %%zmm14\n\t"
                       "vfmadd231pd 152(%%r10,%%r15,1)%{1to8%}, %%zmm1, %%zmm15\n\t"
                       "vfmadd231pd 152(%%r10,%%r15,2)%{1to8%}, %%zmm1, %%zmm16\n\t"
                       "vfmadd231pd 152(%%r10,%%rax,1)%{1to8%}, %%zmm1, %%zmm17\n\t"
                       "vfmadd231pd 152(%%r10,%%r15,4)%{1to8%}, %%zmm1, %%zmm18\n\t"
                       "vfmadd231pd 152(%%r10,%%rbx,1)%{1to8%}, %%zmm1, %%zmm19\n\t"
                       "vfmadd231pd 152(%%r10,%%rax,2)%{1to8%}, %%zmm1, %%zmm20\n\t"
                       "vfmadd231pd 152(%%r10,%%r11,1)%{1to8%}, %%zmm1, %%zmm21\n\t"
                       "vfmadd231pd 152(%%r10,%%r15,8)%{1to8%}, %%zmm1, %%zmm22\n\t"
                       "vfmadd231pd 152(%%rdx)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 152(%%rdx,%%r15,1)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 152(%%rdx,%%r15,2)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 152(%%rdx,%%rax,1)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 152(%%rdx,%%r15,4)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 152(%%rdx,%%rbx,1)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 152(%%rdx,%%rax,2)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 152(%%rdx,%%r11,1)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 152(%%rdx,%%r15,8)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vmovapd 6720(%%rdi), %%zmm1\n\t"
                       "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm0, %%zmm5\n\t"
                       "vfmadd231pd 160(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm6\n\t"
                       "vfmadd231pd 160(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm7\n\t"
                       "vfmadd231pd 160(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm8\n\t"
                       "vfmadd231pd 160(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm9\n\t"
                       "vfmadd231pd 160(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm10\n\t"
                       "vfmadd231pd 160(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm11\n\t"
                       "vfmadd231pd 160(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm12\n\t"
                       "vfmadd231pd 160(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm13\n\t"
                       "vfmadd231pd 160(%%r10)%{1to8%}, %%zmm0, %%zmm14\n\t"
                       "vfmadd231pd 160(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm15\n\t"
                       "vfmadd231pd 160(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm16\n\t"
                       "vfmadd231pd 160(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 160(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 160(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 160(%%r10,%%rax,2)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 160(%%r10,%%r11,1)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 160(%%r10,%%r15,8)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 160(%%rdx)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 160(%%rdx,%%r15,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 160(%%rdx,%%r15,2)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 160(%%rdx,%%rax,1)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 160(%%rdx,%%r15,4)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 160(%%rdx,%%rbx,1)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 160(%%rdx,%%rax,2)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 160(%%rdx,%%r11,1)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 160(%%rdx,%%r15,8)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 7040(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm1, %%zmm5\n\t"
                       "vfmadd231pd 168(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm6\n\t"
                       "vfmadd231pd 168(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm7\n\t"
                       "vfmadd231pd 168(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm8\n\t"
                       "vfmadd231pd 168(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm9\n\t"
                       "vfmadd231pd 168(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm10\n\t"
                       "vfmadd231pd 168(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm11\n\t"
                       "vfmadd231pd 168(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm12\n\t"
                       "vfmadd231pd 168(%%rsi,%%r15,8)%{1to8%}, %%zmm1, %%zmm13\n\t"
                       "vfmadd231pd 168(%%r10)%{1to8%}, %%zmm1, %%zmm14\n\t"
                       "vfmadd231pd 168(%%r10,%%r15,1)%{1to8%}, %%zmm1, %%zmm15\n\t"
                       "vfmadd231pd 168(%%r10,%%r15,2)%{1to8%}, %%zmm1, %%zmm16\n\t"
                       "vfmadd231pd 168(%%r10,%%rax,1)%{1to8%}, %%zmm1, %%zmm17\n\t"
                       "vfmadd231pd 168(%%r10,%%r15,4)%{1to8%}, %%zmm1, %%zmm18\n\t"
                       "vfmadd231pd 168(%%r10,%%rbx,1)%{1to8%}, %%zmm1, %%zmm19\n\t"
                       "vfmadd231pd 168(%%r10,%%rax,2)%{1to8%}, %%zmm1, %%zmm20\n\t"
                       "vfmadd231pd 168(%%r10,%%r11,1)%{1to8%}, %%zmm1, %%zmm21\n\t"
                       "vfmadd231pd 168(%%r10,%%r15,8)%{1to8%}, %%zmm1, %%zmm22\n\t"
                       "vfmadd231pd 168(%%rdx)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 168(%%rdx,%%r15,1)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 168(%%rdx,%%r15,2)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 168(%%rdx,%%rax,1)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 168(%%rdx,%%r15,4)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 168(%%rdx,%%rbx,1)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 168(%%rdx,%%rax,2)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 168(%%rdx,%%r11,1)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 168(%%rdx,%%r15,8)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vmovapd 7360(%%rdi), %%zmm1\n\t"
                       "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm0, %%zmm5\n\t"
                       "vfmadd231pd 176(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm6\n\t"
                       "vfmadd231pd 176(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm7\n\t"
                       "vfmadd231pd 176(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm8\n\t"
                       "vfmadd231pd 176(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm9\n\t"
                       "vfmadd231pd 176(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm10\n\t"
                       "vfmadd231pd 176(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm11\n\t"
                       "vfmadd231pd 176(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm12\n\t"
                       "vfmadd231pd 176(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm13\n\t"
                       "vfmadd231pd 176(%%r10)%{1to8%}, %%zmm0, %%zmm14\n\t"
                       "vfmadd231pd 176(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm15\n\t"
                       "vfmadd231pd 176(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm16\n\t"
                       "vfmadd231pd 176(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 176(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 176(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 176(%%r10,%%rax,2)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 176(%%r10,%%r11,1)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 176(%%r10,%%r15,8)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 176(%%rdx)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 176(%%rdx,%%r15,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 176(%%rdx,%%r15,2)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 176(%%rdx,%%rax,1)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 176(%%rdx,%%r15,4)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 176(%%rdx,%%rbx,1)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 176(%%rdx,%%rax,2)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 176(%%rdx,%%r11,1)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 176(%%rdx,%%r15,8)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 7680(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm1, %%zmm5\n\t"
                       "vfmadd231pd 184(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm6\n\t"
                       "vfmadd231pd 184(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm7\n\t"
                       "vfmadd231pd 184(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm8\n\t"
                       "vfmadd231pd 184(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm9\n\t"
                       "vfmadd231pd 184(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm10\n\t"
                       "vfmadd231pd 184(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm11\n\t"
                       "vfmadd231pd 184(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm12\n\t"
                       "vfmadd231pd 184(%%rsi,%%r15,8)%{1to8%}, %%zmm1, %%zmm13\n\t"
                       "vfmadd231pd 184(%%r10)%{1to8%}, %%zmm1, %%zmm14\n\t"
                       "vfmadd231pd 184(%%r10,%%r15,1)%{1to8%}, %%zmm1, %%zmm15\n\t"
                       "vfmadd231pd 184(%%r10,%%r15,2)%{1to8%}, %%zmm1, %%zmm16\n\t"
                       "vfmadd231pd 184(%%r10,%%rax,1)%{1to8%}, %%zmm1, %%zmm17\n\t"
                       "vfmadd231pd 184(%%r10,%%r15,4)%{1to8%}, %%zmm1, %%zmm18\n\t"
                       "vfmadd231pd 184(%%r10,%%rbx,1)%{1to8%}, %%zmm1, %%zmm19\n\t"
                       "vfmadd231pd 184(%%r10,%%rax,2)%{1to8%}, %%zmm1, %%zmm20\n\t"
                       "vfmadd231pd 184(%%r10,%%r11,1)%{1to8%}, %%zmm1, %%zmm21\n\t"
                       "vfmadd231pd 184(%%r10,%%r15,8)%{1to8%}, %%zmm1, %%zmm22\n\t"
                       "vfmadd231pd 184(%%rdx)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 184(%%rdx,%%r15,1)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 184(%%rdx,%%r15,2)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 184(%%rdx,%%rax,1)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 184(%%rdx,%%r15,4)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 184(%%rdx,%%rbx,1)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 184(%%rdx,%%rax,2)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 184(%%rdx,%%r11,1)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 184(%%rdx,%%r15,8)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vmovapd 8000(%%rdi), %%zmm1\n\t"
                       "addq $8320, %%rdi\n\t"
                       "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm0, %%zmm5\n\t"
                       "vfmadd231pd 192(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm6\n\t"
                       "vfmadd231pd 192(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm7\n\t"
                       "vfmadd231pd 192(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm8\n\t"
                       "vfmadd231pd 192(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm9\n\t"
                       "vfmadd231pd 192(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm10\n\t"
                       "vfmadd231pd 192(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm11\n\t"
                       "vfmadd231pd 192(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm12\n\t"
                       "vfmadd231pd 192(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm13\n\t"
                       "vfmadd231pd 192(%%r10)%{1to8%}, %%zmm0, %%zmm14\n\t"
                       "vfmadd231pd 192(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm15\n\t"
                       "vfmadd231pd 192(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm16\n\t"
                       "vfmadd231pd 192(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 192(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 192(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 192(%%r10,%%rax,2)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 192(%%r10,%%r11,1)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 192(%%r10,%%r15,8)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 192(%%rdx)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 192(%%rdx,%%r15,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 192(%%rdx,%%r15,2)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 192(%%rdx,%%rax,1)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 192(%%rdx,%%r15,4)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 192(%%rdx,%%rbx,1)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 192(%%rdx,%%rax,2)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 192(%%rdx,%%r11,1)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 192(%%rdx,%%r15,8)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd 0(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm1, %%zmm5\n\t"
                       "vfmadd231pd 200(%%rsi,%%r15,1)%{1to8%}, %%zmm1, %%zmm6\n\t"
                       "vfmadd231pd 200(%%rsi,%%r15,2)%{1to8%}, %%zmm1, %%zmm7\n\t"
                       "vfmadd231pd 200(%%rsi,%%rax,1)%{1to8%}, %%zmm1, %%zmm8\n\t"
                       "vfmadd231pd 200(%%rsi,%%r15,4)%{1to8%}, %%zmm1, %%zmm9\n\t"
                       "vfmadd231pd 200(%%rsi,%%rbx,1)%{1to8%}, %%zmm1, %%zmm10\n\t"
                       "vfmadd231pd 200(%%rsi,%%rax,2)%{1to8%}, %%zmm1, %%zmm11\n\t"
                       "vfmadd231pd 200(%%rsi,%%r11,1)%{1to8%}, %%zmm1, %%zmm12\n\t"
                       "vfmadd231pd 200(%%rsi,%%r15,8)%{1to8%}, %%zmm1, %%zmm13\n\t"
                       "vfmadd231pd 200(%%r10)%{1to8%}, %%zmm1, %%zmm14\n\t"
                       "vfmadd231pd 200(%%r10,%%r15,1)%{1to8%}, %%zmm1, %%zmm15\n\t"
                       "vfmadd231pd 200(%%r10,%%r15,2)%{1to8%}, %%zmm1, %%zmm16\n\t"
                       "vfmadd231pd 200(%%r10,%%rax,1)%{1to8%}, %%zmm1, %%zmm17\n\t"
                       "vfmadd231pd 200(%%r10,%%r15,4)%{1to8%}, %%zmm1, %%zmm18\n\t"
                       "vfmadd231pd 200(%%r10,%%rbx,1)%{1to8%}, %%zmm1, %%zmm19\n\t"
                       "vfmadd231pd 200(%%r10,%%rax,2)%{1to8%}, %%zmm1, %%zmm20\n\t"
                       "vfmadd231pd 200(%%r10,%%r11,1)%{1to8%}, %%zmm1, %%zmm21\n\t"
                       "vfmadd231pd 200(%%r10,%%r15,8)%{1to8%}, %%zmm1, %%zmm22\n\t"
                       "vfmadd231pd 200(%%rdx)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 200(%%rdx,%%r15,1)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 200(%%rdx,%%r15,2)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 200(%%rdx,%%rax,1)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 200(%%rdx,%%r15,4)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 200(%%rdx,%%rbx,1)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 200(%%rdx,%%rax,2)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 200(%%rdx,%%r11,1)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 200(%%rdx,%%r15,8)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm0, %%zmm5\n\t"
                       "vfmadd231pd 208(%%rsi,%%r15,1)%{1to8%}, %%zmm0, %%zmm6\n\t"
                       "vfmadd231pd 208(%%rsi,%%r15,2)%{1to8%}, %%zmm0, %%zmm7\n\t"
                       "vfmadd231pd 208(%%rsi,%%rax,1)%{1to8%}, %%zmm0, %%zmm8\n\t"
                       "vfmadd231pd 208(%%rsi,%%r15,4)%{1to8%}, %%zmm0, %%zmm9\n\t"
                       "vfmadd231pd 208(%%rsi,%%rbx,1)%{1to8%}, %%zmm0, %%zmm10\n\t"
                       "vfmadd231pd 208(%%rsi,%%rax,2)%{1to8%}, %%zmm0, %%zmm11\n\t"
                       "vfmadd231pd 208(%%rsi,%%r11,1)%{1to8%}, %%zmm0, %%zmm12\n\t"
                       "vfmadd231pd 208(%%rsi,%%r15,8)%{1to8%}, %%zmm0, %%zmm13\n\t"
                       "vfmadd231pd 208(%%r10)%{1to8%}, %%zmm0, %%zmm14\n\t"
                       "vfmadd231pd 208(%%r10,%%r15,1)%{1to8%}, %%zmm0, %%zmm15\n\t"
                       "vfmadd231pd 208(%%r10,%%r15,2)%{1to8%}, %%zmm0, %%zmm16\n\t"
                       "vfmadd231pd 208(%%r10,%%rax,1)%{1to8%}, %%zmm0, %%zmm17\n\t"
                       "vfmadd231pd 208(%%r10,%%r15,4)%{1to8%}, %%zmm0, %%zmm18\n\t"
                       "vfmadd231pd 208(%%r10,%%rbx,1)%{1to8%}, %%zmm0, %%zmm19\n\t"
                       "vfmadd231pd 208(%%r10,%%rax,2)%{1to8%}, %%zmm0, %%zmm20\n\t"
                       "vfmadd231pd 208(%%r10,%%r11,1)%{1to8%}, %%zmm0, %%zmm21\n\t"
                       "vfmadd231pd 208(%%r10,%%r15,8)%{1to8%}, %%zmm0, %%zmm22\n\t"
                       "vfmadd231pd 208(%%rdx)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 208(%%rdx,%%r15,1)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 208(%%rdx,%%r15,2)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 208(%%rdx,%%rax,1)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 208(%%rdx,%%r15,4)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 208(%%rdx,%%rbx,1)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 208(%%rdx,%%rax,2)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 208(%%rdx,%%r11,1)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 208(%%rdx,%%r15,8)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "subq $8320, %%rdi\n\t"
                       "popq %%rdx\n\t"
                       "vmovapd %%zmm5, 0(%%rdx)\n\t"
                       "vmovapd %%zmm6, 320(%%rdx)\n\t"
                       "vmovapd %%zmm7, 640(%%rdx)\n\t"
                       "vmovapd %%zmm8, 960(%%rdx)\n\t"
                       "vmovapd %%zmm9, 1280(%%rdx)\n\t"
                       "vmovapd %%zmm10, 1600(%%rdx)\n\t"
                       "vmovapd %%zmm11, 1920(%%rdx)\n\t"
                       "vmovapd %%zmm12, 2240(%%rdx)\n\t"
                       "vmovapd %%zmm13, 2560(%%rdx)\n\t"
                       "vmovapd %%zmm14, 2880(%%rdx)\n\t"
                       "vmovapd %%zmm15, 3200(%%rdx)\n\t"
                       "vmovapd %%zmm16, 3520(%%rdx)\n\t"
                       "vmovapd %%zmm17, 3840(%%rdx)\n\t"
                       "vmovapd %%zmm18, 4160(%%rdx)\n\t"
                       "vmovapd %%zmm19, 4480(%%rdx)\n\t"
                       "vmovapd %%zmm20, 4800(%%rdx)\n\t"
                       "vmovapd %%zmm21, 5120(%%rdx)\n\t"
                       "vmovapd %%zmm22, 5440(%%rdx)\n\t"
                       "vmovapd %%zmm23, 5760(%%rdx)\n\t"
                       "vmovapd %%zmm24, 6080(%%rdx)\n\t"
                       "vmovapd %%zmm25, 6400(%%rdx)\n\t"
                       "vmovapd %%zmm26, 6720(%%rdx)\n\t"
                       "vmovapd %%zmm27, 7040(%%rdx)\n\t"
                       "vmovapd %%zmm28, 7360(%%rdx)\n\t"
                       "vmovapd %%zmm29, 7680(%%rdx)\n\t"
                       "vmovapd %%zmm30, 8000(%%rdx)\n\t"
                       "vmovapd %%zmm31, 8320(%%rdx)\n\t"
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
libxsmm_num_total_flops += 58320;
#endif
}

void exp_seissol_star_27x27_breuer_old(const double* A, const double* B, double* C) {
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
    C[600+l_m] += A[240+l_m] * B[34];
    C[640+l_m] += A[280+l_m] * B[35];
    C[680+l_m] += A[320+l_m] * B[36];
    C[720+l_m] += A[240+l_m] * B[37];
    C[720+l_m] += A[280+l_m] * B[38];
    C[760+l_m] += A[280+l_m] * B[39];
    C[760+l_m] += A[320+l_m] * B[40];
    C[800+l_m] += A[240+l_m] * B[41];
    C[800+l_m] += A[320+l_m] * B[42];
    C[840+l_m] += A[240+l_m] * B[43];
    C[880+l_m] += A[280+l_m] * B[44];
    C[920+l_m] += A[320+l_m] * B[45];
    C[960+l_m] += A[240+l_m] * B[46];
    C[960+l_m] += A[280+l_m] * B[47];
    C[1000+l_m] += A[280+l_m] * B[48];
    C[1000+l_m] += A[320+l_m] * B[49];
    C[1040+l_m] += A[240+l_m] * B[50];
    C[1040+l_m] += A[320+l_m] * B[51];
  }

#ifndef NDEBUG
#ifdef _OPENMP
#pragma omp atomic
#endif
libxsmm_num_total_flops += 4160;
#endif
}

void exp_seissol_star_27x27_breuer_fixed(const double* A, const double* B, double* C) {
  unsigned int l_m = 0;

  #pragma simd vectorlength(64)
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
    C[600+l_m] += A[240+l_m] * B[34];
    C[640+l_m] += A[280+l_m] * B[35];
    C[680+l_m] += A[320+l_m] * B[36];
    C[720+l_m] += A[240+l_m] * B[37];
    C[720+l_m] += A[280+l_m] * B[38];
    C[760+l_m] += A[280+l_m] * B[39];
    C[760+l_m] += A[320+l_m] * B[40];
    C[800+l_m] += A[240+l_m] * B[41];
    C[800+l_m] += A[320+l_m] * B[42];
    C[840+l_m] += A[240+l_m] * B[43];
    C[880+l_m] += A[280+l_m] * B[44];
    C[920+l_m] += A[320+l_m] * B[45];
    C[960+l_m] += A[240+l_m] * B[46];
    C[960+l_m] += A[280+l_m] * B[47];
    C[1000+l_m] += A[280+l_m] * B[48];
    C[1000+l_m] += A[320+l_m] * B[49];
    C[1040+l_m] += A[240+l_m] * B[50];
    C[1040+l_m] += A[320+l_m] * B[51];
  }

#ifndef NDEBUG
#ifdef _OPENMP
#pragma omp atomic
#endif
libxsmm_num_total_flops += 4160;
#endif
}

