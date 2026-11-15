#include <stdio.h>
#define I2C(in) 2.54*in

int main() {
  double x;
  
  printf("Supply length in inches: ");
  scanf("%lf",&x); 
  printf("The length in centimetres is %lf\n",I2C(x));
  return 0;
}
