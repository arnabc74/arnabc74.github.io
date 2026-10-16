#include<stdio.h>
#include<string.h>`\

void main() {
  char str[20];
  int n;

  str[0]='a'; str[1]='b'; str[2]='c'; str[3]='\0'; str[4]='d'; 
  
  n = strlen(str);`\
  printf("%d\n",n);
}
