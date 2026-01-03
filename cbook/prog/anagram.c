#include <stdio.h>
#include <ctype.h>

int main() {
  char a[201], b[201];
  int kataBar[26];
  int n, tmp, isAnagram, i;

  printf("This program checks if two given strings ");
  printf("are anagrams.\n");
  printf("All non-alphanumeric characters will be ");
  printf("ignored. Cases will also be ignored.\n\n");
  printf("Please supply the first word (max len 200): ");
  scanf("%200[^\n]",a); 
  getchar();
  printf("Please supply the second word (max len 200): ");
  scanf("%200[^\n]",b); 

  for(i=0;i<26;i++)
    kataBar[i] = 0;
  
  for(i=0;a[i];i++) {
    if(!isalpha(a[i])) continue;
    tmp = tolower(a[i])-'a';
    kataBar[tmp]++;
  }
  
  for(i=0;b[i];i++) {
    if(!isalpha(b[i])) continue;
    tmp = tolower(b[i])-'a';
    kataBar[tmp]--;
  }

  isAnagram = 1;
  for(i=0;i<26;i++) {
    if(kataBar[i] != 0) {
      isAnagram = 0;
      break;
    }
  }

  if(isAnagram==1) {
    printf("Yes, the two words are anagrams.\n");
  }
  else {
    printf("No, the two words are not anagrams.\n");
  }
  
  return 0;
}
