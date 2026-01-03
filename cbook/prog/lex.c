#include<stdio.h>
#include<string.h>
void main() {
  char a[100], b[100];
  int result;

  printf("Please give two words: ");
  scanf("%s%s",a,b);

  result = strcmp(a,b);
  if(result < 0) {
    printf("%s comes before %s.\n",a,b);
  }
  else if(result > 0) {
    printf("%s comes before %s.\n",b,a);
  }
  else {
    printf("Both the words are the same!\n");
  }
}
