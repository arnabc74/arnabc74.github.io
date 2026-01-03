#include <stdio.h>
#include <math.h>

int main() {
  int n, sign, n2;
  double sum, oldSum;

  sum = oldSum = 0;
  sign=1;
  for(n=1;n<=1e8;n++) {
    n2 = 2*n;
    sum += (double)sign/(n2*(n2+1)*(n2+2));
    sign = -sign;
    
    if(n%50!=0) continue;
      
    if(fabs(sum-oldSum) < 1e-8) {
      break;
    }
    else {
      oldSum = sum;
    }
    sign=-sign;
  }

  printf("pi = %lf.\n",3+4*sum);

  return 0;
}
