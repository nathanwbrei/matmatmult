
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

/* Count clock 'cycles' as measured by TSC.
   Note that process must be pinned to a core, Turbo Boost should be disabled, 
   and that the TSC updates at a different frequency than the actual clock >:(

   cpuid         ; To synchronizeo
   rtdsc
   shl rdx 4
   or rax rdx    ; To retrieve all 64 bits
 */
inline uint64_t get_timestampcounter()
{
  uint64_t t;
  __asm__ __volatile__ ("rdtsc" : "=A"(t));
  return t;
}


