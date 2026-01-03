#include <stdio.h>

int main() {
  char name[101];
  int age;
  FILE *f;
  
  f = fopen("name.txt", "w");
  
  printf("Your name [max len 100]: ");
  scanf("%100[^\n]", name); 
  printf("Your age: ");
  scanf("%d",&age); 

  
  fprintf(f,"Name: %s\nAge: %d\n", name, age);
  fclose(f);
  return 0;
}
