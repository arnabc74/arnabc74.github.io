#include <stdio.h>

int main() {
  int pressure;

  printf("Your pressure = ");
  scanf("%d",&pressure);
  if(pressure > 130) {
    printf("Your blood pressure is high.\n");
  }
  else if(pressure >= 70) {
    printf("Your blood pressure is normal.\n");
  }
  else {
    printf("Your blood pressure is low.\n");
  }
    
  return 0;
}
