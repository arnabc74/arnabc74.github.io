#include <stdio.h>
#include <math.h>


int main() {
  double y;

  printf("y = ");
  scanf("%lf",&y); 
  if(fabs(1/y-((7/y)-(6/y)) < 1e-9))
    printf("saman\n");
  else
    printf("asaman!\n");


  return 0;
}
