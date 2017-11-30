#include<stdio.h>

#pragma once


struct Matrix {

  int rows;
  int cols;

  virtual double get(int row, int col) const = 0;
  virtual void set(int row, int col, double val) = 0;
  virtual void clear() = 0;

  void show() const {
    for (int ri = 0; ri < rows; ri++) {
      for (int ci = 0; ci < cols; ci++) {
        printf("%10.2f ", get(ri,ci));
      }
      printf("\n");
    }
  }

};

