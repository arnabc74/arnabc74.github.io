#include<stdio.h>

int main() {
  float food, room, total;
  int showGST;
  printf("Food bill = ");
  scanf("%f",&food);
  printf("Room bill = ");
  scanf("%f",&room);
  printf("Add GST? [no=0, yes=1] ");
  scanf("%d",&showGST);

  if(showGST==0) {`\includegraphics{arrow.pdf}`
    total = food + room;
  }
  else {
    total *= 1.15;
  }
  printf("You need to pay %f",total);

  return 0;
}
