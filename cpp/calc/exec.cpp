#include "iostream"
#include "functions.h"
// exec.cpp

void displ(double numm, double vall){
	double getNumm = numm;
	double getvall = vall;
	double resultSet = 0.00;
	resultSet = (addition(getNumm, vall));
	std::cout << "The answer of " << getNumm << "+" << getvall << ": " << resultSet << std::endl;
	resultSet = (substraction(getNumm, vall));
	std::cout << "The answer of " << getNumm << "-" << getvall << ": " << resultSet << std::endl;
	resultSet = (multiplication(getNumm, vall));
	std::cout << "The answer of " << getNumm << "*" << getvall << ": " << resultSet << std::endl;
	resultSet = (division(getNumm, vall));
	std::cout << "The answer of " << getNumm << "/" << getvall << ": " << resultSet << std::endl;
}
int main(){
	double number = 24.42;
	double vari = 36.63;
	std::cout << "Enter a number: " << std::endl;
	std::cin >> number;
	std::cout << "Enter another number: " << std::endl;
	std::cin >> vari;
    displ(number, vari)
	return 0;
}
