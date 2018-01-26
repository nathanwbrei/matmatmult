
#include <iostream>
#include <Eigen/Dense>
#include <Eigen/Sparse>
#include <unsupported/Eigen/SparseExtra>

using namespace Eigen;

int main()
{
  MatrixXd m(2,2);
  m(0,0) = 3;
  m(1,0) = 2.5;
  m(0,1) = -1;
  m(1,1) = m(1,0) + m(0,1);
  std::cout << "Defined by hand: " << std::endl;
  std::cout << m * 2.0 << std::endl;


  SparseMatrix<double, ColMajor> mm;
  loadMarket(mm, "star.mtx");
  std::cout << "Loaded from MTX" << std::endl;
  std::cout << mm * 2.0 << std::endl;

}


