#include <stdio.h>

int main() {
  int age;
  printf("Please supply your age: ");
  scanf("%d",&age);

  if(age <= 0) {                                                   `\includegraphics{arrow.pdf}`
    printf("Error: you need to be born before running a program.");`\includegraphics{arrow.pdf}`
    return 1;                                                      `\includegraphics{arrow.pdf}`
  }                                                                `\includegraphics{arrow.pdf}`
  
  if(age >= 60) {
    printf("Yes, you are a senior citizen.\n");
  }
  else {
    printf("No, you are not a senior citizen.\n");
  }
  return 0;
}

