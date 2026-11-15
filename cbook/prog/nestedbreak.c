#include <stdio.h>

int main() {
  float marks, sum; int i,j;
  
  for(i=1;i<=3;i++) {
    printf("Marks for class %d [-1 to end class]:\n",i);
    sum = 0;
    for(j=0;;j++) {
      scanf("%f",&marks); 
      if(marks==-1) break;
      sum += marks;
    }
    if(j>0) printf("average marks = %.2f\n",sum/j);
  }
  printf("Goodbye!\n");
  return 0;
}
