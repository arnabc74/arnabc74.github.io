#include <stdio.h>

int main() {
  int x;

  printf("x = ");
  scanf("%d",&x); 
  switch(x) {
  case 5:
    printf("A\n");
    break;
  case 0:
    printf("B1\n");`\includegraphics{arrow.pdf}`
    printf("B2\n");`\includegraphics{arrow.pdf}`
    break;         `\includegraphics{arrow.pdf}`
  case 3:
    printf("C\n");
  case -1:
  case 2:
    printf("E\n");
    break;
  default:
    printf("F\n");
  }
  return 0;
}
