#include <stdio.h>

int main() {
  int i, count, sum;
  int x[]={34,2,45,7,8,32};
  
  count = 0; sum = 0;
  for(i=0;i<6;i++) {
    if(x[i]%2==0) {
      count++;
      sum += x[i];
    }
    if(count>0)
      printf("Average of the even entries = %lf\n",
             sum/(double)count);
    else
      printf("No even entry found!\n");

    return 0;
  }
}
