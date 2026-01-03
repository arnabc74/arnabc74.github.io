#include <stdio.h>

int main() {
  double x[1000], ma[1000-6];
  int i;
  
  /*Input*/
  printf("Supply the 1000 entries of the original array:\n");
  for(i=0;i<1000;i++)
    scanf("%lf",&x[i]);

  /*Computation*/
  for(i=0;i<1000-6;i++) {
    ma[i] = (x[i]+x[i+1]+x[i+2]+x[i+3]+x[i+4]+x[i+5]+x[i+6])/7.0;
  }

  /*Output*/
  printf("The moving averages are:\n");
  for(i=0;i<1000-6;i++) {
    printf("%lf ",ma[i]);
  }
  
  return 0;
}
