#include <iostream>

int main(int argc, char** argv) {

	double * a;
	double * b;

    	int result  = posix_memalign(reinterpret_cast<void **>(&a), 64, 64*sizeof(double));
    	int result2 = posix_memalign(reinterpret_cast<void **>(&b), 64, 64*sizeof(double));

	for (int x=0; x<64; x++) {
		a[x] = x;
		b[x] = 0;
	}

	std::cout << "Done initializing" << std::endl;

	#pragma simd
	for (int ci=0; ci<8; ci++) {
		for (int ri=0; ri<8; ri++) {
			b[ri*8+ci] = a[ci*8+ri] + 3.7;
		}
	}

	std::cout << "a = ";
	for (int x=0; x<64; x++) {
		std::cout << a[x] << " ";
	}
	std::cout << std::endl;

	std::cout << "b = ";
	for (int x=0; x<64; x++) {
		std::cout << b[x] << " ";
	}
	std::cout << std::endl;

	return 0;
}
