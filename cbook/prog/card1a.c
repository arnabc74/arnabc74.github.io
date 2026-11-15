#include<stdio.h>
#include<stdlib.h>

struct Card {
  char body[50];
  struct Card *pNext;
};

int main() {
  struct Card *pHead, *pTail;
  
  pTail = pHead = calloc(1,sizeof(struct Card));
  sprintf(pTail->body, "Debika");

  pTail->pNext = calloc(1,sizeof(struct Card));
  sprintf(pTail->body, "Arunima");
  pTail = pTail->pNext;

  pTail->pNext = calloc(1,sizeof(struct Card));
  sprintf(pTail->body, "Chandreyi");
  pTail = pTail->pNext;

  pTail->pNext = calloc(1,sizeof(struct Card));
  sprintf(pTail->body, "Enakshi");
  pTail = pTail->pNext;

  pTail->pNext = calloc(1,sizeof(struct Card));
  sprintf(pTail->body, "Bratati");
  pTail = pTail->pNext;

  pTail->pNext = 0;

  return 0;
}
