<NOTE>
@{<E>
<HEAD1>Using J: an example</HEAD1>
I often create 3D models (mainly mathematical ones) for teaching
purposes. My favourite tool for
this is <LINK to="http://www.artofillusion.org">Art of
Illusion</LINK>. While it takes care of the artistic aspects
(texture, lighting etc), sometimes I need complicated 3D objects
that are described more easily via mathematics than via GUI. For
such requirements I create an <CODE>.obj</CODE> file, which is a
just an ASCII file listing all the vertices and faces. Then I
import this file into Art of Illusion, and add the fine polish. 
<P/>
One can use J to produce the <CODE>.obj</CODE> file easily. I
shall illustrate with the example of making a surface of a
function <M>F(x,y).</M> The aim is to build a tool that will let
me produce the <CODE>.obj</CODE> file for any given function and
ranges.

<HEAD2>What you need to know about the <CODE>.obj</CODE> format</HEAD2>
It is best explained by an example.

<EXM>
Here is a valid <CODE>.obj</CODE> file:
<PRE>
v 0.1 0.1 0.1
v 1.5 0.2 2.0
v 1.1 1.0 0.3
v -1 1.5 0.6

f 1 2 3
f 1 3 4
</PRE>
This describes the object:
<CIMG web="form.png"/>
It consists of 6 lines (the blank line is for the ease of human
reading, and is ignored by the computer). The first 4 lines
start with the letter <CODE>v</CODE>. They specify vertices. The
three numbers following the <CODE>v</CODE> gives
the <M>x</M>, <M>y</M> and <M>z</M> coordinates of that vertex.
The vertices are numbered 1 onwards according to the order of listing.
<P/>
Each line starting with an <CODE>f</CODE> specifies a
(triangular) face. The three numbers are the indices of the
three vertices. 
</EXM>

<HEAD2>Visualising the end product</HEAD2>
We want to write a dyad <CODE>s</CODE> that will take two inputs,
the grid of <M>x</M>-values and the grid of <M>y</M>-values, and
produce the <CODE>.obj</CODE> file for the surface of a
function <M>F(x,y)</M> (which we assume is already
available). Here we are assuming that we shall always use the
name <CODE>F</CODE> for the target function. Thus, a typical
session to create the surface of <M>F(x,y)=\sin(x)\cos(y)</M>
could look like:
<PRE>
F=. 4 : '(sin x)*cos y'

x=. 10*(i: 100) %100 

(x s x) fw <'test.obj' NB. Using the same grid for x and y
</PRE>
Here we have assumed that <CODE>sin</CODE> and <CODE>cos</CODE>
are defined as usual, and that <CODE>fw</CODE> means "file
write", ie, 
<PRE>
fw =: 1!:2
</PRE>
<HEAD2>Doing the preparation</HEAD2>
Let's chalk out the structure of the surface in terms of vertices
and faces. We want all the faces to be triangular
(such <CODE>.obj</CODE> files are the most portable). We can
construct a Cartesian grid using the given <M>x</M>-grid
and <M>y</M>-grid:
<CIMG web="grid.png"></CIMG>
We have drawn the red diagonals to split each cell into two
triangular faces. Above each grid point we shall have a vertex on
the surface. Thus, if there are <M>m</M> values for <M>x</M>
and <M>n</M> for 
<M>y,</M>
 then the number of vertices would be <M>mn.</M>

<HEAD2>Writing the J code</HEAD2>
<HEAD3>The vertices</HEAD3>
For each grid point <M>(x,y)</M> we need to produce a line like 
<Q>
<CODE>v</CODE> <M>x</M> <M>y</M> <M>F(x,y)</M>
</Q>
In J this may be produced as
<PRE>
'v ' , <RB e="number to string">":</RB> x, y, (x F y)
</PRE>
We need to do this for each pair <M>(x,y).</M> J makes this easy
in the form 

<PRE>
x <CLOUD/>/ y
</PRE>
What to place in the cloud? The answer is <CODE>vx"0</CODE>, where 

<PRE>
vx=: 4 : 0
  'v ', ": x, y, (x F y)
)
</PRE>

Notice that 
<PRE>
x vx"0/ y
</PRE>
will produce a list of strings. We need to make a single string
by joining them (after adding a newline character at the end). 
<PRE>
newline=. , & LF
ver=. <RB e="ravel">,</RB> newline"1 x vx"0/ y
</PRE>
Well, that's all for the vertices. 

