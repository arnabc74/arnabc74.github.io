#include <stdio.h>

int x = 10;

void f() {
  int x = 40;
  printf("Inside f before block: x = %d.\n",x); /* 40 */
  {
    double x=3;
    printf("Inside block: x = %lf.\n",x); /* 3 */
    x += 10;
  }
  x++;
  printf("Inside f after block: x = %d.\n",x); /* 41 */
}

int main() {
  f();
  printf("Inside main: x = %d.\n",x); /* 10 */

  return 0;
}
