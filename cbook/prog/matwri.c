#include <stdio.h>

int main() {
  int i,j,a[2]-[2] = {{1,2},{3,4}};

  for(i=0;i<2;i++) 
    for(j=0;j<2;j++)
      printf("%d ",a[i]-[j]);
  return 0;
}
