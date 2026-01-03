#include <stdio.h>

int main() {
  int i, n, prod, number;

  printf("This program finds the product ");
  printf("of a list of numbers.\n");
  printf("How many numbers? ");
  scanf("%d",&n);
  
  printf("Supply %d numbers:\n",n);
  prod = 1;
  for(i=0;i<n;i++) {
    scanf("%d",&number);
    prod *= number;
  }

  printf("Product of the numbers is %d.\n",prod);
  return 0;
}
