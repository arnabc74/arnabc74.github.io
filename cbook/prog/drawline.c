#include <stdio.h>

void drawLine(int n) {
  int i;
  
  for(i=0;i<n;i++) printf("-");
}

int main() {
  drawLine(10);
  return 0;
}
