#include <stdio.h>
#include <math.h>

int main() {

  double x;

  printf("Please supply an angle in radians: ");
  scanf("%lf",&x); 
  printf("It is %lf degrees.\n", (180/M_PI)*x);
  return 0;
}
