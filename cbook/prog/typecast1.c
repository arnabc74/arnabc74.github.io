#include<stdio.h>

void main() {
  int x;
  int y;
  printf("Supply two integers: ");
  scanf("%d%d",&x,&y);
  printf("%d/%d = %f.\n",x,y,(double)x/y);
}
