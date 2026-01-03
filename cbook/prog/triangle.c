#include <stdio.h>
#include <math.h>

#define TOL 1e-9
#define EQ(p,q) (fabs((p)-(q)) < TOL)

int main() {
  float a, b, c;

  printf("a = "); scanf("%f",&a);
  printf("b = "); scanf("%f",&b);
  printf("c = "); scanf("%f",&c);

  if(EQ(a,b)) {
    if(EQ(b,c))
      printf("Equilateral.\n");
    else
      printf("Isoceles, but not equilateral.\n");
  }
  else {
    if(EQ(a,c) || EQ(b,c))
      printf("Isoceles, but not equilateral.\n");
    else
      printf("Scalene.\n");
  }
  
  return 0;
}
