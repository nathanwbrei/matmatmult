#include "colmajor.h"

struct patternsparse {
  int rows;
  int cols;
  int nnz;

  double * values;  // len(values) = size
  int size;         // nnz <= size <= rows * cols

  int pattern_rows;
  int pattern_cols;
  bool * pattern;    // len(pattern) = pattern_rows * pattern_cols
};



struct patternsparse create_patternsparse(int rows, int cols, int pattern_rows, int pattern_cols) {
  struct patternsparse result;
  result.rows = rows;
  result.cols = cols;
  result.nnz = 0;
  result.pattern_rows = pattern_rows;
  result.pattern_cols = pattern_cols;
  result.values = malloc(rows*cols*sizeof(double));
  result.pattern = malloc(pattern_rows*pattern_cols*sizeof(bool));
  return result;
}

void fill_sparse(struct patternsparse * mat, double start_value, double increment) {

  for (int i=0; i < mat->nnz; i++) {
    mat->values[i] = start_value;
    start_value += increment;
  }
}

void sparse2dense(struct patternsparse * in, struct colmajor * out) {
  reset(out);
  // TODO: This.
}

void update_pattern(struct patternsparse * mat, int row, int col, bool val) {
  mat->nnz += 1;
  // TODO: This.
}









