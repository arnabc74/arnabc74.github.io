@{<NOTE>
<HEAD1>Functions in R</HEAD1>
Functions play a very important role in R. In this page we shall
summarise some of the important points regarding them. 

<HEAD2>The basic structure</HEAD2>
A function is like a machine. It has
<UL>
<LI>zero or more input(s),</LI>
<LI>one or more output(s),</LI>
<LI>possible some side-effect(s).</LI>
</UL>
Here is a simple function in R:
<R>
myfun = function(x,y) {
  z = x+y
  cat("The difference = ',x-y,'\n')
  sin(z)
}
</R>
The name of the function is <CODE>myfun</CODE> (any name of your
choice, as long as it does not clash with any keyword of R). The
word <CODE>function</CODE> is a keyword. The inputs to the
function are listed (comma-separated) inside the <CODE>(</CODE>
... <CODE>)</CODE>. The parentheses are complulsory wven if there
are no inputs. The input names are dummy variables (has nothing
to do with other variables with the same name). More on this
later. The inputs are called the <B>arguments</B> or
the <B>parameters</B> of the function. 
<P/>
The body of the function  comes next, inside a pairs of braces
(optional if the body consists of a single statement).

<P/>
In body of the function consists of one or more statements, each
of which serve one or more of the these three purposes:
<UL>
<LI>internal computation, e.g., the line <CODE>z = x+y</CODE>
computes <CODE>z</CODE>, which is not visible from outside the function.</LI>
<LI>side-effect, e.g., the line <CODE>cat("The difference =
',x-y,'\n')</CODE> prints a line on the screen.</LI>
<LI>output, i.e., the last line outputs <CODE>sin(z)</CODE>. The
last line is always an output line in R. If you want to produce
output at any other line, use <CODE>return(...)</CODE>.</LI>
</UL>

<HEAD2>Visibility of a variable</HEAD2>
The variables outside a function, and those inside a function are
linked only via the arguments and returned value. The following example illustrates
this:
<R>
f = function(x) {
  y = x+1
  x = x-1
  2*x+y
}

x = 25
y = 34
z = 4
val = f(z)
x #prints 25
y #prints 34
z #prints 4
val #prints 10
</R>

If you are in a desperate need of a function that modifies a variable value
outside, then use the <CODE><<-</CODE> assignment instead
of <CODE>=</CODE> as in the following example.

<R>
f = function(x) {
  y = x+1
  x <<- x-1  #The RHS x is the argument x, the LHS x is the global x. 
  2*x+y
}

x = 25
y = 34
z = 4
val = f(z)
x #prints 5 (modified)
y #prints 34 (unmodified)
z #prints 4 (unmodified)
val #prints 10
</R>
But use the <CODE><<-</CODE> assignment very sparingly, as its
careless use generally leads to bugs that are hard to detect.

<HEAD2>Returning multiple values</HEAD2>
Functions in R can return only one object. In order to return
multiple objects, you first need to pack them into a single
object. Such a composite object is called a <CODE>list</CODE>. 

<R>
f = function(n) {
  list(1:n, sum(1:n), sum((1:n)^2))
}
</R>
This function takes a positive integer as input, and returns
three  things: 
<UL>
<LI>the array 1,2,...,n</LI>
<LI>\sum_1^n i</LI>
<LI>\sum_1^n i^2</LI>
</UL>

The function is used like this:
<R>
val = f(10)
val[[1]]
val[[2]]
val[[3]]
</R> 
Notice the use of <CODE>[[...]]</CODE> to unpack
a <CODE>list</CODE>. However, this is cumbersome. An easier way
is to use names for the different fields in a list:
 <R>
f = function(n) {
  list(all=1:n, sum=sum(1:n), sumOfSq=sum((1:n)^2))
}
</R>
Then you can use:
<R>
val = f(10)
val$all
val$sum
val$sumOfSq
</R>
<HEAD2>Passing arguments by position or name</HEAD2>
Consider this example:
<R>
f = function(x,y,z) {
  cat('x = ',x,'y = ','z = ',z)
}
</R>
Here are two different ways to call this function:
<R>
f(3,4,5) #Output: x = 3 y = 4 z = 5
f(y=3,x=4,z=5) #Output: x = 4 y = 5 z = 5
</R>
The second form uses names of the arguments, and is useful when
there are many parameters and it is difficult to remember their
order. Its usefulness increases even further when used along with
defaut values:
<R>
f = function(x,y,z=3) {
  cat('x = ',x,'y = ','z = ',z)
}
</R>
Consider the following calls to this function:
<R>
f(3,4,5) #Output: x = 3 y = 4 z = 5
f(y=3,x=4) #Output: x = 4 y = 5 z = 3 (default value)
</R>
Most standard functions in R is of this type: they have
m..a..n..y arguments (may be even more than 50), of which most
have default values. We care to remember the positions of only
yhe first few (th most important ones), and names of the next few
(of secondary  importance), and just use the defaults for the
rest. An example is the <CODE>plot</CODE> function:
<R>
u = 1:10
v = 2*x+4
plot(u,v) #Passing by position (the first along horizontal axis,
          #the second along vertical)
plot(u,v,ty='l', col='red') #Using names of arguments. 
                            #Many other arguments, like line
                            #types, line width etc are at their default values.
</R>

<HEAD2>R as a functional programming language</HEAD2>
Notice the similarity of the following two R snippets:
<R>
x = c(3,4,6,1)
</R> 
and
<R>
x = function(t) t^2
</R>
The first makes <CODE>x</CODE> an object, while the second makes
it a function. The same assignment operation <CODE>=</CODE> is
used in both the cases. This points at a deep truth about R: it
treats objects and functions on an equal footing. You can do with
functions pretty much whatever you can do with objects, e.g., you
can pass a function as an input to another function, or return a
function from a function, you can have arrays of functions, you
can create functions on the fly.

<HEAD3>Passing functions as an input to another function</HEAD3>
<R>
fsq = function(g,x) {
  g(g(x))
}
</R>
<HEAD3>Returning  a function from a function</HEAD3>
<R>
compose = function(f,g) {
  function(x) {
    f(g(x))
  }
}
</R>
Here is how you use it:
<R>
sinOfCos = compose(sin,cos)
sinOfCos(1) #returns sin(cos(1))
</R>
This is of course of limited value. Here is a really useful one:
<R>
iter(f,n) {
  function(x) {
    for(i in 1:n) x = f(x)
    x
  }
}
</R>
You can numerically solve the equation <M>x = \cos x</M> using
this function as:
<R>
iter(cos,100)
</R>

<HEAD2>The <CODE>apply</CODE> function</HEAD2>
R allows multidimensional arrays (their modern popular name
being <I>tensor</I>). 
The following line produces a <M>3\times4\times10</M> array
consisting of the integers 1 to 120:
<R>
x = matrix(1:12, 3,4)
</R>
Now suppose we want to find row sums. Then you <CODE>apply</CODE>
the <CODE>sum</CODE> function to the first dimension (i.e.,
rows):
<R>
apply(x,1,sum)
</R>
If you want to find column sums, then:
<R>
apply(x,2,sum)
</R>
You may replace <CODE>sum</CODE> by <CODE>prod</CODE> or any
function that takes a vector in and produces a single number.
</NOTE>@}
