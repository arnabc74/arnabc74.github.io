#include <stdio.h>
#include <stdlib.h>

int main() {
  int *a;

  a = calloc(500,sizeof(int));

  if(a==0) {
    fprintf(stderr,"Sorry, not enough space!\n");
    return 1;
  }
  
  /* Array-ta niye ja ja korte chao, seta ekhane karo.*/

  free(a);`\
  a = 0;  `\
  return 0;
}
