#include<stdio.h>

void main() {
  int x[50];
  int i, n, half, isSkewSym;

  /*Input*/
  printf("Length of array (<=50): "); scanf("%d",&n);
  printf("Please supply %d integers: ",n);
  for(i=0;i<n;i++) scanf("%d",&x[i]);

  /*Check*/
  half = (n%2==0? n/2: n/2+1);
  isSkewSym = 1;
  for(i=0;i<half;i++) {
    if(x[i]+x[n-1-i]!=0) {
      isSkewSym = 0;
      break;
    }
  }

  /*Output*/
  if(isSkewSym==1) 
    printf("Skew symmetric.\n");
  else
    printf("Not skew symmetric.\n");
}
