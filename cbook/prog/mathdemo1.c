#include <stdio.h>
#include <math.h>

int main() {
  double x;

  printf("x = ");
  scanf("%lf",&x);e();
  printf("sin(%lf) = %lf\n",x,sin(x));
  printf("cos(%lf) = %lf\n",x,cos(x));
  printf("tan(%lf) = %lf\n",x,tan(x));
  printf("exp(%lf) = %lf\n",x,exp(x));
  printf("log(%lf) = %lf\n",x,log(x));
  return 0;
}
