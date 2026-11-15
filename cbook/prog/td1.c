#include <stdio.h>

typedef double number;`\includegraphics{arrow.pdf}`

number oneBy(number x) {
  return 1/x;
}

int main() {
  number a;
  
  printf("a = "); scanf("%lf",&a);

  printf("1/a = %lf.\n",oneBy(a));

  return 0;
}
