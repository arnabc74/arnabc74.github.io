#include <stdio.h>

struct Student {
  char name[100];
  int marks;
};

void makeMarksheet1(struct Student s) {
  printf("Name: %s\n",s.name);
  printf("Marks: %d\n",s.marks);
  if(s.marks >= 40) 
    printf("\nThis student has passed.\n");
  else
    printf("\nThis student has failed.\n");
}

void makeMarksheet2(struct Student *ps) {
  printf("Name: %s\n",ps->name);
  printf("Marks: %d\n",ps->marks);
  if(ps->marks >= 40) 
    printf("\nThis student has passed.\n\n\n");
  else
    printf("\nThis student has failed.\n\n\n");
}

int main() {
  struct Student s = {"Patitpaban Putitunda", 45};

  makeMarksheet1(s);

  makeMarksheet2(&s);

  
  return 0;
}
