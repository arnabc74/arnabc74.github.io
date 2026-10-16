#include <stdio.h>

int main() {
  int age;
  printf("Please supply your age: ");
  scanf("%d",&age);
  if(age >= 60) {                                 `\
    printf("Yes, you are a senior citizen.\n");   `\
  }                                               `\
  else {                                          `\
    printf("No, you are not a senior citizen.\n");`\
  }                                               `\
  return 0;
}