<HEAD3>The faces</HEAD3>
The faces are slightly more trickier to handle. If we have
an <M>m\times n</M> grid of vertices, then there
are <M>(m-1)(n-1)</M> cells, each being split into two
triangles. We have numbered the vertices in a row-major
fashion. So a typical cell will be like:
<CIMG web="cell.png"/>
This should produce two <CODE>f</CODE> lines:
<Q>
<CODE>f</CODE> <M>y</M> <M>(y+1)</M> <M>(y+n+1)</M><BR/>
<CODE>f</CODE> <M>k</M> <M>(y+n+1)</M> <M>(y+n)</M>
</Q>
It is easy to write a monad that will convert the input <M>y</M>
into a list of these two strings:
<PRE>
f=: 3 : 0
  t1=. 'f ', ": y, (y+1), y+n+1
  t2=. 'f ', ": y, (y+n+1), y+n
  t1,: t2
)
</PRE>
Next we have to run this function over all the vertices. Wait, we
have to actually run this over all the <M>(m-1)(n-1)</M> cells. We
are identifying each cell by its "top-left" vertex. So the
function needs to run over all the blue vertices only in the
following diagram:
<CIMG web="gridtorn.png"/>
Well, we need a list of all the blue vertices. We can make one
from scratch. But let's use the pattern: all vertices except the
last row and column. We start by making the whole grid:
<PRE>
mat=. <RB e="1+">>:</RB> i. m, n
</PRE>
We needed to add 1 to start the counting from 1 (which is the
norm with <CODE>.obj</CODE> format).
Now tear off the last row:
<PRE>
<RB e="curtail">}:</RB> mat
</PRE>
and then tear off the last entry of each of the remaining rows:
<PRE>
trim=. <RB e="curtail">}:</RB>"1 }: mat
</PRE>
Now we may run our verb on it:
<PRE>
f"0 trim
</PRE>
This gives us an array of strings. We want to append a newline at
the end of each, and join them:
<PRE>
fac=.<RB e="Ravel">,</RB> newline"1 f"0 trim
</PRE>

<HEAD3>Putting the vertices and faces together</HEAD3>
This is easy, just append them:
<PRE>
ver, fac
</PRE>
However, remember <M>J</M>'s habit of using underscore in place of
minus. Well, <CODE>.obj</CODE> file format does not allow
that. So we need to replace all the underscores by minuses:
<PRE>
'_-' charsub ver, fac
</PRE>
<HEAD2>The final code (raw version)</HEAD2>
<PRE>
vx=: 4 : 0
  'v ', ": x, y, (x F y)
)

fc=: 3 : 0
  t1=.'f ', ": y, (y+1), y+ny+1
  t2=.'f ', ": y, (y+ny+1), y+ny
  t1,:t2
)

s=: 4 : 0
  newline=. ,&LF
  ver=: , newline"1 x vx"0/ y
  nx=:  #x
  ny=: #y
  mat =: >:i. nx, ny
  trim =: }:}:"1 mat
  fac =: , newline"1 fc"0 trim
  '_-' charsub ver,fac
)
</PRE>

<HEAD2>The final code (adverb version)</HEAD2>
The above code is fine. But to use it you have to use the
name <CODE>F</CODE> for the target function. This is irritating
if you want to create <CODE>.obj</CODE> files for two functions
in the same session. Notice that we had written a
verb <CODE>s</CODE> that takes two inputs visibly (the <M>x</M>
and <M>y</M> values) and one input invisibly (the target
function). Thus, what we have written is alike a machine with
three inputs, one of them being a verb. J calls such machines an
adverb. Here a typical invocation would be 
<PRE>
(x (myfun s) y) fw <'test.obj' 
</PRE>
where <CODE>myfun</CODE> is the name of our target
function. Earlier our <CODE>s</CODE> verb delegated its job to
two verbs, <CODE>vx</CODE> for vertices and <CODE>fc</CODE> for the
faces. We needed the target function for only the vertices. The
faces are determined by the "topology" of the grid, and not on
the exact positions of the vertices. So we need to pass the
target function to <CODE>vx</CODE> also. This requires two
modifications to our code: converting <CODE>s</CODE>
and <CODE>vx</CODE> both to adverbs.
<PRE>
vx=: 1 : 0
:
  'v ', ": x, y, (x <RED>u</RED> y)
)

fc=: 3 : 0
  t1=.'f ', ": y, (y+1), y+ny+1
  t2=.'f ', ": y, (y+ny+1), y+ny
  t1,:t2
)

s=: 1 : 0
:
  newline=. ,&LF
  ver=: , newline"1 x (<RED>u</RED> vx)"0/ y
  nx=:  #x
  ny=: #y
  mat =: >:i. nx, ny
  trim =: }:}:"1 mat
  fac =: , newline"1 fc"0 trim
  '_-' charsub ver,fac
)
</PRE>
<DISQUSE id="jtut5" url="http://www.isical.ac.in/~arnabc/j/jtut5.html"/></E>@}
</NOTE>
