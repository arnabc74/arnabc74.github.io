#include <stdio.h>

int main() {
  int i=34, j=20;
  printf("0: i = %d, j = %d\n",i,j);
  i++;
  {
    int i = 56;
    i += j;
    printf("1: i = %d, j = %d\n",i,j);
    j = i;
    {
      int j = i;
      i++;
      printf("2: i = %d, j = %d\n",i,j);
    }
  }
  printf("3: i = %d, j = %d\n",i,j);
    
  return 0;
}
