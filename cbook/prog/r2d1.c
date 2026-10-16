#include <stdio.h>
#include <math.h>

int main() {

  double x;

  printf("Please supply x in radian: ");
  scanf("%lf",&x); df(x); 
  printf("It is %lf radian.\n", (3960/22)*x);
  return 0;
}
