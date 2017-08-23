
#include<iostream>

// GEMM implementations written in C
void gemm_8x12x8_c_unoptimized(double * A, double * B, double * C) {
  std::cout << "Hello from c_unoptimized\n";
}
void gemm_8x12x8_c_optimized(double * A, double * B, double * C) {
  std::cout << "Hello from c_optimized\n";
}
void gemm_8x12x8_libxsmm_dense(double * A, double * B, double * C) {
  std::cout << "Hello from libxsmm_dense\n";
}

// GEMM implementations written in ASM
// extern "C" double gemm_8x12x8_naive(double * A, double * B, double * C);
// extern "C" double gemm_8x12x8_avx256(double * A, double * B, double * C);

const int impl_count = 3;

const char * function_names[impl_count] = {
  "C Unoptimized",
  "C Optimized",
  "LibXSMM Dense"
};

void (*function_pointers[impl_count]) (double * A, double * B, double * C) = {
  & gemm_8x12x8_c_unoptimized,
  & gemm_8x12x8_c_optimized,
  & gemm_8x12x8_libxsmm_dense
};

/*
   Need something to do timing
   Need some sample arrays
   Need an optimized C dense implementation
   Need an assembly implementation
*/

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

  function_pointers[user_choice](NULL, NULL, NULL);

}


