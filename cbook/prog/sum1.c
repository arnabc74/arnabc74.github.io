#include <stdio.h>

int main() {
  int i, n, sum, number;

  printf("This program sums a list of numbers.\n");
  printf("How many numbers? ");
  scanf("%d",&n);
  printf("Supply %d numbers:\n",n);

  for(i=0;i<n;i++) {
    scanf("%d",&number);
    if(i==0)
      sum = number;
    else
      sum += number;
  }
 
  printf("Sum of the numbers is %d.\n",sum);
  return 0;
}
