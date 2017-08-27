
#pragma once
#include<iostream>

void fill_matrix(double * buffer, int rows, int cols, double startval, double increment) {
  for (int row = 0; row < rows; row++) {
    for (int col = 0; col < cols; col++) {
      buffer[row + col*rows] = startval;
      startval += increment;
    }
  }
}

void print_matrix(double * buffer, int rows, int cols) {
  for (int row = 0; row < rows; row++) {
    for (int col = 0; col < cols; col++) {
      std::cout << buffer[row + col*rows] << "\t";
    }
    std::cout << std::endl;
  }
}


