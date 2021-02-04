@{<NOTE>
<HEAD1>Stack</HEAD1>
Throughout the history of development of human skill, restriction
of freedom has been a useful tool. Here are some examples.
<UL>
<LI>In music we deal with octaves. An octave is the interval of
frequencies of the form <M>[x,2x].</M> While there are infinitely
many frequencies in an octave, we always work with only about 12
of them. This makes it easier for us to compose and play
music.</LI>
<LI>If you want to find your way in Kolkata, familiarity with a
chosen subset of major roads will be more helpful than an
exhaustive list of all roads in the city!</LI>
<LI>The internal circuit of a computer works mainly with
voltages in the range 0V to 5V. Different levels of voltages may
be used to convey different signals, like [0,1) means
A, <M>[1,2)</M> means B, and so on. The finer we make the
partition, the more signals we may convey. Yet to improve
reliability against voltage fluctuation, a real life computer
uses only two symbols: 0 and 1.</LI>
</UL>
The data structure we are going to learn is another example of
this freedom restriction principle: A <B>stack</B> is just a list
where new values may be added or deleted only at one end (called
the <B>top</B>). Adding a value is called <B>push</B>, and
removing a value is called <B>pop</B>.

<HEAD2>Visualization</HEAD2>
To visualize, think of a stack as a tower of coins. You may add
a new coin at the top. This is call <B>push</B>ing the coin. Also
you may remove the topmost coin, i.e., <B>pop</B>. These are the
only two operations that can change the stack. A few
query operations are also allowed. One is called <B>peek</B>, to
see (but not remove) the topmost coin. Another is
called <B>size</B> to find the number of columns in the
stack. Trying to pop an empty stack results in a <B>stack
underflow</B> error. Sometimes the stack has maximum permissible
size. If you try to push more coins after a stack has already
attained this maximum size, you get a <B>stack overflow</B>
error. 
<P/>
The role of the coins may be played by any type of variables in a
program: numbers, strings, or composite structures. But all
entries in a stack are of the same type.

<P/>
Here is an empty stack:
<PRE>

-----
</PRE>
The horizontal line by itself is like the empty tabletop on which the coins are
going to be towered. After you do <C>push(a)</C>, it becomes
<PRE>
  a
-----
</PRE>
Now let's do a <C>push(b)</C> to get
<PRE>
  b
  a
-----
</PRE>
If we do a <C>pop</C> we get back the <C>b</C> and the stack
becomes:
<PRE>
  a
-----
</PRE>

<HEAD2>Using C</HEAD2>
Linked list was a data type. So there was a specific way to
implement it in C. But  stack is a data structure. It is defined
through its behaviour. So there may be different ways to
implement it. The simplest way is using an array. This is useful
when there is a known upper bound for the stack size. 
<PRE>
int list[100];
int size = 0;

void push(int what) {
  if(size>99) {
    printf("Stack overflow.");
    return;
  }
  list[size] = what;
  size++;
}

int pop() {
  if(size>0) {
    size--;
    return list[size];
  }
  else 
    printf("Stack underflow.");
}
</PRE>
However, if no upper bound for size is known, then you might use
a linked list, where the head plays the role of the top.

<HEAD2>Applications</HEAD2>
It may not be readily apparent why a stack is useful. There are
two scenarios where stacks prove very useful. We discuss them one
by one.

<HEAD3>Scenario 1: Nested set ups</HEAD3>
We human beings are very fond of nested set ups:
<UL>
<LI>we split a country into states, states into districts,
districts into blocks.</LI>
<LI>our books consists chapters, chapters consist of sections,
which in their turn consist of subsections, which consist of
paragraphs, which consists of sentences, and so on.</LI>
<LI>In mathematics, we nest one set of parentheses into another.</LI>
</UL>
When we want to store any such nested set up in a computer file
we need a system like mathematical brackets.
<EXM><PRE>
<RED>Start:India</RED>
  A big country with too many people.
  <RED>Start:WestBengal</RED>
    The only state that stretches from the sea to the Himalayas.
    <RED>Start:Kolkata</RED>
      An over-crowded city.
    <RED>End:Kolkata</RED>
  <RED>End:WestBengal</RED>
  <RED>Start:Bihar</RED>
   Another wonderful state.
  <RED>End:Bihar</RED>
<RED>End:India</RED>
</PRE>
Here the red lines maintain the structure of the document. When a
computer reads such a file, it uses a
stack. Each <RED>Start:</RED> is a <B>push</B> and
each <RED>End:</RED> is a <B>pop</B>. After every pop, it checks
if the popped symbol matches the symbol after
the <RED>End:</RED>. We show how the stack changes after
encountering the <RED>Start:</RED> and <RED>End:</RED> markers:
<PRE>
                                             Kolkata                       
                              WestBengal     WestBengal     WestBengal     Bihar     
               India          India          India          India          India          India          
-----          -----          -----          -----          -----          -----          -----          -----
</PRE>
Convince yourself that the stack will be able to detect
violations of
nesting structure.</EXM>

<EXM>
Calculators use stacks to perform simplifications using the BODMAS
rule. This is another example of nesting. When you
write <M>2+3\times 4</M> this means <M>2+(3\times 4).</M> Thus,
the expression is nested inside. In fact, there are two stacks
(called the operator stack and the number stack). To facilitate
writing, I shall show them horizontally (growing towards the
right).
<P/>
Suppose that we are processing the expression <C>4 + 3 * 2
= </C>.The final <C>=</C> is to let the calculator know that we
have reached the end.
This consists of 7
symbols. We show the two stacks as the symbols are fed
in. Initially, both are empty:
<PRE>
num: 
opr:
</PRE>
Then we read <C>4</C>, which is a number and hence pushed onto
the number stack:
<PRE>
num: 4
opr:
</PRE>
Then comes the operator <C>+</C>:
<PRE>
num: 4
opr: +
</PRE>
After reading the <C>3</C> we have:
<PRE>
num: 4 3
opr: +
</PRE>
Next comes the <C>*</C>. Before it is pushed, we need to peek at
the current top of the operator stack to find the <C>+</C>. Since
this has lower precedence than <C>*</C>, we push the <C>*</C>:
<PRE>
num: 4 3
opr: + *
</PRE>
Then comes the <C>2</C>:
<PRE>
num: 4 3 2
opr: + *
</PRE>
Now comes the <C>=</C>. It pops the operator stack to get
a <C>*</C>:
<PRE>
num: 4 3 2
opr: +
</PRE>
Since <C>*</C> needs two arguments, the number stack is popped
twice to get <C>2</C> and <C>3</C>:
<PRE>
num: 4 
opr: +
</PRE>
These two numbers are are combined using
the <C>*</C> producing <C>6</C>. This gets pushed onto the number stack:
<PRE>
num: 4 6
opr: +
</PRE>
Remember that the <C>=</C> is still waiting. Before we push it
onto the operator stack, we notice that the current top of the
stack is <C>+</C>, which we pop. 
<PRE>
num: 4 6
opr: 
</PRE>
The <C>+</C> needs two numbers, which are obtained by popping
the number stack twice:
<PRE>
num: 
opr: 
</PRE>
The popped numbers are <C>6</C> and <C>4</C>, which are combined
using the <C>+</C> to produce <C>10</C>, which is pushed onto the
number stack:
<PRE>
num: 10
opr: 
</PRE>
Now the waiting <C>=</C> is pushed onto the operator stack:
<PRE>
num: 10
opr: =
</PRE>
The content of the number stack is now printed on the screen.
</EXM>

<HEAD3>Scenario 2: Searching</HEAD3>
In many applications of artificial intelligence we have to make
multiple steps cleverly to reach a specified goal. At each step
we are presented with a finite number of alternatives, from which
we have to choose an appropriate one. Examples include: 
<UL>
<LI>Finding path in a maze</LI>
<LI>Changing configuration of blocks (e.g., tower of Hanoi)</LI>
<LI>Finding a way in which a knight can tour all squares in a
chess board without visiting any square more than once,</LI>
<LI>placing 8 queens in a chess board in mutually non-attacking positions.</LI>
</UL>
The simplest way to tackle such a problem is to continue by choosing any
alternative at each step until one hits dead-end. Then we have to
backtrack to the last step and re-explore following the next
alternative. This simple idea may become mind bogglingly
complicated in a program unless one keeps track of the steps
using a stack. See <LINK to="image/dfs.webm">this video</LINK> to
understand. Every time we visit a new vertex, it is pushed. Every
time we finish all alternatives at a vertex we pop. We start with
an empty stack. The stack again becomes empty when we have
visited every vertex and edge. 

</NOTE>@}
