void test(const double* A, const double* B, double* C) {
  unsigned int l_m = 0;

  #pragma simd vectorlength(8)
  #pragma vector aligned
  for ( l_m = 0; l_m < 48; l_m++) {
    C[0+l_m] += A[0+l_m] * B[0];
    C[0+l_m] += A[144+l_m] * B[1];
    C[0+l_m] += A[288+l_m] * B[2];
    C[144+l_m] += A[0+l_m] * B[3];
    C[144+l_m] += A[144+l_m] * B[4];
    C[144+l_m] += A[288+l_m] * B[5];
    C[288+l_m] += A[0+l_m] * B[6];
    C[288+l_m] += A[144+l_m] * B[7];
    C[288+l_m] += A[288+l_m] * B[8];
  }

#ifndef NDEBUG
#ifdef _OPENMP
#pragma omp atomic
#endif
libxsmm_num_total_flops += 864;
#endif
}

