#include <stdio.h>

int main() {
  int pressure;

  printf("Your pressure = ");
  scanf("%d",&pressure);
  if(pressure < 130 || pressure > 90) {`\includegraphics{arrow.pdf}`
    printf("Your blood pressure is not normal.\n");
  }
  else {
    printf("Your blood pressure is normal.\n");
  }
  return 0;
}
