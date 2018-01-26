
#pragma once

#include <Eigen/Sparse>
#include <iostream>

using std::ostream;

const double epsilon = 1e-10;


struct VcscMatrix {

  int length;
  double * values;

  VcscMatrix(Eigen::SparseMatrix<double> m) {

    // We are projecting downwards and losing the index information
    length = m.nonZeros();
    values = new double[length];

    // Calling m.coeffRef(ri,ci) is O(log n),
    // but these matrices are small enough for the time being
    int x = 0;
    for (int ci=0; ci < m.cols(); ci++) {
      for (int ri=0; ri < m.rows(); ri++) {
        double v = m.coeffRef(ri,ci);
        if (fabs(v) > epsilon) {
          values[x] = v;
          x += 1;
        }
      }
    }
    if (x > length) {
      std::cerr << "More nonzeros than expected!" << std::endl;
    }
  }

  ~VcscMatrix() {
    delete [] values;
  }
};

ostream& operator<<(ostream& os, const VcscMatrix& m) {
  for (int i=0; i<m.length; i++) {
    os << m.values[i] << " ";
  }
  return os;
}  

struct VbcscMatrix {

  int length;
  double * values;

  VbcscMatrix(Eigen::SparseMatrix<double> m, int br, int bc) {

    // We are projecting downwards and losing the index information
    length = m.nonZeros();
    values = new double[length];

    // Calling m.coeffRef(ri,ci) is O(log n),
    // but these matrices are small enough for the time being
    int Br = m.rows()/br;
    int Bc = m.cols()/bc;
    int x = 0;

    for (int Bci=0; Bci<Bc; Bci++) {
      for (int Bri=0; Bri<Br; Bri++) {
        for (int bci=0; bci<bc; bci++) {
          for (int bri=0; bri<br; bri++) {
            double v = m.coeffRef(Bri*br+bri, Bci*bc+bci);
            if (fabs(v) > epsilon) {
              values[x] = v;
              x += 1;
            }
          }
        }
      }
    }
    if (x > length) {
      std::cerr << "More nonzeros than expected!" << std::endl;
    }
  }

  ~VbcscMatrix() {
    delete [] values;
  }
};

ostream& operator<<(ostream& os, const VbcscMatrix& m) {
  for (int i=0; i<m.length; i++) {
    os << m.values[i] << " ";
  }
  return os;
}  

