#include <stdio.h>
#include <math.h>

int main() {
  int n, k, noFactorFound;

  printf("Please supply an integer (>=2): ");
  scanf("%d",&n); 

  noFactorFound = 1;
  for(k=2;k<n;k++) {
    if(n%k==0) {
      noFactorFound = 0;
      break;
    }
  }

  if(noFactorFound==1) {
    printf("%d is prime.\n",n);
  }
  else {
    printf("%d is composite.\n",n);
  }
  return 0;
}

