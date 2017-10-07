#ifndef COLMAJOR_H_
#define COLMAJOR_H_

#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>
#include<unistd.h>
#include<math.h>

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

  for (int i=0; i<rows*cols; i++) {
    result.values[i] = 0.0;
  }
  return result;
}


struct colmajor make_random_colmajor(int rows, int cols) {

  double startval = 1.0;
  double increment = 2.0;

  struct colmajor matrix = zeros(rows, cols);
  for (int col = 0; col < cols; col++) {
    for (int row = 0; row < rows; row++) {
      matrix.values[row + col*rows] = startval;
      startval += increment;
    }
  }
  return matrix;
}


void print_matrix(struct colmajor matrix) {
  for (int row = 0; row < matrix.rows; row++) {
    for (int col = 0; col < matrix.cols; col++) {
      printf("%f\t", matrix.values[row + col*matrix.rows]);
    }
    printf("\n");
  }
}


void test_equality(struct colmajor expected, struct colmajor actual) {
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
    print_matrix(expected);
    printf("\n\n------ ACTUAL -----=-\n");
    print_matrix(actual);
  }
}


#endif
