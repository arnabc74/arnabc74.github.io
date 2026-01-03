#include <stdio.h>

void f(int x) {
  x = 56;
}

int main() {
  int x;
  
  x = 67;
  printf("before: x = %d\n",x);
  f(x);
  printf("after: x = %d\n",x);

  return 0;
}
