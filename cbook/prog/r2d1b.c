#include <stdio.h>

int main() {

  double x;

  printf("Please supply x in radian: ");
  scanf("%lf",&x); 
  printf("It is %lf degrees.\n", 180*(7/22)*x);
  return 0;
}
