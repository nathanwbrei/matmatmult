

#include<stdio.h>
#include<time.h>
#include "../include/timing.h"
#include "../include/colmajor.h"
#include "../include/patternsparse.h"
 




void scalability_full_0_nnzs (const double* A, const double* B, double* C) {
  __asm__ __volatile__("movq %0, %%rdi\n\t"
                       "movq %1, %%rsi\n\t"
                       "movq %2, %%rdx\n\t"
                         // scalability_full_0_nnzs, looped over n,m
                           // for r13 <- 0:28:28)
                           "movq $0, %%r13\r\n"
                           "0:\r\n"
                             // for r12 <- 0:1:16)
                             "movq $0, %%r12\r\n"
                             "1:\r\n"
                               // KT unrolled scalability_full_0_nnzs
                                 // Load C register block @ (d=0,r=0)
                                 "vmovapd 0(%%rdx), %%zmm4\r\n"                              // C [0,0] [0,0]
                                 "vmovapd 1024(%%rdx), %%zmm5\r\n"                           // C [0,0] [0,1]
                                 "vmovapd 2048(%%rdx), %%zmm6\r\n"                           // C [0,0] [0,2]
                                 "vmovapd 3072(%%rdx), %%zmm7\r\n"                           // C [0,0] [0,3]
                                 "vmovapd 4096(%%rdx), %%zmm8\r\n"                           // C [0,0] [0,4]
                                 "vmovapd 5120(%%rdx), %%zmm9\r\n"                           // C [0,0] [0,5]
                                 "vmovapd 6144(%%rdx), %%zmm10\r\n"                          // C [0,0] [0,6]
                                 "vmovapd 7168(%%rdx), %%zmm11\r\n"                          // C [0,0] [0,7]
                                 "vmovapd 8192(%%rdx), %%zmm12\r\n"                          // C [0,0] [0,8]
                                 "vmovapd 9216(%%rdx), %%zmm13\r\n"                          // C [0,0] [0,9]
                                 "vmovapd 10240(%%rdx), %%zmm14\r\n"                         // C [0,0] [0,10]
                                 "vmovapd 11264(%%rdx), %%zmm15\r\n"                         // C [0,0] [0,11]
                                 "vmovapd 12288(%%rdx), %%zmm16\r\n"                         // C [0,0] [0,12]
                                 "vmovapd 13312(%%rdx), %%zmm17\r\n"                         // C [0,0] [0,13]
                                 "vmovapd 14336(%%rdx), %%zmm18\r\n"                         // C [0,0] [0,14]
                                 "vmovapd 15360(%%rdx), %%zmm19\r\n"                         // C [0,0] [0,15]
                                 "vmovapd 16384(%%rdx), %%zmm20\r\n"                         // C [0,0] [0,16]
                                 "vmovapd 17408(%%rdx), %%zmm21\r\n"                         // C [0,0] [0,17]
                                 "vmovapd 18432(%%rdx), %%zmm22\r\n"                         // C [0,0] [0,18]
                                 "vmovapd 19456(%%rdx), %%zmm23\r\n"                         // C [0,0] [0,19]
                                 "vmovapd 20480(%%rdx), %%zmm24\r\n"                         // C [0,0] [0,20]
                                 "vmovapd 21504(%%rdx), %%zmm25\r\n"                         // C [0,0] [0,21]
                                 "vmovapd 22528(%%rdx), %%zmm26\r\n"                         // C [0,0] [0,22]
                                 "vmovapd 23552(%%rdx), %%zmm27\r\n"                         // C [0,0] [0,23]
                                 "vmovapd 24576(%%rdx), %%zmm28\r\n"                         // C [0,0] [0,24]
                                 "vmovapd 25600(%%rdx), %%zmm29\r\n"                         // C [0,0] [0,25]
                                 "vmovapd 26624(%%rdx), %%zmm30\r\n"                         // C [0,0] [0,26]
                                 "vmovapd 27648(%%rdx), %%zmm31\r\n"                         // C [0,0] [0,27]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=0)
                                   "vmovapd 3072(%%rdi), %%zmm3\r\n"                           // A [0,0] [0,3]
                                 "vfmadd231pd 1(%%rsi)%{1to8%}, %%zmm3, %%zmm7\r\n"          // C[0,3] += A[0,3]*B[0,0][3,3]
                                 "vfmadd231pd 2(%%rsi)%{1to8%}, %%zmm3, %%zmm16\r\n"         // C[0,12] += A[0,3]*B[0,0][3,12]
                                 "vfmadd231pd 3(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"         // C[0,21] += A[0,3]*B[0,0][3,21]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=1)
                                   "vmovapd 4096(%%rdi), %%zmm0\r\n"                           // A [0,1] [0,0]
                                   "vmovapd 7168(%%rdi), %%zmm3\r\n"                           // A [0,1] [0,3]
                                 "vfmadd231pd 7(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"         // C[0,22] += A[0,0]*B[1,0][0,22]
                                 "vfmadd231pd 4(%%rsi)%{1to8%}, %%zmm3, %%zmm7\r\n"          // C[0,3] += A[0,3]*B[1,0][3,3]
                                 "vfmadd231pd 5(%%rsi)%{1to8%}, %%zmm3, %%zmm12\r\n"         // C[0,8] += A[0,3]*B[1,0][3,8]
                                 "vfmadd231pd 6(%%rsi)%{1to8%}, %%zmm3, %%zmm13\r\n"         // C[0,9] += A[0,3]*B[1,0][3,9]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=2)
                                   "vmovapd 8192(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
                                   "vmovapd 9216(%%rdi), %%zmm1\r\n"                           // A [0,2] [0,1]
                                   "vmovapd 11264(%%rdi), %%zmm3\r\n"                          // A [0,2] [0,3]
                                 "vfmadd231pd 10(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"        // C[0,20] += A[0,0]*B[2,0][0,20]
                                 "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm6\r\n"          // C[0,2] += A[0,1]*B[2,0][1,2]
                                 "vfmadd231pd 9(%%rsi)%{1to8%}, %%zmm3, %%zmm23\r\n"         // C[0,19] += A[0,3]*B[2,0][3,19]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=3)
                                   "vmovapd 13312(%%rdi), %%zmm1\r\n"                          // A [0,3] [0,1]
                                   "vmovapd 14336(%%rdi), %%zmm2\r\n"                          // A [0,3] [0,2]
                                 "vfmadd231pd 11(%%rsi)%{1to8%}, %%zmm1, %%zmm9\r\n"         // C[0,5] += A[0,1]*B[3,0][1,5]
                                 "vfmadd231pd 12(%%rsi)%{1to8%}, %%zmm1, %%zmm20\r\n"        // C[0,16] += A[0,1]*B[3,0][1,16]
                                 "vfmadd231pd 13(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,22] += A[0,2]*B[3,0][2,22]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=4)
                                   "vmovapd 16384(%%rdi), %%zmm0\r\n"                          // A [0,4] [0,0]
                                   "vmovapd 17408(%%rdi), %%zmm1\r\n"                          // A [0,4] [0,1]
                                 "vfmadd231pd 14(%%rsi)%{1to8%}, %%zmm0, %%zmm17\r\n"        // C[0,13] += A[0,0]*B[4,0][0,13]
                                 "vfmadd231pd 15(%%rsi)%{1to8%}, %%zmm1, %%zmm22\r\n"        // C[0,18] += A[0,1]*B[4,0][1,18]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=5)
                                   "vmovapd 20480(%%rdi), %%zmm0\r\n"                          // A [0,5] [0,0]
                                   "vmovapd 21504(%%rdi), %%zmm1\r\n"                          // A [0,5] [0,1]
                                 "vfmadd231pd 17(%%rsi)%{1to8%}, %%zmm0, %%zmm18\r\n"        // C[0,14] += A[0,0]*B[5,0][0,14]
                                 "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm1, %%zmm7\r\n"         // C[0,3] += A[0,1]*B[5,0][1,3]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=6)
                                   "vmovapd 26624(%%rdi), %%zmm2\r\n"                          // A [0,6] [0,2]
                                   "vmovapd 27648(%%rdi), %%zmm3\r\n"                          // A [0,6] [0,3]
                                 "vfmadd231pd 19(%%rsi)%{1to8%}, %%zmm2, %%zmm14\r\n"        // C[0,10] += A[0,2]*B[6,0][2,10]
                                 "vfmadd231pd 23(%%rsi)%{1to8%}, %%zmm2, %%zmm23\r\n"        // C[0,19] += A[0,2]*B[6,0][2,19]
                                 "vfmadd231pd 18(%%rsi)%{1to8%}, %%zmm3, %%zmm4\r\n"         // C[0,0] += A[0,3]*B[6,0][3,0]
                                 "vfmadd231pd 20(%%rsi)%{1to8%}, %%zmm3, %%zmm15\r\n"        // C[0,11] += A[0,3]*B[6,0][3,11]
                                 "vfmadd231pd 21(%%rsi)%{1to8%}, %%zmm3, %%zmm19\r\n"        // C[0,15] += A[0,3]*B[6,0][3,15]
                                 "vfmadd231pd 22(%%rsi)%{1to8%}, %%zmm3, %%zmm22\r\n"        // C[0,18] += A[0,3]*B[6,0][3,18]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=7)
                                   "vmovapd 28672(%%rdi), %%zmm0\r\n"                          // A [0,7] [0,0]
                                 "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm0, %%zmm7\r\n"         // C[0,3] += A[0,0]*B[7,0][0,3]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=8)
                                   "vmovapd 34816(%%rdi), %%zmm2\r\n"                          // A [0,8] [0,2]
                                   "vmovapd 35840(%%rdi), %%zmm3\r\n"                          // A [0,8] [0,3]
                                 "vfmadd231pd 25(%%rsi)%{1to8%}, %%zmm2, %%zmm6\r\n"         // C[0,2] += A[0,2]*B[8,0][2,2]
                                 "vfmadd231pd 26(%%rsi)%{1to8%}, %%zmm3, %%zmm18\r\n"        // C[0,14] += A[0,3]*B[8,0][3,14]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=9)
                                   "vmovapd 37888(%%rdi), %%zmm1\r\n"                          // A [0,9] [0,1]
                                   "vmovapd 38912(%%rdi), %%zmm2\r\n"                          // A [0,9] [0,2]
                                   "vmovapd 39936(%%rdi), %%zmm3\r\n"                          // A [0,9] [0,3]
                                 "vfmadd231pd 29(%%rsi)%{1to8%}, %%zmm1, %%zmm18\r\n"        // C[0,14] += A[0,1]*B[9,0][1,14]
                                 "vfmadd231pd 28(%%rsi)%{1to8%}, %%zmm2, %%zmm13\r\n"        // C[0,9] += A[0,2]*B[9,0][2,9]
                                 "vfmadd231pd 27(%%rsi)%{1to8%}, %%zmm3, %%zmm4\r\n"         // C[0,0] += A[0,3]*B[9,0][3,0]
                                 "vfmadd231pd 30(%%rsi)%{1to8%}, %%zmm3, %%zmm21\r\n"        // C[0,17] += A[0,3]*B[9,0][3,17]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=10)
                                   "vmovapd 40960(%%rdi), %%zmm0\r\n"                          // A [0,10] [0,0]
                                   "vmovapd 41984(%%rdi), %%zmm1\r\n"                          // A [0,10] [0,1]
                                   "vmovapd 43008(%%rdi), %%zmm2\r\n"                          // A [0,10] [0,2]
                                 "vfmadd231pd 31(%%rsi)%{1to8%}, %%zmm0, %%zmm12\r\n"        // C[0,8] += A[0,0]*B[10,0][0,8]
                                 "vfmadd231pd 33(%%rsi)%{1to8%}, %%zmm1, %%zmm20\r\n"        // C[0,16] += A[0,1]*B[10,0][1,16]
                                 "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm2, %%zmm18\r\n"        // C[0,14] += A[0,2]*B[10,0][2,14]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=11)
                                   "vmovapd 45056(%%rdi), %%zmm0\r\n"                          // A [0,11] [0,0]
                                   "vmovapd 46080(%%rdi), %%zmm1\r\n"                          // A [0,11] [0,1]
                                   "vmovapd 47104(%%rdi), %%zmm2\r\n"                          // A [0,11] [0,2]
                                   "vmovapd 48128(%%rdi), %%zmm3\r\n"                          // A [0,11] [0,3]
                                 "vfmadd231pd 36(%%rsi)%{1to8%}, %%zmm0, %%zmm18\r\n"        // C[0,14] += A[0,0]*B[11,0][0,14]
                                 "vfmadd231pd 37(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"        // C[0,25] += A[0,1]*B[11,0][1,25]
                                 "vfmadd231pd 38(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,27] += A[0,1]*B[11,0][1,27]
                                 "vfmadd231pd 35(%%rsi)%{1to8%}, %%zmm2, %%zmm15\r\n"        // C[0,11] += A[0,2]*B[11,0][2,11]
                                 "vfmadd231pd 34(%%rsi)%{1to8%}, %%zmm3, %%zmm5\r\n"         // C[0,1] += A[0,3]*B[11,0][3,1]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=12)
                                   "vmovapd 49152(%%rdi), %%zmm0\r\n"                          // A [0,12] [0,0]
                                   "vmovapd 50176(%%rdi), %%zmm1\r\n"                          // A [0,12] [0,1]
                                   "vmovapd 51200(%%rdi), %%zmm2\r\n"                          // A [0,12] [0,2]
                                   "vmovapd 52224(%%rdi), %%zmm3\r\n"                          // A [0,12] [0,3]
                                 "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm0, %%zmm16\r\n"        // C[0,12] += A[0,0]*B[12,0][0,12]
                                 "vfmadd231pd 41(%%rsi)%{1to8%}, %%zmm1, %%zmm23\r\n"        // C[0,19] += A[0,1]*B[12,0][1,19]
                                 "vfmadd231pd 42(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"        // C[0,20] += A[0,2]*B[12,0][2,20]
                                 "vfmadd231pd 39(%%rsi)%{1to8%}, %%zmm3, %%zmm8\r\n"         // C[0,4] += A[0,3]*B[12,0][3,4]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=13)
                                   "vmovapd 54272(%%rdi), %%zmm1\r\n"                          // A [0,13] [0,1]
                                   "vmovapd 56320(%%rdi), %%zmm3\r\n"                          // A [0,13] [0,3]
                                 "vfmadd231pd 43(%%rsi)%{1to8%}, %%zmm1, %%zmm16\r\n"        // C[0,12] += A[0,1]*B[13,0][1,12]
                                 "vfmadd231pd 44(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"        // C[0,26] += A[0,3]*B[13,0][3,26]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=14)
                                   "vmovapd 59392(%%rdi), %%zmm2\r\n"                          // A [0,14] [0,2]
                                   "vmovapd 60416(%%rdi), %%zmm3\r\n"                          // A [0,14] [0,3]
                                 "vfmadd231pd 45(%%rsi)%{1to8%}, %%zmm2, %%zmm14\r\n"        // C[0,10] += A[0,2]*B[14,0][2,10]
                                 "vfmadd231pd 46(%%rsi)%{1to8%}, %%zmm3, %%zmm14\r\n"        // C[0,10] += A[0,3]*B[14,0][3,10]
                                 "vfmadd231pd 47(%%rsi)%{1to8%}, %%zmm3, %%zmm17\r\n"        // C[0,13] += A[0,3]*B[14,0][3,13]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=15)
                                   "vmovapd 61440(%%rdi), %%zmm0\r\n"                          // A [0,15] [0,0]
                                   "vmovapd 62464(%%rdi), %%zmm1\r\n"                          // A [0,15] [0,1]
                                   "vmovapd 63488(%%rdi), %%zmm2\r\n"                          // A [0,15] [0,2]
                                   "vmovapd 64512(%%rdi), %%zmm3\r\n"                          // A [0,15] [0,3]
                                 "vfmadd231pd 51(%%rsi)%{1to8%}, %%zmm0, %%zmm19\r\n"        // C[0,15] += A[0,0]*B[15,0][0,15]
                                 "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm1, %%zmm8\r\n"         // C[0,4] += A[0,1]*B[15,0][1,4]
                                 "vfmadd231pd 49(%%rsi)%{1to8%}, %%zmm2, %%zmm10\r\n"        // C[0,6] += A[0,2]*B[15,0][2,6]
                                 "vfmadd231pd 52(%%rsi)%{1to8%}, %%zmm2, %%zmm19\r\n"        // C[0,15] += A[0,2]*B[15,0][2,15]
                                 "vfmadd231pd 50(%%rsi)%{1to8%}, %%zmm3, %%zmm13\r\n"        // C[0,9] += A[0,3]*B[15,0][3,9]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=16)
                                   "vmovapd 65536(%%rdi), %%zmm0\r\n"                          // A [0,16] [0,0]
                                   "vmovapd 66560(%%rdi), %%zmm1\r\n"                          // A [0,16] [0,1]
                                   "vmovapd 67584(%%rdi), %%zmm2\r\n"                          // A [0,16] [0,2]
                                 "vfmadd231pd 55(%%rsi)%{1to8%}, %%zmm0, %%zmm8\r\n"         // C[0,4] += A[0,0]*B[16,0][0,4]
                                 "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm0, %%zmm13\r\n"        // C[0,9] += A[0,0]*B[16,0][0,9]
                                 "vfmadd231pd 53(%%rsi)%{1to8%}, %%zmm1, %%zmm4\r\n"         // C[0,0] += A[0,1]*B[16,0][1,0]
                                 "vfmadd231pd 54(%%rsi)%{1to8%}, %%zmm1, %%zmm6\r\n"         // C[0,2] += A[0,1]*B[16,0][1,2]
                                 "vfmadd231pd 57(%%rsi)%{1to8%}, %%zmm1, %%zmm18\r\n"        // C[0,14] += A[0,1]*B[16,0][1,14]
                                 "vfmadd231pd 58(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"        // C[0,21] += A[0,2]*B[16,0][2,21]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=18)
                                   "vmovapd 76800(%%rdi), %%zmm3\r\n"                          // A [0,18] [0,3]
                                 "vfmadd231pd 59(%%rsi)%{1to8%}, %%zmm3, %%zmm16\r\n"        // C[0,12] += A[0,3]*B[18,0][3,12]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=19)
                                   "vmovapd 77824(%%rdi), %%zmm0\r\n"                          // A [0,19] [0,0]
                                   "vmovapd 78848(%%rdi), %%zmm1\r\n"                          // A [0,19] [0,1]
                                   "vmovapd 79872(%%rdi), %%zmm2\r\n"                          // A [0,19] [0,2]
                                   "vmovapd 80896(%%rdi), %%zmm3\r\n"                          // A [0,19] [0,3]
                                 "vfmadd231pd 63(%%rsi)%{1to8%}, %%zmm0, %%zmm15\r\n"        // C[0,11] += A[0,0]*B[19,0][0,11]
                                 "vfmadd231pd 60(%%rsi)%{1to8%}, %%zmm1, %%zmm8\r\n"         // C[0,4] += A[0,1]*B[19,0][1,4]
                                 "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm16\r\n"        // C[0,12] += A[0,2]*B[19,0][2,12]
                                 "vfmadd231pd 65(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0,27] += A[0,2]*B[19,0][2,27]
                                 "vfmadd231pd 61(%%rsi)%{1to8%}, %%zmm3, %%zmm8\r\n"         // C[0,4] += A[0,3]*B[19,0][3,4]
                                 "vfmadd231pd 62(%%rsi)%{1to8%}, %%zmm3, %%zmm10\r\n"        // C[0,6] += A[0,3]*B[19,0][3,6]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=20)
                                   "vmovapd 82944(%%rdi), %%zmm1\r\n"                          // A [0,20] [0,1]
                                   "vmovapd 84992(%%rdi), %%zmm3\r\n"                          // A [0,20] [0,3]
                                 "vfmadd231pd 66(%%rsi)%{1to8%}, %%zmm1, %%zmm9\r\n"         // C[0,5] += A[0,1]*B[20,0][1,5]
                                 "vfmadd231pd 67(%%rsi)%{1to8%}, %%zmm1, %%zmm14\r\n"        // C[0,10] += A[0,1]*B[20,0][1,10]
                                 "vfmadd231pd 68(%%rsi)%{1to8%}, %%zmm3, %%zmm23\r\n"        // C[0,19] += A[0,3]*B[20,0][3,19]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=21)
                                   "vmovapd 86016(%%rdi), %%zmm0\r\n"                          // A [0,21] [0,0]
                                   "vmovapd 88064(%%rdi), %%zmm2\r\n"                          // A [0,21] [0,2]
                                   "vmovapd 89088(%%rdi), %%zmm3\r\n"                          // A [0,21] [0,3]
                                 "vfmadd231pd 69(%%rsi)%{1to8%}, %%zmm0, %%zmm6\r\n"         // C[0,2] += A[0,0]*B[21,0][0,2]
                                 "vfmadd231pd 71(%%rsi)%{1to8%}, %%zmm0, %%zmm10\r\n"        // C[0,6] += A[0,0]*B[21,0][0,6]
                                 "vfmadd231pd 75(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,27] += A[0,0]*B[21,0][0,27]
                                 "vfmadd231pd 70(%%rsi)%{1to8%}, %%zmm2, %%zmm7\r\n"         // C[0,3] += A[0,2]*B[21,0][2,3]
                                 "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm11\r\n"        // C[0,7] += A[0,2]*B[21,0][2,7]
                                 "vfmadd231pd 74(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"        // C[0,24] += A[0,2]*B[21,0][2,24]
                                 "vfmadd231pd 73(%%rsi)%{1to8%}, %%zmm3, %%zmm11\r\n"        // C[0,7] += A[0,3]*B[21,0][3,7]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=22)
                                   "vmovapd 90112(%%rdi), %%zmm0\r\n"                          // A [0,22] [0,0]
                                   "vmovapd 91136(%%rdi), %%zmm1\r\n"                          // A [0,22] [0,1]
                                   "vmovapd 92160(%%rdi), %%zmm2\r\n"                          // A [0,22] [0,2]
                                 "vfmadd231pd 77(%%rsi)%{1to8%}, %%zmm0, %%zmm14\r\n"        // C[0,10] += A[0,0]*B[22,0][0,10]
                                 "vfmadd231pd 76(%%rsi)%{1to8%}, %%zmm1, %%zmm13\r\n"        // C[0,9] += A[0,1]*B[22,0][1,9]
                                 "vfmadd231pd 79(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,22] += A[0,1]*B[22,0][1,22]
                                 "vfmadd231pd 78(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"        // C[0,20] += A[0,2]*B[22,0][2,20]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=23)
                                   "vmovapd 97280(%%rdi), %%zmm3\r\n"                          // A [0,23] [0,3]
                                 "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm3, %%zmm19\r\n"        // C[0,15] += A[0,3]*B[23,0][3,15]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=24)
                                   "vmovapd 98304(%%rdi), %%zmm0\r\n"                          // A [0,24] [0,0]
                                   "vmovapd 100352(%%rdi), %%zmm2\r\n"                         // A [0,24] [0,2]
                                   "vmovapd 101376(%%rdi), %%zmm3\r\n"                         // A [0,24] [0,3]
                                 "vfmadd231pd 82(%%rsi)%{1to8%}, %%zmm0, %%zmm20\r\n"        // C[0,16] += A[0,0]*B[24,0][0,16]
                                 "vfmadd231pd 83(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"        // C[0,20] += A[0,2]*B[24,0][2,20]
                                 "vfmadd231pd 81(%%rsi)%{1to8%}, %%zmm3, %%zmm10\r\n"        // C[0,6] += A[0,3]*B[24,0][3,6]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=25)
                                   "vmovapd 102400(%%rdi), %%zmm0\r\n"                         // A [0,25] [0,0]
                                   "vmovapd 103424(%%rdi), %%zmm1\r\n"                         // A [0,25] [0,1]
                                   "vmovapd 104448(%%rdi), %%zmm2\r\n"                         // A [0,25] [0,2]
                                   "vmovapd 105472(%%rdi), %%zmm3\r\n"                         // A [0,25] [0,3]
                                 "vfmadd231pd 86(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,23] += A[0,0]*B[25,0][0,23]
                                 "vfmadd231pd 84(%%rsi)%{1to8%}, %%zmm1, %%zmm7\r\n"         // C[0,3] += A[0,1]*B[25,0][1,3]
                                 "vfmadd231pd 87(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,23] += A[0,2]*B[25,0][2,23]
                                 "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"        // C[0,25] += A[0,2]*B[25,0][2,25]
                                 "vfmadd231pd 85(%%rsi)%{1to8%}, %%zmm3, %%zmm14\r\n"        // C[0,10] += A[0,3]*B[25,0][3,10]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=26)
                                   "vmovapd 106496(%%rdi), %%zmm0\r\n"                         // A [0,26] [0,0]
                                   "vmovapd 109568(%%rdi), %%zmm3\r\n"                         // A [0,26] [0,3]
                                 "vfmadd231pd 89(%%rsi)%{1to8%}, %%zmm0, %%zmm12\r\n"        // C[0,8] += A[0,0]*B[26,0][0,8]
                                 "vfmadd231pd 90(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"        // C[0,22] += A[0,3]*B[26,0][3,22]
                                 "vfmadd231pd 91(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"        // C[0,25] += A[0,3]*B[26,0][3,25]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=27)
                                   "vmovapd 110592(%%rdi), %%zmm0\r\n"                         // A [0,27] [0,0]
                                 "vfmadd231pd 92(%%rsi)%{1to8%}, %%zmm0, %%zmm17\r\n"        // C[0,13] += A[0,0]*B[27,0][0,13]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=28)
                                   "vmovapd 115712(%%rdi), %%zmm1\r\n"                         // A [0,28] [0,1]
                                   "vmovapd 116736(%%rdi), %%zmm2\r\n"                         // A [0,28] [0,2]
                                   "vmovapd 117760(%%rdi), %%zmm3\r\n"                         // A [0,28] [0,3]
                                 "vfmadd231pd 94(%%rsi)%{1to8%}, %%zmm1, %%zmm23\r\n"        // C[0,19] += A[0,1]*B[28,0][1,19]
                                 "vfmadd231pd 93(%%rsi)%{1to8%}, %%zmm2, %%zmm18\r\n"        // C[0,14] += A[0,2]*B[28,0][2,14]
                                 "vfmadd231pd 95(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"        // C[0,26] += A[0,3]*B[28,0][3,26]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=29)
                                   "vmovapd 118784(%%rdi), %%zmm0\r\n"                         // A [0,29] [0,0]
                                   "vmovapd 119808(%%rdi), %%zmm1\r\n"                         // A [0,29] [0,1]
                                 "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm0, %%zmm13\r\n"        // C[0,9] += A[0,0]*B[29,0][0,9]
                                 "vfmadd231pd 97(%%rsi)%{1to8%}, %%zmm1, %%zmm21\r\n"        // C[0,17] += A[0,1]*B[29,0][1,17]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=30)
                                   "vmovapd 124928(%%rdi), %%zmm2\r\n"                         // A [0,30] [0,2]
                                 "vfmadd231pd 98(%%rsi)%{1to8%}, %%zmm2, %%zmm21\r\n"        // C[0,17] += A[0,2]*B[30,0][2,17]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=31)
                                   "vmovapd 128000(%%rdi), %%zmm1\r\n"                         // A [0,31] [0,1]
                                   "vmovapd 129024(%%rdi), %%zmm2\r\n"                         // A [0,31] [0,2]
                                 "vfmadd231pd 99(%%rsi)%{1to8%}, %%zmm1, %%zmm17\r\n"        // C[0,13] += A[0,1]*B[31,0][1,13]
                                 "vfmadd231pd 100(%%rsi)%{1to8%}, %%zmm2, %%zmm20\r\n"       // C[0,16] += A[0,2]*B[31,0][2,16]
                                 // Store C register block @ (d=0,r=0)
                                 "vmovapd %%zmm4, 0(%%rdx)\r\n"                              // C [0,0] [0,0]
                                 "vmovapd %%zmm5, 1024(%%rdx)\r\n"                           // C [0,0] [0,1]
                                 "vmovapd %%zmm6, 2048(%%rdx)\r\n"                           // C [0,0] [0,2]
                                 "vmovapd %%zmm7, 3072(%%rdx)\r\n"                           // C [0,0] [0,3]
                                 "vmovapd %%zmm8, 4096(%%rdx)\r\n"                           // C [0,0] [0,4]
                                 "vmovapd %%zmm9, 5120(%%rdx)\r\n"                           // C [0,0] [0,5]
                                 "vmovapd %%zmm10, 6144(%%rdx)\r\n"                          // C [0,0] [0,6]
                                 "vmovapd %%zmm11, 7168(%%rdx)\r\n"                          // C [0,0] [0,7]
                                 "vmovapd %%zmm12, 8192(%%rdx)\r\n"                          // C [0,0] [0,8]
                                 "vmovapd %%zmm13, 9216(%%rdx)\r\n"                          // C [0,0] [0,9]
                                 "vmovapd %%zmm14, 10240(%%rdx)\r\n"                         // C [0,0] [0,10]
                                 "vmovapd %%zmm15, 11264(%%rdx)\r\n"                         // C [0,0] [0,11]
                                 "vmovapd %%zmm16, 12288(%%rdx)\r\n"                         // C [0,0] [0,12]
                                 "vmovapd %%zmm17, 13312(%%rdx)\r\n"                         // C [0,0] [0,13]
                                 "vmovapd %%zmm18, 14336(%%rdx)\r\n"                         // C [0,0] [0,14]
                                 "vmovapd %%zmm19, 15360(%%rdx)\r\n"                         // C [0,0] [0,15]
                                 "vmovapd %%zmm20, 16384(%%rdx)\r\n"                         // C [0,0] [0,16]
                                 "vmovapd %%zmm21, 17408(%%rdx)\r\n"                         // C [0,0] [0,17]
                                 "vmovapd %%zmm22, 18432(%%rdx)\r\n"                         // C [0,0] [0,18]
                                 "vmovapd %%zmm23, 19456(%%rdx)\r\n"                         // C [0,0] [0,19]
                                 "vmovapd %%zmm24, 20480(%%rdx)\r\n"                         // C [0,0] [0,20]
                                 "vmovapd %%zmm25, 21504(%%rdx)\r\n"                         // C [0,0] [0,21]
                                 "vmovapd %%zmm26, 22528(%%rdx)\r\n"                         // C [0,0] [0,22]
                                 "vmovapd %%zmm27, 23552(%%rdx)\r\n"                         // C [0,0] [0,23]
                                 "vmovapd %%zmm28, 24576(%%rdx)\r\n"                         // C [0,0] [0,24]
                                 "vmovapd %%zmm29, 25600(%%rdx)\r\n"                         // C [0,0] [0,25]
                                 "vmovapd %%zmm30, 26624(%%rdx)\r\n"                         // C [0,0] [0,26]
                                 "vmovapd %%zmm31, 27648(%%rdx)\r\n"                         // C [0,0] [0,27]
                             "addq $64, %%rdi\r\n"                                       // Move A to (d=1,r=0)
                             "addq $64, %%rdx\r\n"                                       // Move C to (d=1,r=0)
                             "addq $1, %%r12\r\n"
                             "cmp $16, %%r12\r\n"
                             "jl 1b\r\n"
                           "addq $-1024, %%rdi\r\n"                                    // Move A to (d=-16,r=0)
                           "addq $27648, %%rdx\r\n"                                    // Move C to (d=-16,r=1)
                           "addq $28, %%r13\r\n"
                           "cmp $28, %%r13\r\n"
                           "jl 0b\r\n"
                       : : "m"(A), "m"(B), "m"(C) : "r12","r13","rdi","rdx","zmm0","zmm1","zmm10","zmm11","zmm12","zmm13","zmm14","zmm15","zmm16","zmm17","zmm18","zmm19","zmm2","zmm20","zmm21","zmm22","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8","zmm9");
};




