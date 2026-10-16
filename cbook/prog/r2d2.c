#include <stdio.h>
#include <math.h>

int main() {

  double x;

  printf("Please supply x in radian: ");
  scanf("%lf",&x); df(x); 
  printf("It is %lf radian.\n", 180*x*7/22);
  return 0;
}
