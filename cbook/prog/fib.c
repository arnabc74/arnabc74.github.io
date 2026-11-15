#include <stdio.h>

long fib(int n) {
  switch(n) {
  case 1:
    return 0;
  case 2:
    return 1;
  default:
    return fib(n-1)+fib(n-2);
  }
}

int main() {
  int n;
  
  printf("n = ");
  scanf("%d",&n);
  if(n<=0) {
    printf("Need a positive integer.\n");
    return 1;
  }
  printf("The %d-th Fibonacci term is %ld.\n", n, fib(n));
  return 0;
}
