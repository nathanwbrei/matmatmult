
#include <iostream>
#include <Eigen/Dense>
#include <Eigen/Sparse>
#include <unsupported/Eigen/SparseExtra>

#include "../../include/EigenBindings.hpp"

using namespace Eigen;

int main()
{
  //MatrixXd m(3,9);
  MatrixXd m = MatrixXd::Identity(3,9);
  m(0,0) = 3;
  m(1,0) = 2.5;
  m(0,1) = -1;
  m(1,1) = m(1,0) + m(0,1);
  std::cout << "Defined by hand: " << std::endl;
  std::cout << m << std::endl;

  SparseMatrix<double, ColMajor> mm;
  loadMarket(mm, "src/cpptests/star.mtx");
  mm *= 2.0;
  std::cout << "Loaded from MTX" << std::endl;
  std::cout << mm * 1.0 << std::endl;
  std::cout << "Nonzeros = " << mm.nonZeros() << std::endl;
  std::cout << "Item at (0,6) = " << mm.coeffRef(0,6) << std::endl;

  MatrixXd c(3, 15);
  c = m * mm;
  std::cout << "Multiplied:" << std::endl;
  std::cout << c << std::endl;

  MatrixXd d = MatrixXd::Zero(3,15);
  d(0,6) = 6;
  d(0,7) = -2;
  d(1,6) = 5;
  d(1,7) = 3;
  d(2,8) = 2;

  std::cout << "Comparison: " << std::endl;
  std::cout << (d == c) << std::endl;

  auto v = to_csc(mm);
  std::cout << "VirtualSparse: " << *v << std::endl;
  
}


