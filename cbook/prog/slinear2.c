#include <stdio.h>

int x[]={98,89,78,56,45,45,34,23,23,23,13};
int n = 11;

int main() {
  int i, what, found;
  
  printf("Number to search: ");
  scanf("%d",&what);

  found = 0;
  
  for(i=0;i<n;i++) {
    if(x[i]==what) {
      found=1;
      break;
    }
    else if(x[i]<what) {
      found = 0;
      break;
    }
  }

  if(found==0)
    printf("The number is absent.\n");
  else
    printf("The number is present.\n");

  return 0;
}
