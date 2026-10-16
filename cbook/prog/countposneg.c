#include <stdio.h>
#include <math.h>

int main() {
  int i, n, posCount, negCount, number;

  printf("This program counds the numbers of positive and negative numbers\n");
  printf("in a list of numbers.\n");
  printf("How many numbers? ");
  scanf("%d",&n); 
  printf("Supply %d numbers:\n",n);

  posCount = negCount = 0;
  for(i=0;i<n;i++) {
    scanf("%d",&number);
    if(number > 0)
      posCount++;
    else if(number < 0)
      negCount++;
  }
  
  printf("Number of positive numbers is %d.\n",posCount);
  printf("Number of negative numbers is %d.\n",negCount);
  return 0;
}
