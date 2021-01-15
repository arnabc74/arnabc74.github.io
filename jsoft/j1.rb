@{<NOTE>
<HEAD1>J tutorial</HEAD1>
This is an introductory  tutorial  on a programming language
called J. Before investing time to learn a new language a natural
question is: Why should we care to learn it? 
Since we need an answer to this <I>before</I>  starting to learn
the language, the answer has to be in terms of general concepts
that <I>we already know</I>. 


<HEAD2>Why?</HEAD2>

The discussion that follows is much like discussing the need
for loops before learning one's first programming language, or
understanding the concept of object orientedness before learning
one's first OOP language. The discussion will necessarily involve
some hand waving, as we cannot give examples requiring
 syntactic details yet to be learned.

<HEAD3>Nested implicit loops</HEAD3>

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
single most strong point of J.

<HEAD3>Ready-made operators to combine functions</HEAD3>

The functional programming paradigm has been around for a long
time, and is gaining popularity fast. In a functional programming language functions are handled
much like variables, they may be passed as arguments into other
functions, assigned values during runtime, and returned from a
function.
<P/>
Most functional languages, however, fall short in one respect. While
they allow the user to combine functions in arbitrary ways, they
hardly provide any ready-made standard operator for functions.
 Even basic function operators like composition or
addition are sadly missing. 
<P/>
J provides not only these standard operators, but also some new
ones which prove quite useful.

<HEAD2>How?</HEAD2>
So now you have some idea about what J has in store for you. The
next question is: How to avail these?

<HEAD3>Nested implicit loops</HEAD3>
J uses a tree structure to store each variable. The tree is
always balanced (i.e., the number of branches at all nodes at a
the same level are the same). The root node is at level 0, its
children are at level 1, and so on.
<CIMG web="tree0.png"></CIMG>
Let <M>T_k</M> denote the set of all trees with exactly <M>k</M>
 levels, where <M>k</M> is some
non-negative integer. By the <RED>shape</RED> of a tree we shall mean the
numbers of branches at different levels. For example, the shape
for the tree shown is the list 3 2 3. 
<P/>
 Now consider a function
<M>f(x)</M> with a single argument <M>x.</M> Thus, <M>x</M> is a
tree and <M>f(x)</M> is another. Now, <M>J</M> puts two
restrictions on its functions:
<UL>
<LI>It associates a value
of <M>k</M> with <M>f,</M> meaning that <M>f</M> is supposed to
operate only on elements of <M>T_k.</M> This <M>k</M> is called
the <RED>rank</RED> of <M>f.</M></LI>
<LI>The shape of <M>f(x)</M> is determined solely by the
shape of <M>x</M> (and not by its value).</LI>
</UL>
This is shown in the diagram below.
<CIMG web="tree2.5.png"><M>f:T_k\to T_m</M></CIMG>
If you pass some <M>x\in
T_{k+\ell}</M> to <M>f,</M> then <M>\ell</M> implicit nested loops are launched
and <M>f</M> is applied to each of the subtrees with <M>k</M> levels.
Pictorially, if <M>x</M> is the following tree:
<CIMG web="tree2.png"></CIMG>
then <M>f(x)</M> will be:
<CIMG web="tree3.png"></CIMG>

<HEAD3>Functional operators</HEAD3>
J provides the following functional operators out of the box:
<OL>
<LI>function composition:</LI> this comes in two varieties:
ordinary compositions like <M>\sin\circ \cos</M> and compositions
like <M>\sum \sin </M>.
<LI>function iteration: there are two variants: interate a fixed
number of times, and iterate until convegence (the latter being
potentially dangerous, as it may launch an infinite loop).</LI>
<LI>combining two functions like <M>f + g</M>. These are called
<RED>fork</RED>s in J parlance.</LI>
<LI>combining a variable with its own summary. This may sound
weird, but is actually a commonly encountered situation. For
example, subtracting the mean from an array of numbers. J calls
these <RED>hook</RED>s.</LI>
<LI>Recursive accumulation: This is yet another frequent
requirement, like finding the sum or minimum or maximum of an
array of numbers.</LI>
<LI>Cartesian product: producing a table like a multiplication table.</LI>
</OL>
</NOTE>@}

<!--  LocalWords:  orientedness
 -->
