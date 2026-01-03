#include <stdio.h>
#include <math.h>

int main() {
  int i, n, count, number;

  printf("This program counts the number of positive numbers\n");
  printf("in a list of numbers.\n");
  printf("How many numbers? ");
  scanf("%d",&n);
  printf("Supply %d numbers:\n",n);

  count = 0;
  for(i=0;i<n;i++) {
    scanf("%d",&number);
    if(number > 0) count++;
  }
 
  printf("Number of positive numbers is %d.\n",count);
  return 0;
}
