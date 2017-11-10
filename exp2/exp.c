

#include<stdio.h>
#include<time.h>
#include "../include/timing.h"
#include "../include/colmajor.h"
#include "../include/patternsparse.h"
 




void patternsparse_1d_nnz1 (const double* A, const double* B, double* C) {
  __asm__ __volatile__("movq %0, %%rdi\n\t"
                       "movq %1, %%rsi\n\t"
                       "movq %2, %%rdx\n\t"
                       "movq $0, %%r13\n\t"
                       "20:\n\t"
                       "movq $0, %%r12\n\t"
                       "21:\n\t"
                       "vmovapd 0(%%rdx), %%zmm23\n\t"
                       "vmovapd 384(%%rdx), %%zmm24\n\t"
                       "vmovapd 768(%%rdx), %%zmm25\n\t"
                       "vmovapd 1152(%%rdx), %%zmm26\n\t"
                       "vmovapd 1536(%%rdx), %%zmm27\n\t"
                       "vmovapd 1920(%%rdx), %%zmm28\n\t"
                       "vmovapd 2304(%%rdx), %%zmm29\n\t"
                       "vmovapd 2688(%%rdx), %%zmm30\n\t"
                       "vmovapd 3072(%%rdx), %%zmm31\n\t"
                       "vmovapd 0(%%rdi), %%zmm0\n\t"
                       "vmovapd 384(%%rdi), %%zmm1\n\t"
                       "vmovapd 768(%%rdi), %%zmm2\n\t"
                       "vmovapd 1152(%%rdi), %%zmm3\n\t"
                       "vmovapd 1536(%%rdi), %%zmm4\n\t"
                       "vmovapd 1920(%%rdi), %%zmm5\n\t"
                       "vmovapd 2304(%%rdi), %%zmm6\n\t"
                       "vmovapd 2688(%%rdi), %%zmm7\n\t"
                       "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm23\n\t"
                       "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm3, %%zmm26\n\t"
                       "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm29\n\t"
                       "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm6, %%zmm23\n\t"
                       "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm6, %%zmm26\n\t"
                       "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm6, %%zmm29\n\t"
                       "vmovapd 3072(%%rdi), %%zmm0\n\t"
                       "vmovapd %%zmm23, 0(%%rdx)\n\t"
                       "vmovapd %%zmm24, 384(%%rdx)\n\t"
                       "vmovapd %%zmm25, 768(%%rdx)\n\t"
                       "vmovapd %%zmm26, 1152(%%rdx)\n\t"
                       "vmovapd %%zmm27, 1536(%%rdx)\n\t"
                       "vmovapd %%zmm28, 1920(%%rdx)\n\t"
                       "vmovapd %%zmm29, 2304(%%rdx)\n\t"
                       "vmovapd %%zmm30, 2688(%%rdx)\n\t"
                       "vmovapd %%zmm31, 3072(%%rdx)\n\t"
                       "addq $64, %%rdi\n\t"
                       "addq $64, %%rdx\n\t"
                       "addq $8, %%r12\n\t"
                       "cmpq $48, %%r12\n\t"
                       "jl 21b\n\t"
                       "addq $-384, %%rdi\n\t"
                       "addq $24, %%rsi\n\t"
                       "addq $3072, %%rdx\n\t"
                       "addq $9, %%r13\n\t"
                       "cmpq $9, %%r13\n\t"
                       "jl 20b\n\t"
                       : : "m"(A), "m"(B), "m"(C) : "r12","r13","rdi","rdx","rsi","zmm0","zmm1","zmm2","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void patternsparse_1d_nnz2 (const double* A, const double* B, double* C) {
  __asm__ __volatile__("movq %0, %%rdi\n\t"
                       "movq %1, %%rsi\n\t"
                       "movq %2, %%rdx\n\t"
                       "movq $0, %%r13\n\t"
                       "22:\n\t"
                       "movq $0, %%r12\n\t"
                       "23:\n\t"
                       "vmovapd 0(%%rdx), %%zmm23\n\t"
                       "vmovapd 384(%%rdx), %%zmm24\n\t"
                       "vmovapd 768(%%rdx), %%zmm25\n\t"
                       "vmovapd 1152(%%rdx), %%zmm26\n\t"
                       "vmovapd 1536(%%rdx), %%zmm27\n\t"
                       "vmovapd 1920(%%rdx), %%zmm28\n\t"
                       "vmovapd 2304(%%rdx), %%zmm29\n\t"
                       "vmovapd 2688(%%rdx), %%zmm30\n\t"
                       "vmovapd 3072(%%rdx), %%zmm31\n\t"
                       "vmovapd 0(%%rdi), %%zmm0\n\t"
                       "vmovapd 384(%%rdi), %%zmm1\n\t"
                       "vmovapd 768(%%rdi), %%zmm2\n\t"
                       "vmovapd 1152(%%rdi), %%zmm3\n\t"
                       "vmovapd 1536(%%rdi), %%zmm4\n\t"
                       "vmovapd 1920(%%rdi), %%zmm5\n\t"
                       "vmovapd 2304(%%rdi), %%zmm6\n\t"
                       "vmovapd 2688(%%rdi), %%zmm7\n\t"
                       "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm23\n\t"
                       "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm3, %%zmm26\n\t"
                       "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm3, %%zmm29\n\t"
                       "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm4, %%zmm24\n\t"
                       "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm27\n\t"
                       "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm4, %%zmm30\n\t"
                       "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm6, %%zmm23\n\t"
                       "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm6, %%zmm26\n\t"
                       "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm6, %%zmm29\n\t"
                       "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm24\n\t"
                       "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm27\n\t"
                       "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm7, %%zmm30\n\t"
                       "vmovapd 3072(%%rdi), %%zmm0\n\t"
                       "vmovapd %%zmm23, 0(%%rdx)\n\t"
                       "vmovapd %%zmm24, 384(%%rdx)\n\t"
                       "vmovapd %%zmm25, 768(%%rdx)\n\t"
                       "vmovapd %%zmm26, 1152(%%rdx)\n\t"
                       "vmovapd %%zmm27, 1536(%%rdx)\n\t"
                       "vmovapd %%zmm28, 1920(%%rdx)\n\t"
                       "vmovapd %%zmm29, 2304(%%rdx)\n\t"
                       "vmovapd %%zmm30, 2688(%%rdx)\n\t"
                       "vmovapd %%zmm31, 3072(%%rdx)\n\t"
                       "addq $64, %%rdi\n\t"
                       "addq $64, %%rdx\n\t"
                       "addq $8, %%r12\n\t"
                       "cmpq $48, %%r12\n\t"
                       "jl 23b\n\t"
                       "addq $-384, %%rdi\n\t"
                       "addq $48, %%rsi\n\t"
                       "addq $3072, %%rdx\n\t"
                       "addq $9, %%r13\n\t"
                       "cmpq $9, %%r13\n\t"
                       "jl 22b\n\t"
                       : : "m"(A), "m"(B), "m"(C) : "r12","r13","rdi","rdx","rsi","zmm0","zmm1","zmm2","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void patternsparse_1d_nnz3 (const double* A, const double* B, double* C) {
  __asm__ __volatile__("movq %0, %%rdi\n\t"
                       "movq %1, %%rsi\n\t"
                       "movq %2, %%rdx\n\t"
                       "movq $0, %%r13\n\t"
                       "24:\n\t"
                       "movq $0, %%r12\n\t"
                       "25:\n\t"
                       "vmovapd 0(%%rdx), %%zmm23\n\t"
                       "vmovapd 384(%%rdx), %%zmm24\n\t"
                       "vmovapd 768(%%rdx), %%zmm25\n\t"
                       "vmovapd 1152(%%rdx), %%zmm26\n\t"
                       "vmovapd 1536(%%rdx), %%zmm27\n\t"
                       "vmovapd 1920(%%rdx), %%zmm28\n\t"
                       "vmovapd 2304(%%rdx), %%zmm29\n\t"
                       "vmovapd 2688(%%rdx), %%zmm30\n\t"
                       "vmovapd 3072(%%rdx), %%zmm31\n\t"
                       "vmovapd 0(%%rdi), %%zmm0\n\t"
                       "vmovapd 384(%%rdi), %%zmm1\n\t"
                       "vmovapd 768(%%rdi), %%zmm2\n\t"
                       "vmovapd 1152(%%rdi), %%zmm3\n\t"
                       "vmovapd 1536(%%rdi), %%zmm4\n\t"
                       "vmovapd 1920(%%rdi), %%zmm5\n\t"
                       "vmovapd 2304(%%rdi), %%zmm6\n\t"
                       "vmovapd 2688(%%rdi), %%zmm7\n\t"
                       "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm25\n\t"
                       "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm2, %%zmm28\n\t"
                       "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm2, %%zmm31\n\t"
                       "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm23\n\t"
                       "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm26\n\t"
                       "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm3, %%zmm29\n\t"
                       "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm4, %%zmm24\n\t"
                       "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm4, %%zmm27\n\t"
                       "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm4, %%zmm30\n\t"
                       "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm5, %%zmm25\n\t"
                       "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm5, %%zmm28\n\t"
                       "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm5, %%zmm31\n\t"
                       "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm6, %%zmm23\n\t"
                       "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm6, %%zmm26\n\t"
                       "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm6, %%zmm29\n\t"
                       "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm24\n\t"
                       "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm7, %%zmm27\n\t"
                       "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm7, %%zmm30\n\t"
                       "vmovapd 3072(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd %%zmm23, 0(%%rdx)\n\t"
                       "vmovapd %%zmm24, 384(%%rdx)\n\t"
                       "vmovapd %%zmm25, 768(%%rdx)\n\t"
                       "vmovapd %%zmm26, 1152(%%rdx)\n\t"
                       "vmovapd %%zmm27, 1536(%%rdx)\n\t"
                       "vmovapd %%zmm28, 1920(%%rdx)\n\t"
                       "vmovapd %%zmm29, 2304(%%rdx)\n\t"
                       "vmovapd %%zmm30, 2688(%%rdx)\n\t"
                       "vmovapd %%zmm31, 3072(%%rdx)\n\t"
                       "addq $64, %%rdi\n\t"
                       "addq $64, %%rdx\n\t"
                       "addq $8, %%r12\n\t"
                       "cmpq $48, %%r12\n\t"
                       "jl 25b\n\t"
                       "addq $-384, %%rdi\n\t"
                       "addq $72, %%rsi\n\t"
                       "addq $3072, %%rdx\n\t"
                       "addq $9, %%r13\n\t"
                       "cmpq $9, %%r13\n\t"
                       "jl 24b\n\t"
                       : : "m"(A), "m"(B), "m"(C) : "r12","r13","rdi","rdx","rsi","zmm0","zmm1","zmm2","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void patternsparse_1d_nnz4 (const double* A, const double* B, double* C) {
  __asm__ __volatile__("movq %0, %%rdi\n\t"
                       "movq %1, %%rsi\n\t"
                       "movq %2, %%rdx\n\t"
                       "movq $0, %%r13\n\t"
                       "26:\n\t"
                       "movq $0, %%r12\n\t"
                       "27:\n\t"
                       "vmovapd 0(%%rdx), %%zmm23\n\t"
                       "vmovapd 384(%%rdx), %%zmm24\n\t"
                       "vmovapd 768(%%rdx), %%zmm25\n\t"
                       "vmovapd 1152(%%rdx), %%zmm26\n\t"
                       "vmovapd 1536(%%rdx), %%zmm27\n\t"
                       "vmovapd 1920(%%rdx), %%zmm28\n\t"
                       "vmovapd 2304(%%rdx), %%zmm29\n\t"
                       "vmovapd 2688(%%rdx), %%zmm30\n\t"
                       "vmovapd 3072(%%rdx), %%zmm31\n\t"
                       "vmovapd 0(%%rdi), %%zmm0\n\t"
                       "vmovapd 384(%%rdi), %%zmm1\n\t"
                       "vmovapd 768(%%rdi), %%zmm2\n\t"
                       "vmovapd 1152(%%rdi), %%zmm3\n\t"
                       "vmovapd 1536(%%rdi), %%zmm4\n\t"
                       "vmovapd 1920(%%rdi), %%zmm5\n\t"
                       "vmovapd 2304(%%rdi), %%zmm6\n\t"
                       "vmovapd 2688(%%rdi), %%zmm7\n\t"
                       "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm25\n\t"
                       "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm2, %%zmm28\n\t"
                       "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm2, %%zmm31\n\t"
                       "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm23\n\t"
                       "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm24\n\t"
                       "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm3, %%zmm26\n\t"
                       "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm3, %%zmm27\n\t"
                       "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm3, %%zmm29\n\t"
                       "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm3, %%zmm30\n\t"
                       "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm4, %%zmm24\n\t"
                       "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm4, %%zmm27\n\t"
                       "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm4, %%zmm30\n\t"
                       "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm5, %%zmm25\n\t"
                       "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm5, %%zmm28\n\t"
                       "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm5, %%zmm31\n\t"
                       "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm6, %%zmm23\n\t"
                       "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm6, %%zmm24\n\t"
                       "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm6, %%zmm26\n\t"
                       "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm6, %%zmm27\n\t"
                       "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm6, %%zmm29\n\t"
                       "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm6, %%zmm30\n\t"
                       "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm7, %%zmm24\n\t"
                       "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm7, %%zmm27\n\t"
                       "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm7, %%zmm30\n\t"
                       "vmovapd 3072(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd %%zmm23, 0(%%rdx)\n\t"
                       "vmovapd %%zmm24, 384(%%rdx)\n\t"
                       "vmovapd %%zmm25, 768(%%rdx)\n\t"
                       "vmovapd %%zmm26, 1152(%%rdx)\n\t"
                       "vmovapd %%zmm27, 1536(%%rdx)\n\t"
                       "vmovapd %%zmm28, 1920(%%rdx)\n\t"
                       "vmovapd %%zmm29, 2304(%%rdx)\n\t"
                       "vmovapd %%zmm30, 2688(%%rdx)\n\t"
                       "vmovapd %%zmm31, 3072(%%rdx)\n\t"
                       "addq $64, %%rdi\n\t"
                       "addq $64, %%rdx\n\t"
                       "addq $8, %%r12\n\t"
                       "cmpq $48, %%r12\n\t"
                       "jl 27b\n\t"
                       "addq $-384, %%rdi\n\t"
                       "addq $96, %%rsi\n\t"
                       "addq $3072, %%rdx\n\t"
                       "addq $9, %%r13\n\t"
                       "cmpq $9, %%r13\n\t"
                       "jl 26b\n\t"
                       : : "m"(A), "m"(B), "m"(C) : "r12","r13","rdi","rdx","rsi","zmm0","zmm1","zmm2","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void patternsparse_1d_nnz5 (const double* A, const double* B, double* C) {
  __asm__ __volatile__("movq %0, %%rdi\n\t"
                       "movq %1, %%rsi\n\t"
                       "movq %2, %%rdx\n\t"
                       "movq $0, %%r13\n\t"
                       "28:\n\t"
                       "movq $0, %%r12\n\t"
                       "29:\n\t"
                       "vmovapd 0(%%rdx), %%zmm23\n\t"
                       "vmovapd 384(%%rdx), %%zmm24\n\t"
                       "vmovapd 768(%%rdx), %%zmm25\n\t"
                       "vmovapd 1152(%%rdx), %%zmm26\n\t"
                       "vmovapd 1536(%%rdx), %%zmm27\n\t"
                       "vmovapd 1920(%%rdx), %%zmm28\n\t"
                       "vmovapd 2304(%%rdx), %%zmm29\n\t"
                       "vmovapd 2688(%%rdx), %%zmm30\n\t"
                       "vmovapd 3072(%%rdx), %%zmm31\n\t"
                       "vmovapd 0(%%rdi), %%zmm0\n\t"
                       "vmovapd 384(%%rdi), %%zmm1\n\t"
                       "vmovapd 768(%%rdi), %%zmm2\n\t"
                       "vmovapd 1152(%%rdi), %%zmm3\n\t"
                       "vmovapd 1536(%%rdi), %%zmm4\n\t"
                       "vmovapd 1920(%%rdi), %%zmm5\n\t"
                       "vmovapd 2304(%%rdi), %%zmm6\n\t"
                       "vmovapd 2688(%%rdi), %%zmm7\n\t"
                       "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm2, %%zmm25\n\t"
                       "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm2, %%zmm28\n\t"
                       "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm2, %%zmm31\n\t"
                       "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm23\n\t"
                       "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm24\n\t"
                       "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm26\n\t"
                       "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm3, %%zmm27\n\t"
                       "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm3, %%zmm29\n\t"
                       "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm3, %%zmm30\n\t"
                       "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm4, %%zmm24\n\t"
                       "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm4, %%zmm25\n\t"
                       "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm4, %%zmm27\n\t"
                       "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm4, %%zmm28\n\t"
                       "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm4, %%zmm30\n\t"
                       "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm4, %%zmm31\n\t"
                       "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm5, %%zmm25\n\t"
                       "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm5, %%zmm28\n\t"
                       "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm5, %%zmm31\n\t"
                       "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm6, %%zmm23\n\t"
                       "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm6, %%zmm24\n\t"
                       "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm6, %%zmm26\n\t"
                       "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm6, %%zmm27\n\t"
                       "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm6, %%zmm29\n\t"
                       "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm6, %%zmm30\n\t"
                       "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm7, %%zmm24\n\t"
                       "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm7, %%zmm25\n\t"
                       "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm7, %%zmm27\n\t"
                       "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm7, %%zmm28\n\t"
                       "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm7, %%zmm30\n\t"
                       "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm7, %%zmm31\n\t"
                       "vmovapd 3072(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd %%zmm23, 0(%%rdx)\n\t"
                       "vmovapd %%zmm24, 384(%%rdx)\n\t"
                       "vmovapd %%zmm25, 768(%%rdx)\n\t"
                       "vmovapd %%zmm26, 1152(%%rdx)\n\t"
                       "vmovapd %%zmm27, 1536(%%rdx)\n\t"
                       "vmovapd %%zmm28, 1920(%%rdx)\n\t"
                       "vmovapd %%zmm29, 2304(%%rdx)\n\t"
                       "vmovapd %%zmm30, 2688(%%rdx)\n\t"
                       "vmovapd %%zmm31, 3072(%%rdx)\n\t"
                       "addq $64, %%rdi\n\t"
                       "addq $64, %%rdx\n\t"
                       "addq $8, %%r12\n\t"
                       "cmpq $48, %%r12\n\t"
                       "jl 29b\n\t"
                       "addq $-384, %%rdi\n\t"
                       "addq $120, %%rsi\n\t"
                       "addq $3072, %%rdx\n\t"
                       "addq $9, %%r13\n\t"
                       "cmpq $9, %%r13\n\t"
                       "jl 28b\n\t"
                       : : "m"(A), "m"(B), "m"(C) : "r12","r13","rdi","rdx","rsi","zmm0","zmm1","zmm2","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void patternsparse_1d_nnz6 (const double* A, const double* B, double* C) {
  __asm__ __volatile__("movq %0, %%rdi\n\t"
                       "movq %1, %%rsi\n\t"
                       "movq %2, %%rdx\n\t"
                       "movq $0, %%r13\n\t"
                       "30:\n\t"
                       "movq $0, %%r12\n\t"
                       "31:\n\t"
                       "vmovapd 0(%%rdx), %%zmm23\n\t"
                       "vmovapd 384(%%rdx), %%zmm24\n\t"
                       "vmovapd 768(%%rdx), %%zmm25\n\t"
                       "vmovapd 1152(%%rdx), %%zmm26\n\t"
                       "vmovapd 1536(%%rdx), %%zmm27\n\t"
                       "vmovapd 1920(%%rdx), %%zmm28\n\t"
                       "vmovapd 2304(%%rdx), %%zmm29\n\t"
                       "vmovapd 2688(%%rdx), %%zmm30\n\t"
                       "vmovapd 3072(%%rdx), %%zmm31\n\t"
                       "vmovapd 0(%%rdi), %%zmm0\n\t"
                       "vmovapd 384(%%rdi), %%zmm1\n\t"
                       "vmovapd 768(%%rdi), %%zmm2\n\t"
                       "vmovapd 1152(%%rdi), %%zmm3\n\t"
                       "vmovapd 1536(%%rdi), %%zmm4\n\t"
                       "vmovapd 1920(%%rdi), %%zmm5\n\t"
                       "vmovapd 2304(%%rdi), %%zmm6\n\t"
                       "vmovapd 2688(%%rdi), %%zmm7\n\t"
                       "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm2, %%zmm25\n\t"
                       "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm2, %%zmm28\n\t"
                       "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm2, %%zmm31\n\t"
                       "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm23\n\t"
                       "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm24\n\t"
                       "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm25\n\t"
                       "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm3, %%zmm26\n\t"
                       "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm3, %%zmm27\n\t"
                       "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm3, %%zmm28\n\t"
                       "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm3, %%zmm29\n\t"
                       "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm3, %%zmm30\n\t"
                       "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm3, %%zmm31\n\t"
                       "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm4, %%zmm24\n\t"
                       "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm4, %%zmm25\n\t"
                       "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm4, %%zmm27\n\t"
                       "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm4, %%zmm28\n\t"
                       "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm4, %%zmm30\n\t"
                       "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm4, %%zmm31\n\t"
                       "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm5, %%zmm25\n\t"
                       "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm5, %%zmm28\n\t"
                       "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm5, %%zmm31\n\t"
                       "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm6, %%zmm23\n\t"
                       "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm6, %%zmm24\n\t"
                       "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm6, %%zmm25\n\t"
                       "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm6, %%zmm26\n\t"
                       "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm6, %%zmm27\n\t"
                       "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm6, %%zmm28\n\t"
                       "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm6, %%zmm29\n\t"
                       "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm6, %%zmm30\n\t"
                       "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm6, %%zmm31\n\t"
                       "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm7, %%zmm24\n\t"
                       "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm7, %%zmm25\n\t"
                       "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm7, %%zmm27\n\t"
                       "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm7, %%zmm28\n\t"
                       "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm7, %%zmm30\n\t"
                       "vfmadd231pd 416(%%rsi)%{1to8%}, %%zmm7, %%zmm31\n\t"
                       "vmovapd 3072(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 424(%%rsi)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd %%zmm23, 0(%%rdx)\n\t"
                       "vmovapd %%zmm24, 384(%%rdx)\n\t"
                       "vmovapd %%zmm25, 768(%%rdx)\n\t"
                       "vmovapd %%zmm26, 1152(%%rdx)\n\t"
                       "vmovapd %%zmm27, 1536(%%rdx)\n\t"
                       "vmovapd %%zmm28, 1920(%%rdx)\n\t"
                       "vmovapd %%zmm29, 2304(%%rdx)\n\t"
                       "vmovapd %%zmm30, 2688(%%rdx)\n\t"
                       "vmovapd %%zmm31, 3072(%%rdx)\n\t"
                       "addq $64, %%rdi\n\t"
                       "addq $64, %%rdx\n\t"
                       "addq $8, %%r12\n\t"
                       "cmpq $48, %%r12\n\t"
                       "jl 31b\n\t"
                       "addq $-384, %%rdi\n\t"
                       "addq $144, %%rsi\n\t"
                       "addq $3072, %%rdx\n\t"
                       "addq $9, %%r13\n\t"
                       "cmpq $9, %%r13\n\t"
                       "jl 30b\n\t"
                       : : "m"(A), "m"(B), "m"(C) : "r12","r13","rdi","rdx","rsi","zmm0","zmm1","zmm2","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void patternsparse_1d_nnz7 (const double* A, const double* B, double* C) {
  __asm__ __volatile__("movq %0, %%rdi\n\t"
                       "movq %1, %%rsi\n\t"
                       "movq %2, %%rdx\n\t"
                       "movq $0, %%r13\n\t"
                       "32:\n\t"
                       "movq $0, %%r12\n\t"
                       "33:\n\t"
                       "vmovapd 0(%%rdx), %%zmm23\n\t"
                       "vmovapd 384(%%rdx), %%zmm24\n\t"
                       "vmovapd 768(%%rdx), %%zmm25\n\t"
                       "vmovapd 1152(%%rdx), %%zmm26\n\t"
                       "vmovapd 1536(%%rdx), %%zmm27\n\t"
                       "vmovapd 1920(%%rdx), %%zmm28\n\t"
                       "vmovapd 2304(%%rdx), %%zmm29\n\t"
                       "vmovapd 2688(%%rdx), %%zmm30\n\t"
                       "vmovapd 3072(%%rdx), %%zmm31\n\t"
                       "vmovapd 0(%%rdi), %%zmm0\n\t"
                       "vmovapd 384(%%rdi), %%zmm1\n\t"
                       "vmovapd 768(%%rdi), %%zmm2\n\t"
                       "vmovapd 1152(%%rdi), %%zmm3\n\t"
                       "vmovapd 1536(%%rdi), %%zmm4\n\t"
                       "vmovapd 1920(%%rdi), %%zmm5\n\t"
                       "vmovapd 2304(%%rdi), %%zmm6\n\t"
                       "vmovapd 2688(%%rdi), %%zmm7\n\t"
                       "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 432(%%rsi)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 440(%%rsi)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm2, %%zmm25\n\t"
                       "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm2, %%zmm28\n\t"
                       "vfmadd231pd 448(%%rsi)%{1to8%}, %%zmm2, %%zmm31\n\t"
                       "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm23\n\t"
                       "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm3, %%zmm24\n\t"
                       "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm3, %%zmm25\n\t"
                       "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm3, %%zmm26\n\t"
                       "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm3, %%zmm27\n\t"
                       "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm3, %%zmm28\n\t"
                       "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm3, %%zmm29\n\t"
                       "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm3, %%zmm30\n\t"
                       "vfmadd231pd 456(%%rsi)%{1to8%}, %%zmm3, %%zmm31\n\t"
                       "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm23\n\t"
                       "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm4, %%zmm24\n\t"
                       "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm4, %%zmm25\n\t"
                       "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm4, %%zmm26\n\t"
                       "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm4, %%zmm27\n\t"
                       "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm4, %%zmm28\n\t"
                       "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm4, %%zmm29\n\t"
                       "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm4, %%zmm30\n\t"
                       "vfmadd231pd 464(%%rsi)%{1to8%}, %%zmm4, %%zmm31\n\t"
                       "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm5, %%zmm25\n\t"
                       "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm5, %%zmm28\n\t"
                       "vfmadd231pd 472(%%rsi)%{1to8%}, %%zmm5, %%zmm31\n\t"
                       "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm23\n\t"
                       "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm6, %%zmm24\n\t"
                       "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm6, %%zmm25\n\t"
                       "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm6, %%zmm26\n\t"
                       "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm6, %%zmm27\n\t"
                       "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm6, %%zmm28\n\t"
                       "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm6, %%zmm29\n\t"
                       "vfmadd231pd 416(%%rsi)%{1to8%}, %%zmm6, %%zmm30\n\t"
                       "vfmadd231pd 480(%%rsi)%{1to8%}, %%zmm6, %%zmm31\n\t"
                       "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm23\n\t"
                       "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm7, %%zmm24\n\t"
                       "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm7, %%zmm25\n\t"
                       "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm7, %%zmm26\n\t"
                       "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm7, %%zmm27\n\t"
                       "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm7, %%zmm28\n\t"
                       "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm7, %%zmm29\n\t"
                       "vfmadd231pd 424(%%rsi)%{1to8%}, %%zmm7, %%zmm30\n\t"
                       "vfmadd231pd 488(%%rsi)%{1to8%}, %%zmm7, %%zmm31\n\t"
                       "vmovapd 3072(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 496(%%rsi)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd %%zmm23, 0(%%rdx)\n\t"
                       "vmovapd %%zmm24, 384(%%rdx)\n\t"
                       "vmovapd %%zmm25, 768(%%rdx)\n\t"
                       "vmovapd %%zmm26, 1152(%%rdx)\n\t"
                       "vmovapd %%zmm27, 1536(%%rdx)\n\t"
                       "vmovapd %%zmm28, 1920(%%rdx)\n\t"
                       "vmovapd %%zmm29, 2304(%%rdx)\n\t"
                       "vmovapd %%zmm30, 2688(%%rdx)\n\t"
                       "vmovapd %%zmm31, 3072(%%rdx)\n\t"
                       "addq $64, %%rdi\n\t"
                       "addq $64, %%rdx\n\t"
                       "addq $8, %%r12\n\t"
                       "cmpq $48, %%r12\n\t"
                       "jl 33b\n\t"
                       "addq $-384, %%rdi\n\t"
                       "addq $168, %%rsi\n\t"
                       "addq $3072, %%rdx\n\t"
                       "addq $9, %%r13\n\t"
                       "cmpq $9, %%r13\n\t"
                       "jl 32b\n\t"
                       : : "m"(A), "m"(B), "m"(C) : "r12","r13","rdi","rdx","rsi","zmm0","zmm1","zmm2","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void patternsparse_1d_nnz8 (const double* A, const double* B, double* C) {
  __asm__ __volatile__("movq %0, %%rdi\n\t"
                       "movq %1, %%rsi\n\t"
                       "movq %2, %%rdx\n\t"
                       "movq $0, %%r13\n\t"
                       "34:\n\t"
                       "movq $0, %%r12\n\t"
                       "35:\n\t"
                       "vmovapd 0(%%rdx), %%zmm23\n\t"
                       "vmovapd 384(%%rdx), %%zmm24\n\t"
                       "vmovapd 768(%%rdx), %%zmm25\n\t"
                       "vmovapd 1152(%%rdx), %%zmm26\n\t"
                       "vmovapd 1536(%%rdx), %%zmm27\n\t"
                       "vmovapd 1920(%%rdx), %%zmm28\n\t"
                       "vmovapd 2304(%%rdx), %%zmm29\n\t"
                       "vmovapd 2688(%%rdx), %%zmm30\n\t"
                       "vmovapd 3072(%%rdx), %%zmm31\n\t"
                       "vmovapd 0(%%rdi), %%zmm0\n\t"
                       "vmovapd 384(%%rdi), %%zmm1\n\t"
                       "vmovapd 768(%%rdi), %%zmm2\n\t"
                       "vmovapd 1152(%%rdi), %%zmm3\n\t"
                       "vmovapd 1536(%%rdi), %%zmm4\n\t"
                       "vmovapd 1920(%%rdi), %%zmm5\n\t"
                       "vmovapd 2304(%%rdi), %%zmm6\n\t"
                       "vmovapd 2688(%%rdi), %%zmm7\n\t"
                       "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 432(%%rsi)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 504(%%rsi)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 440(%%rsi)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 512(%%rsi)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm24\n\t"
                       "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm2, %%zmm25\n\t"
                       "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm2, %%zmm27\n\t"
                       "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm2, %%zmm28\n\t"
                       "vfmadd231pd 448(%%rsi)%{1to8%}, %%zmm2, %%zmm30\n\t"
                       "vfmadd231pd 520(%%rsi)%{1to8%}, %%zmm2, %%zmm31\n\t"
                       "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm3, %%zmm23\n\t"
                       "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm3, %%zmm24\n\t"
                       "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm3, %%zmm25\n\t"
                       "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm3, %%zmm26\n\t"
                       "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm3, %%zmm27\n\t"
                       "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm3, %%zmm28\n\t"
                       "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm3, %%zmm29\n\t"
                       "vfmadd231pd 456(%%rsi)%{1to8%}, %%zmm3, %%zmm30\n\t"
                       "vfmadd231pd 528(%%rsi)%{1to8%}, %%zmm3, %%zmm31\n\t"
                       "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm4, %%zmm23\n\t"
                       "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm24\n\t"
                       "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm4, %%zmm25\n\t"
                       "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm4, %%zmm26\n\t"
                       "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm4, %%zmm27\n\t"
                       "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm4, %%zmm28\n\t"
                       "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm4, %%zmm29\n\t"
                       "vfmadd231pd 464(%%rsi)%{1to8%}, %%zmm4, %%zmm30\n\t"
                       "vfmadd231pd 536(%%rsi)%{1to8%}, %%zmm4, %%zmm31\n\t"
                       "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm5, %%zmm24\n\t"
                       "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm5, %%zmm25\n\t"
                       "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm5, %%zmm27\n\t"
                       "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm5, %%zmm28\n\t"
                       "vfmadd231pd 472(%%rsi)%{1to8%}, %%zmm5, %%zmm30\n\t"
                       "vfmadd231pd 544(%%rsi)%{1to8%}, %%zmm5, %%zmm31\n\t"
                       "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm6, %%zmm23\n\t"
                       "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm6, %%zmm24\n\t"
                       "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm6, %%zmm25\n\t"
                       "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm6, %%zmm26\n\t"
                       "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm6, %%zmm27\n\t"
                       "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm6, %%zmm28\n\t"
                       "vfmadd231pd 416(%%rsi)%{1to8%}, %%zmm6, %%zmm29\n\t"
                       "vfmadd231pd 480(%%rsi)%{1to8%}, %%zmm6, %%zmm30\n\t"
                       "vfmadd231pd 552(%%rsi)%{1to8%}, %%zmm6, %%zmm31\n\t"
                       "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm7, %%zmm23\n\t"
                       "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm7, %%zmm24\n\t"
                       "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm7, %%zmm25\n\t"
                       "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm7, %%zmm26\n\t"
                       "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm7, %%zmm27\n\t"
                       "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm7, %%zmm28\n\t"
                       "vfmadd231pd 424(%%rsi)%{1to8%}, %%zmm7, %%zmm29\n\t"
                       "vfmadd231pd 488(%%rsi)%{1to8%}, %%zmm7, %%zmm30\n\t"
                       "vfmadd231pd 560(%%rsi)%{1to8%}, %%zmm7, %%zmm31\n\t"
                       "vmovapd 3072(%%rdi), %%zmm0\n\t"
                       "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 496(%%rsi)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 568(%%rsi)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vmovapd %%zmm23, 0(%%rdx)\n\t"
                       "vmovapd %%zmm24, 384(%%rdx)\n\t"
                       "vmovapd %%zmm25, 768(%%rdx)\n\t"
                       "vmovapd %%zmm26, 1152(%%rdx)\n\t"
                       "vmovapd %%zmm27, 1536(%%rdx)\n\t"
                       "vmovapd %%zmm28, 1920(%%rdx)\n\t"
                       "vmovapd %%zmm29, 2304(%%rdx)\n\t"
                       "vmovapd %%zmm30, 2688(%%rdx)\n\t"
                       "vmovapd %%zmm31, 3072(%%rdx)\n\t"
                       "addq $64, %%rdi\n\t"
                       "addq $64, %%rdx\n\t"
                       "addq $8, %%r12\n\t"
                       "cmpq $48, %%r12\n\t"
                       "jl 35b\n\t"
                       "addq $-384, %%rdi\n\t"
                       "addq $192, %%rsi\n\t"
                       "addq $3072, %%rdx\n\t"
                       "addq $9, %%r13\n\t"
                       "cmpq $9, %%r13\n\t"
                       "jl 34b\n\t"
                       : : "m"(A), "m"(B), "m"(C) : "r12","r13","rdi","rdx","rsi","zmm0","zmm1","zmm2","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};




void patternsparse_1d_nnz9 (const double* A, const double* B, double* C) {
  __asm__ __volatile__("movq %0, %%rdi\n\t"
                       "movq %1, %%rsi\n\t"
                       "movq %2, %%rdx\n\t"
                       "movq $0, %%r13\n\t"
                       "36:\n\t"
                       "movq $0, %%r12\n\t"
                       "37:\n\t"
                       "vmovapd 0(%%rdx), %%zmm23\n\t"
                       "vmovapd 384(%%rdx), %%zmm24\n\t"
                       "vmovapd 768(%%rdx), %%zmm25\n\t"
                       "vmovapd 1152(%%rdx), %%zmm26\n\t"
                       "vmovapd 1536(%%rdx), %%zmm27\n\t"
                       "vmovapd 1920(%%rdx), %%zmm28\n\t"
                       "vmovapd 2304(%%rdx), %%zmm29\n\t"
                       "vmovapd 2688(%%rdx), %%zmm30\n\t"
                       "vmovapd 3072(%%rdx), %%zmm31\n\t"
                       "vmovapd 0(%%rdi), %%zmm0\n\t"
                       "vmovapd 384(%%rdi), %%zmm1\n\t"
                       "vmovapd 768(%%rdi), %%zmm2\n\t"
                       "vmovapd 1152(%%rdi), %%zmm3\n\t"
                       "vmovapd 1536(%%rdi), %%zmm4\n\t"
                       "vmovapd 1920(%%rdi), %%zmm5\n\t"
                       "vmovapd 2304(%%rdi), %%zmm6\n\t"
                       "vmovapd 2688(%%rdi), %%zmm7\n\t"
                       "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm0, %%zmm23\n\t"
                       "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm0, %%zmm24\n\t"
                       "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm25\n\t"
                       "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm0, %%zmm26\n\t"
                       "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm0, %%zmm27\n\t"
                       "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm0, %%zmm28\n\t"
                       "vfmadd231pd 432(%%rsi)%{1to8%}, %%zmm0, %%zmm29\n\t"
                       "vfmadd231pd 504(%%rsi)%{1to8%}, %%zmm0, %%zmm30\n\t"
                       "vfmadd231pd 576(%%rsi)%{1to8%}, %%zmm0, %%zmm31\n\t"
                       "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm23\n\t"
                       "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm1, %%zmm24\n\t"
                       "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm1, %%zmm25\n\t"
                       "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm1, %%zmm26\n\t"
                       "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm1, %%zmm27\n\t"
                       "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm1, %%zmm28\n\t"
                       "vfmadd231pd 440(%%rsi)%{1to8%}, %%zmm1, %%zmm29\n\t"
                       "vfmadd231pd 512(%%rsi)%{1to8%}, %%zmm1, %%zmm30\n\t"
                       "vfmadd231pd 584(%%rsi)%{1to8%}, %%zmm1, %%zmm31\n\t"
                       "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm23\n\t"
                       "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm2, %%zmm24\n\t"
                       "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm2, %%zmm25\n\t"
                       "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm2, %%zmm26\n\t"
                       "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm2, %%zmm27\n\t"
                       "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm2, %%zmm28\n\t"
                       "vfmadd231pd 448(%%rsi)%{1to8%}, %%zmm2, %%zmm29\n\t"
                       "vfmadd231pd 520(%%rsi)%{1to8%}, %%zmm2, %%zmm30\n\t"
                       "vfmadd231pd 592(%%rsi)%{1to8%}, %%zmm2, %%zmm31\n\t"
                       "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm23\n\t"
                       "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm24\n\t"
                       "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm3, %%zmm25\n\t"
                       "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm3, %%zmm26\n\t"
                       "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm3, %%zmm27\n\t"
                       "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm3, %%zmm28\n\t"
                       "vfmadd231pd 456(%%rsi)%{1to8%}, %%zmm3, %%zmm29\n\t"
                       "vfmadd231pd 528(%%rsi)%{1to8%}, %%zmm3, %%zmm30\n\t"
                       "vfmadd231pd 600(%%rsi)%{1to8%}, %%zmm3, %%zmm31\n\t"
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
                       "vmovapd 3072(%%rdi), %%zmm0\n\t"
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
                       "vmovapd %%zmm24, 384(%%rdx)\n\t"
                       "vmovapd %%zmm25, 768(%%rdx)\n\t"
                       "vmovapd %%zmm26, 1152(%%rdx)\n\t"
                       "vmovapd %%zmm27, 1536(%%rdx)\n\t"
                       "vmovapd %%zmm28, 1920(%%rdx)\n\t"
                       "vmovapd %%zmm29, 2304(%%rdx)\n\t"
                       "vmovapd %%zmm30, 2688(%%rdx)\n\t"
                       "vmovapd %%zmm31, 3072(%%rdx)\n\t"
                       "addq $64, %%rdi\n\t"
                       "addq $64, %%rdx\n\t"
                       "addq $8, %%r12\n\t"
                       "cmpq $48, %%r12\n\t"
                       "jl 37b\n\t"
                       "addq $-384, %%rdi\n\t"
                       "addq $216, %%rsi\n\t"
                       "addq $3072, %%rdx\n\t"
                       "addq $9, %%r13\n\t"
                       "cmpq $9, %%r13\n\t"
                       "jl 36b\n\t"
                       : : "m"(A), "m"(B), "m"(C) : "r12","r13","rdi","rdx","rsi","zmm0","zmm1","zmm2","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7");
};


 


int main(int argc, char ** argv) {

    struct timespec start, end;
    struct colmajor A = zeros(48, 9);
    struct colmajor C_expected = zeros(48, 9);
    struct colmajor C_actual = zeros(48, 9);
    struct patternsparse B = create_patternsparse(9, 9, 3, 3);
    struct colmajor B_dense = zeros(9,9);
    fill(&A, 1, 2);
     



    /***** Testing patternsparse_1d_nnz1 *****/

    reset(&C_expected);
    reset(&C_actual);
    update_pattern(&B, 0, 0, 1);
    fill_sparse(&B, 1, 2);
    sparse2dense(&B, &B_dense);

    ddmm(&A, &B_dense, &C_expected);
    patternsparse_1d_nnz1(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        patternsparse_1d_nnz1(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("patternsparse_1d_nnz1, %lf\n",
        1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));
    


    /***** Testing patternsparse_1d_nnz2 *****/

    reset(&C_expected);
    reset(&C_actual);
    update_pattern(&B, 1, 1, 1);
    fill_sparse(&B, 1, 2);
    sparse2dense(&B, &B_dense);

    ddmm(&A, &B_dense, &C_expected);
    patternsparse_1d_nnz2(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        patternsparse_1d_nnz2(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("patternsparse_1d_nnz2, %lf\n",
        1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));
    


    /***** Testing patternsparse_1d_nnz3 *****/

    reset(&C_expected);
    reset(&C_actual);
    update_pattern(&B, 2, 2, 1);
    fill_sparse(&B, 1, 2);
    sparse2dense(&B, &B_dense);

    ddmm(&A, &B_dense, &C_expected);
    patternsparse_1d_nnz3(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        patternsparse_1d_nnz3(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("patternsparse_1d_nnz3, %lf\n",
        1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));
    


    /***** Testing patternsparse_1d_nnz4 *****/

    reset(&C_expected);
    reset(&C_actual);
    update_pattern(&B, 0, 1, 1);
    fill_sparse(&B, 1, 2);
    sparse2dense(&B, &B_dense);

    ddmm(&A, &B_dense, &C_expected);
    patternsparse_1d_nnz4(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        patternsparse_1d_nnz4(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("patternsparse_1d_nnz4, %lf\n",
        1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));
    


    /***** Testing patternsparse_1d_nnz5 *****/

    reset(&C_expected);
    reset(&C_actual);
    update_pattern(&B, 1, 2, 1);
    fill_sparse(&B, 1, 2);
    sparse2dense(&B, &B_dense);

    ddmm(&A, &B_dense, &C_expected);
    patternsparse_1d_nnz5(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        patternsparse_1d_nnz5(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("patternsparse_1d_nnz5, %lf\n",
        1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));
    


    /***** Testing patternsparse_1d_nnz6 *****/

    reset(&C_expected);
    reset(&C_actual);
    update_pattern(&B, 0, 2, 1);
    fill_sparse(&B, 1, 2);
    sparse2dense(&B, &B_dense);

    ddmm(&A, &B_dense, &C_expected);
    patternsparse_1d_nnz6(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        patternsparse_1d_nnz6(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("patternsparse_1d_nnz6, %lf\n",
        1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));
    


    /***** Testing patternsparse_1d_nnz7 *****/

    reset(&C_expected);
    reset(&C_actual);
    update_pattern(&B, 1, 0, 1);
    fill_sparse(&B, 1, 2);
    sparse2dense(&B, &B_dense);

    ddmm(&A, &B_dense, &C_expected);
    patternsparse_1d_nnz7(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        patternsparse_1d_nnz7(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("patternsparse_1d_nnz7, %lf\n",
        1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));
    


    /***** Testing patternsparse_1d_nnz8 *****/

    reset(&C_expected);
    reset(&C_actual);
    update_pattern(&B, 2, 1, 1);
    fill_sparse(&B, 1, 2);
    sparse2dense(&B, &B_dense);

    ddmm(&A, &B_dense, &C_expected);
    patternsparse_1d_nnz8(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        patternsparse_1d_nnz8(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("patternsparse_1d_nnz8, %lf\n",
        1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));
    


    /***** Testing patternsparse_1d_nnz9 *****/

    reset(&C_expected);
    reset(&C_actual);
    update_pattern(&B, 2, 0, 1);
    fill_sparse(&B, 1, 2);
    sparse2dense(&B, &B_dense);

    ddmm(&A, &B_dense, &C_expected);
    patternsparse_1d_nnz9(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        patternsparse_1d_nnz9(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("patternsparse_1d_nnz9, %lf\n",
        1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));
    

 



}
