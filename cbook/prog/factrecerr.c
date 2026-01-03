#include <stdio.h>

int factorial(int n) {
  return n * factorial(n-1);
}

int main() {
  int n;
  printf("n = "); 
  scanf("%d",&n); 
  printf("%d! = %d\n",n,factorial(n));
  return 0;
}
