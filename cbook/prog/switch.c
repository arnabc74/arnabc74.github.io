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
    printf("B1\n");
    printf("B2\n");
    break;
  case 3:
    printf("C\n");
  case 30:
    printf("D\n");
    break;
  case -1:
  case 2:
    printf("E\n");
    break;
  default:
    printf("F\n");
  }
  return 0;
}
