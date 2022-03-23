@{<NOTE>

Before investing time to learn a new language a natural
question is: Why should we care to learn it? 
Since we need an answer to this <I>before</I>  starting to learn
the language, the answer has to be in terms of general concepts
that <I>we already know</I>. 

<HEAD1>Why learn J?</HEAD1>

The discussion that follows is much like discussing the need
for loops before learning one's first programming language, or
understanding the concept of object orientedness before learning
one's first OOP language. The discussion will necessarily involve
some hand waving, as we cannot give examples requiring
 syntactic details yet to be learned.

<HEAD2>Reason 1: Nested implicit loops</HEAD2>

Many modern languages like R, Matlab, Python (with numpy) allow
working with arrays as a 
single object. Thus, they will allow syntax
like <C>sin(x)</C> to find sine of all numbers in an
array. Such implicit loops are handy. However, they may not be
nested.  For instance, if we have a matrix, and we want to find
sum of each row, then there is no obvious way to do this. Some
languages provide cumbersome partial solution for this
like <CODE>apply(mat,1,sum)</CODE>. However, such solutions do
not scale well for higher dimensional arrays.
<P/>
J provides a way to nest implicit loops. This, in my opinion, is the
single most strong point of J. We shall see the details soon. But
first let's learn about the second reason why one should care for J.

<HEAD2>Reason 2: Ready-made operators to combine functions</HEAD2>

The functional programming paradigm has been around for a long
time, and is gaining popularity fast. In a functional programming language functions are handled
much like variables, they may be created on the fly during
run-time, passed as arguments into other
functions, and returned from a
function.
<P/>
Most functional languages, however, fall short in one respect. While
they allow the user to combine functions in arbitrary ways, they
hardly provide any ready-made standard operator for functions.
 Even basic function operators like composition or
function addition are sadly missing. 
<P/>
J provides not only these standard operators, but also some new
ones which prove quite useful.

<HEAD1>Details</HEAD1>
So now you have some idea about what J has in store for you. The
next question is: How to avail these?

<HEAD2>Nested implicit loops</HEAD2>
J uses multidimensional arrays. A scalar is a 0-dimensional
array, vector 1-dimensional, matrix 2-dimensional and so on. It 
becomes difficult to visualize higher dimensional arrays if we
continue to use a rectangular layout. It will help to
switch to a tree layout, where a 0-dimensional array is just the
root node, a 1-dimensional one is a tree of depth 1:
<CIMG web="t1.png">A vector</CIMG>
and a 2-dimensional array is a tree of depth 2:
<CIMG web="t2.png">A matrix is a list of rows</CIMG>
Thus, when we have a 1-dimensional array 
<D>
x = (x_1,...,x_n),
</D>
and we want to write <M>f(x)</M> to mean
<D>
f(x) = (f(x_1),...,f(x_n)),
</D>
we are basically applying <M>f</M> not to the entire tree
 directly, but to the leaf nodes separately, and then collating
 the results. 
<P/>
Well, J allows a generalization of this.
<P/>
 When we
 want to apply a function <M>f</M> to a tree <M>x</M>, we are
 allowed to specify the level at which we want <M>f</M> to
 applied. Suppose we have the following <M>x:</M>
<CIMG web="t3.png"></CIMG>
If we say apply <M>f</M> at level 0, then will be applied
separately at each leaf node and results collated. If we want to
apply <M>f</M> at level 1, then <M>f</M> is applied separately to
the subtrees circled in red below:
<CIMG web="t4.png"></CIMG>
Similarly, applying <M>f</M> at level 2 will require
invoking <M>f</M> only one per circled subtree below:
<CIMG web="t5.png"></CIMG>
If we apply <M>f</M> at level 3 (or more), then <M>f</M> is
applied only once for the entire tree. 

<HEAD3>An example</HEAD3>
Here is a concrete (albeit useless) example to keep in
mind. Suppose that <M>x</M> is a list of <M>5</M>
 matrices of size <M>3\times3.</M> Thus, <M>x</M> is a 3-dimensional array of size <M>5\times3\times 3.</M> 
You also have three functions: "det" is the determinant
function, "sum" is a function to sum a list of numbers, and
"square" to square a number.  
<P/>
If you want to square all the entries of all the matrices, you'll
apply "square" to <M>x</M> at level 0.
<P/>
To find sums of all row sums for all the matrices, you'll apply
"sum" to <M>x</M> at level 1.
<P/>
If you
want to find determinant of all the matrices, then you'll need to
apply "det" to <M>x</M> at level <M>2.</M> 


<HEAD3>In general</HEAD3>
Now, the output of <M>f</M> may itself be a tree. So if the
effect to <M>f</M> is to produce the purple tree from a green tree:
<CIMG web="tree2.5.png"></CIMG>
then applying <M>f</M> at level <M>m</M> to the following tree
<CIMG web="tree2.png"></CIMG>
would produce
<CIMG web="tree3.png"></CIMG>

<HEAD3>More fancy ways to specify level</HEAD3>
In the examples so far, we are counting the levels bottom up. It
is possible to count top down as well. Then we use negative
numbers. If we write level <M>-1,</M> that would mean
applying <M>f</M> to all the subtrees one level below the root
node. If we want to apply  <M>f</M> to the entire tree in one go,
we specify depth <M>\infty.</M>
<P/>
As you can possibly guess, J is markedly different from other
languages. To express its ideas, J needs its own
terminology. What we are calling the level is
called <RED>rank</RED> in J. Unfortunately, the number of levels
in a tree is also called by the same name. So we have rank of a
tree, as well as rank of a function application. All functions
also have a default rank of application (i.e., if you do not
specify the rank explicitly, the function gets applied with this
default rank). This further confuses beginners who begin thinking
that ranks are an integral part of a function (like dimension of
its domain). 

<P/>
When we specify the rank while applying  a function, the argument
tree is split up into an upper and a lower part. The upper part
(which is again a tree) is called the <RED>frame</RED> of the
original tree for that rank. The lower part consists of some
identically shaped subtrees, each of which is called
a <RED>cell</RED> of the tree at that rank. 

<HEAD3>An unexpected snag</HEAD3>
Rank of a function appication is merely a clever shortcut to
denote nested implicit loops. However, as in all interpreted
languages, loops are expensive in J. The rank notation does not
reduce the loop overhead. If you have tree with many
levels, and apply a function at rank 0, then you are launching a
huge number of nested loops. This is inefficient. So the creators
of J has thought about a way out. For expensive functions they
sometimes run this loop in C (the language in which the J
interpreter is written). For instance, suppose that <M>f:\rr\to\rr</M> is
an expensive function. As it expects a scalar input, rank 0 is
all that is needed. But we can implement <M>f</M> as a function <C>fnew</C>
that accepts a full tree, and applies <M>f</M> to each of the
leaves. Then <C>fnew</C> would have rank <M>\infty</M>, and be
far more efficient than applying <M>f</M> with rank 0. One such
example is the <M>\sin</M> function, which has
rank <M>\infty.</M> This sometimes leads to counterintuitive
behaviour.

<HEAD2>Functional operators</HEAD2>

Next, we shall talk briefly about the functional operators that J
provides. Indeed, much of the tremendous expressive power of J
code comes from these operators. While the concept of ranks is
the most powerful concept in J, beginners are more likely to
appreciate J's power by using the functional operators.  
<P/>

J provides the following functional operators out of the box:
<OL>
<LI>function composition.</LI> 
<LI>function iteration. </LI>
<LI>combining two functions like <M>f + g</M>. These are called
<RED>fork</RED>s in J parlance.</LI>
<LI>Recursive accumulation: This is yet another frequent
requirement, like finding the sum or minimum or maximum of an
array of numbers.</LI>
<LI>Cartesian product: producing a table like a multiplication table.</LI>
</OL>
There are many more such standard functional operations provided
by J. It is presence of these operators that make a J program
look so very different from programs in other
languages.
</NOTE>@}


