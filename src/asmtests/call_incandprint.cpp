
#include<iostream>

extern "C" int domagic(int x);

int main() {
    std::cout << "Welcome to my project." << std::endl;
    int result = domagic(27);
    std::cout << "External call returned " << result << std::endl;
}


