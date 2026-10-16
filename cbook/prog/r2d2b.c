#include <stdio.h>

#define RAD2DEG (180.0*7/22)`\

int main() {

  double x;

  printf("Please supply x in radian: ");
  scanf("%lf",&x);
  printf("It is %lf degrees.\n", RAD2DEG*x);`\
  return 0;
}
