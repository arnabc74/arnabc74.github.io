#include <stdio.h>

int main() {
  int health = 100, action;
  while(health > 0) {
    printf("What do you want to do? [1=Fight, 2=Eat] :");
    scanf("%d",&action); 
    if(action==1) {
      printf("\tThe hero puts up a great fight!\n");
      health -= 50;
    }
    else if(action==2) {
      printf("\tThe hero hungrily eats the food.\n");
      health += 10;
    }
    else {
      printf("What is that?\n\n");
    }
    printf("\t\tCurrent health = %d\n\n\n", health);
  }
  printf("\tAhhh...the hero drops dead.\n\t\tThe game is over.\n");

  return 0;
}
