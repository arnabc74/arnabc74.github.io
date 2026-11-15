#include <stdio.h>
#include<stdlib.h>
#include<string.h>

struct Card {
  char body[50];
  struct Card *pNext;
};

void dump(struct Card *pHead) {
  struct Card *pNow;

  for(pNow=pHead;pNow!=0;pNow = pNow->pNext)
    printf("[%s]\n",pNow->body);
}

void delete(struct Card **ppToDelete) {
  struct Card *pNextInLine;
  
  pNextInLine = (*ppToDelete)->pNext;
  free(*ppToDelete);
  *ppToDelete =  pNextInLine;
}

struct Card **findToDelete(struct Card **ppStart, char *name) {
  struct Card **ppCardNow;
  for(ppCardNow=ppStart;
      (*ppCardNow)!=0;
      ppCardNow = &((*ppCardNow)->pNext)) {
    if(!strcmp((*ppCardNow)->body,name)) break;
  }
  return ppCardNow;
}

int removeByName(struct Card **ppHead, char *name) {
  struct Card **ppToDelete;
  
  ppToDelete = findToDelete(ppHead,name);
  if(ppToDelete) {
    delete(ppToDelete);
    return 1;
  }
  return 0;
}

int main() {
  int i;
  struct Card *pHead, *pNow;
  char name[50];
  
  pHead = 0;
  for(i=0;;i++) {
    printf("Name: [q to end]: ");
    scanf("%s",name);
    if(strcmp(name,"q")==0) break;
    if(i==0) {
      pHead = pNow = calloc(1,sizeof(struct Card));
    }
    else {
      pNow->pNext = calloc(1,sizeof(struct Card));
      pNow = pNow->pNext;
    }
    sprintf(pNow->body,"%s",name);
    pNow->pNext = 0;
  }

  printf("Original list:\n");
  dump(pHead);
  
  printf("Name to find: ");
  scanf("%s",name);

  if(removeByName(&pHead,name)) {
    printf("Deleting\n");
    printf("After deleting:\n");
    dump(pHead);
  }
  else {
    fprintf(stderr,"Nobody found before that name.\n");
  }
  
  return 0;
}

