#include <stdio.h>

int main() {
  char x, y, *pc, **ppc;

  printf("x is at %ld, y is at %ld, pc is at %ld\n",&x, &y, &pc);

  x = 'a'; y = 'A';

  pc = &x;
  ppc = &pc;

  printf("x = %c, y = %c, pc = %ld, ppc = %ld\n", x, y, pc, ppc);

  **ppc = 'b';
  printf("x = %c, y = %c, pc = %ld, ppc = %ld\n", x, y, pc, ppc);

  *ppc = &y;
  *pc = 'c';
  printf("x = %c, y = %c, pc = %ld, ppc = %ld\n", x, y, pc, ppc);
  
  return 0;
}
