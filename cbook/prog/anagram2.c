#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main() {
  char a[200], b[200];
  int kataBar1[26], kataBar2[26];
  int n, i, isAnagram, kothay;

  printf("This program checks if two given ");
  printf("strings are anagrams.\n");
  printf("All non-alphanumeric characters will be ");
  printf("ignored. Cases will also be ignored.\n\n");
  printf("Please supply the first word (max len 200): ");
  scanf("%200[^\n]",a); 
  getchar();
  printf("Please supply the second word (max len 200): ");
  scanf("%200[^\n]",b); 

  for(i=0;i<26;i++)
    kataBar1[i] = kataBar2[i] = 0;

  n = strlen(a);
  for(i=0;i<n;i++) {
    if(!isalpha(a[i])) continue;
    kothay = tolower(a[i])-'a'; 
    kataBar1[kothay]++;
  }

  n = strlen(b);
  for(i=0;i<n;i++) {
    if(!isalpha(b[i])) continue;
    kothay = tolower(b[i])-'a'; 
    kataBar2[kothay]++;
  }

  isAnagram = 1;
  for(i=0;i<26;i++) {
    if(kataBar1[i] != kataBar2[i]) {
      isAnagram = 0;
      break;
    }
  }

  if(isAnagram==1) {
    printf("Yes, the two words are anagrams.\n");
  }
  else {
    printf("No, the two words are not anagrams.\n");
    printf("The numbers of '%c' are different.\n",
           'a'+i);
  }

  return 0;
}



