#include <stdio.h>

int main() {
  FILE* f;
  int count, howMany; double sum, number;

  f = fopen("input.txt","r");

  count = 0; sum = 0;
  while(1) {
    howMany = fscanf(f,"%lf",&number);
    if(howMany!=1) break;
    sum += number;
    count++;
  }

  if(count==0) {
    fprintf(stderr,"Sorry, no number in the file!\n");
    return 1;
  }

  printf("The average of all numbers in the file is %lf.\n",
         sum/count);
  
  return 0;
}

