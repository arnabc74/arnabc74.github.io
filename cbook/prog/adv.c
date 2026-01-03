#include <stdio.h>
#include <stdlib.h>

struct Place {
  char name[30], descrip[300];
  int visited;
  int point;
};

struct Place loc[6] = {
    {"House",
     "You are standing before your house.",0,0},
    {"Tower",
     "A tall tower is right before you.",0,0},
    {"Marsh",
     "A deadly marsh is all around you.",0,0},
    {"Treasure",
     "A chest full of jewels is lying open here!",
     0,10},
    {"Flag","You see a flag fluttering in the wind.",
     0,5},
    {"Forest","You are in a dense forest.",0,0}
};

int map[6][4] = { {-1,-1,4,5}, {-1,4,4,3}, {-1,-1,-1,-1},
                  {1,-1,4,5}, {1,0,1,-1}, {2,0,3,-1} };
int now, point;

void update() {
  printf("\n--- %s --------\n\n",loc[now].name);
  printf("%s\n",loc[now].descrip);
	
  if(loc[now].visited==0) {
    loc[now].visited = 1;
    point += loc[now].point;
  }

  printf("\nYou have earned %d points.\n",point);
}

void gameOver() {

  if(now!=0) {
    printf("You have not returned home! ");
    printf("So you lose all your points.\n");
  }
  else {
    printf("You have %d points.\n",point);
  }	
  printf("\nGoodbye. Don't waste time playing ");
  printf("computer games.\n");
  exit(0);
}




void play() {
  int next, dirn;
  char move;
  
  printf("\nIn which direction do you want to go ");
  printf("[n,s,e,w,(q to quit)]? ");
  scanf("%c",&move); 
  getchar();

  switch(move) {
  case 'n': next = map[now][0]; break;
  case 's': next = map[now][1]; break;
  case 'e': next = map[now][2]; break;
  case 'w': next = map[now][3]; break;
  case 'q': gameOver(); break;
  default: next = -2; break;
  }

  

  if(next==-1) {
    printf("Sorry, you cannot go in that direction!\n");
  }
  else if(next==-2) {
    printf("Unknown direction: [%c]\n",move);
  }
  else {
    now = next;
    update ();
  }

}

int main() {
  now = point = 0;
  update ();
  while(1) play();
  return 0;
}
