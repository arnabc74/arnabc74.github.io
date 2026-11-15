#include <stdio.h>

union Pair {
  int x, y;
};

int main() {
  union Pair a;

  a.x = 9;
  printf("a.y = %d\n",a.y);

  return 0;
}
