#include <stdio.h>

int main() {
  int i, n;
  double number, sum, sumSq, mean, var;

  printf("This program finds the variance ");
  printf("of a list of numbers.\n");
  printf("How many numbers? ");
  scanf("%d",&n);
  printf("Supply %d numbers:\n",n);

  sum = sumSq = 0;
  for(i=0;i<n;i++) {
    scanf("%lf",&number);
    sum += number;
    sumSq += number*number;
  }

  mean = sum/n;
  var = sumSq/n - mean*mean;
  
  printf("Sum = %lf, sum of squares = %lf, variance = %lf.\n",
         sum, sumSq, var);
  
  return 0;
}
