#include <stdio.h>

int main() {
  int i, n, sum, number;

  printf("This program sums a list of numbers.\n");
  printf("How many numbers? ");
  scanf("%d",&n);
  printf("Supply %d numbers:\n",n);
  sum = 0;`\includegraphics{arrow.pdf}`
  for(i=0;i<n;i++) {
    scanf("%d",&number);
    sum += number;
  }
 
  printf("Sum of the numbers is %d.\n",sum);
  return 0;
}