void scalability_full_28_nnzs (const double* A, const double* B, double* C) {
  __asm__ __volatile__("movq %0, %%rdi\n\t"
                       "movq %1, %%rsi\n\t"
                       "movq %2, %%rdx\n\t"
                         // scalability_full_28_nnzs, looped over n,m
                           // for r13 <- 0:28:28)
                           "movq $0, %%r13\r\n"
                           "2:\r\n"
                             // for r12 <- 0:1:16)
                             "movq $0, %%r12\r\n"
                             "3:\r\n"
                               // KT unrolled scalability_full_28_nnzs
                                 // Load C register block @ (d=0,r=0)
                                 "vmovapd 0(%%rdx), %%zmm4\r\n"                              // C [0,0] [0,0]
                                 "vmovapd 1024(%%rdx), %%zmm5\r\n"                           // C [0,0] [0,1]
                                 "vmovapd 2048(%%rdx), %%zmm6\r\n"                           // C [0,0] [0,2]
                                 "vmovapd 3072(%%rdx), %%zmm7\r\n"                           // C [0,0] [0,3]
                                 "vmovapd 4096(%%rdx), %%zmm8\r\n"                           // C [0,0] [0,4]
                                 "vmovapd 5120(%%rdx), %%zmm9\r\n"                           // C [0,0] [0,5]
                                 "vmovapd 6144(%%rdx), %%zmm10\r\n"                          // C [0,0] [0,6]
                                 "vmovapd 7168(%%rdx), %%zmm11\r\n"                          // C [0,0] [0,7]
                                 "vmovapd 8192(%%rdx), %%zmm12\r\n"                          // C [0,0] [0,8]
                                 "vmovapd 9216(%%rdx), %%zmm13\r\n"                          // C [0,0] [0,9]
                                 "vmovapd 10240(%%rdx), %%zmm14\r\n"                         // C [0,0] [0,10]
                                 "vmovapd 11264(%%rdx), %%zmm15\r\n"                         // C [0,0] [0,11]
                                 "vmovapd 12288(%%rdx), %%zmm16\r\n"                         // C [0,0] [0,12]
                                 "vmovapd 13312(%%rdx), %%zmm17\r\n"                         // C [0,0] [0,13]
                                 "vmovapd 14336(%%rdx), %%zmm18\r\n"                         // C [0,0] [0,14]
                                 "vmovapd 15360(%%rdx), %%zmm19\r\n"                         // C [0,0] [0,15]
                                 "vmovapd 16384(%%rdx), %%zmm20\r\n"                         // C [0,0] [0,16]
                                 "vmovapd 17408(%%rdx), %%zmm21\r\n"                         // C [0,0] [0,17]
                                 "vmovapd 18432(%%rdx), %%zmm22\r\n"                         // C [0,0] [0,18]
                                 "vmovapd 19456(%%rdx), %%zmm23\r\n"                         // C [0,0] [0,19]
                                 "vmovapd 20480(%%rdx), %%zmm24\r\n"                         // C [0,0] [0,20]
                                 "vmovapd 21504(%%rdx), %%zmm25\r\n"                         // C [0,0] [0,21]
                                 "vmovapd 22528(%%rdx), %%zmm26\r\n"                         // C [0,0] [0,22]
                                 "vmovapd 23552(%%rdx), %%zmm27\r\n"                         // C [0,0] [0,23]
                                 "vmovapd 24576(%%rdx), %%zmm28\r\n"                         // C [0,0] [0,24]
                                 "vmovapd 25600(%%rdx), %%zmm29\r\n"                         // C [0,0] [0,25]
                                 "vmovapd 26624(%%rdx), %%zmm30\r\n"                         // C [0,0] [0,26]
                                 "vmovapd 27648(%%rdx), %%zmm31\r\n"                         // C [0,0] [0,27]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=0)
                                   "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
                                   "vmovapd 2048(%%rdi), %%zmm2\r\n"                           // A [0,0] [0,2]
                                   "vmovapd 3072(%%rdi), %%zmm3\r\n"                           // A [0,0] [0,3]
                                 "vfmadd231pd 6(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"         // C[0,27] += A[0,0]*B[0,0][0,27]
                                 "vfmadd231pd 4(%%rsi)%{1to8%}, %%zmm2, %%zmm23\r\n"         // C[0,19] += A[0,2]*B[0,0][2,19]
                                 "vfmadd231pd 1(%%rsi)%{1to8%}, %%zmm3, %%zmm7\r\n"          // C[0,3] += A[0,3]*B[0,0][3,3]
                                 "vfmadd231pd 2(%%rsi)%{1to8%}, %%zmm3, %%zmm16\r\n"         // C[0,12] += A[0,3]*B[0,0][3,12]
                                 "vfmadd231pd 3(%%rsi)%{1to8%}, %%zmm3, %%zmm19\r\n"         // C[0,15] += A[0,3]*B[0,0][3,15]
                                 "vfmadd231pd 5(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"         // C[0,21] += A[0,3]*B[0,0][3,21]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=1)
                                   "vmovapd 4096(%%rdi), %%zmm0\r\n"                           // A [0,1] [0,0]
                                   "vmovapd 5120(%%rdi), %%zmm1\r\n"                           // A [0,1] [0,1]
                                   "vmovapd 6144(%%rdi), %%zmm2\r\n"                           // A [0,1] [0,2]
                                   "vmovapd 7168(%%rdi), %%zmm3\r\n"                           // A [0,1] [0,3]
                                 "vfmadd231pd 11(%%rsi)%{1to8%}, %%zmm0, %%zmm19\r\n"        // C[0,15] += A[0,0]*B[1,0][0,15]
                                 "vfmadd231pd 14(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,22] += A[0,0]*B[1,0][0,22]
                                 "vfmadd231pd 13(%%rsi)%{1to8%}, %%zmm1, %%zmm21\r\n"        // C[0,17] += A[0,1]*B[1,0][1,17]
                                 "vfmadd231pd 10(%%rsi)%{1to8%}, %%zmm2, %%zmm15\r\n"        // C[0,11] += A[0,2]*B[1,0][2,11]
                                 "vfmadd231pd 12(%%rsi)%{1to8%}, %%zmm2, %%zmm20\r\n"        // C[0,16] += A[0,2]*B[1,0][2,16]
                                 "vfmadd231pd 7(%%rsi)%{1to8%}, %%zmm3, %%zmm7\r\n"          // C[0,3] += A[0,3]*B[1,0][3,3]
                                 "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm3, %%zmm12\r\n"         // C[0,8] += A[0,3]*B[1,0][3,8]
                                 "vfmadd231pd 9(%%rsi)%{1to8%}, %%zmm3, %%zmm13\r\n"         // C[0,9] += A[0,3]*B[1,0][3,9]
                                 "vfmadd231pd 15(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"        // C[0,27] += A[0,3]*B[1,0][3,27]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=2)
                                   "vmovapd 8192(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
                                   "vmovapd 9216(%%rdi), %%zmm1\r\n"                           // A [0,2] [0,1]
                                   "vmovapd 10240(%%rdi), %%zmm2\r\n"                          // A [0,2] [0,2]
                                   "vmovapd 11264(%%rdi), %%zmm3\r\n"                          // A [0,2] [0,3]
                                 "vfmadd231pd 21(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"        // C[0,20] += A[0,0]*B[2,0][0,20]
                                 "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm1, %%zmm6\r\n"         // C[0,2] += A[0,1]*B[2,0][1,2]
                                 "vfmadd231pd 18(%%rsi)%{1to8%}, %%zmm1, %%zmm21\r\n"        // C[0,17] += A[0,1]*B[2,0][1,17]
                                 "vfmadd231pd 23(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,26] += A[0,1]*B[2,0][1,26]
                                 "vfmadd231pd 17(%%rsi)%{1to8%}, %%zmm2, %%zmm8\r\n"         // C[0,4] += A[0,2]*B[2,0][2,4]
                                 "vfmadd231pd 19(%%rsi)%{1to8%}, %%zmm2, %%zmm21\r\n"        // C[0,17] += A[0,2]*B[2,0][2,17]
                                 "vfmadd231pd 20(%%rsi)%{1to8%}, %%zmm3, %%zmm23\r\n"        // C[0,19] += A[0,3]*B[2,0][3,19]
                                 "vfmadd231pd 22(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"        // C[0,25] += A[0,3]*B[2,0][3,25]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=3)
                                   "vmovapd 13312(%%rdi), %%zmm1\r\n"                          // A [0,3] [0,1]
                                   "vmovapd 14336(%%rdi), %%zmm2\r\n"                          // A [0,3] [0,2]
                                   "vmovapd 15360(%%rdi), %%zmm3\r\n"                          // A [0,3] [0,3]
                                 "vfmadd231pd 25(%%rsi)%{1to8%}, %%zmm1, %%zmm9\r\n"         // C[0,5] += A[0,1]*B[3,0][1,5]
                                 "vfmadd231pd 28(%%rsi)%{1to8%}, %%zmm1, %%zmm20\r\n"        // C[0,16] += A[0,1]*B[3,0][1,16]
                                 "vfmadd231pd 29(%%rsi)%{1to8%}, %%zmm2, %%zmm20\r\n"        // C[0,16] += A[0,2]*B[3,0][2,16]
                                 "vfmadd231pd 30(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,22] += A[0,2]*B[3,0][2,22]
                                 "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm3, %%zmm5\r\n"         // C[0,1] += A[0,3]*B[3,0][3,1]
                                 "vfmadd231pd 26(%%rsi)%{1to8%}, %%zmm3, %%zmm10\r\n"        // C[0,6] += A[0,3]*B[3,0][3,6]
                                 "vfmadd231pd 27(%%rsi)%{1to8%}, %%zmm3, %%zmm15\r\n"        // C[0,11] += A[0,3]*B[3,0][3,11]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=4)
                                   "vmovapd 16384(%%rdi), %%zmm0\r\n"                          // A [0,4] [0,0]
                                   "vmovapd 17408(%%rdi), %%zmm1\r\n"                          // A [0,4] [0,1]
                                   "vmovapd 18432(%%rdi), %%zmm2\r\n"                          // A [0,4] [0,2]
                                 "vfmadd231pd 35(%%rsi)%{1to8%}, %%zmm0, %%zmm17\r\n"        // C[0,13] += A[0,0]*B[4,0][0,13]
                                 "vfmadd231pd 31(%%rsi)%{1to8%}, %%zmm1, %%zmm4\r\n"         // C[0,0] += A[0,1]*B[4,0][1,0]
                                 "vfmadd231pd 37(%%rsi)%{1to8%}, %%zmm1, %%zmm22\r\n"        // C[0,18] += A[0,1]*B[4,0][1,18]
                                 "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm2, %%zmm13\r\n"        // C[0,9] += A[0,2]*B[4,0][2,9]
                                 "vfmadd231pd 33(%%rsi)%{1to8%}, %%zmm2, %%zmm14\r\n"        // C[0,10] += A[0,2]*B[4,0][2,10]
                                 "vfmadd231pd 34(%%rsi)%{1to8%}, %%zmm2, %%zmm15\r\n"        // C[0,11] += A[0,2]*B[4,0][2,11]
                                 "vfmadd231pd 36(%%rsi)%{1to8%}, %%zmm2, %%zmm21\r\n"        // C[0,17] += A[0,2]*B[4,0][2,17]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=5)
                                   "vmovapd 20480(%%rdi), %%zmm0\r\n"                          // A [0,5] [0,0]
                                   "vmovapd 21504(%%rdi), %%zmm1\r\n"                          // A [0,5] [0,1]
                                   "vmovapd 22528(%%rdi), %%zmm2\r\n"                          // A [0,5] [0,2]
                                 "vfmadd231pd 39(%%rsi)%{1to8%}, %%zmm0, %%zmm15\r\n"        // C[0,11] += A[0,0]*B[5,0][0,11]
                                 "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm0, %%zmm18\r\n"        // C[0,14] += A[0,0]*B[5,0][0,14]
                                 "vfmadd231pd 42(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,22] += A[0,0]*B[5,0][0,22]
                                 "vfmadd231pd 38(%%rsi)%{1to8%}, %%zmm1, %%zmm7\r\n"         // C[0,3] += A[0,1]*B[5,0][1,3]
                                 "vfmadd231pd 41(%%rsi)%{1to8%}, %%zmm2, %%zmm18\r\n"        // C[0,14] += A[0,2]*B[5,0][2,14]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=6)
                                   "vmovapd 25600(%%rdi), %%zmm1\r\n"                          // A [0,6] [0,1]
                                   "vmovapd 26624(%%rdi), %%zmm2\r\n"                          // A [0,6] [0,2]
                                   "vmovapd 27648(%%rdi), %%zmm3\r\n"                          // A [0,6] [0,3]
                                 "vfmadd231pd 51(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,21] += A[0,1]*B[6,0][1,21]
                                 "vfmadd231pd 44(%%rsi)%{1to8%}, %%zmm2, %%zmm14\r\n"        // C[0,10] += A[0,2]*B[6,0][2,10]
                                 "vfmadd231pd 45(%%rsi)%{1to8%}, %%zmm2, %%zmm15\r\n"        // C[0,11] += A[0,2]*B[6,0][2,11]
                                 "vfmadd231pd 50(%%rsi)%{1to8%}, %%zmm2, %%zmm23\r\n"        // C[0,19] += A[0,2]*B[6,0][2,19]
                                 "vfmadd231pd 52(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0,27] += A[0,2]*B[6,0][2,27]
                                 "vfmadd231pd 43(%%rsi)%{1to8%}, %%zmm3, %%zmm4\r\n"         // C[0,0] += A[0,3]*B[6,0][3,0]
                                 "vfmadd231pd 46(%%rsi)%{1to8%}, %%zmm3, %%zmm15\r\n"        // C[0,11] += A[0,3]*B[6,0][3,11]
                                 "vfmadd231pd 47(%%rsi)%{1to8%}, %%zmm3, %%zmm17\r\n"        // C[0,13] += A[0,3]*B[6,0][3,13]
                                 "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm3, %%zmm19\r\n"        // C[0,15] += A[0,3]*B[6,0][3,15]
                                 "vfmadd231pd 49(%%rsi)%{1to8%}, %%zmm3, %%zmm22\r\n"        // C[0,18] += A[0,3]*B[6,0][3,18]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=7)
                                   "vmovapd 28672(%%rdi), %%zmm0\r\n"                          // A [0,7] [0,0]
                                   "vmovapd 29696(%%rdi), %%zmm1\r\n"                          // A [0,7] [0,1]
                                   "vmovapd 30720(%%rdi), %%zmm2\r\n"                          // A [0,7] [0,2]
                                 "vfmadd231pd 54(%%rsi)%{1to8%}, %%zmm0, %%zmm7\r\n"         // C[0,3] += A[0,0]*B[7,0][0,3]
                                 "vfmadd231pd 55(%%rsi)%{1to8%}, %%zmm0, %%zmm10\r\n"        // C[0,6] += A[0,0]*B[7,0][0,6]
                                 "vfmadd231pd 61(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,24] += A[0,0]*B[7,0][0,24]
                                 "vfmadd231pd 53(%%rsi)%{1to8%}, %%zmm1, %%zmm4\r\n"         // C[0,0] += A[0,1]*B[7,0][1,0]
                                 "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm1, %%zmm10\r\n"        // C[0,6] += A[0,1]*B[7,0][1,6]
                                 "vfmadd231pd 57(%%rsi)%{1to8%}, %%zmm1, %%zmm22\r\n"        // C[0,18] += A[0,1]*B[7,0][1,18]
                                 "vfmadd231pd 59(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,21] += A[0,1]*B[7,0][1,21]
                                 "vfmadd231pd 60(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,23] += A[0,1]*B[7,0][1,23]
                                 "vfmadd231pd 58(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"        // C[0,20] += A[0,2]*B[7,0][2,20]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=8)
                                   "vmovapd 32768(%%rdi), %%zmm0\r\n"                          // A [0,8] [0,0]
                                   "vmovapd 33792(%%rdi), %%zmm1\r\n"                          // A [0,8] [0,1]
                                   "vmovapd 34816(%%rdi), %%zmm2\r\n"                          // A [0,8] [0,2]
                                   "vmovapd 35840(%%rdi), %%zmm3\r\n"                          // A [0,8] [0,3]
                                 "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm0, %%zmm19\r\n"        // C[0,15] += A[0,0]*B[8,0][0,15]
                                 "vfmadd231pd 65(%%rsi)%{1to8%}, %%zmm1, %%zmm23\r\n"        // C[0,19] += A[0,1]*B[8,0][1,19]
                                 "vfmadd231pd 62(%%rsi)%{1to8%}, %%zmm2, %%zmm6\r\n"         // C[0,2] += A[0,2]*B[8,0][2,2]
                                 "vfmadd231pd 63(%%rsi)%{1to8%}, %%zmm3, %%zmm18\r\n"        // C[0,14] += A[0,3]*B[8,0][3,14]
                                 "vfmadd231pd 66(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"        // C[0,24] += A[0,3]*B[8,0][3,24]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=9)
                                   "vmovapd 37888(%%rdi), %%zmm1\r\n"                          // A [0,9] [0,1]
                                   "vmovapd 38912(%%rdi), %%zmm2\r\n"                          // A [0,9] [0,2]
                                   "vmovapd 39936(%%rdi), %%zmm3\r\n"                          // A [0,9] [0,3]
                                 "vfmadd231pd 69(%%rsi)%{1to8%}, %%zmm1, %%zmm18\r\n"        // C[0,14] += A[0,1]*B[9,0][1,14]
                                 "vfmadd231pd 68(%%rsi)%{1to8%}, %%zmm2, %%zmm13\r\n"        // C[0,9] += A[0,2]*B[9,0][2,9]
                                 "vfmadd231pd 67(%%rsi)%{1to8%}, %%zmm3, %%zmm4\r\n"         // C[0,0] += A[0,3]*B[9,0][3,0]
                                 "vfmadd231pd 70(%%rsi)%{1to8%}, %%zmm3, %%zmm20\r\n"        // C[0,16] += A[0,3]*B[9,0][3,16]
                                 "vfmadd231pd 71(%%rsi)%{1to8%}, %%zmm3, %%zmm21\r\n"        // C[0,17] += A[0,3]*B[9,0][3,17]
                                 "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,21] += A[0,3]*B[9,0][3,21]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=10)
                                   "vmovapd 40960(%%rdi), %%zmm0\r\n"                          // A [0,10] [0,0]
                                   "vmovapd 41984(%%rdi), %%zmm1\r\n"                          // A [0,10] [0,1]
                                   "vmovapd 43008(%%rdi), %%zmm2\r\n"                          // A [0,10] [0,2]
                                   "vmovapd 44032(%%rdi), %%zmm3\r\n"                          // A [0,10] [0,3]
                                 "vfmadd231pd 74(%%rsi)%{1to8%}, %%zmm0, %%zmm12\r\n"        // C[0,8] += A[0,0]*B[10,0][0,8]
                                 "vfmadd231pd 75(%%rsi)%{1to8%}, %%zmm1, %%zmm18\r\n"        // C[0,14] += A[0,1]*B[10,0][1,14]
                                 "vfmadd231pd 78(%%rsi)%{1to8%}, %%zmm1, %%zmm20\r\n"        // C[0,16] += A[0,1]*B[10,0][1,16]
                                 "vfmadd231pd 76(%%rsi)%{1to8%}, %%zmm2, %%zmm18\r\n"        // C[0,14] += A[0,2]*B[10,0][2,14]
                                 "vfmadd231pd 73(%%rsi)%{1to8%}, %%zmm3, %%zmm5\r\n"         // C[0,1] += A[0,3]*B[10,0][3,1]
                                 "vfmadd231pd 77(%%rsi)%{1to8%}, %%zmm3, %%zmm18\r\n"        // C[0,14] += A[0,3]*B[10,0][3,14]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=11)
                                   "vmovapd 45056(%%rdi), %%zmm0\r\n"                          // A [0,11] [0,0]
                                   "vmovapd 46080(%%rdi), %%zmm1\r\n"                          // A [0,11] [0,1]
                                   "vmovapd 47104(%%rdi), %%zmm2\r\n"                          // A [0,11] [0,2]
                                   "vmovapd 48128(%%rdi), %%zmm3\r\n"                          // A [0,11] [0,3]
                                 "vfmadd231pd 81(%%rsi)%{1to8%}, %%zmm0, %%zmm18\r\n"        // C[0,14] += A[0,0]*B[11,0][0,14]
                                 "vfmadd231pd 82(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"        // C[0,25] += A[0,1]*B[11,0][1,25]
                                 "vfmadd231pd 83(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"        // C[0,27] += A[0,1]*B[11,0][1,27]
                                 "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm2, %%zmm15\r\n"        // C[0,11] += A[0,2]*B[11,0][2,11]
                                 "vfmadd231pd 79(%%rsi)%{1to8%}, %%zmm3, %%zmm5\r\n"         // C[0,1] += A[0,3]*B[11,0][3,1]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=12)
                                   "vmovapd 49152(%%rdi), %%zmm0\r\n"                          // A [0,12] [0,0]
                                   "vmovapd 50176(%%rdi), %%zmm1\r\n"                          // A [0,12] [0,1]
                                   "vmovapd 51200(%%rdi), %%zmm2\r\n"                          // A [0,12] [0,2]
                                   "vmovapd 52224(%%rdi), %%zmm3\r\n"                          // A [0,12] [0,3]
                                 "vfmadd231pd 85(%%rsi)%{1to8%}, %%zmm0, %%zmm16\r\n"        // C[0,12] += A[0,0]*B[12,0][0,12]
                                 "vfmadd231pd 86(%%rsi)%{1to8%}, %%zmm1, %%zmm23\r\n"        // C[0,19] += A[0,1]*B[12,0][1,19]
                                 "vfmadd231pd 87(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"        // C[0,20] += A[0,1]*B[12,0][1,20]
                                 "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"        // C[0,20] += A[0,2]*B[12,0][2,20]
                                 "vfmadd231pd 84(%%rsi)%{1to8%}, %%zmm3, %%zmm8\r\n"         // C[0,4] += A[0,3]*B[12,0][3,4]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=13)
                                   "vmovapd 53248(%%rdi), %%zmm0\r\n"                          // A [0,13] [0,0]
                                   "vmovapd 54272(%%rdi), %%zmm1\r\n"                          // A [0,13] [0,1]
                                   "vmovapd 55296(%%rdi), %%zmm2\r\n"                          // A [0,13] [0,2]
                                   "vmovapd 56320(%%rdi), %%zmm3\r\n"                          // A [0,13] [0,3]
                                 "vfmadd231pd 91(%%rsi)%{1to8%}, %%zmm0, %%zmm14\r\n"        // C[0,10] += A[0,0]*B[13,0][0,10]
                                 "vfmadd231pd 94(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"        // C[0,23] += A[0,0]*B[13,0][0,23]
                                 "vfmadd231pd 92(%%rsi)%{1to8%}, %%zmm1, %%zmm16\r\n"        // C[0,12] += A[0,1]*B[13,0][1,12]
                                 "vfmadd231pd 95(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,23] += A[0,1]*B[13,0][1,23]
                                 "vfmadd231pd 89(%%rsi)%{1to8%}, %%zmm2, %%zmm8\r\n"         // C[0,4] += A[0,2]*B[13,0][2,4]
                                 "vfmadd231pd 90(%%rsi)%{1to8%}, %%zmm2, %%zmm10\r\n"        // C[0,6] += A[0,2]*B[13,0][2,6]
                                 "vfmadd231pd 93(%%rsi)%{1to8%}, %%zmm2, %%zmm19\r\n"        // C[0,15] += A[0,2]*B[13,0][2,15]
                                 "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"        // C[0,26] += A[0,3]*B[13,0][3,26]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=14)
                                   "vmovapd 57344(%%rdi), %%zmm0\r\n"                          // A [0,14] [0,0]
                                   "vmovapd 59392(%%rdi), %%zmm2\r\n"                          // A [0,14] [0,2]
                                   "vmovapd 60416(%%rdi), %%zmm3\r\n"                          // A [0,14] [0,3]
                                 "vfmadd231pd 100(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,24] += A[0,0]*B[14,0][0,24]
                                 "vfmadd231pd 97(%%rsi)%{1to8%}, %%zmm2, %%zmm14\r\n"        // C[0,10] += A[0,2]*B[14,0][2,10]
                                 "vfmadd231pd 98(%%rsi)%{1to8%}, %%zmm3, %%zmm14\r\n"        // C[0,10] += A[0,3]*B[14,0][3,10]
                                 "vfmadd231pd 99(%%rsi)%{1to8%}, %%zmm3, %%zmm17\r\n"        // C[0,13] += A[0,3]*B[14,0][3,13]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=15)
                                   "vmovapd 61440(%%rdi), %%zmm0\r\n"                          // A [0,15] [0,0]
                                   "vmovapd 62464(%%rdi), %%zmm1\r\n"                          // A [0,15] [0,1]
                                   "vmovapd 63488(%%rdi), %%zmm2\r\n"                          // A [0,15] [0,2]
                                   "vmovapd 64512(%%rdi), %%zmm3\r\n"                          // A [0,15] [0,3]
                                 "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm14\r\n"       // C[0,10] += A[0,0]*B[15,0][0,10]
                                 "vfmadd231pd 105(%%rsi)%{1to8%}, %%zmm0, %%zmm19\r\n"       // C[0,15] += A[0,0]*B[15,0][0,15]
                                 "vfmadd231pd 101(%%rsi)%{1to8%}, %%zmm1, %%zmm8\r\n"        // C[0,4] += A[0,1]*B[15,0][1,4]
                                 "vfmadd231pd 102(%%rsi)%{1to8%}, %%zmm2, %%zmm10\r\n"       // C[0,6] += A[0,2]*B[15,0][2,6]
                                 "vfmadd231pd 106(%%rsi)%{1to8%}, %%zmm2, %%zmm19\r\n"       // C[0,15] += A[0,2]*B[15,0][2,15]
                                 "vfmadd231pd 107(%%rsi)%{1to8%}, %%zmm2, %%zmm22\r\n"       // C[0,18] += A[0,2]*B[15,0][2,18]
                                 "vfmadd231pd 108(%%rsi)%{1to8%}, %%zmm2, %%zmm23\r\n"       // C[0,19] += A[0,2]*B[15,0][2,19]
                                 "vfmadd231pd 103(%%rsi)%{1to8%}, %%zmm3, %%zmm13\r\n"       // C[0,9] += A[0,3]*B[15,0][3,9]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=16)
                                   "vmovapd 65536(%%rdi), %%zmm0\r\n"                          // A [0,16] [0,0]
                                   "vmovapd 66560(%%rdi), %%zmm1\r\n"                          // A [0,16] [0,1]
                                   "vmovapd 67584(%%rdi), %%zmm2\r\n"                          // A [0,16] [0,2]
                                   "vmovapd 68608(%%rdi), %%zmm3\r\n"                          // A [0,16] [0,3]
                                 "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm0, %%zmm8\r\n"        // C[0,4] += A[0,0]*B[16,0][0,4]
                                 "vfmadd231pd 113(%%rsi)%{1to8%}, %%zmm0, %%zmm13\r\n"       // C[0,9] += A[0,0]*B[16,0][0,9]
                                 "vfmadd231pd 109(%%rsi)%{1to8%}, %%zmm1, %%zmm4\r\n"        // C[0,0] += A[0,1]*B[16,0][1,0]
                                 "vfmadd231pd 111(%%rsi)%{1to8%}, %%zmm1, %%zmm6\r\n"        // C[0,2] += A[0,1]*B[16,0][1,2]
                                 "vfmadd231pd 115(%%rsi)%{1to8%}, %%zmm1, %%zmm18\r\n"       // C[0,14] += A[0,1]*B[16,0][1,14]
                                 "vfmadd231pd 116(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"       // C[0,21] += A[0,2]*B[16,0][2,21]
                                 "vfmadd231pd 110(%%rsi)%{1to8%}, %%zmm3, %%zmm5\r\n"        // C[0,1] += A[0,3]*B[16,0][3,1]
                                 "vfmadd231pd 114(%%rsi)%{1to8%}, %%zmm3, %%zmm16\r\n"       // C[0,12] += A[0,3]*B[16,0][3,12]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=17)
                                   "vmovapd 70656(%%rdi), %%zmm1\r\n"                          // A [0,17] [0,1]
                                   "vmovapd 71680(%%rdi), %%zmm2\r\n"                          // A [0,17] [0,2]
                                 "vfmadd231pd 117(%%rsi)%{1to8%}, %%zmm1, %%zmm14\r\n"       // C[0,10] += A[0,1]*B[17,0][1,10]
                                 "vfmadd231pd 118(%%rsi)%{1to8%}, %%zmm2, %%zmm14\r\n"       // C[0,10] += A[0,2]*B[17,0][2,10]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=18)
                                   "vmovapd 73728(%%rdi), %%zmm0\r\n"                          // A [0,18] [0,0]
                                   "vmovapd 76800(%%rdi), %%zmm3\r\n"                          // A [0,18] [0,3]
                                 "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm14\r\n"       // C[0,10] += A[0,0]*B[18,0][0,10]
                                 "vfmadd231pd 122(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,24] += A[0,0]*B[18,0][0,24]
                                 "vfmadd231pd 123(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,26] += A[0,0]*B[18,0][0,26]
                                 "vfmadd231pd 119(%%rsi)%{1to8%}, %%zmm3, %%zmm10\r\n"       // C[0,6] += A[0,3]*B[18,0][3,6]
                                 "vfmadd231pd 121(%%rsi)%{1to8%}, %%zmm3, %%zmm16\r\n"       // C[0,12] += A[0,3]*B[18,0][3,12]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=19)
                                   "vmovapd 77824(%%rdi), %%zmm0\r\n"                          // A [0,19] [0,0]
                                   "vmovapd 78848(%%rdi), %%zmm1\r\n"                          // A [0,19] [0,1]
                                   "vmovapd 79872(%%rdi), %%zmm2\r\n"                          // A [0,19] [0,2]
                                   "vmovapd 80896(%%rdi), %%zmm3\r\n"                          // A [0,19] [0,3]
                                 "vfmadd231pd 124(%%rsi)%{1to8%}, %%zmm0, %%zmm5\r\n"        // C[0,1] += A[0,0]*B[19,0][0,1]
                                 "vfmadd231pd 129(%%rsi)%{1to8%}, %%zmm0, %%zmm15\r\n"       // C[0,11] += A[0,0]*B[19,0][0,11]
                                 "vfmadd231pd 131(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"       // C[0,21] += A[0,0]*B[19,0][0,21]
                                 "vfmadd231pd 125(%%rsi)%{1to8%}, %%zmm1, %%zmm6\r\n"        // C[0,2] += A[0,1]*B[19,0][1,2]
                                 "vfmadd231pd 126(%%rsi)%{1to8%}, %%zmm1, %%zmm8\r\n"        // C[0,4] += A[0,1]*B[19,0][1,4]
                                 "vfmadd231pd 130(%%rsi)%{1to8%}, %%zmm2, %%zmm16\r\n"       // C[0,12] += A[0,2]*B[19,0][2,12]
                                 "vfmadd231pd 132(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,27] += A[0,2]*B[19,0][2,27]
                                 "vfmadd231pd 127(%%rsi)%{1to8%}, %%zmm3, %%zmm8\r\n"        // C[0,4] += A[0,3]*B[19,0][3,4]
                                 "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm3, %%zmm10\r\n"       // C[0,6] += A[0,3]*B[19,0][3,6]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=20)
                                   "vmovapd 81920(%%rdi), %%zmm0\r\n"                          // A [0,20] [0,0]
                                   "vmovapd 82944(%%rdi), %%zmm1\r\n"                          // A [0,20] [0,1]
                                   "vmovapd 83968(%%rdi), %%zmm2\r\n"                          // A [0,20] [0,2]
                                   "vmovapd 84992(%%rdi), %%zmm3\r\n"                          // A [0,20] [0,3]
                                 "vfmadd231pd 133(%%rsi)%{1to8%}, %%zmm0, %%zmm6\r\n"        // C[0,2] += A[0,0]*B[20,0][0,2]
                                 "vfmadd231pd 134(%%rsi)%{1to8%}, %%zmm1, %%zmm9\r\n"        // C[0,5] += A[0,1]*B[20,0][1,5]
                                 "vfmadd231pd 135(%%rsi)%{1to8%}, %%zmm1, %%zmm14\r\n"       // C[0,10] += A[0,1]*B[20,0][1,10]
                                 "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm1, %%zmm15\r\n"       // C[0,11] += A[0,1]*B[20,0][1,11]
                                 "vfmadd231pd 137(%%rsi)%{1to8%}, %%zmm2, %%zmm22\r\n"       // C[0,18] += A[0,2]*B[20,0][2,18]
                                 "vfmadd231pd 138(%%rsi)%{1to8%}, %%zmm2, %%zmm23\r\n"       // C[0,19] += A[0,2]*B[20,0][2,19]
                                 "vfmadd231pd 139(%%rsi)%{1to8%}, %%zmm3, %%zmm23\r\n"       // C[0,19] += A[0,3]*B[20,0][3,19]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=21)
                                   "vmovapd 86016(%%rdi), %%zmm0\r\n"                          // A [0,21] [0,0]
                                   "vmovapd 88064(%%rdi), %%zmm2\r\n"                          // A [0,21] [0,2]
                                   "vmovapd 89088(%%rdi), %%zmm3\r\n"                          // A [0,21] [0,3]
                                 "vfmadd231pd 140(%%rsi)%{1to8%}, %%zmm0, %%zmm6\r\n"        // C[0,2] += A[0,0]*B[21,0][0,2]
                                 "vfmadd231pd 142(%%rsi)%{1to8%}, %%zmm0, %%zmm10\r\n"       // C[0,6] += A[0,0]*B[21,0][0,6]
                                 "vfmadd231pd 146(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,27] += A[0,0]*B[21,0][0,27]
                                 "vfmadd231pd 141(%%rsi)%{1to8%}, %%zmm2, %%zmm7\r\n"        // C[0,3] += A[0,2]*B[21,0][2,3]
                                 "vfmadd231pd 143(%%rsi)%{1to8%}, %%zmm2, %%zmm11\r\n"       // C[0,7] += A[0,2]*B[21,0][2,7]
                                 "vfmadd231pd 145(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,24] += A[0,2]*B[21,0][2,24]
                                 "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm3, %%zmm11\r\n"       // C[0,7] += A[0,3]*B[21,0][3,7]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=22)
                                   "vmovapd 90112(%%rdi), %%zmm0\r\n"                          // A [0,22] [0,0]
                                   "vmovapd 91136(%%rdi), %%zmm1\r\n"                          // A [0,22] [0,1]
                                   "vmovapd 92160(%%rdi), %%zmm2\r\n"                          // A [0,22] [0,2]
                                 "vfmadd231pd 149(%%rsi)%{1to8%}, %%zmm0, %%zmm14\r\n"       // C[0,10] += A[0,0]*B[22,0][0,10]
                                 "vfmadd231pd 148(%%rsi)%{1to8%}, %%zmm1, %%zmm13\r\n"       // C[0,9] += A[0,1]*B[22,0][1,9]
                                 "vfmadd231pd 150(%%rsi)%{1to8%}, %%zmm1, %%zmm18\r\n"       // C[0,14] += A[0,1]*B[22,0][1,14]
                                 "vfmadd231pd 151(%%rsi)%{1to8%}, %%zmm1, %%zmm22\r\n"       // C[0,18] += A[0,1]*B[22,0][1,18]
                                 "vfmadd231pd 153(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,22] += A[0,1]*B[22,0][1,22]
                                 "vfmadd231pd 147(%%rsi)%{1to8%}, %%zmm2, %%zmm11\r\n"       // C[0,7] += A[0,2]*B[22,0][2,7]
                                 "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"       // C[0,20] += A[0,2]*B[22,0][2,20]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=23)
                                   "vmovapd 94208(%%rdi), %%zmm0\r\n"                          // A [0,23] [0,0]
                                   "vmovapd 95232(%%rdi), %%zmm1\r\n"                          // A [0,23] [0,1]
                                   "vmovapd 97280(%%rdi), %%zmm3\r\n"                          // A [0,23] [0,3]
                                 "vfmadd231pd 154(%%rsi)%{1to8%}, %%zmm0, %%zmm4\r\n"        // C[0,0] += A[0,0]*B[23,0][0,0]
                                 "vfmadd231pd 155(%%rsi)%{1to8%}, %%zmm1, %%zmm14\r\n"       // C[0,10] += A[0,1]*B[23,0][1,10]
                                 "vfmadd231pd 156(%%rsi)%{1to8%}, %%zmm3, %%zmm17\r\n"       // C[0,13] += A[0,3]*B[23,0][3,13]
                                 "vfmadd231pd 157(%%rsi)%{1to8%}, %%zmm3, %%zmm19\r\n"       // C[0,15] += A[0,3]*B[23,0][3,15]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=24)
                                   "vmovapd 98304(%%rdi), %%zmm0\r\n"                          // A [0,24] [0,0]
                                   "vmovapd 99328(%%rdi), %%zmm1\r\n"                          // A [0,24] [0,1]
                                   "vmovapd 100352(%%rdi), %%zmm2\r\n"                         // A [0,24] [0,2]
                                   "vmovapd 101376(%%rdi), %%zmm3\r\n"                         // A [0,24] [0,3]
                                 "vfmadd231pd 158(%%rsi)%{1to8%}, %%zmm0, %%zmm4\r\n"        // C[0,0] += A[0,0]*B[24,0][0,0]
                                 "vfmadd231pd 163(%%rsi)%{1to8%}, %%zmm0, %%zmm20\r\n"       // C[0,16] += A[0,0]*B[24,0][0,16]
                                 "vfmadd231pd 166(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,24] += A[0,0]*B[24,0][0,24]
                                 "vfmadd231pd 162(%%rsi)%{1to8%}, %%zmm1, %%zmm19\r\n"       // C[0,15] += A[0,1]*B[24,0][1,15]
                                 "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm2, %%zmm14\r\n"       // C[0,10] += A[0,2]*B[24,0][2,10]
                                 "vfmadd231pd 161(%%rsi)%{1to8%}, %%zmm2, %%zmm18\r\n"       // C[0,14] += A[0,2]*B[24,0][2,14]
                                 "vfmadd231pd 164(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"       // C[0,20] += A[0,2]*B[24,0][2,20]
                                 "vfmadd231pd 159(%%rsi)%{1to8%}, %%zmm3, %%zmm10\r\n"       // C[0,6] += A[0,3]*B[24,0][3,6]
                                 "vfmadd231pd 165(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"       // C[0,21] += A[0,3]*B[24,0][3,21]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=25)
                                   "vmovapd 102400(%%rdi), %%zmm0\r\n"                         // A [0,25] [0,0]
                                   "vmovapd 103424(%%rdi), %%zmm1\r\n"                         // A [0,25] [0,1]
                                   "vmovapd 104448(%%rdi), %%zmm2\r\n"                         // A [0,25] [0,2]
                                   "vmovapd 105472(%%rdi), %%zmm3\r\n"                         // A [0,25] [0,3]
                                 "vfmadd231pd 169(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,23] += A[0,0]*B[25,0][0,23]
                                 "vfmadd231pd 167(%%rsi)%{1to8%}, %%zmm1, %%zmm7\r\n"        // C[0,3] += A[0,1]*B[25,0][1,3]
                                 "vfmadd231pd 170(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,23] += A[0,2]*B[25,0][2,23]
                                 "vfmadd231pd 171(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,25] += A[0,2]*B[25,0][2,25]
                                 "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm3, %%zmm14\r\n"       // C[0,10] += A[0,3]*B[25,0][3,10]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=26)
                                   "vmovapd 106496(%%rdi), %%zmm0\r\n"                         // A [0,26] [0,0]
                                   "vmovapd 107520(%%rdi), %%zmm1\r\n"                         // A [0,26] [0,1]
                                   "vmovapd 108544(%%rdi), %%zmm2\r\n"                         // A [0,26] [0,2]
                                   "vmovapd 109568(%%rdi), %%zmm3\r\n"                         // A [0,26] [0,3]
                                 "vfmadd231pd 172(%%rsi)%{1to8%}, %%zmm0, %%zmm12\r\n"       // C[0,8] += A[0,0]*B[26,0][0,8]
                                 "vfmadd231pd 175(%%rsi)%{1to8%}, %%zmm0, %%zmm23\r\n"       // C[0,19] += A[0,0]*B[26,0][0,19]
                                 "vfmadd231pd 178(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,26] += A[0,0]*B[26,0][0,26]
                                 "vfmadd231pd 173(%%rsi)%{1to8%}, %%zmm1, %%zmm20\r\n"       // C[0,16] += A[0,1]*B[26,0][1,16]
                                 "vfmadd231pd 174(%%rsi)%{1to8%}, %%zmm2, %%zmm21\r\n"       // C[0,17] += A[0,2]*B[26,0][2,17]
                                 "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,22] += A[0,3]*B[26,0][3,22]
                                 "vfmadd231pd 177(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,25] += A[0,3]*B[26,0][3,25]
                                 "vfmadd231pd 179(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,26] += A[0,3]*B[26,0][3,26]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=27)
                                   "vmovapd 110592(%%rdi), %%zmm0\r\n"                         // A [0,27] [0,0]
                                   "vmovapd 111616(%%rdi), %%zmm1\r\n"                         // A [0,27] [0,1]
                                   "vmovapd 113664(%%rdi), %%zmm3\r\n"                         // A [0,27] [0,3]
                                 "vfmadd231pd 180(%%rsi)%{1to8%}, %%zmm0, %%zmm7\r\n"        // C[0,3] += A[0,0]*B[27,0][0,3]
                                 "vfmadd231pd 183(%%rsi)%{1to8%}, %%zmm0, %%zmm17\r\n"       // C[0,13] += A[0,0]*B[27,0][0,13]
                                 "vfmadd231pd 182(%%rsi)%{1to8%}, %%zmm1, %%zmm16\r\n"       // C[0,12] += A[0,1]*B[27,0][1,12]
                                 "vfmadd231pd 181(%%rsi)%{1to8%}, %%zmm3, %%zmm12\r\n"       // C[0,8] += A[0,3]*B[27,0][3,8]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=28)
                                   "vmovapd 114688(%%rdi), %%zmm0\r\n"                         // A [0,28] [0,0]
                                   "vmovapd 115712(%%rdi), %%zmm1\r\n"                         // A [0,28] [0,1]
                                   "vmovapd 116736(%%rdi), %%zmm2\r\n"                         // A [0,28] [0,2]
                                   "vmovapd 117760(%%rdi), %%zmm3\r\n"                         // A [0,28] [0,3]
                                 "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm0, %%zmm11\r\n"       // C[0,7] += A[0,0]*B[28,0][0,7]
                                 "vfmadd231pd 186(%%rsi)%{1to8%}, %%zmm1, %%zmm23\r\n"       // C[0,19] += A[0,1]*B[28,0][1,19]
                                 "vfmadd231pd 187(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"       // C[0,20] += A[0,1]*B[28,0][1,20]
                                 "vfmadd231pd 185(%%rsi)%{1to8%}, %%zmm2, %%zmm18\r\n"       // C[0,14] += A[0,2]*B[28,0][2,14]
                                 "vfmadd231pd 188(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,26] += A[0,3]*B[28,0][3,26]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=29)
                                   "vmovapd 118784(%%rdi), %%zmm0\r\n"                         // A [0,29] [0,0]
                                   "vmovapd 119808(%%rdi), %%zmm1\r\n"                         // A [0,29] [0,1]
                                   "vmovapd 120832(%%rdi), %%zmm2\r\n"                         // A [0,29] [0,2]
                                 "vfmadd231pd 190(%%rsi)%{1to8%}, %%zmm0, %%zmm13\r\n"       // C[0,9] += A[0,0]*B[29,0][0,9]
                                 "vfmadd231pd 191(%%rsi)%{1to8%}, %%zmm0, %%zmm21\r\n"       // C[0,17] += A[0,0]*B[29,0][0,17]
                                 "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm1, %%zmm21\r\n"       // C[0,17] += A[0,1]*B[29,0][1,17]
                                 "vfmadd231pd 189(%%rsi)%{1to8%}, %%zmm2, %%zmm10\r\n"       // C[0,6] += A[0,2]*B[29,0][2,6]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=30)
                                   "vmovapd 122880(%%rdi), %%zmm0\r\n"                         // A [0,30] [0,0]
                                   "vmovapd 124928(%%rdi), %%zmm2\r\n"                         // A [0,30] [0,2]
                                   "vmovapd 125952(%%rdi), %%zmm3\r\n"                         // A [0,30] [0,3]
                                 "vfmadd231pd 193(%%rsi)%{1to8%}, %%zmm0, %%zmm6\r\n"        // C[0,2] += A[0,0]*B[30,0][0,2]
                                 "vfmadd231pd 196(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"       // C[0,20] += A[0,0]*B[30,0][0,20]
                                 "vfmadd231pd 194(%%rsi)%{1to8%}, %%zmm2, %%zmm21\r\n"       // C[0,17] += A[0,2]*B[30,0][2,17]
                                 "vfmadd231pd 195(%%rsi)%{1to8%}, %%zmm3, %%zmm23\r\n"       // C[0,19] += A[0,3]*B[30,0][3,19]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=31)
                                   "vmovapd 128000(%%rdi), %%zmm1\r\n"                         // A [0,31] [0,1]
                                   "vmovapd 129024(%%rdi), %%zmm2\r\n"                         // A [0,31] [0,2]
                                 "vfmadd231pd 197(%%rsi)%{1to8%}, %%zmm1, %%zmm16\r\n"       // C[0,12] += A[0,1]*B[31,0][1,12]
                                 "vfmadd231pd 198(%%rsi)%{1to8%}, %%zmm1, %%zmm17\r\n"       // C[0,13] += A[0,1]*B[31,0][1,13]
                                 "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,25] += A[0,1]*B[31,0][1,25]
                                 "vfmadd231pd 199(%%rsi)%{1to8%}, %%zmm2, %%zmm20\r\n"       // C[0,16] += A[0,2]*B[31,0][2,16]
                                 // Store C register block @ (d=0,r=0)
                                 "vmovapd %%zmm4, 0(%%rdx)\r\n"                              // C [0,0] [0,0]
                                 "vmovapd %%zmm5, 1024(%%rdx)\r\n"                           // C [0,0] [0,1]
                                 "vmovapd %%zmm6, 2048(%%rdx)\r\n"                           // C [0,0] [0,2]
                                 "vmovapd %%zmm7, 3072(%%rdx)\r\n"                           // C [0,0] [0,3]
                                 "vmovapd %%zmm8, 4096(%%rdx)\r\n"                           // C [0,0] [0,4]
                                 "vmovapd %%zmm9, 5120(%%rdx)\r\n"                           // C [0,0] [0,5]
                                 "vmovapd %%zmm10, 6144(%%rdx)\r\n"                          // C [0,0] [0,6]
                                 "vmovapd %%zmm11, 7168(%%rdx)\r\n"                          // C [0,0] [0,7]
                                 "vmovapd %%zmm12, 8192(%%rdx)\r\n"                          // C [0,0] [0,8]
                                 "vmovapd %%zmm13, 9216(%%rdx)\r\n"                          // C [0,0] [0,9]
                                 "vmovapd %%zmm14, 10240(%%rdx)\r\n"                         // C [0,0] [0,10]
                                 "vmovapd %%zmm15, 11264(%%rdx)\r\n"                         // C [0,0] [0,11]
                                 "vmovapd %%zmm16, 12288(%%rdx)\r\n"                         // C [0,0] [0,12]
                                 "vmovapd %%zmm17, 13312(%%rdx)\r\n"                         // C [0,0] [0,13]
                                 "vmovapd %%zmm18, 14336(%%rdx)\r\n"                         // C [0,0] [0,14]
                                 "vmovapd %%zmm19, 15360(%%rdx)\r\n"                         // C [0,0] [0,15]
                                 "vmovapd %%zmm20, 16384(%%rdx)\r\n"                         // C [0,0] [0,16]
                                 "vmovapd %%zmm21, 17408(%%rdx)\r\n"                         // C [0,0] [0,17]
                                 "vmovapd %%zmm22, 18432(%%rdx)\r\n"                         // C [0,0] [0,18]
                                 "vmovapd %%zmm23, 19456(%%rdx)\r\n"                         // C [0,0] [0,19]
                                 "vmovapd %%zmm24, 20480(%%rdx)\r\n"                         // C [0,0] [0,20]
                                 "vmovapd %%zmm25, 21504(%%rdx)\r\n"                         // C [0,0] [0,21]
                                 "vmovapd %%zmm26, 22528(%%rdx)\r\n"                         // C [0,0] [0,22]
                                 "vmovapd %%zmm27, 23552(%%rdx)\r\n"                         // C [0,0] [0,23]
                                 "vmovapd %%zmm28, 24576(%%rdx)\r\n"                         // C [0,0] [0,24]
                                 "vmovapd %%zmm29, 25600(%%rdx)\r\n"                         // C [0,0] [0,25]
                                 "vmovapd %%zmm30, 26624(%%rdx)\r\n"                         // C [0,0] [0,26]
                                 "vmovapd %%zmm31, 27648(%%rdx)\r\n"                         // C [0,0] [0,27]
                             "addq $64, %%rdi\r\n"                                       // Move A to (d=1,r=0)
                             "addq $64, %%rdx\r\n"                                       // Move C to (d=1,r=0)
                             "addq $1, %%r12\r\n"
                             "cmp $16, %%r12\r\n"
                             "jl 3b\r\n"
                           "addq $-1024, %%rdi\r\n"                                    // Move A to (d=-16,r=0)
                           "addq $27648, %%rdx\r\n"                                    // Move C to (d=-16,r=1)
                           "addq $28, %%r13\r\n"
                           "cmp $28, %%r13\r\n"
                           "jl 2b\r\n"
                       : : "m"(A), "m"(B), "m"(C) : "r12","r13","rdi","rdx","zmm0","zmm1","zmm10","zmm11","zmm12","zmm13","zmm14","zmm15","zmm16","zmm17","zmm18","zmm19","zmm2","zmm20","zmm21","zmm22","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8","zmm9");
};




