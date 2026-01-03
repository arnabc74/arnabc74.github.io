#include <stdio.h>

void twiceInPlace(int *in, int len) {
  int i;

  for(i=0;i<len;i++)
    in[i] *= 2;
}

int main() {
  int i, arr[]={85,79,62,64,37,66,2,90};

  printf("Before: ");
  for(i=0;i<8;i++) printf("%d ",arr[i]);
  printf("\n");

  twiceInPlace(arr, 8);

  printf(" After: ");
  for(i=0;i<8;i++) printf("%d ",arr[i]);
  printf("\n");
  
  return 0;
}
