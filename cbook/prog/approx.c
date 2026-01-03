#include <stdio.h>
#include <math.h>

int main() {
  double x, frac;
  int fx;
  
  printf("Original value: ");
  scanf("%lf",&x);
  fx = floor(x);
  frac = x - fx;
  if(frac>=0.5) {
    printf("approximate integer is %d\n", fx+1);
  }
  else {
    printf("approximate integer is %d\n", fx);
  } 
  return 0;
}
