#include <stdio.h>
#include <string.h>


int main() {
  char pass[201];
  
  printf("Password (max len 200): ");
  scanf("%200[^\n]",pass);
  getchar();
  if(strlen(pass) < 8) {
    printf("Sorry, the password must have at least ");
    printf("8 characters in it.\n");
  }
  
  return 0;
}
