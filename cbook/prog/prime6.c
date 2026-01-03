#include<stdio.h>

void main() {
  int n,k;

  printf("Please supply a number: ");
  scanf("%d",&n);

  for(k=2;k<n;k++) {
    if(n%k==0) {
      break;
    }
  }

  if(k<n) {
    printf("%d is composite.\n",n);
  }
  else {
    printf("%d is prime.\n",n);
  }
}
