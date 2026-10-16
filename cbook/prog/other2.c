#include<stdio.h>
extern double f(double x);`\
int main() {
	double value;

	printf("Please supply a number: ");
	scanf("%lf",&value);
	printf("The answer is %lf\n",f(value));
}
