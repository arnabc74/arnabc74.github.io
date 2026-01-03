#include <stdio.h>

int main() {
  int x, y;

  printf("x = "); scanf("%d",&x);
  printf("y = "); scanf("%d",&y);

  {
    int tmp;`\includegraphics{arrow.pdf}`
    tmp = x;
    x = y;
    y = tmp;
  }
  
  printf("After swap: x = %d, y = %d.\n",x,y);
  return 0;
}
