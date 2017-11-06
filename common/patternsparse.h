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
  result.values = (double *) malloc(rows*cols*sizeof(double));
  result.size = rows*cols;
  result.pattern = (bool *) calloc(pattern_rows*pattern_cols, sizeof(bool));
  return result;
}

void fill_sparse(struct patternsparse * mat, double start_value, double increment) {

  for (int i=0; i < mat->size; i++) {
    mat->values[i] = start_value;
    start_value += increment;
  }
}

void sparse2dense(struct patternsparse * in, struct colmajor * out) {
  reset(out);
  int x = 0;
  for (int j=0; j < out->cols; j++) {
    for (int i=0; i < out->rows; i++) {
      int pattern_row = i % in->pattern_rows;
      int pattern_col = j % in->pattern_cols;
      int pattern_idx = pattern_col*in->pattern_rows + pattern_row;
      if (in->pattern[pattern_idx]) {
        out->values[out->rows*j + i] = in->values[x];
        x++;
      }
    }
  }
}

void update_pattern(struct patternsparse * mat, int row, int col, bool val) {
  int x = col * mat->pattern_rows + row;
  mat->pattern[x] = val;
  if (val && !mat->pattern[x]){
    mat->nnz += 1;
  }
  else if (!val && mat->pattern[x]){
    mat->nnz -= 1;
  }
}









