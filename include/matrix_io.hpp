
#include <iostream>

#include "sparse.hpp"
#include "dense.hpp"

extern "C" {
#include "mmio.h" 
}

using namespace std;

unique_ptr<SparseMatrix> from_mtx(const char * filename) {

  MM_typecode matcode;
  FILE *f;
  int rows, cols, nnzs;

  if ((f = fopen(filename, "r")) == NULL) {
    std::cout << "Unable to find MTX file: " << filename << std::endl;
    exit(1);
  }

  if (mm_read_banner(f, &matcode) != 0) {
    std::cout << "Invalid Matrix Market banner: " << filename << std::endl;
    exit(1);
  }

  if (!mm_is_real(matcode) && !mm_is_integer(matcode)) {
    std::cout << "Matrix is not real-valued: " << filename << std::endl;
    exit(1);
  }

  if (mm_read_mtx_crd_size(f, &rows, &cols, &nnzs) != 0) {
    std::cout << "Unable to read matrix dimensions: " << filename << std::endl;
    exit(1);
  }

  unique_ptr<SparseMatrix> m(new SparseMatrix(rows, cols));

  int ri, ci;
  double x;
  for (int i=0; i<nnzs; i++) {
    fscanf(f, "%d %d %lg\n", &ri, &ci, &x);
    m->set(ri-1, ci-1, x); 
    // SparseMatrix is zero-indexed; MTX is one-indexed.
  }
  fclose(f);
  return m;
}
