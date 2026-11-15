#include <stdio.h>

int main() {
  FILE* f;
  int n, howMany;
  
  f = fopen("tin.txt","r");

  for(;;) {
    howMany = fscanf(f,"%d",&n);
    if(howMany!=1) break;
    printf("%d ",n);
  }
  fclose(f);
  
  return 0;
}
