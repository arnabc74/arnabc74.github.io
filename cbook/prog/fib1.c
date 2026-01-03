#include <stdio.h>

void f(int n) {
  printf("%d ",n);
  if(n>0) f(n-1);
}

int main() {
  f(5);
  return 0;
}
