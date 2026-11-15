#include <stdio.h>

int main() {
  int x, sum;

  sum = 0;
  do {
    printf("Supply a number: ");  
    scanf("%d",&x);
    sum += x;
  } while(sum < 10)

  printf("The final sum = %d\n",sum);
  return 0;
}
