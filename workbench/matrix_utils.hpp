
#pragma once
#include<iostream>

void fill_matrix(double * buffer, int rows, int cols, double startval, double increment) {
  int offset = 0;
  for (int row = 0; row < rows; row++) {
    for (int col = 0; col < cols; col++) {
      buffer[offset] = startval;
      offset++;
      startval += increment;
    }
  }
}

void print_matrix(double * buffer, int rows, int cols) {
  int offset = 0;
  for (int row = 0; row < rows; row++) {
    for (int col = 0; col < cols; col++) {
      std::cout << buffer[offset] << "\t";
      offset++;
    }
    std::cout << std::endl;
  }
}
