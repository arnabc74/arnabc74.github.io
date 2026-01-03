#include <stdio.h>

int main() {
  int x;

  printf("x = ");
  scanf("%d",&x);
  printf("1/%d = %f, -1/%d = %f\n", x, 1.0/x, x, -1.0/x);
  return 0;
}
