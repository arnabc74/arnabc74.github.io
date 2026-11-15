#include <stdio.h>

int main() {
  int x, y;

  y = 10;
  printf("Please supply two integers: ");
  scanf("%d%d",&x,&y); 
  printf("Total is %d.\n",x+y);

  return 0;
}
