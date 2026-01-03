#include <stdio.h>

int main() {
  int i, n, max, number;

  printf("This program finds the maximum ");
  printf("in a list of numbers.\n");
  printf("How many numbers? ");
  scanf("%d",&n);
  printf("Supply %d numbers:\n",n);

  for(i=0;i<n;i++) {
    scanf("%d",&number);
    if(i==0 || max < number)
      max = number;
  }

  printf("Maximum of the numbers is %d.\n",max);
  
  return 0;
}
