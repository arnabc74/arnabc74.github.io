#include <stdio.h>
#include <stdlib.h>

int *twice(int *in, int len) {
  int *out, i;
  
  out = calloc(len,sizeof(int));
  for(i=0;i<len;i++)
    out[i] = 2*in[i];
  
  return out;
}

int main() {
  int i, arr[]={85,79,62,64,37,66,2,90};
  int *ans;
  
  printf("Before: ");
  for(i=0;i<8;i++) printf("%d ",arr[i]);
  printf("\n");

  ans = twice(arr, 8);

  printf(" After: ");
  for(i=0;i<8;i++) printf("%d ",ans[i]);
  printf("\n");
  
  return 0;
}
