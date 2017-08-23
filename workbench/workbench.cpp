
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

int main(int argc, char** argv) {

  if (argc == 1) {
    print_help();
    return 0;
  }

  int user_choice = atoi(argv[1]);
  if (user_choice < 0 || user_choice >= impl_count) {
    std::cout << "Choose an implementation between 0 and " << impl_count-1 << std::endl;
    print_help();
    return 0;
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

  function_pointers[user_choice](A,B,C);

  std::cout << "C after" << std::endl;
  print_matrix(C, 8, 8);

  free(A);
  free(B);
  free(C);

}


