#include<stdio.h>

int main() {
	
  int *px;
  char *pc;
  double *pf;

  int x;
  double y;
  char axar;

  px = &x;	
  x = 56;
  axar = 'a';
  pc = &axar;

  pf = &y; y = 89.5;

  printf("x = %d, y = %lf, axar = '%c'\n",*px,*pf,*pc);

  axar = 'b';

  printf("x = %d, y = %lf, axar = '%c'\n",*px,*pf,*pc);

  return 0;
}
