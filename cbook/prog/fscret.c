#include <stdio.h>

int main() {
  int sum, x;
  FILE *f = fopen("data.txt","r");
  if(f==0) {
    fprintf(stderr,"Could not open file data.txt.\n");
    return 1;
  }

  sum = 0;
  while(fscanf(f,"%d",&x)!=0) {
    sum += x;
  }
  printf("Sum = %d.\n",sum);
  
  return 0;
}
