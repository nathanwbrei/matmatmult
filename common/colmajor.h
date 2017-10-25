#ifndef COLMAJOR_H_
#define COLMAJOR_H_

#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>
#include<unistd.h>
#include<math.h>
#include<assert.h>

struct colmajor {
  int rows;
  int cols;
  double * values; // Size = rows*cols
};


struct colmajor zeros(int rows, int cols) {
  struct colmajor result;
  result.rows = rows;
  result.cols = cols;
  result.values = malloc(result.rows * result.cols * sizeof(double));
  reset(result);
  return result;
}


inline void reset(struct colmajor * dense) {
  int size = dense->rows * dense->cols;
  for (int i=0; i<size; i++) {
    dense.values[i] = 0.0;
  }  
}

void fill(struct colmajor * matrix, double startval, double increment) {

  int cols = matrix->cols;
  int rows = matrix->rows;
  for (int col = 0; col < cols; col++) {
    for (int row = 0; row < rows; row++) {
      matrix->values[row + col*rows] = startval;
      startval += increment;
    }
  }
}


void print_matrix(struct colmajor * matrix) {

  int cols = matrix->cols;
  int rows = matrix->rows;
  for (int row = 0; row < rows; row++) {
    for (int col = 0; col < cols; col++) {
      printf("%f\t", matrix->values[row + col*rows]);
    }
    printf("\n");
  }
}

void ddmm(struct colmajor * A, struct colmajor * B, struct colmajor * C) {

  int m = C->rows;
  int n = C->cols;
  int k = A->cols;

  for (int in=0; in<n; in++) {
    for (int ik=0; ik<k; ik++) {
      #pragma simd
      for (int im=0; im<m; im++) {
        // C[i,j] += A[i,x]*B[x,j]
        C->values[in*m + im] += A->values[ik*m + im] * B->values[in*k + ik];
      }
    }
  }
}


void assert_equals(struct colmajor expected, struct colmajor actual) {
  bool equal = true;
  double epsilon = 0.0001;
  if (expected.rows != actual.rows) {
    equal = false;
    printf("Expected %d rows, actually %d rows\n", expected.rows, actual.rows);
  }
  if (expected.cols != actual.cols) {
    equal = false;
    printf("Expected %d cols, actually %d cols\n", expected.cols, actual.cols);
  }
  for (int row = 0; row < expected.rows; row++) {
    for (int col = 0; col < expected.cols; col++) {
      double a = expected.values[row + col*expected.rows];
      double b = actual.values[row + col*expected.rows];
      if (fabs(a-b) > epsilon) {
        equal = false;
        printf("Mismatch %f != %f at row %d, col %d\n", a,b,row,col);
      }
    }
  }
  if (!equal) {
    printf("\n\n------ EXPECTED -----=-\n");
    print_matrix(&expected);
    printf("\n\n------ ACTUAL -----=-\n");
    print_matrix(&actual);
  }
  assert(equal);
}


#endif
