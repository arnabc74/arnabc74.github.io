@{<NOTE>
<TITLE>Git tutorial with a difference</TITLE>
<HEAD1>A git tutorial with a difference</HEAD1>
There are many git tutorials out there. But the beginners'
tutorials get one thing hopelessly wrong, and this makes git look
more complicated than it really is. This tutorial aims to rectify
this problem.

<HEAD2>A software analogy</HEAD2>
Imagine that you are creating linked list where each node is a
structure like this:
<PRE>
typedef struct node {
  int val;
  char *name;
  double angle;
  struct node *next;
} Node;
</PRE>
hThe basic step in the process is to create one more node and
connect it with the existing linked list. For this, you need
values for the variables <CODE>val</CODE>, <CODE>name</CODE>
and <CODE>angle</CODE>. Let's say there are variables with these
names already in your program:
<PRE>
int n;
char *title;
double theta;
</PRE>
and you want to create the node with <CODE>val</CODE> being the
value of <CODE>n</CODE>, and 
</NOTE>@}
