#include<stdio.h>

int main() {
  int x[] = {34, 5, 65, 32, 54, 65, 5 , 45};
  int max, maxIndex, i;
  
  max = x[0]; maxIndex = 0;
  for(i=0;i<8;i++) {
    if(x[i] >= max) {
      max = x[i];
      maxIndex = i;
    }
  }

  printf("Maximum is %d. ", max);
  printf("It last occurs at index %d.\n", maxIndex);
}

