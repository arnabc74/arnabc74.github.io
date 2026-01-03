#include <stdio.h>
#include <math.h>

int main() {
  double a,b,c;
  double discrim, real, tmp, img, a2;

  printf("This program solves ax^2+bx+c=0.\n\n");
  printf("Please supply the coefficients:\n");
  printf("a = "); scanf("%lf",&a); 
  printf("b = "); scanf("%lf",&b); 
  printf("c = "); scanf("%lf",&c); 

  discrim = b*b-4*a*c;
  if(fabs(discrim)<1e-9) {
    printf("Repeated real root: %lf\n",-b/(2*a));
  }
  else if(discrim > 0) {
    tmp = sqrt(discrim);
    a2 = 2*a;
    printf("Two real roots: %lf and %lf.\n",
           (-b-tmp)/a2, (-b+tmp)/a2);
  }
  else {
    tmp = sqrt(-discrim);
    a2 = 2*a;
    real = -b/a2;
    img = fabs(tmp/a2);
    printf("Two complex roots: %lf + %lf i and %lf - %lf i.\n",
           real, img, real, img);
  }

  return 0;
}
