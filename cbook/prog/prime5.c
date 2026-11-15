#include <stdio.h>

int main() {
  int n, k;

  printf("Please supply an integer (>=2): ");
  scanf("%d",&n); 


  for(k=2;k<n;k++) {
    if(n%k==0) {
      printf("%d is composite.\n",n);
      break;
    }
    else {
      printf("%d is prime.\n",n);
    }
  }

  return 0;
}

