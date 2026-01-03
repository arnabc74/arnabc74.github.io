#include <stdio.h>

int main() {
  int i, n, number, count2, count3, count6, count10;

  printf("This program finds the numbers of multiples ");
  printf("of 2, 3, 6 and 10 in a list of numbers.\n");
  printf("How many numbers? ");
  scanf("%d",&n);
  printf("Supply %d numbers:\n",n);
  
  count2 = count3 = count6 = count10 = 0;
  for(i=0;i<n;i++) {
    scanf("%d",&number);
    if(number%2==0) {
      count2++;
      if(number%3==0) {
        count3++; count6++;
      }
      if(number%10==0) {
        count10++;
      }
    }
    else if(number%3==0) {
      count3++;
    }
  }

  printf("Number of multiples of 2 is %d.\n",count2);
  printf("Number of multiples of 3 is %d.\n",count3);
  printf("Number of multiples of 6 is %d.\n",count6);
  printf("Number of multiples of 10 is %d.\n",count10);
  
  return 0;
}
