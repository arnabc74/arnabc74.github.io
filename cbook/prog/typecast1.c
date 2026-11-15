#include<stdio.h>

void main() {
  int x, y;

  printf("Supply two integers: ");
  scanf("%d%d",&x,&y);
  printf("%d/%d = %lf.\n",x,y,(double)x/y);
}
