#include <stdio.h>
#include <string.h>

int main() {
  int i, j, n, minPos;
  char a[50][100], tmp[100];

  printf("How many names: ");
  scanf("%d",&n); getchar();
  printf("Supply the names [max len 99]: ");
  for(i=0;i<n;i++) {
    scanf("%99[^\n]",a[i]); getchar();
    printf("[%s]\n",a[i]);
  }

  for(i=0;i<n-1;i++) {
    /*Find k such that a[k] is minm among a[i]...a[n-1] */
    minPos = i; 
    for(j=i;j<n;j++) {
      if(strcmp(a[j], a[minPos])<0) {
        minPos = j;
      }
    }
	
    /*Swap a[minPos] an a[i]*/
    sprintf(tmp, "%s", a[minPos]);
    sprintf(a[minPos],"%s",a[i]);
    sprintf(a[i],"%s",tmp);
  }

  printf("\nThe names in alphabetical order: ");
  for(i=0;i<n;i++) {
    printf("%s ",a[i]);
  }
  printf("\n");
  
  return 0;
}
