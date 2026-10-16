#include <stdio.h>
#include <math.h>

int main() {

  double x;

  printf("Please supply x in radian: ");
  scanf("%lf",&x);  
  printf("It is %lf radian.\n", (1260/22)*x);
  return 0;
}
