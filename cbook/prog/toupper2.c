#include <stdio.h>

char toupper2(char c) {
  if('a' <= c && c <= 'z') return c-'a'+'A';
  return c;
}

int main() {
  char ki;
  
  printf("Supply character: ");
  ki = getchar();

  printf("After toupper2 %c becomes %c.\n",ki, toupper2(ki));
  return 0;
}


