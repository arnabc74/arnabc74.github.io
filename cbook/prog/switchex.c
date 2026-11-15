#include <stdio.h>

int main() {
  int dirn;

  printf("Direction = ");
  scanf("%d",&dirn); 
  switch(dirn) {
  case 1:
    printf("North\n");
    break;
  case 2:
    printf("South\n");
    break;
  case 3:
    printf("East\n");
    break;
  case 4:
    printf("West\n");
    break;
  default:
    printf("Unknown direction.\n");
    break;
  }
  return 0;
}
