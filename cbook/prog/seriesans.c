#include <stdio.h>

int main() {
  int k, isConvergent;
  double sum, oldSum;
  
  sum = 0;
  oldSum = 0;
  isConvergent = 0;
  for(k=1;k<=1e10;k++) {
    sum += 1.0/(k*k*k);
    if(k%50==0) {
      if(sum - oldSum < 1e-8) {
        isConvergent = 1;
        break;
      }
      else {
        oldSum = sum;
      }
    }
  }

  if(isConvergent==1) {
    printf("The sum = %lf.\n",sum);
  }
  else {
    printf("No convergence within 1e10 steps.\n");
  } 
  return 0;
}



