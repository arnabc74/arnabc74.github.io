#include <stdio.h>
#include <stdlib.h>

struct Card {
  int body;
  struct Card *next;
};

int main() {
  struct Card *head, *tail;
  int i;
  
  head = calloc(1,sizeof(struct Card));
  head->body = 0;
  head = head->next;
  for(i=1;i<10;i++) {
    tail = calloc(1,sizeof(struct Card));
    tail->body = i;
    head->next = tail;
    head = head->next;    
  }
  return 0;
}