void scalability_full_56_nnzs (const double* A, const double* B, double* C) {
  __asm__ __volatile__("movq %0, %%rdi\n\t"
                       "movq %1, %%rsi\n\t"
                       "movq %2, %%rdx\n\t"
                         // scalability_full_56_nnzs, looped over n,m
                           // for r13 <- 0:28:28)
                           "movq $0, %%r13\r\n"
                           "4:\r\n"
                             // for r12 <- 0:1:16)
                             "movq $0, %%r12\r\n"
                             "5:\r\n"
                               // KT unrolled scalability_full_56_nnzs
                                 // Load C register block @ (d=0,r=0)
                                 "vmovapd 0(%%rdx), %%zmm4\r\n"                              // C [0,0] [0,0]
                                 "vmovapd 1024(%%rdx), %%zmm5\r\n"                           // C [0,0] [0,1]
                                 "vmovapd 2048(%%rdx), %%zmm6\r\n"                           // C [0,0] [0,2]
                                 "vmovapd 3072(%%rdx), %%zmm7\r\n"                           // C [0,0] [0,3]
                                 "vmovapd 4096(%%rdx), %%zmm8\r\n"                           // C [0,0] [0,4]
                                 "vmovapd 5120(%%rdx), %%zmm9\r\n"                           // C [0,0] [0,5]
                                 "vmovapd 6144(%%rdx), %%zmm10\r\n"                          // C [0,0] [0,6]
                                 "vmovapd 7168(%%rdx), %%zmm11\r\n"                          // C [0,0] [0,7]
                                 "vmovapd 8192(%%rdx), %%zmm12\r\n"                          // C [0,0] [0,8]
                                 "vmovapd 9216(%%rdx), %%zmm13\r\n"                          // C [0,0] [0,9]
                                 "vmovapd 10240(%%rdx), %%zmm14\r\n"                         // C [0,0] [0,10]
                                 "vmovapd 11264(%%rdx), %%zmm15\r\n"                         // C [0,0] [0,11]
                                 "vmovapd 12288(%%rdx), %%zmm16\r\n"                         // C [0,0] [0,12]
                                 "vmovapd 13312(%%rdx), %%zmm17\r\n"                         // C [0,0] [0,13]
                                 "vmovapd 14336(%%rdx), %%zmm18\r\n"                         // C [0,0] [0,14]
                                 "vmovapd 15360(%%rdx), %%zmm19\r\n"                         // C [0,0] [0,15]
                                 "vmovapd 16384(%%rdx), %%zmm20\r\n"                         // C [0,0] [0,16]
                                 "vmovapd 17408(%%rdx), %%zmm21\r\n"                         // C [0,0] [0,17]
                                 "vmovapd 18432(%%rdx), %%zmm22\r\n"                         // C [0,0] [0,18]
                                 "vmovapd 19456(%%rdx), %%zmm23\r\n"                         // C [0,0] [0,19]
                                 "vmovapd 20480(%%rdx), %%zmm24\r\n"                         // C [0,0] [0,20]
                                 "vmovapd 21504(%%rdx), %%zmm25\r\n"                         // C [0,0] [0,21]
                                 "vmovapd 22528(%%rdx), %%zmm26\r\n"                         // C [0,0] [0,22]
                                 "vmovapd 23552(%%rdx), %%zmm27\r\n"                         // C [0,0] [0,23]
                                 "vmovapd 24576(%%rdx), %%zmm28\r\n"                         // C [0,0] [0,24]
                                 "vmovapd 25600(%%rdx), %%zmm29\r\n"                         // C [0,0] [0,25]
                                 "vmovapd 26624(%%rdx), %%zmm30\r\n"                         // C [0,0] [0,26]
                                 "vmovapd 27648(%%rdx), %%zmm31\r\n"                         // C [0,0] [0,27]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=0)
                                   "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
                                   "vmovapd 1024(%%rdi), %%zmm1\r\n"                           // A [0,0] [0,1]
                                   "vmovapd 2048(%%rdi), %%zmm2\r\n"                           // A [0,0] [0,2]
                                   "vmovapd 3072(%%rdi), %%zmm3\r\n"                           // A [0,0] [0,3]
                                 "vfmadd231pd 5(%%rsi)%{1to8%}, %%zmm0, %%zmm20\r\n"         // C[0,16] += A[0,0]*B[0,0][0,16]
                                 "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"         // C[0,27] += A[0,0]*B[0,0][0,27]
                                 "vfmadd231pd 2(%%rsi)%{1to8%}, %%zmm1, %%zmm15\r\n"         // C[0,11] += A[0,1]*B[0,0][1,11]
                                 "vfmadd231pd 6(%%rsi)%{1to8%}, %%zmm2, %%zmm23\r\n"         // C[0,19] += A[0,2]*B[0,0][2,19]
                                 "vfmadd231pd 1(%%rsi)%{1to8%}, %%zmm3, %%zmm7\r\n"          // C[0,3] += A[0,3]*B[0,0][3,3]
                                 "vfmadd231pd 3(%%rsi)%{1to8%}, %%zmm3, %%zmm16\r\n"         // C[0,12] += A[0,3]*B[0,0][3,12]
                                 "vfmadd231pd 4(%%rsi)%{1to8%}, %%zmm3, %%zmm19\r\n"         // C[0,15] += A[0,3]*B[0,0][3,15]
                                 "vfmadd231pd 7(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"         // C[0,21] += A[0,3]*B[0,0][3,21]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=1)
                                   "vmovapd 4096(%%rdi), %%zmm0\r\n"                           // A [0,1] [0,0]
                                   "vmovapd 5120(%%rdi), %%zmm1\r\n"                           // A [0,1] [0,1]
                                   "vmovapd 6144(%%rdi), %%zmm2\r\n"                           // A [0,1] [0,2]
                                   "vmovapd 7168(%%rdi), %%zmm3\r\n"                           // A [0,1] [0,3]
                                 "vfmadd231pd 14(%%rsi)%{1to8%}, %%zmm0, %%zmm19\r\n"        // C[0,15] += A[0,0]*B[1,0][0,15]
                                 "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm0, %%zmm21\r\n"        // C[0,17] += A[0,0]*B[1,0][0,17]
                                 "vfmadd231pd 18(%%rsi)%{1to8%}, %%zmm0, %%zmm22\r\n"        // C[0,18] += A[0,0]*B[1,0][0,18]
                                 "vfmadd231pd 21(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,22] += A[0,0]*B[1,0][0,22]
                                 "vfmadd231pd 9(%%rsi)%{1to8%}, %%zmm1, %%zmm7\r\n"          // C[0,3] += A[0,1]*B[1,0][1,3]
                                 "vfmadd231pd 17(%%rsi)%{1to8%}, %%zmm1, %%zmm21\r\n"        // C[0,17] += A[0,1]*B[1,0][1,17]
                                 "vfmadd231pd 22(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"        // C[0,25] += A[0,1]*B[1,0][1,25]
                                 "vfmadd231pd 13(%%rsi)%{1to8%}, %%zmm2, %%zmm15\r\n"        // C[0,11] += A[0,2]*B[1,0][2,11]
                                 "vfmadd231pd 15(%%rsi)%{1to8%}, %%zmm2, %%zmm20\r\n"        // C[0,16] += A[0,2]*B[1,0][2,16]
                                 "vfmadd231pd 19(%%rsi)%{1to8%}, %%zmm2, %%zmm23\r\n"        // C[0,19] += A[0,2]*B[1,0][2,19]
                                 "vfmadd231pd 10(%%rsi)%{1to8%}, %%zmm3, %%zmm7\r\n"         // C[0,3] += A[0,3]*B[1,0][3,3]
                                 "vfmadd231pd 11(%%rsi)%{1to8%}, %%zmm3, %%zmm12\r\n"        // C[0,8] += A[0,3]*B[1,0][3,8]
                                 "vfmadd231pd 12(%%rsi)%{1to8%}, %%zmm3, %%zmm13\r\n"        // C[0,9] += A[0,3]*B[1,0][3,9]
                                 "vfmadd231pd 20(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"        // C[0,21] += A[0,3]*B[1,0][3,21]
                                 "vfmadd231pd 23(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"        // C[0,27] += A[0,3]*B[1,0][3,27]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=2)
                                   "vmovapd 8192(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
                                   "vmovapd 9216(%%rdi), %%zmm1\r\n"                           // A [0,2] [0,1]
                                   "vmovapd 10240(%%rdi), %%zmm2\r\n"                          // A [0,2] [0,2]
                                   "vmovapd 11264(%%rdi), %%zmm3\r\n"                          // A [0,2] [0,3]
                                 "vfmadd231pd 30(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"        // C[0,20] += A[0,0]*B[2,0][0,20]
                                 "vfmadd231pd 33(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,27] += A[0,0]*B[2,0][0,27]
                                 "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm1, %%zmm6\r\n"         // C[0,2] += A[0,1]*B[2,0][1,2]
                                 "vfmadd231pd 27(%%rsi)%{1to8%}, %%zmm1, %%zmm21\r\n"        // C[0,17] += A[0,1]*B[2,0][1,17]
                                 "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0,26] += A[0,1]*B[2,0][1,26]
                                 "vfmadd231pd 25(%%rsi)%{1to8%}, %%zmm2, %%zmm8\r\n"         // C[0,4] += A[0,2]*B[2,0][2,4]
                                 "vfmadd231pd 26(%%rsi)%{1to8%}, %%zmm2, %%zmm14\r\n"        // C[0,10] += A[0,2]*B[2,0][2,10]
                                 "vfmadd231pd 28(%%rsi)%{1to8%}, %%zmm2, %%zmm21\r\n"        // C[0,17] += A[0,2]*B[2,0][2,17]
                                 "vfmadd231pd 29(%%rsi)%{1to8%}, %%zmm3, %%zmm23\r\n"        // C[0,19] += A[0,3]*B[2,0][3,19]
                                 "vfmadd231pd 31(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"        // C[0,25] += A[0,3]*B[2,0][3,25]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=3)
                                   "vmovapd 12288(%%rdi), %%zmm0\r\n"                          // A [0,3] [0,0]
                                   "vmovapd 13312(%%rdi), %%zmm1\r\n"                          // A [0,3] [0,1]
                                   "vmovapd 14336(%%rdi), %%zmm2\r\n"                          // A [0,3] [0,2]
                                   "vmovapd 15360(%%rdi), %%zmm3\r\n"                          // A [0,3] [0,3]
                                 "vfmadd231pd 38(%%rsi)%{1to8%}, %%zmm0, %%zmm18\r\n"        // C[0,14] += A[0,0]*B[3,0][0,14]
                                 "vfmadd231pd 35(%%rsi)%{1to8%}, %%zmm1, %%zmm9\r\n"         // C[0,5] += A[0,1]*B[3,0][1,5]
                                 "vfmadd231pd 39(%%rsi)%{1to8%}, %%zmm1, %%zmm20\r\n"        // C[0,16] += A[0,1]*B[3,0][1,16]
                                 "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm2, %%zmm20\r\n"        // C[0,16] += A[0,2]*B[3,0][2,16]
                                 "vfmadd231pd 41(%%rsi)%{1to8%}, %%zmm2, %%zmm26\r\n"        // C[0,22] += A[0,2]*B[3,0][2,22]
                                 "vfmadd231pd 34(%%rsi)%{1to8%}, %%zmm3, %%zmm5\r\n"         // C[0,1] += A[0,3]*B[3,0][3,1]
                                 "vfmadd231pd 36(%%rsi)%{1to8%}, %%zmm3, %%zmm10\r\n"        // C[0,6] += A[0,3]*B[3,0][3,6]
                                 "vfmadd231pd 37(%%rsi)%{1to8%}, %%zmm3, %%zmm15\r\n"        // C[0,11] += A[0,3]*B[3,0][3,11]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=4)
                                   "vmovapd 16384(%%rdi), %%zmm0\r\n"                          // A [0,4] [0,0]
                                   "vmovapd 17408(%%rdi), %%zmm1\r\n"                          // A [0,4] [0,1]
                                   "vmovapd 18432(%%rdi), %%zmm2\r\n"                          // A [0,4] [0,2]
                                 "vfmadd231pd 47(%%rsi)%{1to8%}, %%zmm0, %%zmm17\r\n"        // C[0,13] += A[0,0]*B[4,0][0,13]
                                 "vfmadd231pd 42(%%rsi)%{1to8%}, %%zmm1, %%zmm4\r\n"         // C[0,0] += A[0,1]*B[4,0][1,0]
                                 "vfmadd231pd 43(%%rsi)%{1to8%}, %%zmm1, %%zmm9\r\n"         // C[0,5] += A[0,1]*B[4,0][1,5]
                                 "vfmadd231pd 50(%%rsi)%{1to8%}, %%zmm1, %%zmm22\r\n"        // C[0,18] += A[0,1]*B[4,0][1,18]
                                 "vfmadd231pd 51(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,21] += A[0,1]*B[4,0][1,21]
                                 "vfmadd231pd 44(%%rsi)%{1to8%}, %%zmm2, %%zmm13\r\n"        // C[0,9] += A[0,2]*B[4,0][2,9]
                                 "vfmadd231pd 45(%%rsi)%{1to8%}, %%zmm2, %%zmm14\r\n"        // C[0,10] += A[0,2]*B[4,0][2,10]
                                 "vfmadd231pd 46(%%rsi)%{1to8%}, %%zmm2, %%zmm15\r\n"        // C[0,11] += A[0,2]*B[4,0][2,11]
                                 "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm2, %%zmm17\r\n"        // C[0,13] += A[0,2]*B[4,0][2,13]
                                 "vfmadd231pd 49(%%rsi)%{1to8%}, %%zmm2, %%zmm21\r\n"        // C[0,17] += A[0,2]*B[4,0][2,17]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=5)
                                   "vmovapd 20480(%%rdi), %%zmm0\r\n"                          // A [0,5] [0,0]
                                   "vmovapd 21504(%%rdi), %%zmm1\r\n"                          // A [0,5] [0,1]
                                   "vmovapd 22528(%%rdi), %%zmm2\r\n"                          // A [0,5] [0,2]
                                 "vfmadd231pd 54(%%rsi)%{1to8%}, %%zmm0, %%zmm15\r\n"        // C[0,11] += A[0,0]*B[5,0][0,11]
                                 "vfmadd231pd 55(%%rsi)%{1to8%}, %%zmm0, %%zmm18\r\n"        // C[0,14] += A[0,0]*B[5,0][0,14]
                                 "vfmadd231pd 57(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,22] += A[0,0]*B[5,0][0,22]
                                 "vfmadd231pd 52(%%rsi)%{1to8%}, %%zmm1, %%zmm7\r\n"         // C[0,3] += A[0,1]*B[5,0][1,3]
                                 "vfmadd231pd 58(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"        // C[0,22] += A[0,1]*B[5,0][1,22]
                                 "vfmadd231pd 53(%%rsi)%{1to8%}, %%zmm2, %%zmm12\r\n"        // C[0,8] += A[0,2]*B[5,0][2,8]
                                 "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm2, %%zmm18\r\n"        // C[0,14] += A[0,2]*B[5,0][2,14]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=6)
                                   "vmovapd 24576(%%rdi), %%zmm0\r\n"                          // A [0,6] [0,0]
                                   "vmovapd 25600(%%rdi), %%zmm1\r\n"                          // A [0,6] [0,1]
                                   "vmovapd 26624(%%rdi), %%zmm2\r\n"                          // A [0,6] [0,2]
                                   "vmovapd 27648(%%rdi), %%zmm3\r\n"                          // A [0,6] [0,3]
                                 "vfmadd231pd 69(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"        // C[0,22] += A[0,0]*B[6,0][0,22]
                                 "vfmadd231pd 70(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0,27] += A[0,0]*B[6,0][0,27]
                                 "vfmadd231pd 60(%%rsi)%{1to8%}, %%zmm1, %%zmm13\r\n"        // C[0,9] += A[0,1]*B[6,0][1,9]
                                 "vfmadd231pd 68(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,21] += A[0,1]*B[6,0][1,21]
                                 "vfmadd231pd 61(%%rsi)%{1to8%}, %%zmm2, %%zmm14\r\n"        // C[0,10] += A[0,2]*B[6,0][2,10]
                                 "vfmadd231pd 62(%%rsi)%{1to8%}, %%zmm2, %%zmm15\r\n"        // C[0,11] += A[0,2]*B[6,0][2,11]
                                 "vfmadd231pd 67(%%rsi)%{1to8%}, %%zmm2, %%zmm23\r\n"        // C[0,19] += A[0,2]*B[6,0][2,19]
                                 "vfmadd231pd 71(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0,27] += A[0,2]*B[6,0][2,27]
                                 "vfmadd231pd 59(%%rsi)%{1to8%}, %%zmm3, %%zmm4\r\n"         // C[0,0] += A[0,3]*B[6,0][3,0]
                                 "vfmadd231pd 63(%%rsi)%{1to8%}, %%zmm3, %%zmm15\r\n"        // C[0,11] += A[0,3]*B[6,0][3,11]
                                 "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm3, %%zmm17\r\n"        // C[0,13] += A[0,3]*B[6,0][3,13]
                                 "vfmadd231pd 65(%%rsi)%{1to8%}, %%zmm3, %%zmm19\r\n"        // C[0,15] += A[0,3]*B[6,0][3,15]
                                 "vfmadd231pd 66(%%rsi)%{1to8%}, %%zmm3, %%zmm22\r\n"        // C[0,18] += A[0,3]*B[6,0][3,18]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=7)
                                   "vmovapd 28672(%%rdi), %%zmm0\r\n"                          // A [0,7] [0,0]
                                   "vmovapd 29696(%%rdi), %%zmm1\r\n"                          // A [0,7] [0,1]
                                   "vmovapd 30720(%%rdi), %%zmm2\r\n"                          // A [0,7] [0,2]
                                 "vfmadd231pd 73(%%rsi)%{1to8%}, %%zmm0, %%zmm6\r\n"         // C[0,2] += A[0,0]*B[7,0][0,2]
                                 "vfmadd231pd 74(%%rsi)%{1to8%}, %%zmm0, %%zmm7\r\n"         // C[0,3] += A[0,0]*B[7,0][0,3]
                                 "vfmadd231pd 75(%%rsi)%{1to8%}, %%zmm0, %%zmm10\r\n"        // C[0,6] += A[0,0]*B[7,0][0,6]
                                 "vfmadd231pd 77(%%rsi)%{1to8%}, %%zmm0, %%zmm11\r\n"        // C[0,7] += A[0,0]*B[7,0][0,7]
                                 "vfmadd231pd 78(%%rsi)%{1to8%}, %%zmm0, %%zmm13\r\n"        // C[0,9] += A[0,0]*B[7,0][0,9]
                                 "vfmadd231pd 85(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0,24] += A[0,0]*B[7,0][0,24]
                                 "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm1, %%zmm4\r\n"         // C[0,0] += A[0,1]*B[7,0][1,0]
                                 "vfmadd231pd 76(%%rsi)%{1to8%}, %%zmm1, %%zmm10\r\n"        // C[0,6] += A[0,1]*B[7,0][1,6]
                                 "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm1, %%zmm22\r\n"        // C[0,18] += A[0,1]*B[7,0][1,18]
                                 "vfmadd231pd 82(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"        // C[0,21] += A[0,1]*B[7,0][1,21]
                                 "vfmadd231pd 83(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"        // C[0,23] += A[0,1]*B[7,0][1,23]
                                 "vfmadd231pd 79(%%rsi)%{1to8%}, %%zmm2, %%zmm14\r\n"        // C[0,10] += A[0,2]*B[7,0][2,10]
                                 "vfmadd231pd 81(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"        // C[0,20] += A[0,2]*B[7,0][2,20]
                                 "vfmadd231pd 84(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"        // C[0,23] += A[0,2]*B[7,0][2,23]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=8)
                                   "vmovapd 32768(%%rdi), %%zmm0\r\n"                          // A [0,8] [0,0]
                                   "vmovapd 33792(%%rdi), %%zmm1\r\n"                          // A [0,8] [0,1]
                                   "vmovapd 34816(%%rdi), %%zmm2\r\n"                          // A [0,8] [0,2]
                                   "vmovapd 35840(%%rdi), %%zmm3\r\n"                          // A [0,8] [0,3]
                                 "vfmadd231pd 86(%%rsi)%{1to8%}, %%zmm0, %%zmm5\r\n"         // C[0,1] += A[0,0]*B[8,0][0,1]
                                 "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm0, %%zmm13\r\n"        // C[0,9] += A[0,0]*B[8,0][0,9]
                                 "vfmadd231pd 91(%%rsi)%{1to8%}, %%zmm0, %%zmm19\r\n"        // C[0,15] += A[0,0]*B[8,0][0,15]
                                 "vfmadd231pd 92(%%rsi)%{1to8%}, %%zmm1, %%zmm23\r\n"        // C[0,19] += A[0,1]*B[8,0][1,19]
                                 "vfmadd231pd 87(%%rsi)%{1to8%}, %%zmm2, %%zmm6\r\n"         // C[0,2] += A[0,2]*B[8,0][2,2]
                                 "vfmadd231pd 89(%%rsi)%{1to8%}, %%zmm2, %%zmm15\r\n"        // C[0,11] += A[0,2]*B[8,0][2,11]
                                 "vfmadd231pd 90(%%rsi)%{1to8%}, %%zmm3, %%zmm18\r\n"        // C[0,14] += A[0,3]*B[8,0][3,14]
                                 "vfmadd231pd 93(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"        // C[0,24] += A[0,3]*B[8,0][3,24]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=9)
                                   "vmovapd 36864(%%rdi), %%zmm0\r\n"                          // A [0,9] [0,0]
                                   "vmovapd 37888(%%rdi), %%zmm1\r\n"                          // A [0,9] [0,1]
                                   "vmovapd 38912(%%rdi), %%zmm2\r\n"                          // A [0,9] [0,2]
                                   "vmovapd 39936(%%rdi), %%zmm3\r\n"                          // A [0,9] [0,3]
                                 "vfmadd231pd 99(%%rsi)%{1to8%}, %%zmm0, %%zmm14\r\n"        // C[0,10] += A[0,0]*B[9,0][0,10]
                                 "vfmadd231pd 95(%%rsi)%{1to8%}, %%zmm1, %%zmm8\r\n"         // C[0,4] += A[0,1]*B[9,0][1,4]
                                 "vfmadd231pd 97(%%rsi)%{1to8%}, %%zmm1, %%zmm10\r\n"        // C[0,6] += A[0,1]*B[9,0][1,6]
                                 "vfmadd231pd 100(%%rsi)%{1to8%}, %%zmm1, %%zmm18\r\n"       // C[0,14] += A[0,1]*B[9,0][1,14]
                                 "vfmadd231pd 98(%%rsi)%{1to8%}, %%zmm2, %%zmm13\r\n"        // C[0,9] += A[0,2]*B[9,0][2,9]
                                 "vfmadd231pd 94(%%rsi)%{1to8%}, %%zmm3, %%zmm4\r\n"         // C[0,0] += A[0,3]*B[9,0][3,0]
                                 "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm3, %%zmm8\r\n"         // C[0,4] += A[0,3]*B[9,0][3,4]
                                 "vfmadd231pd 101(%%rsi)%{1to8%}, %%zmm3, %%zmm20\r\n"       // C[0,16] += A[0,3]*B[9,0][3,16]
                                 "vfmadd231pd 102(%%rsi)%{1to8%}, %%zmm3, %%zmm21\r\n"       // C[0,17] += A[0,3]*B[9,0][3,17]
                                 "vfmadd231pd 103(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"       // C[0,21] += A[0,3]*B[9,0][3,21]
                                 "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0,27] += A[0,3]*B[9,0][3,27]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=10)
                                   "vmovapd 40960(%%rdi), %%zmm0\r\n"                          // A [0,10] [0,0]
                                   "vmovapd 41984(%%rdi), %%zmm1\r\n"                          // A [0,10] [0,1]
                                   "vmovapd 43008(%%rdi), %%zmm2\r\n"                          // A [0,10] [0,2]
                                   "vmovapd 44032(%%rdi), %%zmm3\r\n"                          // A [0,10] [0,3]
                                 "vfmadd231pd 108(%%rsi)%{1to8%}, %%zmm0, %%zmm12\r\n"       // C[0,8] += A[0,0]*B[10,0][0,8]
                                 "vfmadd231pd 109(%%rsi)%{1to8%}, %%zmm1, %%zmm13\r\n"       // C[0,9] += A[0,1]*B[10,0][1,9]
                                 "vfmadd231pd 110(%%rsi)%{1to8%}, %%zmm1, %%zmm18\r\n"       // C[0,14] += A[0,1]*B[10,0][1,14]
                                 "vfmadd231pd 113(%%rsi)%{1to8%}, %%zmm1, %%zmm20\r\n"       // C[0,16] += A[0,1]*B[10,0][1,16]
                                 "vfmadd231pd 114(%%rsi)%{1to8%}, %%zmm1, %%zmm21\r\n"       // C[0,17] += A[0,1]*B[10,0][1,17]
                                 "vfmadd231pd 105(%%rsi)%{1to8%}, %%zmm2, %%zmm5\r\n"        // C[0,1] += A[0,2]*B[10,0][2,1]
                                 "vfmadd231pd 107(%%rsi)%{1to8%}, %%zmm2, %%zmm9\r\n"        // C[0,5] += A[0,2]*B[10,0][2,5]
                                 "vfmadd231pd 111(%%rsi)%{1to8%}, %%zmm2, %%zmm18\r\n"       // C[0,14] += A[0,2]*B[10,0][2,14]
                                 "vfmadd231pd 106(%%rsi)%{1to8%}, %%zmm3, %%zmm5\r\n"        // C[0,1] += A[0,3]*B[10,0][3,1]
                                 "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm3, %%zmm18\r\n"       // C[0,14] += A[0,3]*B[10,0][3,14]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=11)
                                   "vmovapd 45056(%%rdi), %%zmm0\r\n"                          // A [0,11] [0,0]
                                   "vmovapd 46080(%%rdi), %%zmm1\r\n"                          // A [0,11] [0,1]
                                   "vmovapd 47104(%%rdi), %%zmm2\r\n"                          // A [0,11] [0,2]
                                   "vmovapd 48128(%%rdi), %%zmm3\r\n"                          // A [0,11] [0,3]
                                 "vfmadd231pd 115(%%rsi)%{1to8%}, %%zmm0, %%zmm5\r\n"        // C[0,1] += A[0,0]*B[11,0][0,1]
                                 "vfmadd231pd 117(%%rsi)%{1to8%}, %%zmm0, %%zmm15\r\n"       // C[0,11] += A[0,0]*B[11,0][0,11]
                                 "vfmadd231pd 119(%%rsi)%{1to8%}, %%zmm0, %%zmm18\r\n"       // C[0,14] += A[0,0]*B[11,0][0,14]
                                 "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm0, %%zmm22\r\n"       // C[0,18] += A[0,0]*B[11,0][0,18]
                                 "vfmadd231pd 121(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"       // C[0,20] += A[0,0]*B[11,0][0,20]
                                 "vfmadd231pd 122(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,25] += A[0,1]*B[11,0][1,25]
                                 "vfmadd231pd 123(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0,27] += A[0,1]*B[11,0][1,27]
                                 "vfmadd231pd 118(%%rsi)%{1to8%}, %%zmm2, %%zmm15\r\n"       // C[0,11] += A[0,2]*B[11,0][2,11]
                                 "vfmadd231pd 116(%%rsi)%{1to8%}, %%zmm3, %%zmm5\r\n"        // C[0,1] += A[0,3]*B[11,0][3,1]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=12)
                                   "vmovapd 49152(%%rdi), %%zmm0\r\n"                          // A [0,12] [0,0]
                                   "vmovapd 50176(%%rdi), %%zmm1\r\n"                          // A [0,12] [0,1]
                                   "vmovapd 51200(%%rdi), %%zmm2\r\n"                          // A [0,12] [0,2]
                                   "vmovapd 52224(%%rdi), %%zmm3\r\n"                          // A [0,12] [0,3]
                                 "vfmadd231pd 126(%%rsi)%{1to8%}, %%zmm0, %%zmm16\r\n"       // C[0,12] += A[0,0]*B[12,0][0,12]
                                 "vfmadd231pd 127(%%rsi)%{1to8%}, %%zmm1, %%zmm23\r\n"       // C[0,19] += A[0,1]*B[12,0][1,19]
                                 "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"       // C[0,20] += A[0,1]*B[12,0][1,20]
                                 "vfmadd231pd 125(%%rsi)%{1to8%}, %%zmm2, %%zmm11\r\n"       // C[0,7] += A[0,2]*B[12,0][2,7]
                                 "vfmadd231pd 129(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"       // C[0,20] += A[0,2]*B[12,0][2,20]
                                 "vfmadd231pd 124(%%rsi)%{1to8%}, %%zmm3, %%zmm8\r\n"        // C[0,4] += A[0,3]*B[12,0][3,4]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=13)
                                   "vmovapd 53248(%%rdi), %%zmm0\r\n"                          // A [0,13] [0,0]
                                   "vmovapd 54272(%%rdi), %%zmm1\r\n"                          // A [0,13] [0,1]
                                   "vmovapd 55296(%%rdi), %%zmm2\r\n"                          // A [0,13] [0,2]
                                   "vmovapd 56320(%%rdi), %%zmm3\r\n"                          // A [0,13] [0,3]
                                 "vfmadd231pd 133(%%rsi)%{1to8%}, %%zmm0, %%zmm14\r\n"       // C[0,10] += A[0,0]*B[13,0][0,10]
                                 "vfmadd231pd 139(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,23] += A[0,0]*B[13,0][0,23]
                                 "vfmadd231pd 134(%%rsi)%{1to8%}, %%zmm1, %%zmm16\r\n"       // C[0,12] += A[0,1]*B[13,0][1,12]
                                 "vfmadd231pd 137(%%rsi)%{1to8%}, %%zmm1, %%zmm20\r\n"       // C[0,16] += A[0,1]*B[13,0][1,16]
                                 "vfmadd231pd 140(%%rsi)%{1to8%}, %%zmm1, %%zmm27\r\n"       // C[0,23] += A[0,1]*B[13,0][1,23]
                                 "vfmadd231pd 131(%%rsi)%{1to8%}, %%zmm2, %%zmm8\r\n"        // C[0,4] += A[0,2]*B[13,0][2,4]
                                 "vfmadd231pd 132(%%rsi)%{1to8%}, %%zmm2, %%zmm10\r\n"       // C[0,6] += A[0,2]*B[13,0][2,6]
                                 "vfmadd231pd 135(%%rsi)%{1to8%}, %%zmm2, %%zmm17\r\n"       // C[0,13] += A[0,2]*B[13,0][2,13]
                                 "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm2, %%zmm19\r\n"       // C[0,15] += A[0,2]*B[13,0][2,15]
                                 "vfmadd231pd 130(%%rsi)%{1to8%}, %%zmm3, %%zmm7\r\n"        // C[0,3] += A[0,3]*B[13,0][3,3]
                                 "vfmadd231pd 138(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"       // C[0,20] += A[0,3]*B[13,0][3,20]
                                 "vfmadd231pd 141(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,26] += A[0,3]*B[13,0][3,26]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=14)
                                   "vmovapd 57344(%%rdi), %%zmm0\r\n"                          // A [0,14] [0,0]
                                   "vmovapd 58368(%%rdi), %%zmm1\r\n"                          // A [0,14] [0,1]
                                   "vmovapd 59392(%%rdi), %%zmm2\r\n"                          // A [0,14] [0,2]
                                   "vmovapd 60416(%%rdi), %%zmm3\r\n"                          // A [0,14] [0,3]
                                 "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm0, %%zmm15\r\n"       // C[0,11] += A[0,0]*B[14,0][0,11]
                                 "vfmadd231pd 148(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,24] += A[0,0]*B[14,0][0,24]
                                 "vfmadd231pd 146(%%rsi)%{1to8%}, %%zmm1, %%zmm23\r\n"       // C[0,19] += A[0,1]*B[14,0][1,19]
                                 "vfmadd231pd 142(%%rsi)%{1to8%}, %%zmm2, %%zmm14\r\n"       // C[0,10] += A[0,2]*B[14,0][2,10]
                                 "vfmadd231pd 149(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0,26] += A[0,2]*B[14,0][2,26]
                                 "vfmadd231pd 143(%%rsi)%{1to8%}, %%zmm3, %%zmm14\r\n"       // C[0,10] += A[0,3]*B[14,0][3,10]
                                 "vfmadd231pd 145(%%rsi)%{1to8%}, %%zmm3, %%zmm17\r\n"       // C[0,13] += A[0,3]*B[14,0][3,13]
                                 "vfmadd231pd 147(%%rsi)%{1to8%}, %%zmm3, %%zmm27\r\n"       // C[0,23] += A[0,3]*B[14,0][3,23]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=15)
                                   "vmovapd 61440(%%rdi), %%zmm0\r\n"                          // A [0,15] [0,0]
                                   "vmovapd 62464(%%rdi), %%zmm1\r\n"                          // A [0,15] [0,1]
                                   "vmovapd 63488(%%rdi), %%zmm2\r\n"                          // A [0,15] [0,2]
                                   "vmovapd 64512(%%rdi), %%zmm3\r\n"                          // A [0,15] [0,3]
                                 "vfmadd231pd 154(%%rsi)%{1to8%}, %%zmm0, %%zmm14\r\n"       // C[0,10] += A[0,0]*B[15,0][0,10]
                                 "vfmadd231pd 155(%%rsi)%{1to8%}, %%zmm0, %%zmm15\r\n"       // C[0,11] += A[0,0]*B[15,0][0,11]
                                 "vfmadd231pd 156(%%rsi)%{1to8%}, %%zmm0, %%zmm19\r\n"       // C[0,15] += A[0,0]*B[15,0][0,15]
                                 "vfmadd231pd 151(%%rsi)%{1to8%}, %%zmm1, %%zmm8\r\n"        // C[0,4] += A[0,1]*B[15,0][1,4]
                                 "vfmadd231pd 150(%%rsi)%{1to8%}, %%zmm2, %%zmm5\r\n"        // C[0,1] += A[0,2]*B[15,0][2,1]
                                 "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm2, %%zmm10\r\n"       // C[0,6] += A[0,2]*B[15,0][2,6]
                                 "vfmadd231pd 157(%%rsi)%{1to8%}, %%zmm2, %%zmm19\r\n"       // C[0,15] += A[0,2]*B[15,0][2,15]
                                 "vfmadd231pd 158(%%rsi)%{1to8%}, %%zmm2, %%zmm22\r\n"       // C[0,18] += A[0,2]*B[15,0][2,18]
                                 "vfmadd231pd 159(%%rsi)%{1to8%}, %%zmm2, %%zmm23\r\n"       // C[0,19] += A[0,2]*B[15,0][2,19]
                                 "vfmadd231pd 153(%%rsi)%{1to8%}, %%zmm3, %%zmm13\r\n"       // C[0,9] += A[0,3]*B[15,0][3,9]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=16)
                                   "vmovapd 65536(%%rdi), %%zmm0\r\n"                          // A [0,16] [0,0]
                                   "vmovapd 66560(%%rdi), %%zmm1\r\n"                          // A [0,16] [0,1]
                                   "vmovapd 67584(%%rdi), %%zmm2\r\n"                          // A [0,16] [0,2]
                                   "vmovapd 68608(%%rdi), %%zmm3\r\n"                          // A [0,16] [0,3]
                                 "vfmadd231pd 163(%%rsi)%{1to8%}, %%zmm0, %%zmm8\r\n"        // C[0,4] += A[0,0]*B[16,0][0,4]
                                 "vfmadd231pd 164(%%rsi)%{1to8%}, %%zmm0, %%zmm13\r\n"       // C[0,9] += A[0,0]*B[16,0][0,9]
                                 "vfmadd231pd 169(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,27] += A[0,0]*B[16,0][0,27]
                                 "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm1, %%zmm4\r\n"        // C[0,0] += A[0,1]*B[16,0][1,0]
                                 "vfmadd231pd 162(%%rsi)%{1to8%}, %%zmm1, %%zmm6\r\n"        // C[0,2] += A[0,1]*B[16,0][1,2]
                                 "vfmadd231pd 166(%%rsi)%{1to8%}, %%zmm1, %%zmm18\r\n"       // C[0,14] += A[0,1]*B[16,0][1,14]
                                 "vfmadd231pd 167(%%rsi)%{1to8%}, %%zmm1, %%zmm25\r\n"       // C[0,21] += A[0,1]*B[16,0][1,21]
                                 "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"       // C[0,21] += A[0,2]*B[16,0][2,21]
                                 "vfmadd231pd 161(%%rsi)%{1to8%}, %%zmm3, %%zmm5\r\n"        // C[0,1] += A[0,3]*B[16,0][3,1]
                                 "vfmadd231pd 165(%%rsi)%{1to8%}, %%zmm3, %%zmm16\r\n"       // C[0,12] += A[0,3]*B[16,0][3,12]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=17)
                                   "vmovapd 69632(%%rdi), %%zmm0\r\n"                          // A [0,17] [0,0]
                                   "vmovapd 70656(%%rdi), %%zmm1\r\n"                          // A [0,17] [0,1]
                                   "vmovapd 71680(%%rdi), %%zmm2\r\n"                          // A [0,17] [0,2]
                                   "vmovapd 72704(%%rdi), %%zmm3\r\n"                          // A [0,17] [0,3]
                                 "vfmadd231pd 171(%%rsi)%{1to8%}, %%zmm0, %%zmm7\r\n"        // C[0,3] += A[0,0]*B[17,0][0,3]
                                 "vfmadd231pd 172(%%rsi)%{1to8%}, %%zmm1, %%zmm14\r\n"       // C[0,10] += A[0,1]*B[17,0][1,10]
                                 "vfmadd231pd 170(%%rsi)%{1to8%}, %%zmm2, %%zmm6\r\n"        // C[0,2] += A[0,2]*B[17,0][2,2]
                                 "vfmadd231pd 173(%%rsi)%{1to8%}, %%zmm2, %%zmm14\r\n"       // C[0,10] += A[0,2]*B[17,0][2,10]
                                 "vfmadd231pd 174(%%rsi)%{1to8%}, %%zmm3, %%zmm19\r\n"       // C[0,15] += A[0,3]*B[17,0][3,15]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=18)
                                   "vmovapd 73728(%%rdi), %%zmm0\r\n"                          // A [0,18] [0,0]
                                   "vmovapd 76800(%%rdi), %%zmm3\r\n"                          // A [0,18] [0,3]
                                 "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm0, %%zmm14\r\n"       // C[0,10] += A[0,0]*B[18,0][0,10]
                                 "vfmadd231pd 178(%%rsi)%{1to8%}, %%zmm0, %%zmm21\r\n"       // C[0,17] += A[0,0]*B[18,0][0,17]
                                 "vfmadd231pd 179(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,24] += A[0,0]*B[18,0][0,24]
                                 "vfmadd231pd 180(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,26] += A[0,0]*B[18,0][0,26]
                                 "vfmadd231pd 175(%%rsi)%{1to8%}, %%zmm3, %%zmm10\r\n"       // C[0,6] += A[0,3]*B[18,0][3,6]
                                 "vfmadd231pd 177(%%rsi)%{1to8%}, %%zmm3, %%zmm16\r\n"       // C[0,12] += A[0,3]*B[18,0][3,12]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=19)
                                   "vmovapd 77824(%%rdi), %%zmm0\r\n"                          // A [0,19] [0,0]
                                   "vmovapd 78848(%%rdi), %%zmm1\r\n"                          // A [0,19] [0,1]
                                   "vmovapd 79872(%%rdi), %%zmm2\r\n"                          // A [0,19] [0,2]
                                   "vmovapd 80896(%%rdi), %%zmm3\r\n"                          // A [0,19] [0,3]
                                 "vfmadd231pd 181(%%rsi)%{1to8%}, %%zmm0, %%zmm5\r\n"        // C[0,1] += A[0,0]*B[19,0][0,1]
                                 "vfmadd231pd 187(%%rsi)%{1to8%}, %%zmm0, %%zmm15\r\n"       // C[0,11] += A[0,0]*B[19,0][0,11]
                                 "vfmadd231pd 190(%%rsi)%{1to8%}, %%zmm0, %%zmm17\r\n"       // C[0,13] += A[0,0]*B[19,0][0,13]
                                 "vfmadd231pd 191(%%rsi)%{1to8%}, %%zmm0, %%zmm22\r\n"       // C[0,18] += A[0,0]*B[19,0][0,18]
                                 "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm0, %%zmm25\r\n"       // C[0,21] += A[0,0]*B[19,0][0,21]
                                 "vfmadd231pd 182(%%rsi)%{1to8%}, %%zmm1, %%zmm6\r\n"        // C[0,2] += A[0,1]*B[19,0][1,2]
                                 "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm1, %%zmm8\r\n"        // C[0,4] += A[0,1]*B[19,0][1,4]
                                 "vfmadd231pd 188(%%rsi)%{1to8%}, %%zmm2, %%zmm15\r\n"       // C[0,11] += A[0,2]*B[19,0][2,11]
                                 "vfmadd231pd 189(%%rsi)%{1to8%}, %%zmm2, %%zmm16\r\n"       // C[0,12] += A[0,2]*B[19,0][2,12]
                                 "vfmadd231pd 195(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,27] += A[0,2]*B[19,0][2,27]
                                 "vfmadd231pd 183(%%rsi)%{1to8%}, %%zmm3, %%zmm6\r\n"        // C[0,2] += A[0,3]*B[19,0][3,2]
                                 "vfmadd231pd 185(%%rsi)%{1to8%}, %%zmm3, %%zmm8\r\n"        // C[0,4] += A[0,3]*B[19,0][3,4]
                                 "vfmadd231pd 186(%%rsi)%{1to8%}, %%zmm3, %%zmm10\r\n"       // C[0,6] += A[0,3]*B[19,0][3,6]
                                 "vfmadd231pd 193(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"       // C[0,21] += A[0,3]*B[19,0][3,21]
                                 "vfmadd231pd 194(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,22] += A[0,3]*B[19,0][3,22]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=20)
                                   "vmovapd 81920(%%rdi), %%zmm0\r\n"                          // A [0,20] [0,0]
                                   "vmovapd 82944(%%rdi), %%zmm1\r\n"                          // A [0,20] [0,1]
                                   "vmovapd 83968(%%rdi), %%zmm2\r\n"                          // A [0,20] [0,2]
                                   "vmovapd 84992(%%rdi), %%zmm3\r\n"                          // A [0,20] [0,3]
                                 "vfmadd231pd 196(%%rsi)%{1to8%}, %%zmm0, %%zmm6\r\n"        // C[0,2] += A[0,0]*B[20,0][0,2]
                                 "vfmadd231pd 197(%%rsi)%{1to8%}, %%zmm1, %%zmm9\r\n"        // C[0,5] += A[0,1]*B[20,0][1,5]
                                 "vfmadd231pd 198(%%rsi)%{1to8%}, %%zmm1, %%zmm12\r\n"       // C[0,8] += A[0,1]*B[20,0][1,8]
                                 "vfmadd231pd 199(%%rsi)%{1to8%}, %%zmm1, %%zmm14\r\n"       // C[0,10] += A[0,1]*B[20,0][1,10]
                                 "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm1, %%zmm15\r\n"       // C[0,11] += A[0,1]*B[20,0][1,11]
                                 "vfmadd231pd 201(%%rsi)%{1to8%}, %%zmm1, %%zmm20\r\n"       // C[0,16] += A[0,1]*B[20,0][1,16]
                                 "vfmadd231pd 203(%%rsi)%{1to8%}, %%zmm1, %%zmm23\r\n"       // C[0,19] += A[0,1]*B[20,0][1,19]
                                 "vfmadd231pd 202(%%rsi)%{1to8%}, %%zmm2, %%zmm22\r\n"       // C[0,18] += A[0,2]*B[20,0][2,18]
                                 "vfmadd231pd 204(%%rsi)%{1to8%}, %%zmm2, %%zmm23\r\n"       // C[0,19] += A[0,2]*B[20,0][2,19]
                                 "vfmadd231pd 205(%%rsi)%{1to8%}, %%zmm3, %%zmm23\r\n"       // C[0,19] += A[0,3]*B[20,0][3,19]
                                 "vfmadd231pd 206(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"       // C[0,21] += A[0,3]*B[20,0][3,21]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=21)
                                   "vmovapd 86016(%%rdi), %%zmm0\r\n"                          // A [0,21] [0,0]
                                   "vmovapd 88064(%%rdi), %%zmm2\r\n"                          // A [0,21] [0,2]
                                   "vmovapd 89088(%%rdi), %%zmm3\r\n"                          // A [0,21] [0,3]
                                 "vfmadd231pd 207(%%rsi)%{1to8%}, %%zmm0, %%zmm6\r\n"        // C[0,2] += A[0,0]*B[21,0][0,2]
                                 "vfmadd231pd 210(%%rsi)%{1to8%}, %%zmm0, %%zmm10\r\n"       // C[0,6] += A[0,0]*B[21,0][0,6]
                                 "vfmadd231pd 213(%%rsi)%{1to8%}, %%zmm0, %%zmm16\r\n"       // C[0,12] += A[0,0]*B[21,0][0,12]
                                 "vfmadd231pd 214(%%rsi)%{1to8%}, %%zmm0, %%zmm20\r\n"       // C[0,16] += A[0,0]*B[21,0][0,16]
                                 "vfmadd231pd 217(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,27] += A[0,0]*B[21,0][0,27]
                                 "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm2, %%zmm7\r\n"        // C[0,3] += A[0,2]*B[21,0][2,3]
                                 "vfmadd231pd 209(%%rsi)%{1to8%}, %%zmm2, %%zmm8\r\n"        // C[0,4] += A[0,2]*B[21,0][2,4]
                                 "vfmadd231pd 211(%%rsi)%{1to8%}, %%zmm2, %%zmm11\r\n"       // C[0,7] += A[0,2]*B[21,0][2,7]
                                 "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,24] += A[0,2]*B[21,0][2,24]
                                 "vfmadd231pd 212(%%rsi)%{1to8%}, %%zmm3, %%zmm11\r\n"       // C[0,7] += A[0,3]*B[21,0][3,7]
                                 "vfmadd231pd 215(%%rsi)%{1to8%}, %%zmm3, %%zmm20\r\n"       // C[0,16] += A[0,3]*B[21,0][3,16]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=22)
                                   "vmovapd 90112(%%rdi), %%zmm0\r\n"                          // A [0,22] [0,0]
                                   "vmovapd 91136(%%rdi), %%zmm1\r\n"                          // A [0,22] [0,1]
                                   "vmovapd 92160(%%rdi), %%zmm2\r\n"                          // A [0,22] [0,2]
                                 "vfmadd231pd 220(%%rsi)%{1to8%}, %%zmm0, %%zmm14\r\n"       // C[0,10] += A[0,0]*B[22,0][0,10]
                                 "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm0, %%zmm26\r\n"       // C[0,22] += A[0,0]*B[22,0][0,22]
                                 "vfmadd231pd 219(%%rsi)%{1to8%}, %%zmm1, %%zmm13\r\n"       // C[0,9] += A[0,1]*B[22,0][1,9]
                                 "vfmadd231pd 221(%%rsi)%{1to8%}, %%zmm1, %%zmm18\r\n"       // C[0,14] += A[0,1]*B[22,0][1,14]
                                 "vfmadd231pd 222(%%rsi)%{1to8%}, %%zmm1, %%zmm22\r\n"       // C[0,18] += A[0,1]*B[22,0][1,18]
                                 "vfmadd231pd 225(%%rsi)%{1to8%}, %%zmm1, %%zmm26\r\n"       // C[0,22] += A[0,1]*B[22,0][1,22]
                                 "vfmadd231pd 218(%%rsi)%{1to8%}, %%zmm2, %%zmm11\r\n"       // C[0,7] += A[0,2]*B[22,0][2,7]
                                 "vfmadd231pd 223(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"       // C[0,20] += A[0,2]*B[22,0][2,20]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=23)
                                   "vmovapd 94208(%%rdi), %%zmm0\r\n"                          // A [0,23] [0,0]
                                   "vmovapd 95232(%%rdi), %%zmm1\r\n"                          // A [0,23] [0,1]
                                   "vmovapd 96256(%%rdi), %%zmm2\r\n"                          // A [0,23] [0,2]
                                   "vmovapd 97280(%%rdi), %%zmm3\r\n"                          // A [0,23] [0,3]
                                 "vfmadd231pd 226(%%rsi)%{1to8%}, %%zmm0, %%zmm4\r\n"        // C[0,0] += A[0,0]*B[23,0][0,0]
                                 "vfmadd231pd 227(%%rsi)%{1to8%}, %%zmm1, %%zmm14\r\n"       // C[0,10] += A[0,1]*B[23,0][1,10]
                                 "vfmadd231pd 230(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0,24] += A[0,2]*B[23,0][2,24]
                                 "vfmadd231pd 228(%%rsi)%{1to8%}, %%zmm3, %%zmm17\r\n"       // C[0,13] += A[0,3]*B[23,0][3,13]
                                 "vfmadd231pd 229(%%rsi)%{1to8%}, %%zmm3, %%zmm19\r\n"       // C[0,15] += A[0,3]*B[23,0][3,15]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=24)
                                   "vmovapd 98304(%%rdi), %%zmm0\r\n"                          // A [0,24] [0,0]
                                   "vmovapd 99328(%%rdi), %%zmm1\r\n"                          // A [0,24] [0,1]
                                   "vmovapd 100352(%%rdi), %%zmm2\r\n"                         // A [0,24] [0,2]
                                   "vmovapd 101376(%%rdi), %%zmm3\r\n"                         // A [0,24] [0,3]
                                 "vfmadd231pd 231(%%rsi)%{1to8%}, %%zmm0, %%zmm4\r\n"        // C[0,0] += A[0,0]*B[24,0][0,0]
                                 "vfmadd231pd 234(%%rsi)%{1to8%}, %%zmm0, %%zmm13\r\n"       // C[0,9] += A[0,0]*B[24,0][0,9]
                                 "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm0, %%zmm20\r\n"       // C[0,16] += A[0,0]*B[24,0][0,16]
                                 "vfmadd231pd 244(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0,24] += A[0,0]*B[24,0][0,24]
                                 "vfmadd231pd 235(%%rsi)%{1to8%}, %%zmm1, %%zmm13\r\n"       // C[0,9] += A[0,1]*B[24,0][1,9]
                                 "vfmadd231pd 239(%%rsi)%{1to8%}, %%zmm1, %%zmm19\r\n"       // C[0,15] += A[0,1]*B[24,0][1,15]
                                 "vfmadd231pd 236(%%rsi)%{1to8%}, %%zmm2, %%zmm14\r\n"       // C[0,10] += A[0,2]*B[24,0][2,10]
                                 "vfmadd231pd 237(%%rsi)%{1to8%}, %%zmm2, %%zmm17\r\n"       // C[0,13] += A[0,2]*B[24,0][2,13]
                                 "vfmadd231pd 238(%%rsi)%{1to8%}, %%zmm2, %%zmm18\r\n"       // C[0,14] += A[0,2]*B[24,0][2,14]
                                 "vfmadd231pd 241(%%rsi)%{1to8%}, %%zmm2, %%zmm24\r\n"       // C[0,20] += A[0,2]*B[24,0][2,20]
                                 "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm3, %%zmm9\r\n"        // C[0,5] += A[0,3]*B[24,0][3,5]
                                 "vfmadd231pd 233(%%rsi)%{1to8%}, %%zmm3, %%zmm10\r\n"       // C[0,6] += A[0,3]*B[24,0][3,6]
                                 "vfmadd231pd 242(%%rsi)%{1to8%}, %%zmm3, %%zmm24\r\n"       // C[0,20] += A[0,3]*B[24,0][3,20]
                                 "vfmadd231pd 243(%%rsi)%{1to8%}, %%zmm3, %%zmm25\r\n"       // C[0,21] += A[0,3]*B[24,0][3,21]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=25)
                                   "vmovapd 102400(%%rdi), %%zmm0\r\n"                         // A [0,25] [0,0]
                                   "vmovapd 103424(%%rdi), %%zmm1\r\n"                         // A [0,25] [0,1]
                                   "vmovapd 104448(%%rdi), %%zmm2\r\n"                         // A [0,25] [0,2]
                                   "vmovapd 105472(%%rdi), %%zmm3\r\n"                         // A [0,25] [0,3]
                                 "vfmadd231pd 250(%%rsi)%{1to8%}, %%zmm0, %%zmm27\r\n"       // C[0,23] += A[0,0]*B[25,0][0,23]
                                 "vfmadd231pd 245(%%rsi)%{1to8%}, %%zmm1, %%zmm7\r\n"        // C[0,3] += A[0,1]*B[25,0][1,3]
                                 "vfmadd231pd 247(%%rsi)%{1to8%}, %%zmm1, %%zmm15\r\n"       // C[0,11] += A[0,1]*B[25,0][1,11]
                                 "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm1, %%zmm19\r\n"       // C[0,15] += A[0,1]*B[25,0][1,15]
                                 "vfmadd231pd 249(%%rsi)%{1to8%}, %%zmm2, %%zmm25\r\n"       // C[0,21] += A[0,2]*B[25,0][2,21]
                                 "vfmadd231pd 251(%%rsi)%{1to8%}, %%zmm2, %%zmm27\r\n"       // C[0,23] += A[0,2]*B[25,0][2,23]
                                 "vfmadd231pd 252(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0,25] += A[0,2]*B[25,0][2,25]
                                 "vfmadd231pd 246(%%rsi)%{1to8%}, %%zmm3, %%zmm14\r\n"       // C[0,10] += A[0,3]*B[25,0][3,10]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=26)
                                   "vmovapd 106496(%%rdi), %%zmm0\r\n"                         // A [0,26] [0,0]
                                   "vmovapd 107520(%%rdi), %%zmm1\r\n"                         // A [0,26] [0,1]
                                   "vmovapd 108544(%%rdi), %%zmm2\r\n"                         // A [0,26] [0,2]
                                   "vmovapd 109568(%%rdi), %%zmm3\r\n"                         // A [0,26] [0,3]
                                 "vfmadd231pd 254(%%rsi)%{1to8%}, %%zmm0, %%zmm12\r\n"       // C[0,8] += A[0,0]*B[26,0][0,8]
                                 "vfmadd231pd 255(%%rsi)%{1to8%}, %%zmm0, %%zmm13\r\n"       // C[0,9] += A[0,0]*B[26,0][0,9]
                                 "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm0, %%zmm15\r\n"       // C[0,11] += A[0,0]*B[26,0][0,11]
                                 "vfmadd231pd 261(%%rsi)%{1to8%}, %%zmm0, %%zmm23\r\n"       // C[0,19] += A[0,0]*B[26,0][0,19]
                                 "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0,26] += A[0,0]*B[26,0][0,26]
                                 "vfmadd231pd 253(%%rsi)%{1to8%}, %%zmm1, %%zmm6\r\n"        // C[0,2] += A[0,1]*B[26,0][1,2]
                                 "vfmadd231pd 257(%%rsi)%{1to8%}, %%zmm1, %%zmm20\r\n"       // C[0,16] += A[0,1]*B[26,0][1,16]
                                 "vfmadd231pd 258(%%rsi)%{1to8%}, %%zmm2, %%zmm20\r\n"       // C[0,16] += A[0,2]*B[26,0][2,16]
                                 "vfmadd231pd 260(%%rsi)%{1to8%}, %%zmm2, %%zmm21\r\n"       // C[0,17] += A[0,2]*B[26,0][2,17]
                                 "vfmadd231pd 259(%%rsi)%{1to8%}, %%zmm3, %%zmm20\r\n"       // C[0,16] += A[0,3]*B[26,0][3,16]
                                 "vfmadd231pd 262(%%rsi)%{1to8%}, %%zmm3, %%zmm26\r\n"       // C[0,22] += A[0,3]*B[26,0][3,22]
                                 "vfmadd231pd 263(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0,25] += A[0,3]*B[26,0][3,25]
                                 "vfmadd231pd 265(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,26] += A[0,3]*B[26,0][3,26]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=27)
                                   "vmovapd 110592(%%rdi), %%zmm0\r\n"                         // A [0,27] [0,0]
                                   "vmovapd 111616(%%rdi), %%zmm1\r\n"                         // A [0,27] [0,1]
                                   "vmovapd 112640(%%rdi), %%zmm2\r\n"                         // A [0,27] [0,2]
                                   "vmovapd 113664(%%rdi), %%zmm3\r\n"                         // A [0,27] [0,3]
                                 "vfmadd231pd 266(%%rsi)%{1to8%}, %%zmm0, %%zmm7\r\n"        // C[0,3] += A[0,0]*B[27,0][0,3]
                                 "vfmadd231pd 273(%%rsi)%{1to8%}, %%zmm0, %%zmm17\r\n"       // C[0,13] += A[0,0]*B[27,0][0,13]
                                 "vfmadd231pd 268(%%rsi)%{1to8%}, %%zmm1, %%zmm8\r\n"        // C[0,4] += A[0,1]*B[27,0][1,4]
                                 "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm1, %%zmm16\r\n"       // C[0,12] += A[0,1]*B[27,0][1,12]
                                 "vfmadd231pd 269(%%rsi)%{1to8%}, %%zmm2, %%zmm12\r\n"       // C[0,8] += A[0,2]*B[27,0][2,8]
                                 "vfmadd231pd 267(%%rsi)%{1to8%}, %%zmm3, %%zmm7\r\n"        // C[0,3] += A[0,3]*B[27,0][3,3]
                                 "vfmadd231pd 270(%%rsi)%{1to8%}, %%zmm3, %%zmm12\r\n"       // C[0,8] += A[0,3]*B[27,0][3,8]
                                 "vfmadd231pd 271(%%rsi)%{1to8%}, %%zmm3, %%zmm14\r\n"       // C[0,10] += A[0,3]*B[27,0][3,10]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=28)
                                   "vmovapd 114688(%%rdi), %%zmm0\r\n"                         // A [0,28] [0,0]
                                   "vmovapd 115712(%%rdi), %%zmm1\r\n"                         // A [0,28] [0,1]
                                   "vmovapd 116736(%%rdi), %%zmm2\r\n"                         // A [0,28] [0,2]
                                   "vmovapd 117760(%%rdi), %%zmm3\r\n"                         // A [0,28] [0,3]
                                 "vfmadd231pd 274(%%rsi)%{1to8%}, %%zmm0, %%zmm8\r\n"        // C[0,4] += A[0,0]*B[28,0][0,4]
                                 "vfmadd231pd 276(%%rsi)%{1to8%}, %%zmm0, %%zmm11\r\n"       // C[0,7] += A[0,0]*B[28,0][0,7]
                                 "vfmadd231pd 278(%%rsi)%{1to8%}, %%zmm1, %%zmm23\r\n"       // C[0,19] += A[0,1]*B[28,0][1,19]
                                 "vfmadd231pd 279(%%rsi)%{1to8%}, %%zmm1, %%zmm24\r\n"       // C[0,20] += A[0,1]*B[28,0][1,20]
                                 "vfmadd231pd 275(%%rsi)%{1to8%}, %%zmm2, %%zmm10\r\n"       // C[0,6] += A[0,2]*B[28,0][2,6]
                                 "vfmadd231pd 277(%%rsi)%{1to8%}, %%zmm2, %%zmm18\r\n"       // C[0,14] += A[0,2]*B[28,0][2,14]
                                 "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0,26] += A[0,3]*B[28,0][3,26]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=29)
                                   "vmovapd 118784(%%rdi), %%zmm0\r\n"                         // A [0,29] [0,0]
                                   "vmovapd 119808(%%rdi), %%zmm1\r\n"                         // A [0,29] [0,1]
                                   "vmovapd 120832(%%rdi), %%zmm2\r\n"                         // A [0,29] [0,2]
                                 "vfmadd231pd 283(%%rsi)%{1to8%}, %%zmm0, %%zmm13\r\n"       // C[0,9] += A[0,0]*B[29,0][0,9]
                                 "vfmadd231pd 285(%%rsi)%{1to8%}, %%zmm0, %%zmm21\r\n"       // C[0,17] += A[0,0]*B[29,0][0,17]
                                 "vfmadd231pd 281(%%rsi)%{1to8%}, %%zmm1, %%zmm7\r\n"        // C[0,3] += A[0,1]*B[29,0][1,3]
                                 "vfmadd231pd 284(%%rsi)%{1to8%}, %%zmm1, %%zmm17\r\n"       // C[0,13] += A[0,1]*B[29,0][1,13]
                                 "vfmadd231pd 286(%%rsi)%{1to8%}, %%zmm1, %%zmm21\r\n"       // C[0,17] += A[0,1]*B[29,0][1,17]
                                 "vfmadd231pd 282(%%rsi)%{1to8%}, %%zmm2, %%zmm10\r\n"       // C[0,6] += A[0,2]*B[29,0][2,6]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=30)
                                   "vmovapd 122880(%%rdi), %%zmm0\r\n"                         // A [0,30] [0,0]
                                   "vmovapd 123904(%%rdi), %%zmm1\r\n"                         // A [0,30] [0,1]
                                   "vmovapd 124928(%%rdi), %%zmm2\r\n"                         // A [0,30] [0,2]
                                   "vmovapd 125952(%%rdi), %%zmm3\r\n"                         // A [0,30] [0,3]
                                 "vfmadd231pd 287(%%rsi)%{1to8%}, %%zmm0, %%zmm6\r\n"        // C[0,2] += A[0,0]*B[30,0][0,2]
                                 "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm0, %%zmm20\r\n"       // C[0,16] += A[0,0]*B[30,0][0,16]
                                 "vfmadd231pd 292(%%rsi)%{1to8%}, %%zmm0, %%zmm24\r\n"       // C[0,20] += A[0,0]*B[30,0][0,20]
                                 "vfmadd231pd 293(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0,27] += A[0,0]*B[30,0][0,27]
                                 "vfmadd231pd 289(%%rsi)%{1to8%}, %%zmm1, %%zmm20\r\n"       // C[0,16] += A[0,1]*B[30,0][1,16]
                                 "vfmadd231pd 290(%%rsi)%{1to8%}, %%zmm2, %%zmm21\r\n"       // C[0,17] += A[0,2]*B[30,0][2,17]
                                 "vfmadd231pd 291(%%rsi)%{1to8%}, %%zmm3, %%zmm23\r\n"       // C[0,19] += A[0,3]*B[30,0][3,19]
                                 // Block GEMM microkernel
                                   // Load A register block @ (d=0,r=31)
                                   "vmovapd 128000(%%rdi), %%zmm1\r\n"                         // A [0,31] [0,1]
                                   "vmovapd 129024(%%rdi), %%zmm2\r\n"                         // A [0,31] [0,2]
                                   "vmovapd 130048(%%rdi), %%zmm3\r\n"                         // A [0,31] [0,3]
                                 "vfmadd231pd 295(%%rsi)%{1to8%}, %%zmm1, %%zmm16\r\n"       // C[0,12] += A[0,1]*B[31,0][1,12]
                                 "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm1, %%zmm17\r\n"       // C[0,13] += A[0,1]*B[31,0][1,13]
                                 "vfmadd231pd 299(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0,25] += A[0,1]*B[31,0][1,25]
                                 "vfmadd231pd 294(%%rsi)%{1to8%}, %%zmm2, %%zmm8\r\n"        // C[0,4] += A[0,2]*B[31,0][2,4]
                                 "vfmadd231pd 297(%%rsi)%{1to8%}, %%zmm2, %%zmm20\r\n"       // C[0,16] += A[0,2]*B[31,0][2,16]
                                 "vfmadd231pd 300(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0,27] += A[0,2]*B[31,0][2,27]
                                 "vfmadd231pd 298(%%rsi)%{1to8%}, %%zmm3, %%zmm22\r\n"       // C[0,18] += A[0,3]*B[31,0][3,18]
                                 // Store C register block @ (d=0,r=0)
                                 "vmovapd %%zmm4, 0(%%rdx)\r\n"                              // C [0,0] [0,0]
                                 "vmovapd %%zmm5, 1024(%%rdx)\r\n"                           // C [0,0] [0,1]
                                 "vmovapd %%zmm6, 2048(%%rdx)\r\n"                           // C [0,0] [0,2]
                                 "vmovapd %%zmm7, 3072(%%rdx)\r\n"                           // C [0,0] [0,3]
                                 "vmovapd %%zmm8, 4096(%%rdx)\r\n"                           // C [0,0] [0,4]
                                 "vmovapd %%zmm9, 5120(%%rdx)\r\n"                           // C [0,0] [0,5]
                                 "vmovapd %%zmm10, 6144(%%rdx)\r\n"                          // C [0,0] [0,6]
                                 "vmovapd %%zmm11, 7168(%%rdx)\r\n"                          // C [0,0] [0,7]
                                 "vmovapd %%zmm12, 8192(%%rdx)\r\n"                          // C [0,0] [0,8]
                                 "vmovapd %%zmm13, 9216(%%rdx)\r\n"                          // C [0,0] [0,9]
                                 "vmovapd %%zmm14, 10240(%%rdx)\r\n"                         // C [0,0] [0,10]
                                 "vmovapd %%zmm15, 11264(%%rdx)\r\n"                         // C [0,0] [0,11]
                                 "vmovapd %%zmm16, 12288(%%rdx)\r\n"                         // C [0,0] [0,12]
                                 "vmovapd %%zmm17, 13312(%%rdx)\r\n"                         // C [0,0] [0,13]
                                 "vmovapd %%zmm18, 14336(%%rdx)\r\n"                         // C [0,0] [0,14]
                                 "vmovapd %%zmm19, 15360(%%rdx)\r\n"                         // C [0,0] [0,15]
                                 "vmovapd %%zmm20, 16384(%%rdx)\r\n"                         // C [0,0] [0,16]
                                 "vmovapd %%zmm21, 17408(%%rdx)\r\n"                         // C [0,0] [0,17]
                                 "vmovapd %%zmm22, 18432(%%rdx)\r\n"                         // C [0,0] [0,18]
                                 "vmovapd %%zmm23, 19456(%%rdx)\r\n"                         // C [0,0] [0,19]
                                 "vmovapd %%zmm24, 20480(%%rdx)\r\n"                         // C [0,0] [0,20]
                                 "vmovapd %%zmm25, 21504(%%rdx)\r\n"                         // C [0,0] [0,21]
                                 "vmovapd %%zmm26, 22528(%%rdx)\r\n"                         // C [0,0] [0,22]
                                 "vmovapd %%zmm27, 23552(%%rdx)\r\n"                         // C [0,0] [0,23]
                                 "vmovapd %%zmm28, 24576(%%rdx)\r\n"                         // C [0,0] [0,24]
                                 "vmovapd %%zmm29, 25600(%%rdx)\r\n"                         // C [0,0] [0,25]
                                 "vmovapd %%zmm30, 26624(%%rdx)\r\n"                         // C [0,0] [0,26]
                                 "vmovapd %%zmm31, 27648(%%rdx)\r\n"                         // C [0,0] [0,27]
                             "addq $64, %%rdi\r\n"                                       // Move A to (d=1,r=0)
                             "addq $64, %%rdx\r\n"                                       // Move C to (d=1,r=0)
                             "addq $1, %%r12\r\n"
                             "cmp $16, %%r12\r\n"
                             "jl 5b\r\n"
                           "addq $-1024, %%rdi\r\n"                                    // Move A to (d=-16,r=0)
                           "addq $27648, %%rdx\r\n"                                    // Move C to (d=-16,r=1)
                           "addq $28, %%r13\r\n"
                           "cmp $28, %%r13\r\n"
                           "jl 4b\r\n"
                       : : "m"(A), "m"(B), "m"(C) : "r12","r13","rdi","rdx","zmm0","zmm1","zmm10","zmm11","zmm12","zmm13","zmm14","zmm15","zmm16","zmm17","zmm18","zmm19","zmm2","zmm20","zmm21","zmm22","zmm23","zmm24","zmm25","zmm26","zmm27","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5","zmm6","zmm7","zmm8","zmm9");
};


 


