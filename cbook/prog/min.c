#include <stdio.h>
#include <math.h>

int main() {
  int i, n, min, number;

  printf("This program find minimum of a list of numbers.\n");
  printf("How many numbers? ");
  scanf("%d",&n); 
  printf("Supply %d numbers:\n",n);

  for(i=0;i<n;i++) {
    scanf("%d",&number);
    if(i==0 || min > number)
      min = number;
  }
  
  printf("Minimum of the numbers is %d.\n",min);
  return 0;
}
