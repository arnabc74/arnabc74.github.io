#include<stdio.h>
#include<math.h>

int main() {
  int i, n;
  double x, sum, prod, sumRecip;

  printf("This program computes AM, GM and HM ");
  printf("of a given set of numbers.\n\n");
  printf("How many numbers? ");
  scanf("%d", &n);
  printf("Please supply the %d numbers: ", n);
  sum = 0;
  prod = 1;
  sumRecip = 0;
  for(i=0;i<n;i++) {
    scanf("%lf", &x);
    sum +=x;
    prod *= x;
    sumRecip += 1/x;
  }
  printf("AM = %lf, GM = %lf, HM = %lf\n",
         sum/n, pow(prod,1.0/n), sumRecip/n);
  return 0;
}   
