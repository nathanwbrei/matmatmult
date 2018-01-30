#include "DenseMatrix.hpp"
#include "SparseMatrix.hpp"


  unique_ptr<DenseMatrix> to_aligned(Eigen::Matrix m, int ld) {

    auto unique_ptr(DenseMatrix result(m.rows(), m.cols(), ld));    
    for (int ri=0; ri<rows; ri++) {
      for (int ci=0; ci<cols; ci++) {
        result.set(ri, ci, m(ri,ci));
      }
    }
    return result;
  }

  unique_ptr<SparseMatrix> to_csc(Eigen::SparseMatrix<double> m) {

    // Convert first to dense as otherwise lookup is very inefficient
    return to_csc(to_aligned(m, 8));
  }

  unique_ptr<SparseMatrix> to_bcsc(Eigen::SparseMatrix<double> m, int br, int bc) {

    // Convert first to dense as otherwise lookup is very inefficient
    return to_bcsc(to_aligned(m, 8), br, bc);
  }


