#include <stdio.h>
#include <math.h>

int main() {
  double x;

  printf("x = ");
  scanf("%lf",&x);
  printf("sec(%lf) = %lf\n",x,1/cos(x));
  printf("cosec(%lf) = %lf\n",x,1/sin(x));
  printf("cot(%lf) = %lf\n",x,1/tan(x));

  return 0;
}
