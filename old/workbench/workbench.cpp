
#include<iostream>
#include "matrix_utils.hpp"

// GEMM implementations written in C
void gemm_8x12x8_c_unoptimized(double * A, double * B, double * C);
void gemm_8x12x8_c_optimized(double * A, double * B, double * C);
extern "C" void gemm_8x12x8_libxsmm_sse(double * A, double * B, double * C);
extern "C" void gemm_8x12x8_libxsmm_avx(double * A, double * B, double * C);
extern "C" void gemm_8x12x8_libxsmm_avx2(double * A, double * B, double * C);

// GEMM implementations written in ASM
// extern "C" double gemm_8x12x8_naive(double * A, double * B, double * C);
// extern "C" double gemm_8x12x8_avx256(double * A, double * B, double * C);

const int impl_count = 5;

const char * function_names[impl_count] = {
  "C Unoptimized",
  "C Optimized",
  "LibXSMM Dense SSE",
  "LibXSMM Dense AVX",
  "LibXSMM Dense AVX2"
};

void (*function_pointers[impl_count]) (double * A, double * B, double * C) = {
  & gemm_8x12x8_c_unoptimized,
  & gemm_8x12x8_c_optimized,
  & gemm_8x12x8_libxsmm_sse,
  & gemm_8x12x8_libxsmm_avx,
  & gemm_8x12x8_libxsmm_avx2
};

void print_help() {
  for (int i=0; i<impl_count; i++) {
    std::cout << "[" << i << "]\t" << function_names[i] << std::endl;
  }
}

void run_alg(int alg) {

  if (alg < 0 || alg >= impl_count) {
    std::cout << "Choose an implementation between 0 and " << impl_count-1 << std::endl;
    print_help();
  }

  double * A = (double *) malloc(8*12*sizeof(double));
  double * B = (double *) malloc(8*12*sizeof(double));
  double * C = (double *) malloc(8*8*sizeof(double));

  fill_matrix(A, 8, 12, 1.0, 2);
  fill_matrix(B, 12, 8, 2.0, 2);
  fill_matrix(C, 8, 8, 0.0, 0);

  std::cout << "A before" << std::endl;
  print_matrix(A, 8, 12);

  std::cout << "B before" << std::endl;
  print_matrix(B, 12, 8);

  std::cout << "C before" << std::endl;
  print_matrix(C, 8, 8);

  function_pointers[alg](A,B,C);

  std::cout << "C after" << std::endl;
  print_matrix(C, 8, 8);

  free(A);
  free(B);
  free(C);
}

extern "C" void matvec4x4(double * A, double * B, double * C);

int main(int argc, char** argv) {

  double A[16] = {1.0, 9.0, 17.0, 25.0, 3.0, 11.0, 19.0, 27.0,
                   5.0, 13.0, 21.0, 29.0, 7.0, 15.0, 23.0, 31.0};
  double B[4] = {2.0, 4.0, 6.0, 8.0};
  double C[4] = {0.0, 0.0, 0.0, 0.0};

  print_matrix(A,4,4);
  print_matrix(B,4,1);
  print_matrix(C,4,1);
  std::cout << "Made some progress..." << std::endl;
  matvec4x4(A, B, C);
  print_matrix(C,4,1);

  clock_t ticks_before = clock();
  uint64_t cycles_before = get_timestampcounter();
  for (int i=0; i<2000; i++) {
    matvec4x4(A,B,C);
  }
  uint64_t cycles_after = get_timestampcounter();
  clock_t ticks_after = clock();

  std::cout << "Elapsed cycles= " << (cycles_after - cycles_before) << std::endl;
  std::cout << "Elapsed ticks= " << (ticks_after - ticks_before) << std::endl;
  std::cout << "CPU clock time= " << ((ticks_after - ticks_before)/((double)CLOCKS_PER_SEC)) << std::endl;
}
