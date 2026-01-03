#include <stdio.h>
#include <math.h>

int main() {
  double x;
  
  printf("x= ");
  scanf("%lf",&x);
  printf("asin(%lf) = %lf\nacos(%lf) = %lf",
         x,asin(x),x,acos(x));
  return 0;
}
