#include <stdio.h>

int main() {
  int mark, sum, i;

  sum = 0;
  printf("Please supply the marks (-999 to end):\n");
  for(i=0;;i++) {`\includegraphics{arrow.pdf}`
    scanf("%d",&mark); 
    if(mark==-999) break;
    sum += mark;
  }
 
  printf("Average marks of the %d students is %.2f.\n",i,sum/(float)i); 
  return 0;
}