int main(int argc, char ** argv) {

    struct timespec start, end;
    struct colmajor A = zeros(128, 128);
    struct colmajor C_expected = zeros(128, 28);
    struct colmajor C_actual = zeros(128, 28);
    struct patternsparse B = create_patternsparse(128, 28, 128, 28);
    struct colmajor B_dense = zeros(128,28);
    fill(&A, 1, 2);
    fill_sparse(&B, 1, 2);
     



    /***** Testing scalability_full_0_nnzs *****/

    reset(&C_expected);
    reset(&C_actual);

        update_pattern(&B, 20, 14, 1);
    update_pattern(&B, 35, 14, 1);
    update_pattern(&B, 3, 12, 1);
    update_pattern(&B, 89, 22, 1);
    update_pattern(&B, 65, 14, 1);
    update_pattern(&B, 27, 0, 1);
    update_pattern(&B, 102, 25, 1);
    update_pattern(&B, 17, 18, 1);
    update_pattern(&B, 108, 13, 1);
    update_pattern(&B, 95, 15, 1);
    update_pattern(&B, 50, 20, 1);
    update_pattern(&B, 116, 9, 1);
    update_pattern(&B, 11, 19, 1);
    update_pattern(&B, 34, 2, 1);
    update_pattern(&B, 39, 17, 1);
    update_pattern(&B, 7, 8, 1);
    update_pattern(&B, 47, 1, 1);
    update_pattern(&B, 88, 10, 1);
    update_pattern(&B, 26, 10, 1);
    update_pattern(&B, 81, 5, 1);
    update_pattern(&B, 100, 23, 1);
    update_pattern(&B, 107, 25, 1);
    update_pattern(&B, 63, 9, 1);
    update_pattern(&B, 104, 8, 1);
    update_pattern(&B, 7, 3, 1);
    update_pattern(&B, 84, 27, 1);
    update_pattern(&B, 3, 3, 1);
    update_pattern(&B, 86, 24, 1);
    update_pattern(&B, 39, 0, 1);
    update_pattern(&B, 45, 25, 1);
    update_pattern(&B, 62, 6, 1);
    update_pattern(&B, 28, 3, 1);
    update_pattern(&B, 26, 19, 1);
    update_pattern(&B, 125, 13, 1);
    update_pattern(&B, 16, 13, 1);
    update_pattern(&B, 86, 3, 1);
    update_pattern(&B, 78, 12, 1);
    update_pattern(&B, 107, 22, 1);
    update_pattern(&B, 114, 14, 1);
    update_pattern(&B, 83, 19, 1);
    update_pattern(&B, 9, 2, 1);
    update_pattern(&B, 103, 10, 1);
    update_pattern(&B, 48, 12, 1);
    update_pattern(&B, 90, 20, 1);
    update_pattern(&B, 49, 19, 1);
    update_pattern(&B, 38, 9, 1);
    update_pattern(&B, 27, 11, 1);
    update_pattern(&B, 58, 10, 1);
    update_pattern(&B, 46, 11, 1);
    update_pattern(&B, 115, 26, 1);
    update_pattern(&B, 96, 16, 1);
    update_pattern(&B, 76, 11, 1);
    update_pattern(&B, 21, 3, 1);
    update_pattern(&B, 41, 16, 1);
    update_pattern(&B, 122, 17, 1);
    update_pattern(&B, 40, 8, 1);
    update_pattern(&B, 99, 6, 1);
    update_pattern(&B, 102, 23, 1);
    update_pattern(&B, 27, 15, 1);
    update_pattern(&B, 64, 9, 1);
    update_pattern(&B, 7, 9, 1);
    update_pattern(&B, 51, 4, 1);
    update_pattern(&B, 79, 4, 1);
    update_pattern(&B, 4, 22, 1);
    update_pattern(&B, 62, 15, 1);
    update_pattern(&B, 37, 14, 1);
    update_pattern(&B, 75, 12, 1);
    update_pattern(&B, 42, 14, 1);
    update_pattern(&B, 77, 4, 1);
    update_pattern(&B, 61, 4, 1);
    update_pattern(&B, 59, 10, 1);
    update_pattern(&B, 98, 20, 1);
    update_pattern(&B, 27, 18, 1);
    update_pattern(&B, 45, 27, 1);
    update_pattern(&B, 84, 6, 1);
    update_pattern(&B, 55, 26, 1);
    update_pattern(&B, 59, 13, 1);
    update_pattern(&B, 87, 7, 1);
    update_pattern(&B, 3, 21, 1);
    update_pattern(&B, 44, 14, 1);
    update_pattern(&B, 86, 7, 1);
    update_pattern(&B, 89, 9, 1);
    update_pattern(&B, 84, 2, 1);
    update_pattern(&B, 81, 10, 1);
    update_pattern(&B, 78, 27, 1);
    update_pattern(&B, 65, 2, 1);
    update_pattern(&B, 113, 19, 1);
    update_pattern(&B, 101, 3, 1);
    update_pattern(&B, 79, 6, 1);
    update_pattern(&B, 64, 4, 1);
    update_pattern(&B, 13, 5, 1);
    update_pattern(&B, 13, 16, 1);
    update_pattern(&B, 66, 21, 1);
    update_pattern(&B, 53, 12, 1);
    update_pattern(&B, 14, 22, 1);
    update_pattern(&B, 65, 0, 1);
    update_pattern(&B, 117, 17, 1);
    update_pattern(&B, 60, 15, 1);
    update_pattern(&B, 8, 20, 1);
    update_pattern(&B, 126, 16, 1);

    sparse2dense(&B, &B_dense);

    ddmm(&A, &B_dense, &C_expected);
    scalability_full_0_nnzs(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        scalability_full_0_nnzs(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("scalability_full_0_nnzs, %lf\n",
        1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));
    


    /***** Testing scalability_full_28_nnzs *****/

    reset(&C_expected);
    reset(&C_actual);

        update_pattern(&B, 29, 18, 1);
    update_pattern(&B, 77, 2, 1);
    update_pattern(&B, 35, 24, 1);
    update_pattern(&B, 60, 10, 1);
    update_pattern(&B, 0, 27, 1);
    update_pattern(&B, 14, 16, 1);
    update_pattern(&B, 69, 10, 1);
    update_pattern(&B, 29, 6, 1);
    update_pattern(&B, 25, 21, 1);
    update_pattern(&B, 4, 15, 1);
    update_pattern(&B, 82, 19, 1);
    update_pattern(&B, 56, 24, 1);
    update_pattern(&B, 52, 23, 1);
    update_pattern(&B, 26, 27, 1);
    update_pattern(&B, 49, 20, 1);
    update_pattern(&B, 54, 4, 1);
    update_pattern(&B, 95, 13, 1);
    update_pattern(&B, 29, 0, 1);
    update_pattern(&B, 67, 12, 1);
    update_pattern(&B, 5, 17, 1);
    update_pattern(&B, 9, 17, 1);
    update_pattern(&B, 81, 11, 1);
    update_pattern(&B, 20, 11, 1);
    update_pattern(&B, 120, 20, 1);
    update_pattern(&B, 118, 6, 1);
    update_pattern(&B, 98, 10, 1);
    update_pattern(&B, 112, 7, 1);
    update_pattern(&B, 30, 20, 1);
    update_pattern(&B, 99, 21, 1);
    update_pattern(&B, 105, 16, 1);
    update_pattern(&B, 15, 11, 1);
    update_pattern(&B, 7, 27, 1);
    update_pattern(&B, 29, 23, 1);
    update_pattern(&B, 62, 18, 1);
    update_pattern(&B, 18, 17, 1);
    update_pattern(&B, 125, 25, 1);
    update_pattern(&B, 22, 14, 1);
    update_pattern(&B, 89, 18, 1);
    update_pattern(&B, 70, 10, 1);
    update_pattern(&B, 6, 16, 1);
    update_pattern(&B, 18, 10, 1);
    update_pattern(&B, 76, 1, 1);
    update_pattern(&B, 108, 3, 1);
    update_pattern(&B, 80, 2, 1);
    update_pattern(&B, 20, 22, 1);
    update_pattern(&B, 89, 14, 1);
    update_pattern(&B, 43, 14, 1);
    update_pattern(&B, 104, 19, 1);
    update_pattern(&B, 113, 20, 1);
    update_pattern(&B, 72, 10, 1);
    update_pattern(&B, 72, 24, 1);
    update_pattern(&B, 111, 8, 1);
    update_pattern(&B, 10, 4, 1);
    update_pattern(&B, 98, 14, 1);
    update_pattern(&B, 109, 12, 1);
    update_pattern(&B, 54, 6, 1);
    update_pattern(&B, 120, 2, 1);
    update_pattern(&B, 17, 0, 1);
    update_pattern(&B, 125, 12, 1);
    update_pattern(&B, 123, 19, 1);
    update_pattern(&B, 93, 10, 1);
    update_pattern(&B, 39, 21, 1);
    update_pattern(&B, 18, 11, 1);
    update_pattern(&B, 2, 19, 1);
    update_pattern(&B, 28, 24, 1);
    update_pattern(&B, 76, 21, 1);
    update_pattern(&B, 53, 23, 1);
    update_pattern(&B, 97, 15, 1);
    update_pattern(&B, 9, 26, 1);
    update_pattern(&B, 52, 10, 1);
    update_pattern(&B, 15, 1, 1);
    update_pattern(&B, 26, 11, 1);
    update_pattern(&B, 96, 24, 1);
    update_pattern(&B, 106, 17, 1);
    update_pattern(&B, 92, 0, 1);
    update_pattern(&B, 67, 1, 1);
    update_pattern(&B, 107, 26, 1);
    update_pattern(&B, 41, 14, 1);
    update_pattern(&B, 27, 13, 1);
    update_pattern(&B, 6, 11, 1);
    update_pattern(&B, 11, 25, 1);
    update_pattern(&B, 29, 21, 1);
    update_pattern(&B, 54, 15, 1);
    update_pattern(&B, 104, 26, 1);
    update_pattern(&B, 18, 9, 1);
    update_pattern(&B, 33, 19, 1);
    update_pattern(&B, 82, 18, 1);
    update_pattern(&B, 39, 16, 1);
    update_pattern(&B, 75, 6, 1);
    update_pattern(&B, 10, 17, 1);
    update_pattern(&B, 28, 6, 1);
    update_pattern(&B, 3, 15, 1);
    update_pattern(&B, 43, 1, 1);
    update_pattern(&B, 116, 17, 1);
    update_pattern(&B, 15, 6, 1);
    update_pattern(&B, 90, 7, 1);
    update_pattern(&B, 72, 26, 1);
    update_pattern(&B, 96, 0, 1);
    update_pattern(&B, 32, 15, 1);
    update_pattern(&B, 62, 19, 1);

    sparse2dense(&B, &B_dense);

    ddmm(&A, &B_dense, &C_expected);
    scalability_full_28_nnzs(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        scalability_full_28_nnzs(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("scalability_full_28_nnzs, %lf\n",
        1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));
    


    /***** Testing scalability_full_56_nnzs *****/

    reset(&C_expected);
    reset(&C_actual);

        update_pattern(&B, 53, 16, 1);
    update_pattern(&B, 18, 13, 1);
    update_pattern(&B, 114, 6, 1);
    update_pattern(&B, 81, 19, 1);
    update_pattern(&B, 28, 9, 1);
    update_pattern(&B, 5, 25, 1);
    update_pattern(&B, 37, 6, 1);
    update_pattern(&B, 58, 26, 1);
    update_pattern(&B, 97, 9, 1);
    update_pattern(&B, 5, 3, 1);
    update_pattern(&B, 32, 9, 1);
    update_pattern(&B, 32, 1, 1);
    update_pattern(&B, 117, 13, 1);
    update_pattern(&B, 76, 13, 1);
    update_pattern(&B, 99, 5, 1);
    update_pattern(&B, 59, 23, 1);
    update_pattern(&B, 7, 21, 1);
    update_pattern(&B, 117, 3, 1);
    update_pattern(&B, 107, 16, 1);
    update_pattern(&B, 112, 4, 1);
    update_pattern(&B, 65, 21, 1);
    update_pattern(&B, 72, 17, 1);
    update_pattern(&B, 39, 27, 1);
    update_pattern(&B, 39, 4, 1);
    update_pattern(&B, 36, 10, 1);
    update_pattern(&B, 17, 21, 1);
    update_pattern(&B, 42, 1, 1);
    update_pattern(&B, 10, 10, 1);
    update_pattern(&B, 104, 9, 1);
    update_pattern(&B, 88, 22, 1);
    update_pattern(&B, 24, 22, 1);
    update_pattern(&B, 28, 7, 1);
    update_pattern(&B, 101, 11, 1);
    update_pattern(&B, 50, 7, 1);
    update_pattern(&B, 8, 27, 1);
    update_pattern(&B, 4, 17, 1);
    update_pattern(&B, 78, 11, 1);
    update_pattern(&B, 24, 27, 1);
    update_pattern(&B, 94, 24, 1);
    update_pattern(&B, 44, 11, 1);
    update_pattern(&B, 6, 19, 1);
    update_pattern(&B, 76, 18, 1);
    update_pattern(&B, 110, 8, 1);
    update_pattern(&B, 4, 18, 1);
    update_pattern(&B, 44, 1, 1);
    update_pattern(&B, 120, 16, 1);
    update_pattern(&B, 120, 27, 1);
    update_pattern(&B, 0, 16, 1);
    update_pattern(&B, 34, 11, 1);
    update_pattern(&B, 99, 20, 1);
    update_pattern(&B, 127, 18, 1);
    update_pattern(&B, 71, 15, 1);
    update_pattern(&B, 104, 11, 1);
    update_pattern(&B, 37, 4, 1);
    update_pattern(&B, 70, 2, 1);
    update_pattern(&B, 84, 16, 1);
    update_pattern(&B, 68, 3, 1);
    update_pattern(&B, 22, 8, 1);
    update_pattern(&B, 56, 11, 1);
    update_pattern(&B, 54, 13, 1);
    update_pattern(&B, 41, 9, 1);
    update_pattern(&B, 109, 4, 1);
    update_pattern(&B, 1, 11, 1);
    update_pattern(&B, 111, 10, 1);
    update_pattern(&B, 60, 11, 1);
    update_pattern(&B, 96, 9, 1);
    update_pattern(&B, 101, 15, 1);
    update_pattern(&B, 17, 5, 1);
    update_pattern(&B, 28, 2, 1);
    update_pattern(&B, 126, 27, 1);
    update_pattern(&B, 98, 13, 1);
    update_pattern(&B, 87, 16, 1);
    update_pattern(&B, 102, 21, 1);
    update_pattern(&B, 57, 19, 1);
    update_pattern(&B, 44, 20, 1);
    update_pattern(&B, 81, 16, 1);
    update_pattern(&B, 42, 5, 1);
    update_pattern(&B, 30, 10, 1);
    update_pattern(&B, 41, 17, 1);
    update_pattern(&B, 44, 18, 1);
    update_pattern(&B, 83, 21, 1);
    update_pattern(&B, 25, 9, 1);
    update_pattern(&B, 55, 20, 1);
    update_pattern(&B, 126, 4, 1);
    update_pattern(&B, 81, 8, 1);
    update_pattern(&B, 79, 2, 1);
    update_pattern(&B, 111, 3, 1);
    update_pattern(&B, 79, 22, 1);
    update_pattern(&B, 21, 22, 1);
    update_pattern(&B, 86, 4, 1);
    update_pattern(&B, 30, 23, 1);
    update_pattern(&B, 79, 21, 1);
    update_pattern(&B, 64, 27, 1);
    update_pattern(&B, 55, 3, 1);
    update_pattern(&B, 121, 16, 1);
    update_pattern(&B, 12, 14, 1);
    update_pattern(&B, 62, 1, 1);
    update_pattern(&B, 106, 16, 1);
    update_pattern(&B, 105, 2, 1);
    update_pattern(&B, 84, 12, 1);

    sparse2dense(&B, &B_dense);

    ddmm(&A, &B_dense, &C_expected);
    scalability_full_56_nnzs(A.values, B.values, C_actual.values);
    assert_equals(&C_expected, &C_actual);

    clock_gettime(CLOCK_MONOTONIC, &start);
    for (int t=0; t<3000; t++)
        scalability_full_56_nnzs(A.values, B.values, C_actual.values);
    clock_gettime(CLOCK_MONOTONIC, &end);

    printf("scalability_full_56_nnzs, %lf\n",
        1.0e-3 * (1000000000L * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec ));
    

 



}
