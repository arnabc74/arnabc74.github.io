#include <stdio.h>

int main() {
  int x, sum;

  sum = 0;
  while(sum < 10); {
    printf("Supply a number: ");  
    scanf("%d",&x);
    sum += x;
  } 

  printf("The final sum = %d\n",sum);
  return 0;
}
