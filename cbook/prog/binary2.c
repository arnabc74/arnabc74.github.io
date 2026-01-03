#include <stdio.h>

int x[] = {98, 93, 89, 86, 71, 65, 56, 48, 20, 12};`\includegraphics{arrow.pdf}`
int n = 10;
int main() {
  int left, right, mid, found, what;

  printf("Number to search: ");
  scanf("%d",&what);
  left = 0;
  right = n-1;
  found = 0;
  while(left<=right) {
    /*printf("\tleft = %d, right = %d\n",left, right);*/
    mid = (left+right)/2;
    if(x[mid]==what) {
      found = 1;
      break;
    }
    else if(x[mid] < what) {`\includegraphics{arrow.pdf}`
      right = mid-1;
    }
    else {
      left = mid+1;
    }
  }
  if(found==1)
    printf("The number is present.\n");
  else
    printf("The number is absent.\n");

     
  return 0;
}
