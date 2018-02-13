
void unrolled_8_4_6 (const double* A, const double* B, double* C) {
  __asm__ __volatile__(
    "movq %0, %%rdi\n\t"
    "movq %1, %%rsi\n\t"
    "movq %2, %%rdx\n\t"
      // unrolled_96x96x96
        // for r12 <- 0:1:12)
        "movq $0, %%r12\r\n"
        "LOOP_TOP_31_%=:\r\n"
          // Unrolling over bn and bk
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 1536(%%rdi), %%zmm2\r\n"                           // A [0,0] [0,2]
            "vfmadd231pd 0(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"         // C[0:8,2] += A[0:8,2]*B[0,0][2,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 9984(%%rdi), %%zmm1\r\n"                           // A [0,2] [0,1]
              "vmovapd 10752(%%rdi), %%zmm2\r\n"                          // A [0,2] [0,2]
            "vfmadd231pd 8(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"         // C[0:8,1] += A[0:8,1]*B[2,0][1,1]
            "vfmadd231pd 24(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"        // C[0:8,2] += A[0:8,1]*B[2,0][1,2]
            "vfmadd231pd 16(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"        // C[0:8,1] += A[0:8,2]*B[2,0][2,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=3)
              "vmovapd 14592(%%rdi), %%zmm1\r\n"                          // A [0,3] [0,1]
              "vmovapd 16128(%%rdi), %%zmm3\r\n"                          // A [0,3] [0,3]
            "vfmadd231pd 32(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"        // C[0:8,0] += A[0:8,1]*B[3,0][1,0]
            "vfmadd231pd 40(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"        // C[0:8,1] += A[0:8,3]*B[3,0][3,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=5)
              "vmovapd 23040(%%rdi), %%zmm0\r\n"                          // A [0,5] [0,0]
            "vfmadd231pd 48(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"        // C[0:8,0] += A[0:8,0]*B[5,0][0,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=6)
              "vmovapd 29184(%%rdi), %%zmm2\r\n"                          // A [0,6] [0,2]
              "vmovapd 31488(%%rdi), %%zmm5\r\n"                          // A [0,6] [0,5]
            "vfmadd231pd 64(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"        // C[0:8,3] += A[0:8,2]*B[6,0][2,3]
            "vfmadd231pd 56(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"        // C[0:8,2] += A[0:8,5]*B[6,0][5,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 38400(%%rdi), %%zmm2\r\n"                          // A [0,8] [0,2]
            "vfmadd231pd 72(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"        // C[0:8,2] += A[0:8,2]*B[8,0][2,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 41472(%%rdi), %%zmm0\r\n"                          // A [0,9] [0,0]
              "vmovapd 44544(%%rdi), %%zmm4\r\n"                          // A [0,9] [0,4]
            "vfmadd231pd 88(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"        // C[0:8,3] += A[0:8,0]*B[9,0][0,3]
            "vfmadd231pd 80(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"        // C[0:8,0] += A[0:8,4]*B[9,0][4,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=10)
              "vmovapd 49920(%%rdi), %%zmm5\r\n"                          // A [0,10] [0,5]
            "vfmadd231pd 96(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"        // C[0:8,1] += A[0:8,5]*B[10,0][5,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=11)
              "vmovapd 50688(%%rdi), %%zmm0\r\n"                          // A [0,11] [0,0]
              "vmovapd 52992(%%rdi), %%zmm3\r\n"                          // A [0,11] [0,3]
            "vfmadd231pd 104(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0:8,1] += A[0:8,0]*B[11,0][0,1]
            "vfmadd231pd 112(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0:8,1] += A[0:8,3]*B[11,0][3,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=13)
              "vmovapd 59904(%%rdi), %%zmm0\r\n"                          // A [0,13] [0,0]
              "vmovapd 60672(%%rdi), %%zmm1\r\n"                          // A [0,13] [0,1]
            "vfmadd231pd 136(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0:8,2] += A[0:8,0]*B[13,0][0,2]
            "vfmadd231pd 120(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0:8,0] += A[0:8,1]*B[13,0][1,0]
            "vfmadd231pd 128(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0:8,1] += A[0:8,1]*B[13,0][1,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=14)
              "vmovapd 65280(%%rdi), %%zmm1\r\n"                          // A [0,14] [0,1]
            "vfmadd231pd 144(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0:8,1] += A[0:8,1]*B[14,0][1,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=15)
              "vmovapd 70656(%%rdi), %%zmm2\r\n"                          // A [0,15] [0,2]
              "vmovapd 72192(%%rdi), %%zmm4\r\n"                          // A [0,15] [0,4]
              "vmovapd 72960(%%rdi), %%zmm5\r\n"                          // A [0,15] [0,5]
            "vfmadd231pd 152(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0:8,0] += A[0:8,2]*B[15,0][2,0]
            "vfmadd231pd 168(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0:8,1] += A[0:8,4]*B[15,0][4,1]
            "vfmadd231pd 160(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0:8,0] += A[0:8,5]*B[15,0][5,0]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 1536(%%rdi), %%zmm2\r\n"                           // A [0,0] [0,2]
              "vmovapd 2304(%%rdi), %%zmm3\r\n"                           // A [0,0] [0,3]
            "vfmadd231pd 176(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0:8,0] += A[0:8,2]*B[0,1][2,0]
            "vfmadd231pd 184(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0:8,1] += A[0:8,3]*B[0,1][3,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=1)
              "vmovapd 4608(%%rdi), %%zmm0\r\n"                           // A [0,1] [0,0]
              "vmovapd 8448(%%rdi), %%zmm5\r\n"                           // A [0,1] [0,5]
            "vfmadd231pd 200(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0:8,3] += A[0:8,0]*B[1,1][0,3]
            "vfmadd231pd 192(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0:8,0] += A[0:8,5]*B[1,1][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 9216(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
              "vmovapd 10752(%%rdi), %%zmm2\r\n"                          // A [0,2] [0,2]
            "vfmadd231pd 216(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0:8,2] += A[0:8,0]*B[2,1][0,2]
            "vfmadd231pd 224(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0:8,3] += A[0:8,0]*B[2,1][0,3]
            "vfmadd231pd 208(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0:8,0] += A[0:8,2]*B[2,1][2,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=3)
              "vmovapd 14592(%%rdi), %%zmm1\r\n"                          // A [0,3] [0,1]
              "vmovapd 15360(%%rdi), %%zmm2\r\n"                          // A [0,3] [0,2]
              "vmovapd 16896(%%rdi), %%zmm4\r\n"                          // A [0,3] [0,4]
            "vfmadd231pd 232(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0:8,0] += A[0:8,1]*B[3,1][1,0]
            "vfmadd231pd 240(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0:8,3] += A[0:8,2]*B[3,1][2,3]
            "vfmadd231pd 248(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0:8,3] += A[0:8,4]*B[3,1][4,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=5)
              "vmovapd 23040(%%rdi), %%zmm0\r\n"                          // A [0,5] [0,0]
            "vfmadd231pd 256(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0:8,2] += A[0:8,0]*B[5,1][0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=6)
              "vmovapd 27648(%%rdi), %%zmm0\r\n"                          // A [0,6] [0,0]
              "vmovapd 28416(%%rdi), %%zmm1\r\n"                          // A [0,6] [0,1]
            "vfmadd231pd 272(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0:8,3] += A[0:8,0]*B[6,1][0,3]
            "vfmadd231pd 264(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0:8,0] += A[0:8,1]*B[6,1][1,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 39936(%%rdi), %%zmm4\r\n"                          // A [0,8] [0,4]
            "vfmadd231pd 280(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0:8,0] += A[0:8,4]*B[8,1][4,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 41472(%%rdi), %%zmm0\r\n"                          // A [0,9] [0,0]
            "vfmadd231pd 288(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0:8,3] += A[0:8,0]*B[9,1][0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=10)
              "vmovapd 49152(%%rdi), %%zmm4\r\n"                          // A [0,10] [0,4]
            "vfmadd231pd 296(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0:8,0] += A[0:8,4]*B[10,1][4,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=11)
              "vmovapd 50688(%%rdi), %%zmm0\r\n"                          // A [0,11] [0,0]
            "vfmadd231pd 304(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0:8,0] += A[0:8,0]*B[11,1][0,0]
            "vfmadd231pd 312(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0:8,2] += A[0:8,0]*B[11,1][0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 55296(%%rdi), %%zmm0\r\n"                          // A [0,12] [0,0]
            "vfmadd231pd 320(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0:8,2] += A[0:8,0]*B[12,1][0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=13)
              "vmovapd 60672(%%rdi), %%zmm1\r\n"                          // A [0,13] [0,1]
              "vmovapd 62976(%%rdi), %%zmm4\r\n"                          // A [0,13] [0,4]
              "vmovapd 63744(%%rdi), %%zmm5\r\n"                          // A [0,13] [0,5]
            "vfmadd231pd 328(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0:8,0] += A[0:8,1]*B[13,1][1,0]
            "vfmadd231pd 344(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0:8,1] += A[0:8,1]*B[13,1][1,1]
            "vfmadd231pd 336(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0:8,0] += A[0:8,4]*B[13,1][4,0]
            "vfmadd231pd 352(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0:8,1] += A[0:8,5]*B[13,1][5,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=14)
              "vmovapd 65280(%%rdi), %%zmm1\r\n"                          // A [0,14] [0,1]
              "vmovapd 66816(%%rdi), %%zmm3\r\n"                          // A [0,14] [0,3]
              "vmovapd 68352(%%rdi), %%zmm5\r\n"                          // A [0,14] [0,5]
            "vfmadd231pd 360(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0:8,0] += A[0:8,1]*B[14,1][1,0]
            "vfmadd231pd 376(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0:8,2] += A[0:8,3]*B[14,1][3,2]
            "vfmadd231pd 368(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0:8,0] += A[0:8,5]*B[14,1][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=15)
              "vmovapd 69888(%%rdi), %%zmm1\r\n"                          // A [0,15] [0,1]
              "vmovapd 70656(%%rdi), %%zmm2\r\n"                          // A [0,15] [0,2]
            "vfmadd231pd 392(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0:8,1] += A[0:8,1]*B[15,1][1,1]
            "vfmadd231pd 384(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0:8,0] += A[0:8,2]*B[15,1][2,0]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 2304(%%rdi), %%zmm3\r\n"                           // A [0,0] [0,3]
              "vmovapd 3840(%%rdi), %%zmm5\r\n"                           // A [0,0] [0,5]
            "vfmadd231pd 408(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0:8,1] += A[0:8,3]*B[0,2][3,1]
            "vfmadd231pd 400(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0:8,0] += A[0:8,5]*B[0,2][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 13056(%%rdi), %%zmm5\r\n"                          // A [0,2] [0,5]
            "vfmadd231pd 416(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"       // C[0:8,3] += A[0:8,5]*B[2,2][5,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=7)
              "vmovapd 34560(%%rdi), %%zmm3\r\n"                          // A [0,7] [0,3]
              "vmovapd 35328(%%rdi), %%zmm4\r\n"                          // A [0,7] [0,4]
            "vfmadd231pd 424(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0:8,2] += A[0:8,3]*B[7,2][3,2]
            "vfmadd231pd 432(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0:8,3] += A[0:8,4]*B[7,2][4,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 39168(%%rdi), %%zmm3\r\n"                          // A [0,8] [0,3]
            "vfmadd231pd 440(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0:8,3] += A[0:8,3]*B[8,2][3,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 41472(%%rdi), %%zmm0\r\n"                          // A [0,9] [0,0]
              "vmovapd 42240(%%rdi), %%zmm1\r\n"                          // A [0,9] [0,1]
              "vmovapd 43776(%%rdi), %%zmm3\r\n"                          // A [0,9] [0,3]
            "vfmadd231pd 448(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0:8,0] += A[0:8,0]*B[9,2][0,0]
            "vfmadd231pd 464(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0:8,1] += A[0:8,1]*B[9,2][1,1]
            "vfmadd231pd 456(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0:8,0] += A[0:8,3]*B[9,2][3,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=10)
              "vmovapd 47616(%%rdi), %%zmm2\r\n"                          // A [0,10] [0,2]
              "vmovapd 49920(%%rdi), %%zmm5\r\n"                          // A [0,10] [0,5]
            "vfmadd231pd 480(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0:8,2] += A[0:8,2]*B[10,2][2,2]
            "vfmadd231pd 472(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0:8,0] += A[0:8,5]*B[10,2][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 56064(%%rdi), %%zmm1\r\n"                          // A [0,12] [0,1]
              "vmovapd 57600(%%rdi), %%zmm3\r\n"                          // A [0,12] [0,3]
              "vmovapd 58368(%%rdi), %%zmm4\r\n"                          // A [0,12] [0,4]
            "vfmadd231pd 488(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0:8,0] += A[0:8,1]*B[12,2][1,0]
            "vfmadd231pd 504(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0:8,2] += A[0:8,3]*B[12,2][3,2]
            "vfmadd231pd 496(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0:8,1] += A[0:8,4]*B[12,2][4,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=15)
              "vmovapd 69888(%%rdi), %%zmm1\r\n"                          // A [0,15] [0,1]
            "vfmadd231pd 512(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"       // C[0:8,2] += A[0:8,1]*B[15,2][1,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 1536(%%rdi), %%zmm2\r\n"                           // A [0,0] [0,2]
            "vfmadd231pd 520(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0:8,2] += A[0:8,2]*B[0,3][2,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=1)
              "vmovapd 5376(%%rdi), %%zmm1\r\n"                           // A [0,1] [0,1]
              "vmovapd 6144(%%rdi), %%zmm2\r\n"                           // A [0,1] [0,2]
              "vmovapd 7680(%%rdi), %%zmm4\r\n"                           // A [0,1] [0,4]
              "vmovapd 8448(%%rdi), %%zmm5\r\n"                           // A [0,1] [0,5]
            "vfmadd231pd 552(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0:8,3] += A[0:8,1]*B[1,3][1,3]
            "vfmadd231pd 536(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0:8,2] += A[0:8,2]*B[1,3][2,2]
            "vfmadd231pd 528(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0:8,0] += A[0:8,4]*B[1,3][4,0]
            "vfmadd231pd 544(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0:8,2] += A[0:8,5]*B[1,3][5,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=3)
              "vmovapd 16896(%%rdi), %%zmm4\r\n"                          // A [0,3] [0,4]
            "vfmadd231pd 560(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0:8,2] += A[0:8,4]*B[3,3][4,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 19200(%%rdi), %%zmm1\r\n"                          // A [0,4] [0,1]
              "vmovapd 20736(%%rdi), %%zmm3\r\n"                          // A [0,4] [0,3]
            "vfmadd231pd 568(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0:8,3] += A[0:8,1]*B[4,3][1,3]
            "vfmadd231pd 576(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0:8,3] += A[0:8,3]*B[4,3][3,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=5)
              "vmovapd 25344(%%rdi), %%zmm3\r\n"                          // A [0,5] [0,3]
            "vfmadd231pd 584(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0:8,0] += A[0:8,3]*B[5,3][3,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=7)
              "vmovapd 33024(%%rdi), %%zmm1\r\n"                          // A [0,7] [0,1]
              "vmovapd 35328(%%rdi), %%zmm4\r\n"                          // A [0,7] [0,4]
            "vfmadd231pd 592(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0:8,1] += A[0:8,1]*B[7,3][1,1]
            "vfmadd231pd 600(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0:8,1] += A[0:8,4]*B[7,3][4,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 43008(%%rdi), %%zmm2\r\n"                          // A [0,9] [0,2]
              "vmovapd 45312(%%rdi), %%zmm5\r\n"                          // A [0,9] [0,5]
            "vfmadd231pd 616(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0:8,1] += A[0:8,2]*B[9,3][2,1]
            "vfmadd231pd 608(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0:8,0] += A[0:8,5]*B[9,3][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=10)
              "vmovapd 46080(%%rdi), %%zmm0\r\n"                          // A [0,10] [0,0]
              "vmovapd 47616(%%rdi), %%zmm2\r\n"                          // A [0,10] [0,2]
              "vmovapd 48384(%%rdi), %%zmm3\r\n"                          // A [0,10] [0,3]
            "vfmadd231pd 624(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0:8,0] += A[0:8,0]*B[10,3][0,0]
            "vfmadd231pd 640(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0:8,1] += A[0:8,2]*B[10,3][2,1]
            "vfmadd231pd 648(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0:8,2] += A[0:8,2]*B[10,3][2,2]
            "vfmadd231pd 632(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0:8,0] += A[0:8,3]*B[10,3][3,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=11)
              "vmovapd 52224(%%rdi), %%zmm2\r\n"                          // A [0,11] [0,2]
            "vfmadd231pd 656(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0:8,3] += A[0:8,2]*B[11,3][2,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 56064(%%rdi), %%zmm1\r\n"                          // A [0,12] [0,1]
              "vmovapd 57600(%%rdi), %%zmm3\r\n"                          // A [0,12] [0,3]
            "vfmadd231pd 664(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"       // C[0:8,0] += A[0:8,1]*B[12,3][1,0]
            "vfmadd231pd 672(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"       // C[0:8,0] += A[0:8,3]*B[12,3][3,0]
            "vfmadd231pd 680(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0:8,1] += A[0:8,3]*B[12,3][3,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=14)
              "vmovapd 65280(%%rdi), %%zmm1\r\n"                          // A [0,14] [0,1]
              "vmovapd 66816(%%rdi), %%zmm3\r\n"                          // A [0,14] [0,3]
            "vfmadd231pd 688(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0:8,1] += A[0:8,1]*B[14,3][1,1]
            "vfmadd231pd 696(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"       // C[0:8,3] += A[0:8,3]*B[14,3][3,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=15)
              "vmovapd 69120(%%rdi), %%zmm0\r\n"                          // A [0,15] [0,0]
              "vmovapd 72192(%%rdi), %%zmm4\r\n"                          // A [0,15] [0,4]
            "vfmadd231pd 704(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0:8,2] += A[0:8,0]*B[15,3][0,2]
            "vfmadd231pd 712(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"       // C[0:8,2] += A[0:8,4]*B[15,3][4,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 9216(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
              "vmovapd 9984(%%rdi), %%zmm1\r\n"                           // A [0,2] [0,1]
              "vmovapd 11520(%%rdi), %%zmm3\r\n"                          // A [0,2] [0,3]
            "vfmadd231pd 736(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0:8,3] += A[0:8,0]*B[2,4][0,3]
            "vfmadd231pd 720(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0:8,1] += A[0:8,1]*B[2,4][1,1]
            "vfmadd231pd 728(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0:8,2] += A[0:8,3]*B[2,4][3,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 18432(%%rdi), %%zmm0\r\n"                          // A [0,4] [0,0]
              "vmovapd 19968(%%rdi), %%zmm2\r\n"                          // A [0,4] [0,2]
              "vmovapd 21504(%%rdi), %%zmm4\r\n"                          // A [0,4] [0,4]
            "vfmadd231pd 744(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0:8,1] += A[0:8,0]*B[4,4][0,1]
            "vfmadd231pd 760(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0:8,3] += A[0:8,2]*B[4,4][2,3]
            "vfmadd231pd 752(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"       // C[0:8,1] += A[0:8,4]*B[4,4][4,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=5)
              "vmovapd 23040(%%rdi), %%zmm0\r\n"                          // A [0,5] [0,0]
            "vfmadd231pd 768(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0:8,2] += A[0:8,0]*B[5,4][0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=6)
              "vmovapd 27648(%%rdi), %%zmm0\r\n"                          // A [0,6] [0,0]
            "vfmadd231pd 776(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0:8,1] += A[0:8,0]*B[6,4][0,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=7)
              "vmovapd 36096(%%rdi), %%zmm5\r\n"                          // A [0,7] [0,5]
            "vfmadd231pd 784(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"       // C[0:8,0] += A[0:8,5]*B[7,4][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 37632(%%rdi), %%zmm1\r\n"                          // A [0,8] [0,1]
              "vmovapd 38400(%%rdi), %%zmm2\r\n"                          // A [0,8] [0,2]
            "vfmadd231pd 792(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0:8,3] += A[0:8,1]*B[8,4][1,3]
            "vfmadd231pd 800(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0:8,3] += A[0:8,2]*B[8,4][2,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 44544(%%rdi), %%zmm4\r\n"                          // A [0,9] [0,4]
            "vfmadd231pd 808(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0:8,0] += A[0:8,4]*B[9,4][4,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=10)
              "vmovapd 46080(%%rdi), %%zmm0\r\n"                          // A [0,10] [0,0]
              "vmovapd 47616(%%rdi), %%zmm2\r\n"                          // A [0,10] [0,2]
            "vfmadd231pd 824(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"       // C[0:8,1] += A[0:8,0]*B[10,4][0,1]
            "vfmadd231pd 816(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"       // C[0:8,0] += A[0:8,2]*B[10,4][2,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=11)
              "vmovapd 50688(%%rdi), %%zmm0\r\n"                          // A [0,11] [0,0]
              "vmovapd 52224(%%rdi), %%zmm2\r\n"                          // A [0,11] [0,2]
            "vfmadd231pd 832(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0:8,0] += A[0:8,0]*B[11,4][0,0]
            "vfmadd231pd 840(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0:8,3] += A[0:8,2]*B[11,4][2,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 56832(%%rdi), %%zmm2\r\n"                          // A [0,12] [0,2]
              "vmovapd 57600(%%rdi), %%zmm3\r\n"                          // A [0,12] [0,3]
              "vmovapd 59136(%%rdi), %%zmm5\r\n"                          // A [0,12] [0,5]
            "vfmadd231pd 864(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0:8,3] += A[0:8,2]*B[12,4][2,3]
            "vfmadd231pd 848(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"       // C[0:8,1] += A[0:8,3]*B[12,4][3,1]
            "vfmadd231pd 856(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0:8,1] += A[0:8,5]*B[12,4][5,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=13)
              "vmovapd 59904(%%rdi), %%zmm0\r\n"                          // A [0,13] [0,0]
              "vmovapd 60672(%%rdi), %%zmm1\r\n"                          // A [0,13] [0,1]
              "vmovapd 61440(%%rdi), %%zmm2\r\n"                          // A [0,13] [0,2]
            "vfmadd231pd 880(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"       // C[0:8,2] += A[0:8,0]*B[13,4][0,2]
            "vfmadd231pd 872(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"       // C[0:8,1] += A[0:8,1]*B[13,4][1,1]
            "vfmadd231pd 888(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0:8,2] += A[0:8,2]*B[13,4][2,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=15)
              "vmovapd 69120(%%rdi), %%zmm0\r\n"                          // A [0,15] [0,0]
              "vmovapd 70656(%%rdi), %%zmm2\r\n"                          // A [0,15] [0,2]
              "vmovapd 72192(%%rdi), %%zmm4\r\n"                          // A [0,15] [0,4]
              "vmovapd 72960(%%rdi), %%zmm5\r\n"                          // A [0,15] [0,5]
            "vfmadd231pd 896(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"       // C[0:8,0] += A[0:8,0]*B[15,4][0,0]
            "vfmadd231pd 912(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"       // C[0:8,3] += A[0:8,2]*B[15,4][2,3]
            "vfmadd231pd 920(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0:8,3] += A[0:8,4]*B[15,4][4,3]
            "vfmadd231pd 904(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"       // C[0:8,2] += A[0:8,5]*B[15,4][5,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
              "vmovapd 2304(%%rdi), %%zmm3\r\n"                           // A [0,0] [0,3]
              "vmovapd 3072(%%rdi), %%zmm4\r\n"                           // A [0,0] [0,4]
            "vfmadd231pd 944(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0:8,3] += A[0:8,0]*B[0,5][0,3]
            "vfmadd231pd 936(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"       // C[0:8,2] += A[0:8,3]*B[0,5][3,2]
            "vfmadd231pd 928(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"       // C[0:8,0] += A[0:8,4]*B[0,5][4,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=1)
              "vmovapd 4608(%%rdi), %%zmm0\r\n"                           // A [0,1] [0,0]
              "vmovapd 5376(%%rdi), %%zmm1\r\n"                           // A [0,1] [0,1]
            "vfmadd231pd 952(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"       // C[0:8,3] += A[0:8,0]*B[1,5][0,3]
            "vfmadd231pd 960(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"       // C[0:8,3] += A[0:8,1]*B[1,5][1,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 10752(%%rdi), %%zmm2\r\n"                          // A [0,2] [0,2]
            "vfmadd231pd 968(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"       // C[0:8,2] += A[0:8,2]*B[2,5][2,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 19968(%%rdi), %%zmm2\r\n"                          // A [0,4] [0,2]
              "vmovapd 21504(%%rdi), %%zmm4\r\n"                          // A [0,4] [0,4]
              "vmovapd 22272(%%rdi), %%zmm5\r\n"                          // A [0,4] [0,5]
            "vfmadd231pd 976(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"       // C[0:8,1] += A[0:8,2]*B[4,5][2,1]
            "vfmadd231pd 992(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"       // C[0:8,3] += A[0:8,4]*B[4,5][4,3]
            "vfmadd231pd 984(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"       // C[0:8,1] += A[0:8,5]*B[4,5][5,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=6)
              "vmovapd 29952(%%rdi), %%zmm3\r\n"                          // A [0,6] [0,3]
            "vfmadd231pd 1000(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[6,5][3,0]
            "vfmadd231pd 1008(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[6,5][3,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 36864(%%rdi), %%zmm0\r\n"                          // A [0,8] [0,0]
              "vmovapd 37632(%%rdi), %%zmm1\r\n"                          // A [0,8] [0,1]
              "vmovapd 39168(%%rdi), %%zmm3\r\n"                          // A [0,8] [0,3]
              "vmovapd 40704(%%rdi), %%zmm5\r\n"                          // A [0,8] [0,5]
            "vfmadd231pd 1040(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"      // C[0:8,2] += A[0:8,0]*B[8,5][0,2]
            "vfmadd231pd 1048(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"      // C[0:8,2] += A[0:8,1]*B[8,5][1,2]
            "vfmadd231pd 1016(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[8,5][3,0]
            "vfmadd231pd 1032(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[8,5][3,1]
            "vfmadd231pd 1024(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[8,5][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 43776(%%rdi), %%zmm3\r\n"                          // A [0,9] [0,3]
            "vfmadd231pd 1056(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[9,5][3,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=11)
              "vmovapd 52224(%%rdi), %%zmm2\r\n"                          // A [0,11] [0,2]
              "vmovapd 54528(%%rdi), %%zmm5\r\n"                          // A [0,11] [0,5]
            "vfmadd231pd 1080(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[11,5][2,3]
            "vfmadd231pd 1064(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"      // C[0:8,1] += A[0:8,5]*B[11,5][5,1]
            "vfmadd231pd 1072(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"      // C[0:8,2] += A[0:8,5]*B[11,5][5,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 56064(%%rdi), %%zmm1\r\n"                          // A [0,12] [0,1]
              "vmovapd 56832(%%rdi), %%zmm2\r\n"                          // A [0,12] [0,2]
              "vmovapd 59136(%%rdi), %%zmm5\r\n"                          // A [0,12] [0,5]
            "vfmadd231pd 1088(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"      // C[0:8,1] += A[0:8,1]*B[12,5][1,1]
            "vfmadd231pd 1096(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"      // C[0:8,1] += A[0:8,2]*B[12,5][2,1]
            "vfmadd231pd 1104(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"      // C[0:8,2] += A[0:8,5]*B[12,5][5,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=14)
              "vmovapd 65280(%%rdi), %%zmm1\r\n"                          // A [0,14] [0,1]
              "vmovapd 66816(%%rdi), %%zmm3\r\n"                          // A [0,14] [0,3]
              "vmovapd 67584(%%rdi), %%zmm4\r\n"                          // A [0,14] [0,4]
            "vfmadd231pd 1128(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"      // C[0:8,3] += A[0:8,1]*B[14,5][1,3]
            "vfmadd231pd 1112(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[14,5][3,0]
            "vfmadd231pd 1120(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"      // C[0:8,2] += A[0:8,4]*B[14,5][4,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 1536(%%rdi), %%zmm2\r\n"                           // A [0,0] [0,2]
              "vmovapd 3072(%%rdi), %%zmm4\r\n"                           // A [0,0] [0,4]
            "vfmadd231pd 1136(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"      // C[0:8,1] += A[0:8,2]*B[0,6][2,1]
            "vfmadd231pd 1144(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"      // C[0:8,1] += A[0:8,4]*B[0,6][4,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=3)
              "vmovapd 16128(%%rdi), %%zmm3\r\n"                          // A [0,3] [0,3]
              "vmovapd 17664(%%rdi), %%zmm5\r\n"                          // A [0,3] [0,5]
            "vfmadd231pd 1160(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[3,6][3,3]
            "vfmadd231pd 1152(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"      // C[0:8,2] += A[0:8,5]*B[3,6][5,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 18432(%%rdi), %%zmm0\r\n"                          // A [0,4] [0,0]
              "vmovapd 20736(%%rdi), %%zmm3\r\n"                          // A [0,4] [0,3]
              "vmovapd 22272(%%rdi), %%zmm5\r\n"                          // A [0,4] [0,5]
            "vfmadd231pd 1168(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[4,6][0,0]
            "vfmadd231pd 1176(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"      // C[0:8,2] += A[0:8,3]*B[4,6][3,2]
            "vfmadd231pd 1184(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"      // C[0:8,3] += A[0:8,5]*B[4,6][5,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 42240(%%rdi), %%zmm1\r\n"                          // A [0,9] [0,1]
              "vmovapd 43776(%%rdi), %%zmm3\r\n"                          // A [0,9] [0,3]
              "vmovapd 45312(%%rdi), %%zmm5\r\n"                          // A [0,9] [0,5]
            "vfmadd231pd 1192(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[9,6][1,0]
            "vfmadd231pd 1200(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[9,6][3,1]
            "vfmadd231pd 1208(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"      // C[0:8,1] += A[0:8,5]*B[9,6][5,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=10)
              "vmovapd 48384(%%rdi), %%zmm3\r\n"                          // A [0,10] [0,3]
              "vmovapd 49152(%%rdi), %%zmm4\r\n"                          // A [0,10] [0,4]
            "vfmadd231pd 1216(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[10,6][3,1]
            "vfmadd231pd 1224(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"      // C[0:8,2] += A[0:8,4]*B[10,6][4,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=11)
              "vmovapd 50688(%%rdi), %%zmm0\r\n"                          // A [0,11] [0,0]
            "vfmadd231pd 1232(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"      // C[0:8,2] += A[0:8,0]*B[11,6][0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 59136(%%rdi), %%zmm5\r\n"                          // A [0,12] [0,5]
            "vfmadd231pd 1240(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"      // C[0:8,1] += A[0:8,5]*B[12,6][5,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=13)
              "vmovapd 59904(%%rdi), %%zmm0\r\n"                          // A [0,13] [0,0]
              "vmovapd 60672(%%rdi), %%zmm1\r\n"                          // A [0,13] [0,1]
            "vfmadd231pd 1256(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"      // C[0:8,3] += A[0:8,0]*B[13,6][0,3]
            "vfmadd231pd 1248(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"      // C[0:8,2] += A[0:8,1]*B[13,6][1,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=14)
              "vmovapd 65280(%%rdi), %%zmm1\r\n"                          // A [0,14] [0,1]
            "vfmadd231pd 1264(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[14,6][1,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=15)
              "vmovapd 70656(%%rdi), %%zmm2\r\n"                          // A [0,15] [0,2]
            "vfmadd231pd 1272(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"      // C[0:8,1] += A[0:8,2]*B[15,6][2,1]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 1536(%%rdi), %%zmm2\r\n"                           // A [0,0] [0,2]
              "vmovapd 3840(%%rdi), %%zmm5\r\n"                           // A [0,0] [0,5]
            "vfmadd231pd 1280(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"      // C[0:8,1] += A[0:8,2]*B[0,7][2,1]
            "vfmadd231pd 1288(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"      // C[0:8,2] += A[0:8,5]*B[0,7][5,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 9216(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
              "vmovapd 10752(%%rdi), %%zmm2\r\n"                          // A [0,2] [0,2]
              "vmovapd 13056(%%rdi), %%zmm5\r\n"                          // A [0,2] [0,5]
            "vfmadd231pd 1296(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"      // C[0:8,1] += A[0:8,0]*B[2,7][0,1]
            "vfmadd231pd 1304(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"      // C[0:8,1] += A[0:8,2]*B[2,7][2,1]
            "vfmadd231pd 1312(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"      // C[0:8,2] += A[0:8,5]*B[2,7][5,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=3)
              "vmovapd 17664(%%rdi), %%zmm5\r\n"                          // A [0,3] [0,5]
            "vfmadd231pd 1320(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[3,7][5,0]
            "vfmadd231pd 1328(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"      // C[0:8,3] += A[0:8,5]*B[3,7][5,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 20736(%%rdi), %%zmm3\r\n"                          // A [0,4] [0,3]
            "vfmadd231pd 1336(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[4,7][3,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=5)
              "vmovapd 25344(%%rdi), %%zmm3\r\n"                          // A [0,5] [0,3]
              "vmovapd 26112(%%rdi), %%zmm4\r\n"                          // A [0,5] [0,4]
            "vfmadd231pd 1344(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[5,7][3,1]
            "vfmadd231pd 1352(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"      // C[0:8,3] += A[0:8,4]*B[5,7][4,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 36864(%%rdi), %%zmm0\r\n"                          // A [0,8] [0,0]
              "vmovapd 37632(%%rdi), %%zmm1\r\n"                          // A [0,8] [0,1]
            "vfmadd231pd 1360(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[8,7][0,0]
            "vfmadd231pd 1368(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"      // C[0:8,3] += A[0:8,1]*B[8,7][1,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=10)
              "vmovapd 46080(%%rdi), %%zmm0\r\n"                          // A [0,10] [0,0]
              "vmovapd 48384(%%rdi), %%zmm3\r\n"                          // A [0,10] [0,3]
            "vfmadd231pd 1384(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"      // C[0:8,2] += A[0:8,0]*B[10,7][0,2]
            "vfmadd231pd 1376(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[10,7][3,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=11)
              "vmovapd 52992(%%rdi), %%zmm3\r\n"                          // A [0,11] [0,3]
            "vfmadd231pd 1392(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"      // C[0:8,2] += A[0:8,3]*B[11,7][3,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 56064(%%rdi), %%zmm1\r\n"                          // A [0,12] [0,1]
              "vmovapd 58368(%%rdi), %%zmm4\r\n"                          // A [0,12] [0,4]
            "vfmadd231pd 1400(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[12,7][1,0]
            "vfmadd231pd 1408(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"      // C[0:8,0] += A[0:8,4]*B[12,7][4,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=13)
              "vmovapd 59904(%%rdi), %%zmm0\r\n"                          // A [0,13] [0,0]
              "vmovapd 60672(%%rdi), %%zmm1\r\n"                          // A [0,13] [0,1]
              "vmovapd 62208(%%rdi), %%zmm3\r\n"                          // A [0,13] [0,3]
            "vfmadd231pd 1424(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"      // C[0:8,2] += A[0:8,0]*B[13,7][0,2]
            "vfmadd231pd 1432(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"      // C[0:8,3] += A[0:8,1]*B[13,7][1,3]
            "vfmadd231pd 1416(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[13,7][3,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=14)
              "vmovapd 66816(%%rdi), %%zmm3\r\n"                          // A [0,14] [0,3]
              "vmovapd 68352(%%rdi), %%zmm5\r\n"                          // A [0,14] [0,5]
            "vfmadd231pd 1440(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[14,7][3,1]
            "vfmadd231pd 1448(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"      // C[0:8,2] += A[0:8,5]*B[14,7][5,2]
            "vfmadd231pd 1456(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"      // C[0:8,3] += A[0:8,5]*B[14,7][5,3]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 3072(%%rdi), %%zmm4\r\n"                           // A [0,0] [0,4]
            "vfmadd231pd 1464(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"      // C[0:8,0] += A[0:8,4]*B[0,8][4,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 9984(%%rdi), %%zmm1\r\n"                           // A [0,2] [0,1]
            "vfmadd231pd 1472(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[2,8][1,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=3)
              "vmovapd 14592(%%rdi), %%zmm1\r\n"                          // A [0,3] [0,1]
              "vmovapd 16896(%%rdi), %%zmm4\r\n"                          // A [0,3] [0,4]
            "vfmadd231pd 1480(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[3,8][1,0]
            "vfmadd231pd 1488(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"      // C[0:8,1] += A[0:8,4]*B[3,8][4,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 20736(%%rdi), %%zmm3\r\n"                          // A [0,4] [0,3]
            "vfmadd231pd 1496(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[4,8][3,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=6)
              "vmovapd 29184(%%rdi), %%zmm2\r\n"                          // A [0,6] [0,2]
              "vmovapd 29952(%%rdi), %%zmm3\r\n"                          // A [0,6] [0,3]
            "vfmadd231pd 1504(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[6,8][2,3]
            "vfmadd231pd 1512(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[6,8][3,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=7)
              "vmovapd 33024(%%rdi), %%zmm1\r\n"                          // A [0,7] [0,1]
              "vmovapd 34560(%%rdi), %%zmm3\r\n"                          // A [0,7] [0,3]
            "vfmadd231pd 1520(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"      // C[0:8,2] += A[0:8,1]*B[7,8][1,2]
            "vfmadd231pd 1528(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"      // C[0:8,2] += A[0:8,3]*B[7,8][3,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 39168(%%rdi), %%zmm3\r\n"                          // A [0,8] [0,3]
            "vfmadd231pd 1536(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[8,8][3,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 43008(%%rdi), %%zmm2\r\n"                          // A [0,9] [0,2]
              "vmovapd 45312(%%rdi), %%zmm5\r\n"                          // A [0,9] [0,5]
            "vfmadd231pd 1552(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"      // C[0:8,1] += A[0:8,2]*B[9,8][2,1]
            "vfmadd231pd 1544(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[9,8][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 55296(%%rdi), %%zmm0\r\n"                          // A [0,12] [0,0]
            "vfmadd231pd 1560(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"      // C[0:8,2] += A[0:8,0]*B[12,8][0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=14)
              "vmovapd 67584(%%rdi), %%zmm4\r\n"                          // A [0,14] [0,4]
            "vfmadd231pd 1568(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"      // C[0:8,1] += A[0:8,4]*B[14,8][4,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=15)
              "vmovapd 72960(%%rdi), %%zmm5\r\n"                          // A [0,15] [0,5]
            "vfmadd231pd 1576(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[15,8][5,0]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 2304(%%rdi), %%zmm3\r\n"                           // A [0,0] [0,3]
            "vfmadd231pd 1584(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[0,9][3,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=1)
              "vmovapd 4608(%%rdi), %%zmm0\r\n"                           // A [0,1] [0,0]
              "vmovapd 5376(%%rdi), %%zmm1\r\n"                           // A [0,1] [0,1]
              "vmovapd 6144(%%rdi), %%zmm2\r\n"                           // A [0,1] [0,2]
            "vfmadd231pd 1592(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[1,9][0,0]
            "vfmadd231pd 1600(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"      // C[0:8,3] += A[0:8,1]*B[1,9][1,3]
            "vfmadd231pd 1608(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[1,9][2,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 13056(%%rdi), %%zmm5\r\n"                          // A [0,2] [0,5]
            "vfmadd231pd 1616(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"      // C[0:8,3] += A[0:8,5]*B[2,9][5,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=3)
              "vmovapd 16128(%%rdi), %%zmm3\r\n"                          // A [0,3] [0,3]
            "vfmadd231pd 1624(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[3,9][3,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 19200(%%rdi), %%zmm1\r\n"                          // A [0,4] [0,1]
            "vfmadd231pd 1632(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"      // C[0:8,1] += A[0:8,1]*B[4,9][1,1]
            "vfmadd231pd 1640(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"      // C[0:8,3] += A[0:8,1]*B[4,9][1,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=5)
              "vmovapd 23808(%%rdi), %%zmm1\r\n"                          // A [0,5] [0,1]
              "vmovapd 25344(%%rdi), %%zmm3\r\n"                          // A [0,5] [0,3]
            "vfmadd231pd 1648(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"      // C[0:8,3] += A[0:8,1]*B[5,9][1,3]
            "vfmadd231pd 1656(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[5,9][3,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=7)
              "vmovapd 33792(%%rdi), %%zmm2\r\n"                          // A [0,7] [0,2]
            "vfmadd231pd 1664(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"      // C[0:8,2] += A[0:8,2]*B[7,9][2,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 36864(%%rdi), %%zmm0\r\n"                          // A [0,8] [0,0]
              "vmovapd 38400(%%rdi), %%zmm2\r\n"                          // A [0,8] [0,2]
            "vfmadd231pd 1672(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[8,9][0,0]
            "vfmadd231pd 1680(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[8,9][2,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=11)
              "vmovapd 54528(%%rdi), %%zmm5\r\n"                          // A [0,11] [0,5]
            "vfmadd231pd 1688(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[11,9][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 58368(%%rdi), %%zmm4\r\n"                          // A [0,12] [0,4]
              "vmovapd 59136(%%rdi), %%zmm5\r\n"                          // A [0,12] [0,5]
            "vfmadd231pd 1704(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"      // C[0:8,3] += A[0:8,4]*B[12,9][4,3]
            "vfmadd231pd 1696(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[12,9][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=13)
              "vmovapd 59904(%%rdi), %%zmm0\r\n"                          // A [0,13] [0,0]
              "vmovapd 62208(%%rdi), %%zmm3\r\n"                          // A [0,13] [0,3]
              "vmovapd 63744(%%rdi), %%zmm5\r\n"                          // A [0,13] [0,5]
            "vfmadd231pd 1728(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"      // C[0:8,2] += A[0:8,0]*B[13,9][0,2]
            "vfmadd231pd 1736(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"      // C[0:8,3] += A[0:8,0]*B[13,9][0,3]
            "vfmadd231pd 1712(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[13,9][3,0]
            "vfmadd231pd 1720(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"      // C[0:8,1] += A[0:8,5]*B[13,9][5,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=14)
              "vmovapd 66048(%%rdi), %%zmm2\r\n"                          // A [0,14] [0,2]
              "vmovapd 68352(%%rdi), %%zmm5\r\n"                          // A [0,14] [0,5]
            "vfmadd231pd 1752(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[14,9][2,3]
            "vfmadd231pd 1744(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[14,9][5,0]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=1)
              "vmovapd 8448(%%rdi), %%zmm5\r\n"                           // A [0,1] [0,5]
            "vfmadd231pd 1760(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"      // C[0:8,3] += A[0:8,5]*B[1,10][5,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 12288(%%rdi), %%zmm4\r\n"                          // A [0,2] [0,4]
            "vfmadd231pd 1768(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"      // C[0:8,0] += A[0:8,4]*B[2,10][4,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=3)
              "vmovapd 16896(%%rdi), %%zmm4\r\n"                          // A [0,3] [0,4]
            "vfmadd231pd 1776(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"      // C[0:8,1] += A[0:8,4]*B[3,10][4,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 19968(%%rdi), %%zmm2\r\n"                          // A [0,4] [0,2]
            "vfmadd231pd 1784(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[4,10][2,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=5)
              "vmovapd 23040(%%rdi), %%zmm0\r\n"                          // A [0,5] [0,0]
            "vfmadd231pd 1792(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[5,10][0,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=6)
              "vmovapd 30720(%%rdi), %%zmm4\r\n"                          // A [0,6] [0,4]
            "vfmadd231pd 1800(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"      // C[0:8,3] += A[0:8,4]*B[6,10][4,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=7)
              "vmovapd 35328(%%rdi), %%zmm4\r\n"                          // A [0,7] [0,4]
            "vfmadd231pd 1808(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"      // C[0:8,1] += A[0:8,4]*B[7,10][4,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 38400(%%rdi), %%zmm2\r\n"                          // A [0,8] [0,2]
              "vmovapd 39168(%%rdi), %%zmm3\r\n"                          // A [0,8] [0,3]
            "vfmadd231pd 1824(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[8,10][2,3]
            "vfmadd231pd 1816(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[8,10][3,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 57600(%%rdi), %%zmm3\r\n"                          // A [0,12] [0,3]
            "vfmadd231pd 1832(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[12,10][3,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=13)
              "vmovapd 61440(%%rdi), %%zmm2\r\n"                          // A [0,13] [0,2]
            "vfmadd231pd 1840(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"      // C[0:8,2] += A[0:8,2]*B[13,10][2,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=1)
              "vmovapd 7680(%%rdi), %%zmm4\r\n"                           // A [0,1] [0,4]
            "vfmadd231pd 1848(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"      // C[0:8,0] += A[0:8,4]*B[1,11][4,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 10752(%%rdi), %%zmm2\r\n"                          // A [0,2] [0,2]
              "vmovapd 13056(%%rdi), %%zmm5\r\n"                          // A [0,2] [0,5]
            "vfmadd231pd 1864(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"      // C[0:8,2] += A[0:8,2]*B[2,11][2,2]
            "vfmadd231pd 1856(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[2,11][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=3)
              "vmovapd 14592(%%rdi), %%zmm1\r\n"                          // A [0,3] [0,1]
              "vmovapd 15360(%%rdi), %%zmm2\r\n"                          // A [0,3] [0,2]
            "vfmadd231pd 1888(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"      // C[0:8,3] += A[0:8,1]*B[3,11][1,3]
            "vfmadd231pd 1872(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[3,11][2,0]
            "vfmadd231pd 1880(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"      // C[0:8,1] += A[0:8,2]*B[3,11][2,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 18432(%%rdi), %%zmm0\r\n"                          // A [0,4] [0,0]
              "vmovapd 19200(%%rdi), %%zmm1\r\n"                          // A [0,4] [0,1]
            "vfmadd231pd 1896(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[4,11][0,0]
            "vfmadd231pd 1904(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[4,11][1,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=5)
              "vmovapd 23808(%%rdi), %%zmm1\r\n"                          // A [0,5] [0,1]
            "vfmadd231pd 1912(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"      // C[0:8,3] += A[0:8,1]*B[5,11][1,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=6)
              "vmovapd 28416(%%rdi), %%zmm1\r\n"                          // A [0,6] [0,1]
              "vmovapd 30720(%%rdi), %%zmm4\r\n"                          // A [0,6] [0,4]
            "vfmadd231pd 1928(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"      // C[0:8,3] += A[0:8,1]*B[6,11][1,3]
            "vfmadd231pd 1920(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"      // C[0:8,2] += A[0:8,4]*B[6,11][4,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 37632(%%rdi), %%zmm1\r\n"                          // A [0,8] [0,1]
            "vfmadd231pd 1936(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"      // C[0:8,2] += A[0:8,1]*B[8,11][1,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 42240(%%rdi), %%zmm1\r\n"                          // A [0,9] [0,1]
            "vfmadd231pd 1944(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"      // C[0:8,1] += A[0:8,1]*B[9,11][1,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=10)
              "vmovapd 46848(%%rdi), %%zmm1\r\n"                          // A [0,10] [0,1]
            "vfmadd231pd 1952(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[10,11][1,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=11)
              "vmovapd 51456(%%rdi), %%zmm1\r\n"                          // A [0,11] [0,1]
            "vfmadd231pd 1960(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[11,11][1,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 55296(%%rdi), %%zmm0\r\n"                          // A [0,12] [0,0]
              "vmovapd 58368(%%rdi), %%zmm4\r\n"                          // A [0,12] [0,4]
            "vfmadd231pd 1968(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[12,11][0,0]
            "vfmadd231pd 1976(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"      // C[0:8,0] += A[0:8,4]*B[12,11][4,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=13)
              "vmovapd 62208(%%rdi), %%zmm3\r\n"                          // A [0,13] [0,3]
              "vmovapd 63744(%%rdi), %%zmm5\r\n"                          // A [0,13] [0,5]
            "vfmadd231pd 1984(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"      // C[0:8,2] += A[0:8,3]*B[13,11][3,2]
            "vfmadd231pd 1992(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"      // C[0:8,2] += A[0:8,5]*B[13,11][5,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=14)
              "vmovapd 64512(%%rdi), %%zmm0\r\n"                          // A [0,14] [0,0]
            "vfmadd231pd 2000(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"      // C[0:8,1] += A[0:8,0]*B[14,11][0,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=15)
              "vmovapd 71424(%%rdi), %%zmm3\r\n"                          // A [0,15] [0,3]
            "vfmadd231pd 2008(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[15,11][3,1]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 1536(%%rdi), %%zmm2\r\n"                           // A [0,0] [0,2]
              "vmovapd 2304(%%rdi), %%zmm3\r\n"                           // A [0,0] [0,3]
            "vfmadd231pd 2016(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[0,12][2,0]
            "vfmadd231pd 2032(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[0,12][2,3]
            "vfmadd231pd 2024(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[0,12][3,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=1)
              "vmovapd 5376(%%rdi), %%zmm1\r\n"                           // A [0,1] [0,1]
              "vmovapd 6912(%%rdi), %%zmm3\r\n"                           // A [0,1] [0,3]
            "vfmadd231pd 2048(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"      // C[0:8,2] += A[0:8,1]*B[1,12][1,2]
            "vfmadd231pd 2040(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[1,12][3,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 19968(%%rdi), %%zmm2\r\n"                          // A [0,4] [0,2]
            "vfmadd231pd 2056(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[4,12][2,0]
            "vfmadd231pd 2064(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"      // C[0:8,2] += A[0:8,2]*B[4,12][2,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=5)
              "vmovapd 23808(%%rdi), %%zmm1\r\n"                          // A [0,5] [0,1]
            "vfmadd231pd 2072(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"      // C[0:8,2] += A[0:8,1]*B[5,12][1,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=6)
              "vmovapd 30720(%%rdi), %%zmm4\r\n"                          // A [0,6] [0,4]
              "vmovapd 31488(%%rdi), %%zmm5\r\n"                          // A [0,6] [0,5]
            "vfmadd231pd 2088(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"      // C[0:8,2] += A[0:8,4]*B[6,12][4,2]
            "vfmadd231pd 2080(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[6,12][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=7)
              "vmovapd 35328(%%rdi), %%zmm4\r\n"                          // A [0,7] [0,4]
              "vmovapd 36096(%%rdi), %%zmm5\r\n"                          // A [0,7] [0,5]
            "vfmadd231pd 2104(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"      // C[0:8,2] += A[0:8,4]*B[7,12][4,2]
            "vfmadd231pd 2096(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"      // C[0:8,1] += A[0:8,5]*B[7,12][5,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 37632(%%rdi), %%zmm1\r\n"                          // A [0,8] [0,1]
              "vmovapd 39168(%%rdi), %%zmm3\r\n"                          // A [0,8] [0,3]
            "vfmadd231pd 2120(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"      // C[0:8,3] += A[0:8,1]*B[8,12][1,3]
            "vfmadd231pd 2112(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[8,12][3,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 42240(%%rdi), %%zmm1\r\n"                          // A [0,9] [0,1]
            "vfmadd231pd 2128(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"      // C[0:8,2] += A[0:8,1]*B[9,12][1,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=10)
              "vmovapd 49920(%%rdi), %%zmm5\r\n"                          // A [0,10] [0,5]
            "vfmadd231pd 2136(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[10,12][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=11)
              "vmovapd 52224(%%rdi), %%zmm2\r\n"                          // A [0,11] [0,2]
            "vfmadd231pd 2144(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[11,12][2,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 58368(%%rdi), %%zmm4\r\n"                          // A [0,12] [0,4]
            "vfmadd231pd 2152(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"      // C[0:8,2] += A[0:8,4]*B[12,12][4,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=13)
              "vmovapd 62976(%%rdi), %%zmm4\r\n"                          // A [0,13] [0,4]
            "vfmadd231pd 2160(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"      // C[0:8,3] += A[0:8,4]*B[13,12][4,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=14)
              "vmovapd 64512(%%rdi), %%zmm0\r\n"                          // A [0,14] [0,0]
              "vmovapd 66816(%%rdi), %%zmm3\r\n"                          // A [0,14] [0,3]
            "vfmadd231pd 2168(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[14,12][0,0]
            "vfmadd231pd 2176(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[14,12][3,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=15)
              "vmovapd 69888(%%rdi), %%zmm1\r\n"                          // A [0,15] [0,1]
              "vmovapd 72960(%%rdi), %%zmm5\r\n"                          // A [0,15] [0,5]
            "vfmadd231pd 2184(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[15,12][1,0]
            "vfmadd231pd 2192(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"      // C[0:8,2] += A[0:8,5]*B[15,12][5,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
              "vmovapd 768(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
              "vmovapd 3072(%%rdi), %%zmm4\r\n"                           // A [0,0] [0,4]
              "vmovapd 3840(%%rdi), %%zmm5\r\n"                           // A [0,0] [0,5]
            "vfmadd231pd 2224(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"      // C[0:8,3] += A[0:8,0]*B[0,13][0,3]
            "vfmadd231pd 2200(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[0,13][1,0]
            "vfmadd231pd 2208(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"      // C[0:8,1] += A[0:8,4]*B[0,13][4,1]
            "vfmadd231pd 2216(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"      // C[0:8,1] += A[0:8,5]*B[0,13][5,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=1)
              "vmovapd 6144(%%rdi), %%zmm2\r\n"                           // A [0,1] [0,2]
            "vfmadd231pd 2232(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[1,13][2,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 9216(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
              "vmovapd 11520(%%rdi), %%zmm3\r\n"                          // A [0,2] [0,3]
              "vmovapd 13056(%%rdi), %%zmm5\r\n"                          // A [0,2] [0,5]
            "vfmadd231pd 2240(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[2,13][0,0]
            "vfmadd231pd 2248(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[2,13][3,1]
            "vfmadd231pd 2256(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"      // C[0:8,2] += A[0:8,3]*B[2,13][3,2]
            "vfmadd231pd 2264(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"      // C[0:8,3] += A[0:8,5]*B[2,13][5,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=3)
              "vmovapd 13824(%%rdi), %%zmm0\r\n"                          // A [0,3] [0,0]
              "vmovapd 16896(%%rdi), %%zmm4\r\n"                          // A [0,3] [0,4]
            "vfmadd231pd 2272(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[3,13][0,0]
            "vfmadd231pd 2280(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"      // C[0:8,2] += A[0:8,4]*B[3,13][4,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 19968(%%rdi), %%zmm2\r\n"                          // A [0,4] [0,2]
            "vfmadd231pd 2288(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[4,13][2,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=5)
              "vmovapd 23040(%%rdi), %%zmm0\r\n"                          // A [0,5] [0,0]
            "vfmadd231pd 2296(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"      // C[0:8,1] += A[0:8,0]*B[5,13][0,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=7)
              "vmovapd 33024(%%rdi), %%zmm1\r\n"                          // A [0,7] [0,1]
              "vmovapd 33792(%%rdi), %%zmm2\r\n"                          // A [0,7] [0,2]
            "vfmadd231pd 2304(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[7,13][1,0]
            "vfmadd231pd 2312(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"      // C[0:8,3] += A[0:8,1]*B[7,13][1,3]
            "vfmadd231pd 2320(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[7,13][2,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 42240(%%rdi), %%zmm1\r\n"                          // A [0,9] [0,1]
              "vmovapd 43008(%%rdi), %%zmm2\r\n"                          // A [0,9] [0,2]
              "vmovapd 45312(%%rdi), %%zmm5\r\n"                          // A [0,9] [0,5]
            "vfmadd231pd 2328(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[9,13][1,0]
            "vfmadd231pd 2344(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"      // C[0:8,1] += A[0:8,1]*B[9,13][1,1]
            "vfmadd231pd 2336(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[9,13][2,0]
            "vfmadd231pd 2352(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"      // C[0:8,2] += A[0:8,5]*B[9,13][5,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=10)
              "vmovapd 46080(%%rdi), %%zmm0\r\n"                          // A [0,10] [0,0]
              "vmovapd 47616(%%rdi), %%zmm2\r\n"                          // A [0,10] [0,2]
              "vmovapd 49920(%%rdi), %%zmm5\r\n"                          // A [0,10] [0,5]
            "vfmadd231pd 2376(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"      // C[0:8,3] += A[0:8,0]*B[10,13][0,3]
            "vfmadd231pd 2360(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[10,13][2,0]
            "vfmadd231pd 2368(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"      // C[0:8,1] += A[0:8,5]*B[10,13][5,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=11)
              "vmovapd 54528(%%rdi), %%zmm5\r\n"                          // A [0,11] [0,5]
            "vfmadd231pd 2384(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"      // C[0:8,3] += A[0:8,5]*B[11,13][5,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 56832(%%rdi), %%zmm2\r\n"                          // A [0,12] [0,2]
            "vfmadd231pd 2392(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[12,13][2,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=13)
              "vmovapd 62976(%%rdi), %%zmm4\r\n"                          // A [0,13] [0,4]
            "vfmadd231pd 2400(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"      // C[0:8,3] += A[0:8,4]*B[13,13][4,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=14)
              "vmovapd 65280(%%rdi), %%zmm1\r\n"                          // A [0,14] [0,1]
              "vmovapd 66048(%%rdi), %%zmm2\r\n"                          // A [0,14] [0,2]
              "vmovapd 67584(%%rdi), %%zmm4\r\n"                          // A [0,14] [0,4]
              "vmovapd 68352(%%rdi), %%zmm5\r\n"                          // A [0,14] [0,5]
            "vfmadd231pd 2432(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"      // C[0:8,3] += A[0:8,1]*B[14,13][1,3]
            "vfmadd231pd 2440(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[14,13][2,3]
            "vfmadd231pd 2416(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"      // C[0:8,1] += A[0:8,4]*B[14,13][4,1]
            "vfmadd231pd 2408(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[14,13][5,0]
            "vfmadd231pd 2424(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"      // C[0:8,2] += A[0:8,5]*B[14,13][5,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 1536(%%rdi), %%zmm2\r\n"                           // A [0,0] [0,2]
              "vmovapd 3840(%%rdi), %%zmm5\r\n"                           // A [0,0] [0,5]
            "vfmadd231pd 2456(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"      // C[0:8,1] += A[0:8,2]*B[0,14][2,1]
            "vfmadd231pd 2448(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[0,14][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=1)
              "vmovapd 4608(%%rdi), %%zmm0\r\n"                           // A [0,1] [0,0]
            "vfmadd231pd 2464(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"      // C[0:8,2] += A[0:8,0]*B[1,14][0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 9984(%%rdi), %%zmm1\r\n"                           // A [0,2] [0,1]
              "vmovapd 13056(%%rdi), %%zmm5\r\n"                          // A [0,2] [0,5]
            "vfmadd231pd 2480(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"      // C[0:8,1] += A[0:8,1]*B[2,14][1,1]
            "vfmadd231pd 2488(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"      // C[0:8,3] += A[0:8,1]*B[2,14][1,3]
            "vfmadd231pd 2472(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[2,14][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=3)
              "vmovapd 13824(%%rdi), %%zmm0\r\n"                          // A [0,3] [0,0]
            "vfmadd231pd 2496(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"      // C[0:8,2] += A[0:8,0]*B[3,14][0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 18432(%%rdi), %%zmm0\r\n"                          // A [0,4] [0,0]
            "vfmadd231pd 2504(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"      // C[0:8,2] += A[0:8,0]*B[4,14][0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=5)
              "vmovapd 23040(%%rdi), %%zmm0\r\n"                          // A [0,5] [0,0]
              "vmovapd 26880(%%rdi), %%zmm5\r\n"                          // A [0,5] [0,5]
            "vfmadd231pd 2512(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[5,14][0,0]
            "vfmadd231pd 2520(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[5,14][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=6)
              "vmovapd 27648(%%rdi), %%zmm0\r\n"                          // A [0,6] [0,0]
              "vmovapd 28416(%%rdi), %%zmm1\r\n"                          // A [0,6] [0,1]
            "vfmadd231pd 2528(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[6,14][0,0]
            "vfmadd231pd 2536(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[6,14][1,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=7)
              "vmovapd 33792(%%rdi), %%zmm2\r\n"                          // A [0,7] [0,2]
              "vmovapd 34560(%%rdi), %%zmm3\r\n"                          // A [0,7] [0,3]
            "vfmadd231pd 2544(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"      // C[0:8,1] += A[0:8,2]*B[7,14][2,1]
            "vfmadd231pd 2552(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"      // C[0:8,2] += A[0:8,3]*B[7,14][3,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 37632(%%rdi), %%zmm1\r\n"                          // A [0,8] [0,1]
            "vfmadd231pd 2560(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[8,14][1,0]
            "vfmadd231pd 2568(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"      // C[0:8,3] += A[0:8,1]*B[8,14][1,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 43776(%%rdi), %%zmm3\r\n"                          // A [0,9] [0,3]
            "vfmadd231pd 2576(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[9,14][3,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=10)
              "vmovapd 47616(%%rdi), %%zmm2\r\n"                          // A [0,10] [0,2]
            "vfmadd231pd 2584(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[10,14][2,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=13)
              "vmovapd 61440(%%rdi), %%zmm2\r\n"                          // A [0,13] [0,2]
            "vfmadd231pd 2592(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[13,14][2,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=14)
              "vmovapd 64512(%%rdi), %%zmm0\r\n"                          // A [0,14] [0,0]
              "vmovapd 66048(%%rdi), %%zmm2\r\n"                          // A [0,14] [0,2]
            "vfmadd231pd 2600(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"      // C[0:8,1] += A[0:8,0]*B[14,14][0,1]
            "vfmadd231pd 2608(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"      // C[0:8,1] += A[0:8,2]*B[14,14][2,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=15)
              "vmovapd 70656(%%rdi), %%zmm2\r\n"                          // A [0,15] [0,2]
            "vfmadd231pd 2616(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"      // C[0:8,1] += A[0:8,2]*B[15,14][2,1]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 1536(%%rdi), %%zmm2\r\n"                           // A [0,0] [0,2]
              "vmovapd 2304(%%rdi), %%zmm3\r\n"                           // A [0,0] [0,3]
            "vfmadd231pd 2632(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[0,15][2,3]
            "vfmadd231pd 2624(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[0,15][3,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=1)
              "vmovapd 8448(%%rdi), %%zmm5\r\n"                           // A [0,1] [0,5]
            "vfmadd231pd 2640(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"      // C[0:8,2] += A[0:8,5]*B[1,15][5,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 12288(%%rdi), %%zmm4\r\n"                          // A [0,2] [0,4]
            "vfmadd231pd 2648(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"      // C[0:8,2] += A[0:8,4]*B[2,15][4,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 19968(%%rdi), %%zmm2\r\n"                          // A [0,4] [0,2]
            "vfmadd231pd 2656(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[4,15][2,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=5)
              "vmovapd 23040(%%rdi), %%zmm0\r\n"                          // A [0,5] [0,0]
              "vmovapd 23808(%%rdi), %%zmm1\r\n"                          // A [0,5] [0,1]
            "vfmadd231pd 2672(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"      // C[0:8,3] += A[0:8,0]*B[5,15][0,3]
            "vfmadd231pd 2664(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"      // C[0:8,2] += A[0:8,1]*B[5,15][1,2]
            "vfmadd231pd 2680(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"      // C[0:8,3] += A[0:8,1]*B[5,15][1,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=6)
              "vmovapd 28416(%%rdi), %%zmm1\r\n"                          // A [0,6] [0,1]
            "vfmadd231pd 2688(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"      // C[0:8,1] += A[0:8,1]*B[6,15][1,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 38400(%%rdi), %%zmm2\r\n"                          // A [0,8] [0,2]
            "vfmadd231pd 2696(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"      // C[0:8,2] += A[0:8,2]*B[8,15][2,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 43008(%%rdi), %%zmm2\r\n"                          // A [0,9] [0,2]
            "vfmadd231pd 2704(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[9,15][2,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=10)
              "vmovapd 49920(%%rdi), %%zmm5\r\n"                          // A [0,10] [0,5]
            "vfmadd231pd 2712(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[10,15][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 58368(%%rdi), %%zmm4\r\n"                          // A [0,12] [0,4]
            "vfmadd231pd 2720(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"      // C[0:8,0] += A[0:8,4]*B[12,15][4,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=14)
              "vmovapd 64512(%%rdi), %%zmm0\r\n"                          // A [0,14] [0,0]
              "vmovapd 65280(%%rdi), %%zmm1\r\n"                          // A [0,14] [0,1]
              "vmovapd 66816(%%rdi), %%zmm3\r\n"                          // A [0,14] [0,3]
            "vfmadd231pd 2736(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"      // C[0:8,2] += A[0:8,0]*B[14,15][0,2]
            "vfmadd231pd 2728(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[14,15][1,0]
            "vfmadd231pd 2744(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[14,15][3,3]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 768(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
            "vfmadd231pd 2752(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"      // C[0:8,1] += A[0:8,1]*B[0,16][1,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=1)
              "vmovapd 6144(%%rdi), %%zmm2\r\n"                           // A [0,1] [0,2]
              "vmovapd 6912(%%rdi), %%zmm3\r\n"                           // A [0,1] [0,3]
            "vfmadd231pd 2768(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"      // C[0:8,2] += A[0:8,2]*B[1,16][2,2]
            "vfmadd231pd 2760(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[1,16][3,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 9984(%%rdi), %%zmm1\r\n"                           // A [0,2] [0,1]
            "vfmadd231pd 2776(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"      // C[0:8,2] += A[0:8,1]*B[2,16][1,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=3)
              "vmovapd 13824(%%rdi), %%zmm0\r\n"                          // A [0,3] [0,0]
              "vmovapd 16128(%%rdi), %%zmm3\r\n"                          // A [0,3] [0,3]
            "vfmadd231pd 2784(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"      // C[0:8,3] += A[0:8,0]*B[3,16][0,3]
            "vfmadd231pd 2792(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[3,16][3,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 19200(%%rdi), %%zmm1\r\n"                          // A [0,4] [0,1]
            "vfmadd231pd 2800(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"      // C[0:8,1] += A[0:8,1]*B[4,16][1,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 41472(%%rdi), %%zmm0\r\n"                          // A [0,9] [0,0]
              "vmovapd 43776(%%rdi), %%zmm3\r\n"                          // A [0,9] [0,3]
            "vfmadd231pd 2808(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"      // C[0:8,2] += A[0:8,0]*B[9,16][0,2]
            "vfmadd231pd 2816(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"      // C[0:8,2] += A[0:8,3]*B[9,16][3,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=10)
              "vmovapd 46080(%%rdi), %%zmm0\r\n"                          // A [0,10] [0,0]
              "vmovapd 49920(%%rdi), %%zmm5\r\n"                          // A [0,10] [0,5]
            "vfmadd231pd 2824(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[10,16][0,0]
            "vfmadd231pd 2832(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[10,16][5,0]
            "vfmadd231pd 2840(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"      // C[0:8,2] += A[0:8,5]*B[10,16][5,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 55296(%%rdi), %%zmm0\r\n"                          // A [0,12] [0,0]
            "vfmadd231pd 2848(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"      // C[0:8,2] += A[0:8,0]*B[12,16][0,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=14)
              "vmovapd 66048(%%rdi), %%zmm2\r\n"                          // A [0,14] [0,2]
              "vmovapd 66816(%%rdi), %%zmm3\r\n"                          // A [0,14] [0,3]
            "vfmadd231pd 2864(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[14,16][2,3]
            "vfmadd231pd 2856(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[14,16][3,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=15)
              "vmovapd 70656(%%rdi), %%zmm2\r\n"                          // A [0,15] [0,2]
              "vmovapd 72192(%%rdi), %%zmm4\r\n"                          // A [0,15] [0,4]
              "vmovapd 72960(%%rdi), %%zmm5\r\n"                          // A [0,15] [0,5]
            "vfmadd231pd 2888(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[15,16][2,3]
            "vfmadd231pd 2872(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"      // C[0:8,0] += A[0:8,4]*B[15,16][4,0]
            "vfmadd231pd 2880(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"      // C[0:8,2] += A[0:8,5]*B[15,16][5,2]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 768(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
            "vfmadd231pd 2896(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"      // C[0:8,2] += A[0:8,1]*B[0,17][1,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 11520(%%rdi), %%zmm3\r\n"                          // A [0,2] [0,3]
            "vfmadd231pd 2904(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[2,17][3,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=3)
              "vmovapd 14592(%%rdi), %%zmm1\r\n"                          // A [0,3] [0,1]
            "vfmadd231pd 2912(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"      // C[0:8,2] += A[0:8,1]*B[3,17][1,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=5)
              "vmovapd 26112(%%rdi), %%zmm4\r\n"                          // A [0,5] [0,4]
            "vfmadd231pd 2920(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"      // C[0:8,3] += A[0:8,4]*B[5,17][4,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=6)
              "vmovapd 29952(%%rdi), %%zmm3\r\n"                          // A [0,6] [0,3]
            "vfmadd231pd 2928(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"      // C[0:8,2] += A[0:8,3]*B[6,17][3,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=7)
              "vmovapd 33792(%%rdi), %%zmm2\r\n"                          // A [0,7] [0,2]
            "vfmadd231pd 2936(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[7,17][2,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=10)
              "vmovapd 46080(%%rdi), %%zmm0\r\n"                          // A [0,10] [0,0]
              "vmovapd 49920(%%rdi), %%zmm5\r\n"                          // A [0,10] [0,5]
            "vfmadd231pd 2944(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"      // C[0:8,1] += A[0:8,0]*B[10,17][0,1]
            "vfmadd231pd 2952(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"      // C[0:8,2] += A[0:8,5]*B[10,17][5,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=11)
              "vmovapd 53760(%%rdi), %%zmm4\r\n"                          // A [0,11] [0,4]
            "vfmadd231pd 2960(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"      // C[0:8,0] += A[0:8,4]*B[11,17][4,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 56064(%%rdi), %%zmm1\r\n"                          // A [0,12] [0,1]
              "vmovapd 57600(%%rdi), %%zmm3\r\n"                          // A [0,12] [0,3]
              "vmovapd 59136(%%rdi), %%zmm5\r\n"                          // A [0,12] [0,5]
            "vfmadd231pd 2976(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"      // C[0:8,3] += A[0:8,1]*B[12,17][1,3]
            "vfmadd231pd 2968(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[12,17][3,1]
            "vfmadd231pd 2984(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"      // C[0:8,3] += A[0:8,5]*B[12,17][5,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=13)
              "vmovapd 62208(%%rdi), %%zmm3\r\n"                          // A [0,13] [0,3]
            "vfmadd231pd 2992(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[13,17][3,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=14)
              "vmovapd 67584(%%rdi), %%zmm4\r\n"                          // A [0,14] [0,4]
            "vfmadd231pd 3000(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"      // C[0:8,3] += A[0:8,4]*B[14,17][4,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=15)
              "vmovapd 72192(%%rdi), %%zmm4\r\n"                          // A [0,15] [0,4]
            "vfmadd231pd 3008(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"      // C[0:8,3] += A[0:8,4]*B[15,17][4,3]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 0(%%rdi), %%zmm0\r\n"                              // A [0,0] [0,0]
            "vfmadd231pd 3016(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"      // C[0:8,1] += A[0:8,0]*B[0,18][0,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 9216(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
              "vmovapd 10752(%%rdi), %%zmm2\r\n"                          // A [0,2] [0,2]
              "vmovapd 13056(%%rdi), %%zmm5\r\n"                          // A [0,2] [0,5]
            "vfmadd231pd 3040(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"      // C[0:8,2] += A[0:8,0]*B[2,18][0,2]
            "vfmadd231pd 3024(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[2,18][2,0]
            "vfmadd231pd 3032(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"      // C[0:8,1] += A[0:8,5]*B[2,18][5,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 18432(%%rdi), %%zmm0\r\n"                          // A [0,4] [0,0]
            "vfmadd231pd 3048(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"      // C[0:8,1] += A[0:8,0]*B[4,18][0,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=5)
              "vmovapd 23040(%%rdi), %%zmm0\r\n"                          // A [0,5] [0,0]
            "vfmadd231pd 3056(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[5,18][0,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=6)
              "vmovapd 29952(%%rdi), %%zmm3\r\n"                          // A [0,6] [0,3]
            "vfmadd231pd 3064(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"      // C[0:8,2] += A[0:8,3]*B[6,18][3,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=7)
              "vmovapd 33024(%%rdi), %%zmm1\r\n"                          // A [0,7] [0,1]
            "vfmadd231pd 3072(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[7,18][1,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 42240(%%rdi), %%zmm1\r\n"                          // A [0,9] [0,1]
            "vfmadd231pd 3080(%%rsi)%{1to8%}, %%zmm1, %%zmm30\r\n"      // C[0:8,2] += A[0:8,1]*B[9,18][1,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=10)
              "vmovapd 46080(%%rdi), %%zmm0\r\n"                          // A [0,10] [0,0]
            "vfmadd231pd 3088(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"      // C[0:8,3] += A[0:8,0]*B[10,18][0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=11)
              "vmovapd 52992(%%rdi), %%zmm3\r\n"                          // A [0,11] [0,3]
              "vmovapd 53760(%%rdi), %%zmm4\r\n"                          // A [0,11] [0,4]
            "vfmadd231pd 3096(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[11,18][3,1]
            "vfmadd231pd 3104(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"      // C[0:8,2] += A[0:8,4]*B[11,18][4,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 57600(%%rdi), %%zmm3\r\n"                          // A [0,12] [0,3]
              "vmovapd 58368(%%rdi), %%zmm4\r\n"                          // A [0,12] [0,4]
            "vfmadd231pd 3112(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[12,18][3,1]
            "vfmadd231pd 3120(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"      // C[0:8,3] += A[0:8,4]*B[12,18][4,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=13)
              "vmovapd 59904(%%rdi), %%zmm0\r\n"                          // A [0,13] [0,0]
              "vmovapd 63744(%%rdi), %%zmm5\r\n"                          // A [0,13] [0,5]
            "vfmadd231pd 3128(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[13,18][0,0]
            "vfmadd231pd 3136(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"      // C[0:8,2] += A[0:8,5]*B[13,18][5,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=15)
              "vmovapd 69120(%%rdi), %%zmm0\r\n"                          // A [0,15] [0,0]
              "vmovapd 70656(%%rdi), %%zmm2\r\n"                          // A [0,15] [0,2]
            "vfmadd231pd 3144(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"      // C[0:8,1] += A[0:8,0]*B[15,18][0,1]
            "vfmadd231pd 3152(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[15,18][2,3]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 2304(%%rdi), %%zmm3\r\n"                           // A [0,0] [0,3]
              "vmovapd 3072(%%rdi), %%zmm4\r\n"                           // A [0,0] [0,4]
            "vfmadd231pd 3160(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"      // C[0:8,2] += A[0:8,3]*B[0,19][3,2]
            "vfmadd231pd 3168(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"      // C[0:8,2] += A[0:8,4]*B[0,19][4,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=1)
              "vmovapd 5376(%%rdi), %%zmm1\r\n"                           // A [0,1] [0,1]
              "vmovapd 8448(%%rdi), %%zmm5\r\n"                           // A [0,1] [0,5]
            "vfmadd231pd 3184(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"      // C[0:8,1] += A[0:8,1]*B[1,19][1,1]
            "vfmadd231pd 3176(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[1,19][5,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=3)
              "vmovapd 17664(%%rdi), %%zmm5\r\n"                          // A [0,3] [0,5]
            "vfmadd231pd 3192(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"      // C[0:8,3] += A[0:8,5]*B[3,19][5,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 19968(%%rdi), %%zmm2\r\n"                          // A [0,4] [0,2]
              "vmovapd 21504(%%rdi), %%zmm4\r\n"                          // A [0,4] [0,4]
            "vfmadd231pd 3208(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"      // C[0:8,2] += A[0:8,2]*B[4,19][2,2]
            "vfmadd231pd 3200(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"      // C[0:8,0] += A[0:8,4]*B[4,19][4,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=6)
              "vmovapd 31488(%%rdi), %%zmm5\r\n"                          // A [0,6] [0,5]
            "vfmadd231pd 3216(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[6,19][5,0]
            "vfmadd231pd 3224(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"      // C[0:8,3] += A[0:8,5]*B[6,19][5,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=7)
              "vmovapd 33792(%%rdi), %%zmm2\r\n"                          // A [0,7] [0,2]
              "vmovapd 36096(%%rdi), %%zmm5\r\n"                          // A [0,7] [0,5]
            "vfmadd231pd 3240(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"      // C[0:8,1] += A[0:8,2]*B[7,19][2,1]
            "vfmadd231pd 3232(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[7,19][5,0]
            "vfmadd231pd 3248(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"      // C[0:8,1] += A[0:8,5]*B[7,19][5,1]
            "vfmadd231pd 3256(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"      // C[0:8,2] += A[0:8,5]*B[7,19][5,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 36864(%%rdi), %%zmm0\r\n"                          // A [0,8] [0,0]
              "vmovapd 38400(%%rdi), %%zmm2\r\n"                          // A [0,8] [0,2]
            "vfmadd231pd 3264(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"      // C[0:8,3] += A[0:8,0]*B[8,19][0,3]
            "vfmadd231pd 3272(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[8,19][2,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 41472(%%rdi), %%zmm0\r\n"                          // A [0,9] [0,0]
            "vfmadd231pd 3280(%%rsi)%{1to8%}, %%zmm0, %%zmm31\r\n"      // C[0:8,3] += A[0:8,0]*B[9,19][0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=10)
              "vmovapd 46848(%%rdi), %%zmm1\r\n"                          // A [0,10] [0,1]
              "vmovapd 49920(%%rdi), %%zmm5\r\n"                          // A [0,10] [0,5]
            "vfmadd231pd 3288(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"      // C[0:8,1] += A[0:8,1]*B[10,19][1,1]
            "vfmadd231pd 3296(%%rsi)%{1to8%}, %%zmm5, %%zmm30\r\n"      // C[0:8,2] += A[0:8,5]*B[10,19][5,2]
            "vfmadd231pd 3304(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"      // C[0:8,3] += A[0:8,5]*B[10,19][5,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=11)
              "vmovapd 50688(%%rdi), %%zmm0\r\n"                          // A [0,11] [0,0]
              "vmovapd 51456(%%rdi), %%zmm1\r\n"                          // A [0,11] [0,1]
              "vmovapd 52992(%%rdi), %%zmm3\r\n"                          // A [0,11] [0,3]
              "vmovapd 54528(%%rdi), %%zmm5\r\n"                          // A [0,11] [0,5]
            "vfmadd231pd 3312(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[11,19][0,0]
            "vfmadd231pd 3320(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[11,19][1,0]
            "vfmadd231pd 3328(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[11,19][3,0]
            "vfmadd231pd 3336(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"      // C[0:8,3] += A[0:8,5]*B[11,19][5,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 56832(%%rdi), %%zmm2\r\n"                          // A [0,12] [0,2]
            "vfmadd231pd 3344(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[12,19][2,0]
            "vfmadd231pd 3352(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"      // C[0:8,2] += A[0:8,2]*B[12,19][2,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=13)
              "vmovapd 59904(%%rdi), %%zmm0\r\n"                          // A [0,13] [0,0]
              "vmovapd 62208(%%rdi), %%zmm3\r\n"                          // A [0,13] [0,3]
              "vmovapd 62976(%%rdi), %%zmm4\r\n"                          // A [0,13] [0,4]
            "vfmadd231pd 3368(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"      // C[0:8,2] += A[0:8,0]*B[13,19][0,2]
            "vfmadd231pd 3360(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[13,19][3,1]
            "vfmadd231pd 3376(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"      // C[0:8,3] += A[0:8,4]*B[13,19][4,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=15)
              "vmovapd 69888(%%rdi), %%zmm1\r\n"                          // A [0,15] [0,1]
            "vfmadd231pd 3384(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[15,19][1,0]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 3840(%%rdi), %%zmm5\r\n"                           // A [0,0] [0,5]
            "vfmadd231pd 3392(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"      // C[0:8,1] += A[0:8,5]*B[0,20][5,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=3)
              "vmovapd 15360(%%rdi), %%zmm2\r\n"                          // A [0,3] [0,2]
            "vfmadd231pd 3400(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"      // C[0:8,2] += A[0:8,2]*B[3,20][2,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 18432(%%rdi), %%zmm0\r\n"                          // A [0,4] [0,0]
              "vmovapd 19968(%%rdi), %%zmm2\r\n"                          // A [0,4] [0,2]
              "vmovapd 20736(%%rdi), %%zmm3\r\n"                          // A [0,4] [0,3]
            "vfmadd231pd 3408(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[4,20][0,0]
            "vfmadd231pd 3432(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[4,20][2,3]
            "vfmadd231pd 3416(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[4,20][3,0]
            "vfmadd231pd 3424(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"      // C[0:8,2] += A[0:8,3]*B[4,20][3,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=5)
              "vmovapd 23040(%%rdi), %%zmm0\r\n"                          // A [0,5] [0,0]
            "vfmadd231pd 3440(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[5,20][0,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=6)
              "vmovapd 29952(%%rdi), %%zmm3\r\n"                          // A [0,6] [0,3]
              "vmovapd 30720(%%rdi), %%zmm4\r\n"                          // A [0,6] [0,4]
            "vfmadd231pd 3456(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[6,20][3,3]
            "vfmadd231pd 3448(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"      // C[0:8,1] += A[0:8,4]*B[6,20][4,1]
            "vfmadd231pd 3464(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"      // C[0:8,3] += A[0:8,4]*B[6,20][4,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 39936(%%rdi), %%zmm4\r\n"                          // A [0,8] [0,4]
            "vfmadd231pd 3472(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"      // C[0:8,2] += A[0:8,4]*B[8,20][4,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=10)
              "vmovapd 46848(%%rdi), %%zmm1\r\n"                          // A [0,10] [0,1]
            "vfmadd231pd 3480(%%rsi)%{1to8%}, %%zmm1, %%zmm29\r\n"      // C[0:8,1] += A[0:8,1]*B[10,20][1,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 55296(%%rdi), %%zmm0\r\n"                          // A [0,12] [0,0]
              "vmovapd 57600(%%rdi), %%zmm3\r\n"                          // A [0,12] [0,3]
            "vfmadd231pd 3496(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"      // C[0:8,2] += A[0:8,0]*B[12,20][0,2]
            "vfmadd231pd 3488(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[12,20][3,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=14)
              "vmovapd 67584(%%rdi), %%zmm4\r\n"                          // A [0,14] [0,4]
              "vmovapd 68352(%%rdi), %%zmm5\r\n"                          // A [0,14] [0,5]
            "vfmadd231pd 3504(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"      // C[0:8,1] += A[0:8,4]*B[14,20][4,1]
            "vfmadd231pd 3512(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"      // C[0:8,1] += A[0:8,5]*B[14,20][5,1]
            "vfmadd231pd 3520(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"      // C[0:8,3] += A[0:8,5]*B[14,20][5,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=15)
              "vmovapd 70656(%%rdi), %%zmm2\r\n"                          // A [0,15] [0,2]
              "vmovapd 71424(%%rdi), %%zmm3\r\n"                          // A [0,15] [0,3]
              "vmovapd 72192(%%rdi), %%zmm4\r\n"                          // A [0,15] [0,4]
            "vfmadd231pd 3536(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[15,20][2,3]
            "vfmadd231pd 3528(%%rsi)%{1to8%}, %%zmm3, %%zmm29\r\n"      // C[0:8,1] += A[0:8,3]*B[15,20][3,1]
            "vfmadd231pd 3544(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"      // C[0:8,3] += A[0:8,4]*B[15,20][4,3]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=0)
              "vmovapd 768(%%rdi), %%zmm1\r\n"                            // A [0,0] [0,1]
              "vmovapd 2304(%%rdi), %%zmm3\r\n"                           // A [0,0] [0,3]
            "vfmadd231pd 3552(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[0,21][1,0]
            "vfmadd231pd 3560(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[0,21][3,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=1)
              "vmovapd 7680(%%rdi), %%zmm4\r\n"                           // A [0,1] [0,4]
            "vfmadd231pd 3568(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"      // C[0:8,3] += A[0:8,4]*B[1,21][4,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 9216(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
            "vfmadd231pd 3576(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[2,21][0,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 21504(%%rdi), %%zmm4\r\n"                          // A [0,4] [0,4]
            "vfmadd231pd 3584(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"      // C[0:8,0] += A[0:8,4]*B[4,21][4,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=6)
              "vmovapd 28416(%%rdi), %%zmm1\r\n"                          // A [0,6] [0,1]
            "vfmadd231pd 3592(%%rsi)%{1to8%}, %%zmm1, %%zmm31\r\n"      // C[0:8,3] += A[0:8,1]*B[6,21][1,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 38400(%%rdi), %%zmm2\r\n"                          // A [0,8] [0,2]
            "vfmadd231pd 3600(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"      // C[0:8,2] += A[0:8,2]*B[8,21][2,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 45312(%%rdi), %%zmm5\r\n"                          // A [0,9] [0,5]
            "vfmadd231pd 3608(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"      // C[0:8,3] += A[0:8,5]*B[9,21][5,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=11)
              "vmovapd 52224(%%rdi), %%zmm2\r\n"                          // A [0,11] [0,2]
              "vmovapd 52992(%%rdi), %%zmm3\r\n"                          // A [0,11] [0,3]
            "vfmadd231pd 3616(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[11,21][2,0]
            "vfmadd231pd 3624(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[11,21][2,3]
            "vfmadd231pd 3632(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[11,21][3,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 56832(%%rdi), %%zmm2\r\n"                          // A [0,12] [0,2]
            "vfmadd231pd 3640(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[12,21][2,0]
            "vfmadd231pd 3648(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"      // C[0:8,2] += A[0:8,2]*B[12,21][2,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=13)
              "vmovapd 59904(%%rdi), %%zmm0\r\n"                          // A [0,13] [0,0]
              "vmovapd 61440(%%rdi), %%zmm2\r\n"                          // A [0,13] [0,2]
              "vmovapd 62976(%%rdi), %%zmm4\r\n"                          // A [0,13] [0,4]
            "vfmadd231pd 3656(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[13,21][0,0]
            "vfmadd231pd 3664(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[13,21][2,0]
            "vfmadd231pd 3680(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"      // C[0:8,1] += A[0:8,2]*B[13,21][2,1]
            "vfmadd231pd 3672(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"      // C[0:8,0] += A[0:8,4]*B[13,21][4,0]
            "vfmadd231pd 3688(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"      // C[0:8,1] += A[0:8,4]*B[13,21][4,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=15)
              "vmovapd 72960(%%rdi), %%zmm5\r\n"                          // A [0,15] [0,5]
            "vfmadd231pd 3696(%%rsi)%{1to8%}, %%zmm5, %%zmm28\r\n"      // C[0:8,0] += A[0:8,5]*B[15,21][5,0]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=1)
              "vmovapd 6912(%%rdi), %%zmm3\r\n"                           // A [0,1] [0,3]
            "vfmadd231pd 3704(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[1,22][3,0]
            "vfmadd231pd 3712(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[1,22][3,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 9984(%%rdi), %%zmm1\r\n"                           // A [0,2] [0,1]
              "vmovapd 12288(%%rdi), %%zmm4\r\n"                          // A [0,2] [0,4]
            "vfmadd231pd 3720(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[2,22][1,0]
            "vfmadd231pd 3728(%%rsi)%{1to8%}, %%zmm4, %%zmm28\r\n"      // C[0:8,0] += A[0:8,4]*B[2,22][4,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=3)
              "vmovapd 13824(%%rdi), %%zmm0\r\n"                          // A [0,3] [0,0]
            "vfmadd231pd 3736(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[3,22][0,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 18432(%%rdi), %%zmm0\r\n"                          // A [0,4] [0,0]
              "vmovapd 21504(%%rdi), %%zmm4\r\n"                          // A [0,4] [0,4]
            "vfmadd231pd 3752(%%rsi)%{1to8%}, %%zmm0, %%zmm30\r\n"      // C[0:8,2] += A[0:8,0]*B[4,22][0,2]
            "vfmadd231pd 3744(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"      // C[0:8,1] += A[0:8,4]*B[4,22][4,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=5)
              "vmovapd 24576(%%rdi), %%zmm2\r\n"                          // A [0,5] [0,2]
              "vmovapd 25344(%%rdi), %%zmm3\r\n"                          // A [0,5] [0,3]
            "vfmadd231pd 3760(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[5,22][2,0]
            "vfmadd231pd 3768(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[5,22][3,0]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=6)
              "vmovapd 30720(%%rdi), %%zmm4\r\n"                          // A [0,6] [0,4]
            "vfmadd231pd 3776(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"      // C[0:8,2] += A[0:8,4]*B[6,22][4,2]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 36864(%%rdi), %%zmm0\r\n"                          // A [0,8] [0,0]
              "vmovapd 39168(%%rdi), %%zmm3\r\n"                          // A [0,8] [0,3]
              "vmovapd 39936(%%rdi), %%zmm4\r\n"                          // A [0,8] [0,4]
            "vfmadd231pd 3784(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[8,22][0,0]
            "vfmadd231pd 3792(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[8,22][3,0]
            "vfmadd231pd 3800(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"      // C[0:8,1] += A[0:8,4]*B[8,22][4,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=12)
              "vmovapd 59136(%%rdi), %%zmm5\r\n"                          // A [0,12] [0,5]
            "vfmadd231pd 3808(%%rsi)%{1to8%}, %%zmm5, %%zmm29\r\n"      // C[0:8,1] += A[0:8,5]*B[12,22][5,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=13)
              "vmovapd 63744(%%rdi), %%zmm5\r\n"                          // A [0,13] [0,5]
            "vfmadd231pd 3816(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"      // C[0:8,3] += A[0:8,5]*B[13,22][5,3]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
          "addq $3072, %%rdx\r\n"                                     // Move C to (d=0,r=1)
            // Load C register block @ (d=0,r=0)
            "vmovapd 0(%%rdx), %%zmm28\r\n"                             // C [0,0] [0,0]
            "vmovapd 768(%%rdx), %%zmm29\r\n"                           // C [0,0] [0,1]
            "vmovapd 1536(%%rdx), %%zmm30\r\n"                          // C [0,0] [0,2]
            "vmovapd 2304(%%rdx), %%zmm31\r\n"                          // C [0,0] [0,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=1)
              "vmovapd 6144(%%rdi), %%zmm2\r\n"                           // A [0,1] [0,2]
            "vfmadd231pd 3824(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"      // C[0:8,1] += A[0:8,2]*B[1,23][2,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=2)
              "vmovapd 9216(%%rdi), %%zmm0\r\n"                           // A [0,2] [0,0]
            "vfmadd231pd 3832(%%rsi)%{1to8%}, %%zmm0, %%zmm28\r\n"      // C[0:8,0] += A[0:8,0]*B[2,23][0,0]
            "vfmadd231pd 3840(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"      // C[0:8,1] += A[0:8,0]*B[2,23][0,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=3)
              "vmovapd 15360(%%rdi), %%zmm2\r\n"                          // A [0,3] [0,2]
              "vmovapd 16128(%%rdi), %%zmm3\r\n"                          // A [0,3] [0,3]
            "vfmadd231pd 3848(%%rsi)%{1to8%}, %%zmm2, %%zmm31\r\n"      // C[0:8,3] += A[0:8,2]*B[3,23][2,3]
            "vfmadd231pd 3856(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[3,23][3,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=4)
              "vmovapd 19968(%%rdi), %%zmm2\r\n"                          // A [0,4] [0,2]
              "vmovapd 20736(%%rdi), %%zmm3\r\n"                          // A [0,4] [0,3]
              "vmovapd 21504(%%rdi), %%zmm4\r\n"                          // A [0,4] [0,4]
            "vfmadd231pd 3864(%%rsi)%{1to8%}, %%zmm2, %%zmm28\r\n"      // C[0:8,0] += A[0:8,2]*B[4,23][2,0]
            "vfmadd231pd 3880(%%rsi)%{1to8%}, %%zmm2, %%zmm30\r\n"      // C[0:8,2] += A[0:8,2]*B[4,23][2,2]
            "vfmadd231pd 3872(%%rsi)%{1to8%}, %%zmm3, %%zmm28\r\n"      // C[0:8,0] += A[0:8,3]*B[4,23][3,0]
            "vfmadd231pd 3888(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"      // C[0:8,3] += A[0:8,4]*B[4,23][4,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=6)
              "vmovapd 29184(%%rdi), %%zmm2\r\n"                          // A [0,6] [0,2]
            "vfmadd231pd 3896(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"      // C[0:8,1] += A[0:8,2]*B[6,23][2,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=7)
              "vmovapd 33792(%%rdi), %%zmm2\r\n"                          // A [0,7] [0,2]
              "vmovapd 34560(%%rdi), %%zmm3\r\n"                          // A [0,7] [0,3]
              "vmovapd 35328(%%rdi), %%zmm4\r\n"                          // A [0,7] [0,4]
            "vfmadd231pd 3904(%%rsi)%{1to8%}, %%zmm2, %%zmm29\r\n"      // C[0:8,1] += A[0:8,2]*B[7,23][2,1]
            "vfmadd231pd 3920(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[7,23][3,3]
            "vfmadd231pd 3912(%%rsi)%{1to8%}, %%zmm4, %%zmm29\r\n"      // C[0:8,1] += A[0:8,4]*B[7,23][4,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=8)
              "vmovapd 36864(%%rdi), %%zmm0\r\n"                          // A [0,8] [0,0]
              "vmovapd 39168(%%rdi), %%zmm3\r\n"                          // A [0,8] [0,3]
              "vmovapd 40704(%%rdi), %%zmm5\r\n"                          // A [0,8] [0,5]
            "vfmadd231pd 3928(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"      // C[0:8,1] += A[0:8,0]*B[8,23][0,1]
            "vfmadd231pd 3936(%%rsi)%{1to8%}, %%zmm3, %%zmm30\r\n"      // C[0:8,2] += A[0:8,3]*B[8,23][3,2]
            "vfmadd231pd 3944(%%rsi)%{1to8%}, %%zmm5, %%zmm31\r\n"      // C[0:8,3] += A[0:8,5]*B[8,23][5,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=9)
              "vmovapd 41472(%%rdi), %%zmm0\r\n"                          // A [0,9] [0,0]
            "vfmadd231pd 3952(%%rsi)%{1to8%}, %%zmm0, %%zmm29\r\n"      // C[0:8,1] += A[0:8,0]*B[9,23][0,1]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=13)
              "vmovapd 62976(%%rdi), %%zmm4\r\n"                          // A [0,13] [0,4]
            "vfmadd231pd 3960(%%rsi)%{1to8%}, %%zmm4, %%zmm30\r\n"      // C[0:8,2] += A[0:8,4]*B[13,23][4,2]
            "vfmadd231pd 3968(%%rsi)%{1to8%}, %%zmm4, %%zmm31\r\n"      // C[0:8,3] += A[0:8,4]*B[13,23][4,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=14)
              "vmovapd 65280(%%rdi), %%zmm1\r\n"                          // A [0,14] [0,1]
              "vmovapd 66816(%%rdi), %%zmm3\r\n"                          // A [0,14] [0,3]
            "vfmadd231pd 3976(%%rsi)%{1to8%}, %%zmm1, %%zmm28\r\n"      // C[0:8,0] += A[0:8,1]*B[14,23][1,0]
            "vfmadd231pd 3984(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[14,23][3,3]
            // Block GEMM microkernel
              // Load A register block @ (d=0,r=15)
              "vmovapd 71424(%%rdi), %%zmm3\r\n"                          // A [0,15] [0,3]
            "vfmadd231pd 3992(%%rsi)%{1to8%}, %%zmm3, %%zmm31\r\n"      // C[0:8,3] += A[0:8,3]*B[15,23][3,3]
            // Store C register block @ (d=0,r=0)
            "vmovapd %%zmm28, 0(%%rdx)\r\n"                             // C [0,0] [0,0]
            "vmovapd %%zmm29, 768(%%rdx)\r\n"                           // C [0,0] [0,1]
            "vmovapd %%zmm30, 1536(%%rdx)\r\n"                          // C [0,0] [0,2]
            "vmovapd %%zmm31, 2304(%%rdx)\r\n"                          // C [0,0] [0,3]
        "addq $64, %%rdi\r\n"                                       // Move A to (d=1,r=0)
        "addq $-70592, %%rdx\r\n"                                   // Move C to (d=1,r=-23)
        "addq $1, %%r12\r\n"
        "cmp $12, %%r12\r\n"
        "jl LOOP_TOP_31_%=\r\n"

    : : "m"(A), "m"(B), "m"(C) : "r12","rdi","rdx","zmm0","zmm1","zmm2","zmm28","zmm29","zmm3","zmm30","zmm31","zmm4","zmm5");
};