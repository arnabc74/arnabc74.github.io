#include <stdio.h>

int main() {
  int bribe, marks;

  printf("Amount of bribe = ");
  scanf("%d",&bribe); 
  printf("Marks = ");
  scanf("%d",&marks); 
  if(bribe >= 1e5) {
    if(marks>=10) {
      printf("You are admitted.\n");
    }
    else {
      printf("You are not admitted.\n");
    }
  }
  else {
    if(marks>=80) {
      printf("You are admitted.\n");
    }
    else {
      printf("You are not admitted.\n");
    }    
  }
    
  return 0;
}
