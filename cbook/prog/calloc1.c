#include <stdio.h>
#include <stdlib.h>`\

int main() {
  int n, *a;

  printf("Length of array: ");
  scanf("%d",&n);  

  a = calloc(n,sizeof(int));                     `\
                                                 `\
  if(a==0) {                                     `\
    fprintf(stderr,"Sorry, not enough space!\n");`\
    return 1;                                    `\
  }                                              `\
  
  printf("OK, int array of length %d created.\n", n);
  return 0;
}
