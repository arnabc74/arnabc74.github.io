typedef struct s Student;

struct s {
  int x;
  struct s* n;
}


main() {
  Student s;
  s.x = 4;
}
