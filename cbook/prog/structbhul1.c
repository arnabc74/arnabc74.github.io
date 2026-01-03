#include <stdio.h>

struct Box {
  double length, breadth, height;
}

double volume(struct Box b) { 
  return b.length * b.breadth * b.height;
}

int main() {
  struct Box myBox;

  printf("Supply length, breadth and height: ");
  scanf("%lf%lf%lf",&myBox.length,&myBox.breadth,&myBox.height);

  printf("Volume is %lf.\n",volume(myBox));
  return 0;
}
