#include <stdio.h>

int main() {
  FILE* f;

  f = fopen("myfolder/myfile.txt","w");
  if(f==0) {
    printf("Sorry, cannot create file myfolder/myfile.txt\n");
    return 1;
  }
  return 0;
}
