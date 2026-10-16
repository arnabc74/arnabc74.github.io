#include <stdio.h>
extern int checkPass(int pass);`\
int main() {
  int password;
  
  printf("Password: ");
  scanf("%d",&password);
  if(checkPass(password))
    printf("Correct!\n");
  else
    printf("Incorrect.\n");

  return 0;
}
