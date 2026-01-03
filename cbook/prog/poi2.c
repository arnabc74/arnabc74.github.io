#include<stdio.h>

int main() {
  int *px;
  int x = 45;

  px = &x;	

  printf("x = %d\n",*px);
  
  *px = 321;`\includegraphics{arrow.pdf}`
  printf("x = %d\n",*px);

  return 0;
}
