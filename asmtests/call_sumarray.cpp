
#include<iostream>
#include <cstdint>

extern "C" int64_t sumarray(int64_t * array, int64_t count);

int main() {

  //float arr[] = {7.7, 0.3, 1.0, 9.3, 2.7};
  int64_t arr[] = {7, 1, 9, 2, 1};
  std::cout << "Input: [7, 1, 9, 2, 1]" << std::endl;
  int64_t result = sumarray(arr, 5);
  std::cout << "Output: " << result << std::endl;
}


