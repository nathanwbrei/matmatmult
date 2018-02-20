#include <iostream>


double a[64];
double b[64];

int main(int argc, char** argv) {

	for (int x=0; x<64; x++) {
		a[x] = x;
		b[x] = 0;
	}

	for (int ci=0; ci<8; ci++) {
		for (int ri=0; ri<8; ri++) {
			b[ri*8+ci] = a[ci*8+ri];
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
