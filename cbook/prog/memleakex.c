#include <stdio.h>
#include <stdlib.h>
#include <string.h>

double sum(double *values, int n) {
  int i;
  double total = 0;
  for(i=0;i<n;i++) total += values[i];
  return total;
}

int main() {
  int i, len;
  double *x;
  char fname[100];
  FILE *f;

  printf("This program computes total electricity bill ");
  printf("for different localities:\n");
  while(1) {
    printf("File name for locality [\"quit\" to end]: ");
    scanf("%s", fname);
    if(strcmp(fname,"quit")==0) break;
    f = fopen(fname,"r");
    if(f==0) {
      fprintf(stderr,"Could not open file [%s]", fname);
      return 1;
    }
    fscanf(f,"%d",&len);
    printf("Number of households under %s is %d\n",fname, len);
    x = calloc(len,sizeof(int));
    for(i=0;i<len;i++)
      fscanf(f,"%lf",&x[i]);
    printf("Total bill for %s is %lf.\n",fname,sum(x,len));
  }
  free(x);

  return 0;
}
