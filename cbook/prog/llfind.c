#include <stdio.h>
#include<stdlib.h>
#include<string.h>

struct Card {
  char body[50];
  struct Card *pNext;
};

int find(struct Card *pHead, char *name) {
  struct Card *pNow;
  
  for(pNow=pHead;pNow!=0;pNow = pNow->pNext) {
    if(!strcmp(pNow->body,name)) return 1;
  }
  return 0;
}


int main() {
  int i;
  struct Card *pHead, *pNow, *pResult;
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

  printf("Name to find: ");
  scanf("%s",name);

  
  if(find(pHead,name)) 
    printf("Found\n");
  else
    printf("Not found.\n");
  
  return 0;
}

