#include <stdio.h>

int main() {
  int i, a[]={4,5,6,2,-1,0, 9};

  fprintf(stderr,"Supply index: ");
  scanf("%d", &i);
  if(0 <=i && i < 7)
    printf("a[%d] = %d.\n",i,a[i]);
  else {
    fprintf(stderr,"Index out of range!\n");
    return 1;
  }
  return 0;
}
