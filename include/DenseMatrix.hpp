
#pragma once

#include <stdlib.h>
#include <iostream>
#include <iomanip>
#include "matrix.hpp"

struct DenseMatrix : public Matrix {

  int ld;
  double * values;

  DenseMatrix(int rows, int cols, int ld) : ld(ld) {

    this->rows = rows;
    this->cols = cols;
    int result = posix_memalign(reinterpret_cast<void **>(&values), 64, ld*cols*sizeof(double));
    zero();
  }

  // Load MTX as dense, then convert to vbcsc, if you want faster packing
  DenseMatrix(const char * mtxfilename) {

    FILE * f = fopen(mtxfilename, "r");

    // Skip first two lines, ignore formatting info
    char throwaway[1000];
    fgets(throwaway, 1000, f);
    fgets(throwaway, 1000, f);

    // Read rows, cols, nnzs
    int nnzs;
    int result;
    result = fscanf(f, "%d %d %d\n", &rows, &cols, &nnzs);
    ld = rows;

    // Allocate buffer
    result = posix_memalign(reinterpret_cast<void **>(&values), 64, ld*cols*sizeof(double));
    zero();

    // Fill with sparse entries from file
    int ri, ci;
    double value;
    for (int i=0; i<nnzs; i++) {
      result = fscanf(f, "%d %d %lg\n", &ri, &ci, &value);
      values[(ri-1) + ld*(ci-1)] = value;
      // MTX is one-indexed, we are zero-indexed
    }
    fclose(f);
  }

  ~DenseMatrix() {
    free(values);
  }

  virtual double get(int row, int col) const {
    return values[ld*col + row];
  }

  virtual void set(int row, int col, double val) {
    values[ld*col + row] = val;
  }

  void zero() {
    for (int ci=0; ci<cols; ci++) {
      for (int ri=0; ri<rows; ri++) {
        values[ld*ci + ri] = 0.0;
      }
    }
  }

  void fill(double start, double increment) {
    for (int ci=0; ci<cols; ci++) {
      for (int ri=0; ri<rows; ri++) {
        values[ld*ci + ri] = start;
        start += increment;
      }
    }
  }

  void random() {
    for (int ci=0; ci<cols; ci++) {
      for (int ri=0; ri<rows; ri++) {
        values[ld*ci + ri] = ((double) rand()) / RAND_MAX;
      }
    }
  }
};



