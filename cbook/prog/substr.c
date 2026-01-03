#include<stdio.h>
#include<string.h>

void main() {
  char a[201], b[201];


	int result;

	printf("Supply a string: ");
	scanf("%200[^\n]",a);  getchar();
	printf("String to search: ");
	scanf("%200[^\n]",b);  getchar();
        
	if(strstr(a,b)) {
		printf("It is there!\n");
	}
	else {
		printf("It is not there!\n");
	}
}
