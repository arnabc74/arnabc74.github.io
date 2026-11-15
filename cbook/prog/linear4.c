#include <stdio.h>
#include <math.h>

int x[]={23,45,13,23,56,78,98,34,23,45,89};
int n = 11;

int main() {
  int i, what, found;
  
  printf("Number to search: ");
  scanf("%d",&what); 

  found = 0;

  for(i=0;i<n;i++) {
    if(x[i]==what) {
      if(found==0) {                                       `\includegraphics{arrow.pdf}`
        found = 1;                                         `\includegraphics{arrow.pdf}`
        printf("The number occurs at position(s) %d ",i+1);`\includegraphics{arrow.pdf}`
      }                                                    `\includegraphics{arrow.pdf}`
      else {                                               `\includegraphics{arrow.pdf}`
        printf("%d ",i+1);                                 `\includegraphics{arrow.pdf}`
      }                                                    `\includegraphics{arrow.pdf}`
    }
  }

  if(found==0) printf("The number is absent.");
  
  return 0;
}
