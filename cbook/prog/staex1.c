#include <stdio.h>

int f() {
  static int x = 30;
  int y = 40;
  x++;y++;
  printf("x = %d, y = %d.\n",x,y);
}
  

int main() {
  f(); f(); f();
  return 0;
}
