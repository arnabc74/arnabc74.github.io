#include <stdio.h>

int main() {
  int n, count, input;
  
  printf("Supply a positive integer: ");
  scanf("%d",&n);  

  input = n;
  
  count = 0;
  while(n>0) {
    count++;
    n /= 10;
  }
  printf("No. of digits in %d is %d.\n", input, count);
  return 0;
}
