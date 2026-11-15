#include <stdio.h>

struct Card {
  char body[20];
  struct Card c;
};
int main() {
  printf("%ld\n",sizeof(struct Card));
  return 0;
}
