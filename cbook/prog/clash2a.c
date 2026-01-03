#include <stdio.h>

int count=0;

void processNumber() {
  int n, i, isPrime;
  printf("Supply number: "); scanf("%d",&n);
  if(n > 1) {
    count++;
  }
  else {
    printf("Please give a number > 1.\n");
    return;
  }

  
  /* Check for prime. */
  isPrime = 1;
  for(i=2;i<n;i++) {
    if(n % i==0) {
      isPrime = 0;
      break;
    }
  }
  if(isPrime)
    printf("%d is prime\n",n);
  else
    printf("%d is not prime\n",n);
}

int main() {
  while(count < 10)
    processNumber();

  return 0;
}
