#include <stdio.h>

void f(int n) {
  static int depth = 0;
  depth++;
  if(n>1)
    f(n-1);
  else
    printf("depth = %d\n",depth);
}
  

int main() {
  f(6);
  return 0;
}
