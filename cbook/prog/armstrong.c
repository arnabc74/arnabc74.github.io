#include <stdio.h>

int main() {
  int n, i, j, digit, count, input, sum, power;
  
  printf("Supply a positive integer: ");
  scanf("%d",&n);

  input = n;

  /*Find number of digits.*/
  count = 0;
  while(n>0) {
    count++;
    n /= 10;
  }

  /*Check Armstrong.*/
  n = input;
  sum = 0;
  for(i=0;i<count;i++) {
    digit = n % 10;
    power = 1;
    for(j=0;j<count;j++) power *= digit;
    
    sum += power;
    n /= 10;
  }
  if(sum==input)
    printf("%d is an Armstrong number.\n", input);
  else
    printf("%d is not an Armstrong number.\n", input);
  
  return 0;
}
