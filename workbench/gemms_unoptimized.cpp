
#include<iostream>

void gemm_8x12x8_c_unoptimized(double * A, double * B, double * C) {
  std::cout << "Running gemm_8x12x8_c_unoptimized" << std::endl;

  const int m = 8;
  const int n = 12;
  const int k = 8;

  for (int i=0; i<m; i++) {
    for (int j=0; j<n; j++) {
      for (int w=0; w<k; w++) {
        // C[i][w] += A[i][j]*B[j][w]
        C[i*k + w] += A[i*n + j] * B[j*k + w];
      }
    }
  }
}
