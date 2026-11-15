#include <stdio.h>
#include <stdlib.h>

struct Card {
  char *body;
  struct Card *next;
};

int main() {
  struct Card *p;
  
  p = calloc(1,sizeof(struct Card));
  printf("Please supply a string: ");
  scanf("%s",p->body);
  printf("%s\n",p->body);
  
  return 0;
}
