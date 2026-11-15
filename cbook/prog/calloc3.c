#include <stdio.h>
#include <stdlib.h>

int main() {
  int **a, i;

  a = calloc(100,sizeof(int*));

  for(i=0;i<100;i++) 
    a[i] = calloc(200,sizeof(int));
  
  return 0;
}
