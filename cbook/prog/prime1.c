#include <stdio.h>

int main() {
  int n, k, factorFound;

  printf("Please supply an integer (>=2): ");
  scanf("%d",&n); 

  factorFound = 0;
  for(k=2;k<n;k++) {
    if(n%k==0) {
      factorFound = 1;
      break;`\includegraphics{arrow.pdf}`
    }
  }

  if(factorFound==1) {
    printf("%d is composite.\n",n);
  }
  else {
    printf("%d is prime.\n",n);
  }
  return 0;
}

