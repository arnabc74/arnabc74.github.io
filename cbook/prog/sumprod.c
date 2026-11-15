#include <stdio.h>

int main() {
  int i, n, sum, prod, number;

  printf("This program finds sum and product of a list of numbers.\n");
  printf("How many numbers? ");
  scanf("%d",&n);
  printf("Supply %d numbers:\n",n);

  sum = 0; prod = 1;`\includegraphics{arrow.pdf}`
  for(i=0;i<n;i++) {
    scanf("%d",&number);
    sum += number; `\includegraphics{arrow.pdf}`
    prod *= number;`\includegraphics{arrow.pdf}`
  }
 
  printf("Sum of the numbers is %d.\n",sum);
  printf("Product of the numbers is %d.\n",prod);
  return 0;
}
