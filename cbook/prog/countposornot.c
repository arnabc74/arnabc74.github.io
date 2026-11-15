#include <stdio.h>

int main() {
  int i, n, posCount, number;

  printf("This program counts the numbers of positive and ");
  printf("nonpositive numbers in a list of numbers.\n");
  printf("How many numbers? ");
  scanf("%d",&n);
  printf("Supply %d numbers:\n",n);

  posCount = 0;
  for(i=0;i<n;i++) {
    scanf("%d",&number);
    if(number > 0) posCount++;
  }

  printf("Number of positive numbers is %d.\n",posCount);
  printf("Number of nonpositive numbers is %d.\n",n-posCount);
  return 0;
}
