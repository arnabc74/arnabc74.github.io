#include <stdio.h>

int count=0;

void processNumber() {
  int n, i;
  int count;`\
  printf("Supply number: "); scanf("%d",&n);
  if(n > 1) {
    count++;
  }
  else {
    printf("Please give a number > 1.\n");
    return;
  }

  /* Count number of factors. */         `\
  count = 0;                             `\
  for(i = 1; i<=n; i++) {                `\
    if(n % i == 0) count++;              `\
  }                                      `\
  printf("%d has %d factors\n",n, count);`\
}

int main() {
  while(count < 10)
    processNumber();

  return 0;
}
