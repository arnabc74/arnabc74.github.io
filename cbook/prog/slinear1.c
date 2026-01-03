#include <stdio.h>

int x[]={13, 23, 23, 23, 34, 45, 45, 56, 78, 89, 98 };
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
    else if(x[i]>what) {`\includegraphics{arrow.pdf}`
      found = 0;        `\includegraphics{arrow.pdf}`
      break;            `\includegraphics{arrow.pdf}`
    }                   `\includegraphics{arrow.pdf}`
  }

  if(found==0)
    printf("The number is absent.\n");
  else
    printf("The number is present.\n");

  return 0;
}
