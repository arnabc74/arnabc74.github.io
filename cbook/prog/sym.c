#include<stdio.h>

void main() {
  int x[50];
  int i, n, half, isSym;

  /*Input*/
  printf("Length of array (<=50): "); scanf("%d",&n);
  printf("Please supply %d integers: ",n);
  for(i=0;i<n;i++) scanf("%d",&x[i]);

  /*Check*/
  half = n/2;
  isSym = 1;
  for(i=0;i<half;i++) {
    if(x[i]!=x[n-1-i]) {
      isSym = 0;
      break;
    }
  }

  /*Output*/
  if(isSym==1) 
    printf("Symmetric.\n");
  else
    printf("Not symmetric.\n");
}
