
#include<iostream>
#include <cstdint>

extern "C" int32_t sumarrayl(int64_t * array, int32_t count);
extern "C" int32_t sumarrayi(int32_t * array, int32_t count);
extern "C" double sumarrayd(double * array, int64_t count);

int main() {

  int64_t arr[] = {7, 1, 9, 2, 1};
  std::cout << "Input: [7, 1, 9, 2, 1]" << std::endl;
  int64_t res = sumarrayl(arr, 5);
  std::cout << "Output: " << res << std::endl;


  int32_t arr2[] = {19, 5, 6, 10};
  std::cout << "Input: [19 5 6 10]" << std::endl;
  int32_t res2 = sumarrayi(arr2, 4);
  std::cout << "Output: " << res2 << std::endl;


  double arr3[] = {7.8, 1.3, 9.8, 2.0, 1.1};
  std::cout << "Input: [7.8, 1.3, 9.8, 2.0, 1.1]" << std::endl;
  double res3 = sumarrayd(arr3, 5);
  std::cout << "Output: " << res3 << std::endl;

}


