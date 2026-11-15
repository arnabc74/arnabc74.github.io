#include <stdio.h>

int count=0;

void processNumber() {
  int n, i;
  int count;`\includegraphics{arrow.pdf}`
  printf("Supply number: "); scanf("%d",&n);
  if(n > 1) {
    count++;
  }
  else {
    printf("Please give a number > 1.\n");
    return;
  }

  /* Count number of factors. */         `\includegraphics{arrow.pdf}`
  count = 0;                             `\includegraphics{arrow.pdf}`
  for(i = 1; i<=n; i++) {                `\includegraphics{arrow.pdf}`
    if(n % i == 0) count++;              `\includegraphics{arrow.pdf}`
  }                                      `\includegraphics{arrow.pdf}`
  printf("%d has %d factors\n",n, count);`\includegraphics{arrow.pdf}`
}

int main() {
  while(count < 10)
    processNumber();

  return 0;
}
