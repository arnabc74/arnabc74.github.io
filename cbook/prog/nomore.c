#include <stdio.h>

int main() {
  FILE* f;
  int a, b;
  
  f = fopen("bad.txt","r");
  if(f==0) {
    fprintf(stderr,"Failed to open bad.txt.\n");
    return 1;
  }
  if(fscanf(f,"%d%d",&a,&b) != 2) {
	fprintf(stderr,"Failed to read two integers!\n");
        return 2;
  }
  else{
    	printf("I have read two integers!\n");
  }
  return 0;
}
