#include <stdio.h>

int main() {
  int n, i, sum;

  printf("Please supply a positive integer: ");
  scanf("%d",&n);

  sum = 0;
  for(i=1;i<n;i++) {
    if(n%i==0) {
      sum += i;
    }
  }

  if(n==sum)
    printf("%d is a perfect number.\n",n);
  else
    printf("%d is not a perfect number.\n",n);

  return 0;
}

