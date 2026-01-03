#include <stdio.h>

int main() {
  float principal, rate, r, interest, amount;
  int year, i;
  
  printf("Principal = ");
  scanf("%f",&principal); 
  printf("Interest rate (%%) = ");
  scanf("%f",&rate); 
  printf("Number of years = ");
  scanf("%d",&year); 

  r = rate/100.0;
  amount = principal;

  printf("\nInvestment report for\n");
  printf("principal = %.2f\nrate = %.2f%%\ntime = %d years\n\n",
         principal, rate, year);
  
  printf("Year\tInterest\tTotal\n");
  printf("-----------------------\n");
  for(i=1;i<=year;i++) {
    interest = amount*r;
    amount += interest;
    printf("%d\t%.2f\t%.2f\n",i,interest, amount);
  }
  return 0;
}
