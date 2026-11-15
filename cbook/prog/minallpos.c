#include<stdio.h>

int main() {
  int x[] = {34, 5, 65, 32, 54, 10, 5 , 45};
  int min, i;
  
  min = x[0];
  for(i=0;i<8;i++) 
    if(x[i] < min) min = x[i];

  printf("Minimum is %d.\n", min);
  /*Reporting indices*/
  printf("It occurs at index(s): ");
  for(i=0;i<8;i++)
    if(x[i]==min) printf("%d ",i);
}

