@{<NOTE><TITLE>Random walks</TITLE>
The material here is taken from chapter 3 of Feller, Volume
1.
<HEAD1 u="https://youtu.be/BFj_fj9Ln5Q">Introduction to simple symmetric random walks</HEAD1>
A drunkard stands at some integer on a number line. At each step he moves
either left or right to the adjacent number. He chooses the left
or right with equal probability. 
Let <M>S_n</M> be his position after <M>n</M> steps,
for <M>n=0,...,10.</M> We may draw a graph of <M>S_n</M>
versus <M>n</M> using a zigzag line like the one shown below.
<COMMENT>
rw(sample(0:1,10,rep=T),'rw1')
</COMMENT>
<CIMG web="rw1.png">Random walk</CIMG>
<FNOTE>The <CODE>asp=1</CODE> in the <CODE>plot</CODE> command
keeps the plot area aspect ratio equal to 1, i.e., a
square. The <CODE>abline</CODE> command draws a horizontal line
through 0.</FNOTE>
<RC>
x = sample(c(-1,1), 100, rep=T)
plot(cumsum(x),ylab='random walk', xlab='time', ty='l',asp=1)
abline(h=0)
</RC>
<P/>

Share market values show such behaviour. 
<P/>

Clearly, there are <M>2^{10}</M> such possible paths. Since the
man is a drunkard we assume that all these are equally likely. 

<EXM>
Find the probability that he ends up at his starting position
after 10 steps.<SOLN/>
It is the
total number of paths from <M>(0,0)</M> to <M>(10,0)</M> divided
by <M>2^{10}.</M> Now, each such path must have the same number
of up's and down's. So the number is <M>\binom{10}{5}.</M> 
</EXM>


::<EXR>(Easy) Find the probability that the drunkard ends up at any given
<M>k\in\zz</M> in exactly <M>n</M> steps.</EXR>

<HEAD1 u="https://youtu.be/frfkJ9sLWoc">Counting paths</HEAD1>
Any path from time <M>m</M> to <M>n</M> (with <M>m<n</M>)
will be considered as a function <M>\pi:\{m,...,n\}\to\zz.</M> 
If, for example,
the path passes through some <M>(3,4)</M> then we
have <M>\pi(3)=4.</M>

The set of all paths from a point <M>\alpha</M> to a
point <M>\beta</M> will be denoted by <M>PATH(\alpha,\beta).</M>
For example, if <M>\alpha = (0,0)</M> and <M>\beta = (5,2)</M>,
then we have 
<Q>
<M>PATH(\alpha,\beta) = \{\pi:\{0,...,5\}\to\zz~:~\pi(0)=0,~\pi(5)=2\}.</M>
</Q>

<DEFN name="Number of paths">
Let the number of paths from <M>(0,0)</M> to <M>(n,x)</M> be
denoted by <M>N_{n,x}.</M> In other words,
<D>
N_{n,x} = |PATH(#((0,0), (n,x))#)|.
</D>
In particular,  <M>N_{0,0}=1.</M>
</DEFN>

<THM>
<D>
N_{n,x} = \binom{n}{[[n+x][2]]}.
</D>
This is <M>0</M> if <M>[[n+x][2]]</M> is
outside <M>\{0,1,...,n\}.</M>
</THM>

<EXM>
Find <M>|PATH(#( (2,3), (15,2) )#)|.</M>
<SOLN/>
Any path from <M>PATH(#( (2,3), (15,2) )#)</M> may be shifted 2
units to the left and 3 units downwards to arrive at a path
in <M>PATH(#( (0,0), (13,-1) )#).</M> 
<CIMG web="shift.png">The red path is shifted to the blue path.</CIMG>
This shift establishes a
bijection between <M>PATH(#( (0,0), (13,-1) )#)</M>
and <M>PATH(#( (2,3), (15,2) )#).</M> So they have the same
size. Hence the answer is <M>N_{13,-1} = \binom{13}{6}.</M> 
</EXM>
Similar argument leads to the following theorem.

<THM>
<M>|PATH(#( (a,p),(b,q) )#)| = N_{b-a,q-p}.</M>
</THM>



<EXM>
Consider all paths of length <M>2n</M> starting from <M>(0,0).</M>
What is the probability that the path returns 
to <M>0</M> at time <M>2n</M>?
<SOLN/>
There are <M>2^{2n}</M> paths, all equally likely. So <M>|\Omega| =
2^{2n}.</M> 
<P/>
Let <M>A</M> be the event that the path ends at <M>(2n,0).</M>
<P/>
Then <M>|A| = N_{2n,0}.</M>
<P/>
So <M>P(A) = [[|A|][|\Omega|]] =  
[[N_{2n,0}][2^{2n}]].
</M>
</EXM>

::<EXR>(Easy)
Find the numerical value of the probability you found in the
above example for <M>n=5.</M> Check it by running the following
code:
<RC>
event = c() 
for(k in 1:5000) {
  x = sample(c(-1,1), 10, rep=T)
  event[k] = (sum(x)==0)
}
mean(event)
</RC>
</EXR>


Since we are assuming that all paths in the sample space are
equally likely, computing probabilities of different events
amounts to finding the size of the events (i.e., counting the
number of paths in the event). So the exercises are presented in
terms of sizes of events rather than in terms of their probabilities. 

<COMMENT>
We shall start with a discrete version of the intermediate value
theorem. See the following diagram.
<CIMG web="inter.png">The path meets the horizontal line twice.</CIMG>
Here we have taken a horizontal line at an integer height and two points on two sides
of it. Then any path between these two points must meet this
horizontal line somewhere.

<BOX name="Intermediate value theorem for paths">
Let <M>m, n, a, b, L</M>  be integers with <M>m<n</M>
and <M>L</M> strictly between <M>a,b.</M>
Then
<D>
\forall p\in PATH(#((m,a),(n,b) )#)~~\exists t\in\{m+1,...,n-1\}~~p(t)=L.
</D>
</BOX>
In the diagram above either <M>t_1</M> or <M>t_2</M> may be
chosen as <M>t.</M>

The theorem may appear trivial at first. If you think so, just try to
write down a proof before reading further.

<PF>We shall assume w.l.g. that <M>a < b</M> (the other case is
similar).

To show

<TGT>\forall p\in PATH(#((m,a),(n,b) )#)~~\exists
t\in\{m+1,...,n-1\}~~p(t)=L.</TGT>


<FLL>p</FLL>Take any <M>p\in PATH(#((m,a),(n,b) )#)</M>

Let <M>M = \{r\in\{m,...,n\}~:~p(r)< L\},</M> i.e., the times
spent under the horizontal line. 

Clearly, <M>M</M> is finite.

Also <M>M\neq \phi,</M> since <M>m\in M.</M>

Let <M>k=\max(M)</M> (well-defined, since <M>M</M> is finite and nonempty).
<P/>
Clearly, <M>k \leq n-2.</M> (Why is <M>k\neq n</M>? Why is <M>k\neq n-1</M>?)

<EXS>t</EXS>Choose <M>t=k+1\in\{m+1,...,n-1\}.</M>

<CHK/>Then <M>p(t)=L.</M>
<BECAUSE>
We cannot have <M>p(t)< L</M>, since <M>t > \max(M).</M>

Also since <M>p(k) < L,</M> hence <M>p(t)=p(k+1)< L+1.</M>
</BECAUSE>
</PF>
</COMMENT>
<HEAD1 u="https://youtu.be/a8Cx3GdROZ0">Reflection principle</HEAD1>
Our aim here is to find probabilities of various sets of paths, or, equivalently to find the sizes of
of these sets. We can often express them easily using the <M>N_{n,r}</M> notation.
This is thanks to the <I>reflection principle</I>,  which we discuss now.

Draw the horizontal line at  height <M>5,</M>  say. Consider two
points <M>\alpha=(2,6)</M>  and <M>\beta=(6,4)</M>, say, that are  on the <I>same</I>
side of the line.
<CIMG web="reflmot.png"></CIMG>
 We want to count the number of paths from <M>\alpha</M>  to <M>\beta</M>  that 
 meets (i.e., touches or cuts) <M>L.</M>  One such path is shown in the diagram. 

To find this number we employ a trick. 
Let
 <M>\alpha'</M> be the reflection
of <M>\alpha</M> along <M>L.</M> Thus here, <M>\alpha' = (2,4).</M>  
Then the required number 
the same as <M>|PATH(\alpha',\beta)|.</M>

<BOX name="Reflection principle">
Draw any horizontal line <M>L</M> at an integer height. Pick any two
points <M>\alpha:(m,p)</M> and <M>\beta:(n,q)</M> with <M>m<n</M> on the same
side of the line (<M>m,n,p,q\in\zz</M>). Let <M>\alpha'</M> be the reflection
of <M>(m,p)</M> around <M>L.</M> Then the number of paths
from <M>\alpha</M>
to <M>\beta</M> that meets (i.e., touches or cuts) <M>L</M> is <M>|PATH(\alpha',\beta)|.</M>
</BOX>
<PF>
Keep an eye on this picture while reading the proof:
<CIMG web="refl.png">Reflection principle</CIMG>
Let <M>S</M> be the set of all paths from <M>\alpha </M>
to <M>\beta </M> that meets <M>L.</M> 
<P/>
Shall show that <M>|S|=|PATH(\alpha',\beta)|.</M>
<P/>
Enough to show that there is a bijection  <M>f:S\to PATH(\alpha',\beta).</M>

<B>Step 1: Constructing <M>f</M></B>:

Take any path <M>p\in S.</M> Let <M>\gamma</M> be the first point where the
path meets <M>L.</M>

Reflect around <M>L</M> the part of the path
between <M>\alpha</M> and <M>\gamma.</M> This will give a path
from <M>\alpha'</M> to <M>\beta.</M> Define <M>f(p)</M> to be
this path.

We shall now show that it is a bijection. The following diagram is an example showing the effect of this map:
<CIMG web="reflecexm.png">The purple part is reflected</CIMG>
<P/><B>Step 2: Showing onto</B>:
<P/>
Take any <M>q\in PATH(\alpha',\beta).</M> Since <M>\alpha'</M> and <M>\beta</M> are
on opposite sides of <M>L,</M> so the path must
intersect <M>L</M> some time or other. 

Let <M>\gamma</M> be the
first such point. Reflect the part of <M>q</M> between <M>\alpha'</M> and <M>\gamma </M> to get a path <M>p\in S.</M>
Clearly <M>f(p)=q.</M> 
<P/><B>Step 3: Showing one-one</B>:
<P/>
Let <M>p_1,p_2\in S</M> be such that <M>f(p_1)=f(p_2)=q,</M>
say. Shall
show that <M>p_1=p_2.</M>
<P/>
Pick the first point <M>\gamma</M> where <M>q</M> meets <M>L.</M>
Then by property of <M>f</M>, the part of <M>q</M>
from <M>\gamma</M> to <M>\beta</M> is the same as the part
of <M>p_1</M> from <M>\gamma</M> to <M>\beta.</M> 
<P/>
Similarly,  the part of <M>q</M>
from <M>\gamma</M> to <M>\beta</M> is the same as the part
of <M>p_2</M> from <M>\gamma</M> to <M>\beta.</M> 

<P/>
So <M>p_1</M> matches <M>p_2</M> between <M>\gamma </M> and <M>\beta.</M>
<P/>
Also, the part of <M>p_1</M> from <M>\alpha</M> to <M>\gamma</M>
is the reflection of the part of <M>q</M> from <M>\alpha'</M> to <M>\gamma.</M>
<P/>
Similarly, the part of <M>p_2</M> from <M>\alpha</M> to <M>\gamma</M>
is the reflection of the part of <M>q</M> from <M>\alpha'</M> to <M>\gamma.</M>
<P/>
So <M>p_1</M> matches <M>p_2</M> between <M>\alpha</M> and <M>\gamma.</M>
<P/>
Hence <M>p_1=p_2,</M> as required.
</PF>


<EXM>
Again take a horizontal line <M>L</M> (at height <M>h</M>) and two
points <M>A:(a,p)</M> and <M>B:(b,q)</M> both above (not on)
<M>L.</M> Here <M>a<b.</M> How many paths are there
from <M>A</M> to <M>B</M> that does <I>not</I> meet <M>L?</M> 
<SOLN/>
First count all paths from <M>A</M> to <M>B.</M> From it subtract
the number of paths that meet <M>L.</M>
<P/>
Total number of paths from <M>A</M> to <M>B</M>
is <M>N_{b-a,q-p}.</M>

<P/>

The number of paths from <M>A</M> to <M>B</M> that
meet <M>L</M> may be found using the <B>reflection principle</B>.
<P/>
The reflection of <M>A</M> along <M>L</M> is at <M>A':(a,2h-p).</M> 

<P/>
So the required number is <M>N_{b-a,q-2h+p}.</M>
<P/>
Hence the final answer is <M>N_{b-a,q-p}-N_{b-a,q-2h+p}.</M>
</EXM>

<EXM>
How many paths are there from <M>(0,0)</M> to <M>(10,4)</M> that
are strictly positive at all times <M>>0?</M>

<SOLN/>
This is very similar to the exercise above (with <M>L</M> given
by the horizontal line at height <M>0</M>), except that we start
on the line itself. 
<P/>
However, it is obvious that our path must go to <M>(1,1)</M>
after the first step. So the last exercise may be applied
between <M>A:(1,1)</M> and <M>B:(10,4).</M>
</EXM>
<HEAD1>Problems for practice</HEAD1>
Here are a few exercises that will demonstrate some application of the reflection principle.

<HEAD2 u="https://youtu.be/llYADewax74">Exercises about first passages</HEAD2>
::<EXR>(Medium)Consider a simple, symmetric random walk starting from 0. What is the chance it visits 2 for
 the first time at time 6? 
Pictorially,  we need to  count  paths like the second one in the following diagram. 
<CIMG web="first.png">(a) Does not end at <M>(6,2).</M> (b)
OK. (c) Attains 2 before times 6.</CIMG>
<ANS>
Notice that any valid path must pass through <M>(5,1)</M>, and
you have no choice about the last segment (it must be upwards).  So we are
 counting all paths from
 <M>(0,0)</M>  to <M>(5,1)</M>   not
 meeting the horizontal line at 2. 

The answer may now be obtained easily using the reflection principle.

[Thanks to Mayukh for correcting a typo here.]
</ANS>
</EXR>
The next exercise is an obvious generalisation.
::<EXR>(Medium) Let <M>r,n\in\nn</M> with <M>r\leq n</M>.   Consider a simple, symmetric random
 walk starting from 0. Then show that
 the chance of its visiting
 <M>r</M>  for the first time
 at time <M>n</M>  is 
<D>[[N_{n-1,r-1}-N_{n-1,r+1}][2^n]].</D>
[Thanks to Mayukh for correcting a typo here.]
<ANS>
Such a path must pass through <M>(n-1,r-1)</M> and <M>(n,r).</M>
Also it must never meet the the line at height <M>r</M> up to and
including time <M>n-1.</M>

By reflection principle the path up to time <M>n-1</M> may be
chosen in <M>N_{n-1,r-1}-N_{n-1,r+1}</M> ways. The step from
time <M>n-1</M> to <M>n</M> is forced (it has to move up). 
</ANS></EXR>

<HEAD2 u="https://youtu.be/ypff2sktQhY">Exercises regarding never returning to 0 (fixed end point)</HEAD2>
::<EXR>(Medium)What is the conditional probability that a simple, symmetric random walk starting from 0 will end
 at (6,2) without ever returning to 0 before that?
<ANS>
Clearly in the second step the path must be at (1,1). So we need to count the number of paths from there to (6,2) without
 hitting 0 in between. 

Now apply the reflection principle.
</ANS>
</EXR>

::<EXR>(Medium) 
Given that a simple, symmetric random walk starting from 0 has  ended  at <M>(2n,2r),</M> 
what is the conditional probability that it never returned to 0 before that? Assume <M>1\leq r\leq n</M>.
<ANS>
Clearly in the second step the path must be at (1,1). So we need to count the number of paths from there to <M>(2n,2r)</M> without
 hitting 0 in between. 

By the reflection principle, the number of paths from <M>(1,-1)</M>  to <M>(2n,2r)</M>  hitting 0 in-between is
<M>N_{2n-1,2r+1}</M>. Also the total number of paths is <M>N_{2n-1,2r-1}</M>.

Hence the answer is <M>[[N_{2n-1,2r-1}-N_{2n-1,2r+1}][N_{2n,2r}]]</M>.

[Thanks to Mayukh for correcting a typo here.]
</ANS>
</EXR>

<HEAD2 u="https://youtu.be/PeEY6VYMLGA">Exercises regarding never returning to 0 (arbitrary end point)</HEAD2>

::<EXR>(Medium)
Consider all paths of length <M>2n</M> starting
at <M>(0,0)</M>. Show that the number of these paths
that never return to <M>0</M> is <M>N_{2n,0}.</M>
<ANS>

Such a path must either always be positive. Or always be
negative. Clearly, the number of all-positive paths is the same
as that of all-negative paths.

An all-positive path must visit <M>(1,1)</M> immediately
after <M>(0,0).</M> So enough to compute the number of
all-positive paths starting from <M>(1,1).</M>

Where can such a path end? It can end at <M>2r</M> for
some <M>r\in\{1,...,n\}.</M>


By the <B>reflection principle</B>, 
the total number of all-positive paths from <M>(1,1)</M>
to <M>(2n,2r)</M> is 
<D>|PATH(#((1,1),(2n,2r))#)|-|PATH(#((1,-1),(2n,2r))#)|,</D> 
 i.e., <M>N_{2n-1,2r-1}-N_{2n-1,2r+1}.</M>

So the total number of all-positive paths is the telescoping sum
<D>
(N_{2n-1,1}-N_{2n-1,3}) +
(N_{2n-1,3}-N_{2n-1,5}) + \cdots + (N_{2n-1,2n-1}-N_{2n-1,2n+1})
= N_{2n-1,1}-N_{2n-1,2n+1} = N_{2n-1,1},
</D>
since <M>N_{2n-1,2n+1}=0</M> (<M>\because 2n+1 > 2n-1</M>).

Combining all-positive and all-negative paths, the total count is
<M>2N_{2n-1,1} =
2\binom{2n-1}{n}=[[2(2n-1)!][(n-1)!n!]] =[[(2n!)][n!n!]]
=\binom{2n}{n} = N_{2n,0}.</M>
Isn't this surprising? The number of <M>2n</M>-length paths never returning to 0
equals the number of <M>2n</M>-length paths ending at 0. Could you prove it directly by establishing a bijection between
 these two sets of paths?
</ANS>
</EXR>

<HEAD3>Exercises about the maximum place visited</HEAD3>
::<EXR>(Medium)
Consider a simple, symmetric random walk of length 11 starting from 0. Given that it has eneded at
 1, what is the conditional probability that the maximum position it has visited is 4?
<ANS>Basically, we need to count paths like the following:
<CIMG web="max.png">A path from <M>(0,0)</M>  to <M>(11,1)</M>  with maximum <M>4</M>  (i.e., hitting 4 but not 5)</CIMG>

Find the number of paths from (0,0) to (11,1) that meet 4 (may or may not cross it). This is easy to compute using the reflection
 principle. The answer is <M>N_{11,7}.</M>

Next find similarly 
the number of paths from (0,0) to (11,1) that meet 5 (may or may not cross it). The answer is <M>N_{11,9}.</M>

The answer is <M>[[N_{11,7}-N_{11,9}][N_{11,1}]].</M>
 </ANS></EXR>

::<EXR>(Medium)
How many paths of length 11 are there from <M>(0,0)</M>   that have maximum height
 <M>4</M>?
<ANS>
This is very much like the last problem, except that the final height is not specified. Clearly the final height is something
 <M>\leq 4.</M>  and <M>\geq -11.</M>  

Find the number of all such paths with each of these final heights, and add. Don't worry, the sum is telescopic, and a massive
 cancellation will save computational labour. 
</ANS></EXR>

::<EXR>(Medium)
Consider all paths of length <M>n</M> starting from <M>(0,0).</M>
Let <M>r\in\{0,...,n\}.</M> Then show that
the number of paths with maximum <M>r</M> is <M>N_{n,r}</M>
if <M>n,r</M> have the same parity, and <M>N_{n,r+1}</M> else.
<ANS>
We need to  find the number of paths with maximum <M>r.</M>

Let <M>A</M> be the set of all such paths. 

We shall split this set
based on where the path ends. Clearly, it can end somewhere <M>\leq r.</M>

Fix any <M>k\leq r.</M> 

Let  <M>B_k=</M>set of all <M>n</M>-length paths with maximum <M>r</M> and ending at
<M>k.</M>

Instead of working with <M>B_k</M>'s directly, we prefer to work with
<Q><M>C=</M> the set of all paths with <RED>maximum <M>\geq
r</M></RED> and ending at <M>k</M></Q>
and
<Q><M>D=</M> the set of all paths with <RED>maximum <M>\geq
r+1</M></RED> and ending at <M>k</M></Q>


Then we can compute <M>|C|</M>  and <M>|D|</M>   easily, and also use the fact
that <M>|B_k| = |C|-|D|.</M>


Now <M>|C|=N_{n,2r-k}</M> and <M>|D|=N_{n,2(r+1)-k}= N_{n,2r-k+2}</M>  by the <B>reflection principle</B>. 

So
<D>
|B_k|=N_{n,2r-k} - N_{n,2r-k+2}.
</D>
We shall now sum this over <M>k\in\{-n,..., r\}</M> to obtain <M>|A|</M>:
<D>A=\sum_{k=-n}^r (N_{n,2r-k} - N_{n,2r-k+2}).</D>
The sum
has a two-step telescoping structure: each negative term
cancels the positive term two steps ahead. 
So only the first halves of the first two terms survive, i.e., <M>N_{n,r}+N_{n,r+1}.</M>

We know that <M>N_{a,b}</M> is 0 if <M>a,b</M> have opposite
parities. Hence the result.
</ANS></EXR>


<COMMENT>
<THEAD2>Positive duration theorem</THEAD2>
We shall now consider the amount of time a path spends in the
positive side. 

<COMMENT>
rw2(c(0,1,2,3,2,1,0,-1,-2,-1,0,1,0),
col=c(  2,2,2,2,2,2, 1, 1, 1,1,2,2),'posdur')
</COMMENT>

For example, the following path spends 8 times units in the
positive sides.
<CIMG web="posdur.png"/>
<EXM>
Draw a path of length 10 starting from <M>(0,0)</M> that
spends exactly 5 time units in the positive side.
<SOLN/>
<HIDE lab="fun"><MSG>First try yourself. Else, you'll miss the fun!</MSG><HIDDEN>Impossible! Each <M>0</M>-hit occurs at even time points, and the
path ends at 10, which is also even. 
</HIDDEN></HIDE>
</EXM>


<THM name="Positive duration theorem">
Let <M>A_{a,b}=</M>   {all <M>a</M>-length paths from (0,0) that remain positive for
 exactly <M>b</M>  time units}.
 
Then
<D>\forall n\in\nn~~\forall k\in\{0,...,n\}~~|A_{2n,2k}|=N_{2k,0}\times N_{2n-2k,0}.</D>
</THM>

<PF>
<U><B>Case 1: <M>k=0</M> or <M>n</M></B></U>:

We shall show the case for <M>k=n.</M>  The <M>k=0</M>  is similar. 
Note that <M>k=n</M> means the path is always above the <M>x</M>-axis (though it may touch the
 axis). We shall convert it bijectively into a <M>(2n+1)</M>-length  positive path not returning to
 0. This conversion is done by
 shifting the path 1 unit upwards and to the right, and joining <M>(0,0)</M>  with <M>(1,1).</M>  Click on the figure below
 to see the conversion as an animation.
<VID src="anim.webm"></VID>
The number of <M>(2n+1)</M>-length paths not returning to 0 is twice  the number of <M>2n</M>-length paths not returning
 to 0 (since the last step is arbitrary). Out of these exactly half is positive. So the number of
 <M>(2n+1)</M>-length positive paths not returning to 0 is
 <M>N_{2n,0}=N_{2k,0}\times N_{2n-2k,0}</M>, as required. 

<U><B>Case 2: <M>1\leq k\leq n-1</M></B></U>:

Here we are considering paths with at least one 0-return. We shall group them by the time of their first 0-return and 
whether the return occurs from the positive or the negative side. 

Let's warm up by looking at an example with <M>n=7</M> and <M>k=4.</M>
<COMMENT>
x = c(1,1,0,0,0,1,1,1,0,0,0,0,1,0)
rw(x,'pathlead')
</COMMENT>
<CIMG web="pathlead.png">First 0-return  at <M>4</M></CIMG>

Here the first 0-return occurs at 4,
and from the positive side. 

Let <M>B_{a,t}= </M> {all <M>a</M>-length paths from (0,0) with first 0-return at time <M>t</M>  from positive side}.

Let <M>C_{a,t}= </M> {all <M>a</M>-length paths from (0,0) with first 0-return at time <M>t</M>  from negative side}.

Note the following points about these sets:
<UL>
<LI>The <M>B</M>'s and  <M>C</M>'s are all disjoint.</LI>
<LI>By symmetry <M>|B_{a,t}| = |C_{a,t}|</M></LI>
<LI><M>A_{2n,2k}\seq \cup_{r=1}^k B_{2n,2r} \bigcup
 \cup_{r=1}^{n-k} C_{2n,2r}.</M>
Do you see <HIDE lab="newwhy"><MSG>why</MSG><HIDDEN>
If the first 0-return from positive side is later than <M>2k,</M>  then we have already spent more
 than <M>2k</M>  time units above the <M>x</M>-axis. Similarly, if the first 0-return is later
 than <M>2n-2k</M>  from the negative side, then we have less than <M>2k</M>  time units left, and
 we have not spent any time above the <M>x</M>-axis yet!</HIDDEN></HIDE> it is
 enough to take <M>r</M>  up
 to <M>k</M>  in the first
 union, and up to <M>n-k</M>
  in the second?</LI></UL>

Thus 
<D>|A_{2n,2k}| = \sum_{r=1}^k |A_{2n,2k}\cap B_{2n,2r}| + \sum_{r=1}^{n-k} |A_{2n,2k}\cap C_{2n,2r}|.</D>
Now we shall find <M>|A_{2n,2k}\cap B_{2n,2r}|</M>  and <M>|A_{2n,2k}\cap C_{2n,2r}|</M>  separately. 

The paths in <M>A_{2n,2k}\cap B_{2n,2r}</M>  are positive up to time <M>2r</M>, when they return to 0 for the first time,
 and then during the remaining <M>2n-2r</M>  times units  spend exactly <M>2k-2r</M>  time units in the positive side.
<COMMENT>
source("rw.r")
png("image/postepraw.png")
rw(c(1,1,0,1,0,0,0,1,1,0,0,0),c(2,2,2,2,2,2,3,3,3,3,3,3))
dev.off()
</COMMENT>
<CIMG web="postep.png">A typical path in <M>A_{12,8}\cap B_{12,6}.</M></CIMG>
 So
 <D>|A_{2n,2k}\cap B_{2n,2r}| = \underbrace{|B_{2r,2r}|}_{\small red}\times
 \underbrace{|A_{2n-2r,2k-2r}|}_{\small green}.</D>
<ALERT/>This is the crucial step. Take time to understand it! 

Similarly
 <D>|A_{2n,2k}\cap C_{2n,2r}| = |C_{2r,2r}|\times |A_{2n-2r,2k}|.</D>
Combining these two we get
 <D>|A_{2n,2k}| =  \sum_{r=1}^k |B_{2r,2r}|\times |A_{2n-2r,2k-2r}|+ \sum_{r=1}^{n-k}|C_{2r,2r}|\times |A_{2n-2r,2k}|.</D>
Notice that <M>|B_{2r,2r}|</M>  and <M>|C_{2r,2r}|</M>  are the same, and each is equal to
 <M>[[12]]|Z_{2r}|,</M>  where <M>Z_{2r} = </M>  number of <M>2r</M>-length paths with first 0-return
 at <M>2r.</M>  Thus, we get our <RED>master equality</RED>:
 <D>|A_{2n,2k}| = [[12]] \sum_{r=1}^k |Z_{2r}|\times |A_{2n-2r,2k-2r}|+ [[12]]\sum_{r=1}^{n-k}|Z_{2r}|\times |A_{2n-2r,2k}|.</D>
Since <M>|Z_{2r}|</M>  is already known from the <B>first 0-return theorem</B>,
this equality expresses <M>A_{2n,2k}</M>  in terms of <M>A_{a,b}</M>'s with <M>a < 2n.</M>
 This suggests that we should try induction on the path length.  

We shall use induction on <M>n</M> to prove the statement 
<D>S(n)~:~\forall k\in\{1,...,n-1\}~~|A_{2n,2k}|=N_{2k,0}\times N_{2n-2k,0}.</D>
Here <M>n=2,3,4,...</M>  

The following diagram shows the possible <M>(n,k)</M>  pairs as dots. The red dots were already dealt
 with in <B>case 1</B>.   
<CIMG web="basis.png">Each dot represents one  <M>(n,k)</M>  pair.</CIMG>
We are applying induction for the blue dots only. <M>S(n)</M>  is the combined statement for all the
blue dots in the <M>n</M>-th
 row. The basis corresponds to the topmost blue dot.
 
<B>Basis</B>: Here <M>n=2</M>  and <M>k=1.</M>   Do this case yourself by direct counting. There
 should be exactly 4 such paths.   


<B>Hypothesis</B>: Assume <M>S(n)</M>  for <M>n=2,...,m-1.</M>  

<B>Step</B>: Shall show for <M>n=m.</M>

Take any <M>k\in\{1,...,n-1\}.</M>

From the <RED>master equality</RED>, the required number is 
 <D>|A_{2n,2k}| = [[12]] \sum_{r=1}^k |Z_{2r}| N_{2k-2r,0}N_{2n-2k,0}+ [[12]]\sum_{r=1}^{n-k}|Z_{2r}| N_{2k,0}N_{2n-2k-2r,0}.</D>
Move the <M>r</M>-free terms  out of the summations:
 <D>|A_{2n,2k}| = [[12]] N_{2n-2k,0}\sum_{r=1}^k |Z_{2r}| N_{2k-2r,0}+ [[12]]N_{2k,0}\sum_{r=1}^{n-k}|Z_{2r}| N_{2n-2k-2r,0}.</D>
Of course, you can now use the formula for <M>|Z_{2r}|</M>  from the <B>first 0-return theorem</B> and
start algebraic manipulations. 
<HIDE lab="spl1"><MSG>But can you see directly that the
first sum is just <M>N_{2k,0}?</M> 
</MSG><HIDDEN>
The <M>r</M>-th sumand is (the number of <M>2r</M> length paths
with first 0-return at <M>2r</M>) <M>\times</M> (the number
of <M>2k-2r</M> paths starting and finishing at height 0). This
product is the number of <M>2r+(2k-2r)=2k</M> length paths
starting and ending at height 0 with
first 0-return at <M>2r.</M>
<P/>
Since we are summing over all possible values of <M>r</M>, the
sum is the number of <M>2k</M> length paths starting and ending
at height 0. This is precisely <M>N_{2k,0}.</M>
</HIDDEN></HIDE>
Similarly,<HIDE lab="spl2"><MSG> what is the second
sum? </MSG><HIDDEN>
<M>N_{2n-2k,0}.</M>
</HIDDEN></HIDE>
This immediately leads to 
 <D>|A_{2n,2k}| = N_{2k,0}N_{2n-2k,0},</D>
as required. 
</PF>
</COMMENT>

<HEAD3>Exercises about first return to 0</HEAD3>
::<EXR>(Medium)
Consider all paths of length <M>2n</M> starting at <M>(0,0).</M>
Prove that the number of these paths that return to <M>0</M> at <M>2n</M>
for the first time is <M>[[N_{2n,0}][2n-1]].</M>
<ANS>
Since we have no return to 0 before <M>2n</M>, the paths are of two types: nonnegative ones and
 nonpositive ones. Clearly their numbers are equal. So we shall count only the nonnegative ones
 and double the count to get the final answer. Any such path must be at (1,1) after the first step and
 be at <M>(2n-1,1)</M>  before the last step. 

So enough to count paths from (1,1) to <M>(2n-1,1)</M>  not hitting 0 inbetween. 

Now use the reflection principle.
</ANS>
</EXR>

::<EXR>(Medium)
Consider all paths of length <M>2n</M> starting at <M>(0,0).</M>
What is the number of these paths that return to <M>0</M>  <I>for the first time</I>
at <M>2r</M> for some given <M>r < n?</M> Also, how many of these
return to 0 from the positive side?
</EXR>
<HEAD3>Exercises about last return to 0</HEAD3>
::<EXR>(Hard)
Consider all paths of length <M>2n</M> starting at <M>(0,0).</M>
Take any <M>k\in\{1,...,n\}.</M> Show that the number of these paths that
return to 0 for last time at <M>2k</M> is <M>N_{2k,0}\times N_{2n-2k,0}.</M>

You'll need the result of Exercise 7 here.
<ANS>
<COMMENT>
x = c(1,1,0,0,0,1,0,1,0,0,0,0,1,0)
y = max(which(cumsum(2*x-1)==0))
col = rep(1,length(x))
col[y+1]=2
rw(x,'pathrg',col)
</COMMENT>
<CIMG web="pathrg.png">A typical such path</CIMG>
The red dot shows the last 0 hit, which occurs at time <M>2k.</M>
<P/>

We can choose the part before the red dot in <M>N_{2k,0}</M> ways. Also
independently of that, we can choose the part after the red dot
in <M>N_{2n-2k,0}</M> ways, by the conclusion of Exercise 7. Hence the result.
</ANS></EXR>
<HEAD3>Other problems</HEAD3>
::<EXR>(Medium)
(Ballot problem) two candidates are contesting in
a vote. There are <M>n</M> voters who have cast their votes. The
votes are being counted with the <M>n</M> ballot papers ordered
randomly. 
Candidate <M>A</M> has <M>p</M> votes and
candidate <M>B</M> gets <M>q=n-p (<p)</M> votes.  Show that the 
probability that during the counting <M>A</M> was always leading
is 
<D>
[[p-q][p+q]].
</D>
<ANS>
Let <M>y_i</M> be the lead of <M>A</M> over <M>B</M>
after <M>i</M> ballot papers have been counted. If we
plot <M>y_i</M> against <M>i,</M> we shall get a random walk
starting from <M>(0,0)</M> and ending at <M>(p+q,p-q).</M> 

The total number of outcomes is <M>N_{p+q,p-q} = {p+q\choose p}
= [[(p+q)!][p!q!]].</M> 

The
favourable oucomes correspond to the paths that always remain
positive after starting from (0,0).
 These paths must visit (1,1) after <M>(0,0).</M> 

Hence #{paths from (0,0) to <M>(p+q,p-q)</M> never returning to 0}
= #{paths from (1,1) to <M>(p+q,p-q)</M> never visiting  0}<BR/>
= #{paths from (1,1) to <M>(p+q,p-q)</M>}
- #{paths from (1,1) to <M>(p+q,p-q)</M>  visiting  0}<BR/>
= #{paths from (1,1) to <M>(p+q,p-q)</M>}
- #{paths from (1,1) to <M>(p+q,q-p)</M>  visiting  0}<BR/>
= <M>N_{p+q-1,p-q-1}-N_{p+q-1,q-p-1}</M><BR/>
 = <M>{p+q-1\choose p-1}- {p+q-1\choose q-1} =
[[(p+q-1)!][p!q!]](p-q).</M>

So the required probability is <M>[[p-q][p+q]],</M> as required.
</ANS>
</EXR>
::<EXR>(Medium)<CIMG web="most22.png"/>
<ANS>This is just the complement of the last problem. So the answer is <M>1-[[a-b][a+b]]=[[2b][a+b]].</M></ANS>
</EXR>

::<EXR>(Medium)Let <M>a,b>0.</M> Show that the number of paths from <M>(0,0)</M> to <M>(n,a)</M> that are
always <M>>-b</M> is <M>N_{n,a}-N_{n,a+2b}.</M> <ANS>
#{paths from <M>(0,0)</M> to <M>(n,a)</M> that are always <M>>-b</M>}<BR/>
=#{paths from <M>(0,0)</M> to <M>(n,a)</M>}-#{paths from <M>(0,0)</M> to <M>(n,-a-2b)</M>} by reflection principle<BR/>
 = <M>N_{n,a}-N_{n,-a-2b}</M><BR/> 
 = <M>N_{n,a}-N_{n,a+2b}</M> by symmetry.

</ANS></EXR>

::<EXR>(Medium) Let <M>b> a> 0.</M> Show that the number of paths
from <M>(0,0)</M> to <M>(n,a)</M> that are
always <M><b</M> is <M>N_{n,a}-N_{n,2b-a}.</M>
<ANS>
#{paths from <M>(0,0)</M> to <M>(n,a)</M> that are always <M><b</M>}<BR/>
=#{paths from <M>(0,0)</M> to <M>(n,a)</M>}-#{paths from <M>(0,0)</M> to <M>(n,2b-a)</M>} by reflection principle<BR/>
 = <M>N_{n,a}-N_{n,2b-a}.</M> 
</ANS></EXR>

::<EXR>(Hard) Show that if <M>a> c> 0</M>  and <M>b>0</M>, then  the number of paths from (0,0) to <M>(n,c)</M>
  that attain height <M>a</M>  and <I>then</I>  attain height <M>-b</M>  before finishing at <M>(n,c),</M>  is <M>N_{n,2a+2b+c}.</M> 
If the path is at <M>X_t</M>  at time <M>t</M>  for <M>t\in\{0,...,n\},</M>  then we are talking about the set of all those
 paths for which <M>\exists t_1 < t_2 ~~X_{t_1} = a~~X_{t_2}=-b.</M>  
<ANS>
Consider any such path. Let <M>t_1</M>  be the first time it hits <M>a.</M>  Reflect the path from time <M>t_1</M>  to <M>n</M> 
 wrt the horizontal line through <M>a.</M>  This gives a path that is bound to hit <M>2a+b</M> and
 end at <M>2a-c.</M>  Let <M>t_2</M>  be the first time it hits <M>2a+b.</M>  Reflect the path
 again from <M>t_2</M>  to <M>n</M>  wrt the horizontal line through <M>2a+b.</M>  This gives a path that ends at <M>(n,2a+2b+c).</M> 
</ANS> </EXR>
::<EXR>(Hard) Let <M>a>c>0</M> and <M>b>0.</M> Show that the number of
paths from <M>(0,0)</M> which hit the
horizontal line at height <M>a</M> and then lead to <M>(n,c)</M>
without having touched the horizontal line at height <M>-b</M> is  
<M>N_{n,2a-c}-N_{n,2a+2b+c}.</M> (Note that the path may touch
the horizontal line at height <M>-b</M> <I>before</I> hitting
the line at height <M>a.</M>)<ANS>
Let <M>A = </M> {paths from <M>(0,0)</M> which hit the
horizontal line at height <M>a</M> and then lead to <M>(n,c)</M> }.
Let <M>B = </M>{paths in <M>A</M>  that  attain height <M>-b</M>  <I>after</I>  attaining height <M>a</M> }.

Then the answer is <M>|A|-|B|.</M>   By reflection principle <M>|A| = N_{n,2a-c}</M>  and <M>|B| = N_{n,2a+2b+c}.</M>
Hence the result. 
<CIMG web="flucex9.png">How <M>|B|</M>  is found by 2 reflections</CIMG>
</ANS></EXR>

::<EXR>(Hard)Prove that there are as many paths from (0,0)
to <M>(2n+2,0)</M> with all interior vertices <M>>0</M> as there
are paths from (0,0) to <M>(2n,0)</M> where all interior
vertices are <M>\geq 0.</M><ANS>
Any path from (0,0)
to <M>(2n+2,0)</M> with all interior vertices <M>>0</M> must
visit (1,1) after <M>(0,0)</M>, and <M>(2n+1,1)</M>
before <M>(2n+2,0).</M>
So #{paths from (0,0)
to <M>(2n+2,0)</M> with all interior vertices <M>>0</M>}<BR/>
= #{paths from (1,1)
to <M>(2n+1,1)</M> with all interior vertices <M>>0</M>}<BR/>
= #{paths from (1,0)
to <M>(2n+1,0)</M> with all interior vertices <M>\geq 0</M>}<BR/>
= #{paths from (0,0)
to <M>(2n,0)</M> with all interior vertices <M>\geq 0</M>}.
</ANS></EXR>


::<EXR>(Easy)True or false: The probability that before time <M>2n</M> there occur
exactly <M>r</M> returns to the origin equals the probability
that a return occurs at time <M>2n</M>  preceded by at
least <M>r</M> returns.
<ANS>False. Consider <M>r=1</M>  and <M>n=2.</M>  Then the first probability is <M>[[12]].</M> 
 But the second probability is <M>[[14]].</M></ANS>
</EXR>

::<EXR>(Easy)Consider random paths of length <M>2n</M> starting
from <M>(0,0).</M> Let <M>k\in\{1,...,n\}.</M> Consider the two events:
<Q>
<M>A = </M> the path passes through <M>(2n,0)</M> and the maximum
height of the interior vertices is <M>\geq k.</M>
</Q>
and 
<Q>
<M>B = </M> the path passes through <M>(2n,2k).</M>
</Q>
Show that <M>P(A) = P(B).</M>  Is this true if <M>k\leq 0?</M>  Is it true if <M>k>n?</M>
<ANS>
For <M>k\in\{1,...,n\},</M>  the result follows directly from reflection principle. The result fails if <M>k\leq 0.</M> 
 One counterexample, if when <M>k=-10</M>  and <M>n=1.</M>  The result holds if <M>k>n,</M>  because then <M>P(A)=P(B)=0.</M>
</ANS></EXR>

::<EXR>(Medium) Find the fallacy in the following argument:
Consider the set of all paths of length 10 starting
from <M>(0,0).</M>
<P/>
Let <M>A = </M>set of paths that never return to 0. 
<P/>
Let <M>B = </M>set of paths that never return to 0 at or before time 8.

Now define <M>C_k</M> as the set of all paths
that do not hit 0 at time <M>2k.</M> Then <M>A = \cap_1^5 C_k</M>
while <M>B = \cap_1^4 C_k.</M> So <M>|A|\leq |B|.</M>

Again,  any path that has not hit 0 at or before time 8 can be
continued for two more time units without hitting
0. So <M>|B| \leq |A|.</M> 

Hence <M>|A|=|B|.</M> 
<ANS>The "<M>|B|\leq |A|</M> " argument is wrong. What it says is: number of paths <I>of length 8</I>
 that never return to 0 is <M>\leq |A|</M> ".</ANS> </EXR>

::<EXR>(Hard)<CIMG web="most56.png"/>
<ANS>
Let the total number of balls in either box be <M>k.</M>  Let there be <M>w_i</M>  white balls in box <M>i.</M>  Then the
 given condition says 
<D>(*([[w_1][k]])*)^n = (*([[w_2][k]])*)^n + (*(1-[[w_2][k]])*)^n,</D>
or
<D>w_1^n = w_2^n + (*(k-w_2)*)^n.</D>
Since <M>n\geq 3,</M>  hence by Fermat's last theorem, there cannot be any nonzero integer solution for this. 
So either <M>w_1 = 0</M>  or <M>w_2 = 0</M>  or <M>k-w_2 = 0.</M>  Here <M>w_1</M>  cannot be zero, since then the lhs is
 zero, while the rhs is positive. If <M>w_2 = 0</M>, then the first box has all whites and the second all blacks. If <M>k-w_2=0,</M> 
 then both the boxes has all whites.
</ANS>
</EXR>
::<EXR>(Hard) Let <M>u_{2n}</M> denote the probability that a random path
of length <M>2n</M> starting from <M>(0,0)</M> passes
through <M>(2n,0).</M> Also, let <M>u_0=1.</M> Let <M>v_{2n}</M>
denote the probability that a random path of length <M>2n</M>
starting from <M>(0,0)</M> returns to 0 for the first time
at <M>2n.</M>  Then show without using the explicit form
of <M>u_{2n}</M> and <M>v_{2n}</M> that
<D>
v_2 u_{2n-2} + \cdots + v_{2n} u_0 = u_{2n}.
</D>
<ANS>Condition on the first time the path returns to zero, and then use the theorem of total probability.</ANS>
</EXR>
</NOTE>@}
