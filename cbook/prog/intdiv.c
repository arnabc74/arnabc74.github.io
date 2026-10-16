#include <stdio.h>

int main() {
  int x,y;

  printf("Supply two integers: ");
  scanf("%d%d",&x,&y);
  printf("%d/%d = %d.\n",x,y,x/y);
  return 0;
}

