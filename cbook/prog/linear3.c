#include <stdio.h>
#include <math.h>

int x[]={23,45,13,23,56,78,98,34,23,45,89};
int n = 11;

int main() {
  int i, what, found;
  
  printf("Number to search: ");
  scanf("%d",&what);
  

  found = 0;

  printf("The number occurs at position(s) ");
  
  for(i=0;i<n;i++) {
    if(x[i]==what) {
      found=1;
      printf("%d ",i+1);
    }
  }

  if(found==0) printf("The number is absent.");
  
  return 0;
}
