#include<stdlib.h>
#include "matrix.hpp"

struct DenseMatrix : public Matrix {

  int ld;
  double * values;

  DenseMatrix(int rows, int cols, int ld) : ld(ld) {
    this->rows = rows;
    this->cols = cols;

    posix_memalign(reinterpret_cast<void **>(&values), 64, rows*cols*sizeof(double));
    clear();
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

  virtual void clear() {
    for (int ci=0; ci<cols; ci++) {
      for (int ri=0; ri<rows; ri++) {
        values[ld*ci + ri] = 0.0;
      }
    }
  }

};





