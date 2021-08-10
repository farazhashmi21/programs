#include "iostream"
#include "functions.h"
// exec.cpp

int main(){
	double number = 24.42;
	double vari = 36.63;
	std::cout << "Enter a number: " << std::endl;
	std::cin >> number;
	std::cout << "Enter another number: " << std::endl;
	std::cin >> vari;
	addition(number, vari);
	substraction(number, vari);
	multiplication(number, vari);
	division(number, vari);
//	modulus(number, vari);
	return 0;
}
