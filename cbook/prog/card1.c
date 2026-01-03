#include<stdio.h>
#include<stdlib.h>

struct Card {
  char body[50];
  struct Card *pNext;
};

int main() {
  struct Card *pa, *pb, *pc, *pd, *pe;
  struct Card *pHead;
  struct Card *px;
  
  pa = calloc(1,sizeof(struct Card));
  sprintf(pa->body, "Arunima");

  pb = calloc(1,sizeof(struct Card));
  pc = calloc(1,sizeof(struct Card));
  pd = calloc(1,sizeof(struct Card));
  pe = calloc(1,sizeof(struct Card));

  sprintf(pb->body, "Bratati");
  sprintf(pc->body, "Chandreyi");
  sprintf(pd->body, "Debika");
  sprintf(pe->body, "Enakshi");

  pHead = pd;
  pd->pNext = pa; 
  pa->pNext = pc;
  pc->pNext = pe;
  pe->pNext = pb;
  pb->pNext = 0;

  for(px=pHead;px;px=px->pNext)
    printf("%s ", px->body);

  return 0;
}
