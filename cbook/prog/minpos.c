#include<stdio.h>

int main() {
  int x[] = {34, 5, 65, 32, 54, 10, 5 , 45};
  int min, minIndex, i;
  
  min = x[0]; minIndex = 0;
  for(i=0;i<8;i++) {
    if(x[i] < min) {
      min = x[i];
      minIndex = i;
    }
  }

  printf("Minimum is %d. ", min);
  printf("It first occurs at index %d.\n", minIndex);
}

