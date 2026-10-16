#include <stdio.h>

int main() {
  int *a;
  float b=45.6;

  a = &b;`\

  printf("%d\n",*a);
  return 0;
}
