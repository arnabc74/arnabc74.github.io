#include <stdio.h>

struct Box {
  double length, breadth, height;
};

int main() {
  Box myBox;`\
  printf("Supply length, breadth and height: ");
  scanf("%lf%lf%lf",&myBox.length,&myBox.breadth,&myBox.height);

  return 0;
}
