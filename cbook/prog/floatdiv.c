#include<stdio.h>

void main() {
  int x;
  float y;
  printf("Supply an integer and a floating point number: ");
  scanf("%d%f",&x,&y);
  printf("%d/%f = %f.\n",x,y,x/y);
}
