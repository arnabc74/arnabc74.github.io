#include <stdio.h>

int main() {
  float a, b, answer;
  char expr[101], op;
  int foundError = 0;
  
  printf("Please supply an expression like ");
  printf("\"number op number\",\n");
  printf("where op is + or - or * or /.\n");
  scanf("%100[^\n]",expr); 
  sscanf(expr,"%f%c%f",&a,&op,&b);
  switch(op) {
  case '+':
    answer = a+b;
    break;
  case '-':
    answer = a-b;
    break;
  case '*':
    answer = a*b;
    break;
  case '/':
    if(b==0) {
      printf("Cannot divide by zero.\n");
      foundError = 1;
    }
    answer = a/b;
    break;
  }

  if(!foundError) printf("Answer = %f\n",answer);
  
  return 0;
}
