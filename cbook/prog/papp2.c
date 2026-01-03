#include <stdio.h>

void f(int *px) {`\includegraphics{arrow.pdf}`
  *px = 56;      `\includegraphics{arrow.pdf}`
}

int main() {
  int x;
  
  x = 67;
  printf("before: x = %d\n",x);
  f(&x);`\includegraphics{arrow.pdf}`
  printf("after: x = %d\n",x);

  return 0;
}
