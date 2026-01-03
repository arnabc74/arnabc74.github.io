#include<stdio.h>

int isPrime(int n) {
  int k;

  for(k=2;k<n;k++) {
    if(n%k==0) return 0;
  }
  return 1;
}

void main() {
  int n;

  printf("Please supply a positive integer: ");
  scanf("%d",&n);

  if(isPrime(n)) 
    printf("%d is prime.\n",n);
  else
    printf("%d is composite.\n",n);
}
