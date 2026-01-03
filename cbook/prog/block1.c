#include <stdio.h>

int main() {
  int x, y, tmp;

  printf("x = "); scanf("%d",&x);
  printf("y = "); scanf("%d",&y);

  {         `\includegraphics{arrow.pdf}`
    tmp = x;`\includegraphics{arrow.pdf}`
    x = y;  `\includegraphics{arrow.pdf}`
    y = tmp;`\includegraphics{arrow.pdf}`
  }         `\includegraphics{arrow.pdf}`
  
  printf("After swap: x = %d, y = %d.\n",x,y);
  return 0;
}
