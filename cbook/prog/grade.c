#include <stdio.h>

int main() {
  int marks;
  
  printf("Marks: ");
  scanf("%d", &marks);
  if(0<=marks && marks<50) {
    printf("Grade = F\n");
  }
  else if(marks<60) {
    printf("Grade = D\n");
  }
  else if(marks<70) {
    printf("Grade = C\n");
  }
  else if(marks<80) {
    printf("Grade = B\n");
  }
  else if(marks<90) {
    printf("Grade = A\n");
  }
  else if(marks<=100) {
    printf("Grade = A+\n");
  }
  else {
    printf("Invalide marks\n");
  }
  return 0;
}
