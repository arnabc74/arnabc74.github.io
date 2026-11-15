#include <stdio.h>

int main() {
  fun(3,4);
  return 0;
}

void fun(int p, int q) {
  printf("answer = %d", p+q);
}
