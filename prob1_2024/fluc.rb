<NOTE>
@{<E>
<HEAD1>Random walks</HEAD1>
The material here is taken from chapter 3 of Feller, Volume
1.
<HEAD2>Basics</HEAD2>
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


<EXR>Find the probability that the drunkard ends up at any given
<M>k\in\zz</M> in exactly <M>n</M> steps.</EXR>

<DEFN name="Number of paths">
Let the number of paths from <M>(0,0)</M> to <M>(n,x)</M> be
denoted by <M>N_{n,x}.</M>
<P/>
Clearly, 
<D>
N_{n,x} = \binom{n}{[[n+x][2]]}.
</D>
This is <M>0</M> if <M>[[n+x][2]]</M> is
outside <M>\{0,1,...,n\}.</M> Also, note the trivial case <M>N_{0,0}=1.</M>
</DEFN>

Clearly, the total number of paths from <M>(a,p)</M>
to <M>(b,q)</M> is <M>N_{b-a,q-p}.</M>

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

<EXR>
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

Now we are going to learn some theorems that are
interconnected. Their interconnections are shown below:
<CIMG web="pflink.png"/>
Since we are assuming that all paths in the sample space are
equally likely, computing probabilities of different events
amounts to finding the size of the events (i.e., counting the
number of paths in the event). So the theorems are presented in
terms of sizes of events rather than in terms of their probabilities. 

We shall start with a discrete version of the intermediate value
theorem. 

<BOX name="Intermediate value theorem for paths">
Let <M>\alpha:(m,p)</M> and <M>\beta:(n,q)</M> with
<M>m,n,p,q\in\zz</M> and <M>m<n.</M> Let <M>L</M> be any integer
strictly between <M>p</M> and <M>q.</M> 
Then any path from <M>\alpha </M>
to <M>\beta </M> must have a point on it of the form <M>(t,L)</M>
where <M>t</M> is some integer strictly between <M>m</M> and <M>n.</M>
</BOX>
The situation is illustrated in the diagram below:
<CIMG web="inter.png">Here either <M>t_1</M> or <M>t_2</M> may be
chosen as <M>t.</M></CIMG> 
The theorem may appear trivial at first. If you think so, just try to
write down a proof before reading further.

Here is my proof:

<PF>
Take any path from <M>\alpha</M> to <M>\beta.</M>

Let <M>M</M> be the set of all points on it that are
below <M>L.</M> 
<P/>
Clearly, <M>M</M> is finite (since the path has
finite length).

<P/>
Also <M>M\neq \phi,</M> since <M>\alpha'\in M.</M>
<P/>
Let the
maximum time coordinate be <M>k</M> among all the points
in <M>M.</M> (Well-defined, since <M>M</M> is finite and nonempty).
<P/>
Clearly, <M>k < </M> the length of the path (since <M>\beta </M>
is above <M>L</M>).
<P/>

Then the path must meet <M>L</M> at time <M>k+1.</M>
<BECAUSE>
Otherwise, at time <M>k+1,</M> the path  must
<Q><OL>
<LI>either be below <M>L</M> (impossible, since <M>k</M> was the maximum)</LI>
<LI>or be above <M>L</M> (impossible, since then <M>q</M> has to
move more than one step from time <M>k</M> to <M>k+1.</M>)</LI>
</OL></Q>
</BECAUSE>
So taking <M>t = k+1</M> will complete the proof.
</PF>

<HEAD2>Reflection principle</HEAD2>
<BOX name="Reflection principle">
Draw any horizontal line <M>L</M> at an integer height. Pick any two
points <M>\alpha:(m,p)</M> and <M>\beta:(n,q)</M> with <M>m<n</M> on the same
side of the line (<M>m,n,p,q\in\zz</M>). Let <M>\alpha'</M> be the reflection
of <M>(m,p)</M> along <M>L.</M> Then the number of paths
from <M>\alpha</M>
to <M>\beta</M> that meets (i.e., touches or cuts) <M>L</M> is the same as the
number of paths from <M>\alpha'</M> to <M>\beta.</M>
</BOX>
<PF>
Keep an eye on this picture while reading the proof:
<CIMG web="refl.png">Reflection principle</CIMG>
Let <M>S</M> be the set of all paths from <M>\alpha </M>
to <M>\beta </M> that meets <M>L.</M> 
<P/>
Let <M>T</M> be the set of all paths from <M>\alpha'</M>
to <M>\beta.</M>
<P/>
Shall show that <M>|S|=|T|.</M>
<P/>
Enough to show that there is a bijection from <M>f:S\to T.</M>
<P/><B>Step 1: Constructing <M>f</M></B>:
<P/>

Take any path <M>p\in S.</M> Let <M>\gamma</M> be the first point where the
path meets <M>L.</M> This is well-defined thanks to the
intermediate value theorem for paths.

Reflect along <M>L</M> the part of the path
between <M>\alpha</M> and <M>\gamma.</M> This will give a path
from <M>\alpha'</M> to <M>\beta.</M> Define <M>f(p)</M> to be
this path.

We shall now show that it is a bijection. The following diagram is an example showing the effect of this map:
<CIMG web="reflecexm.png">The purple part is reflected</CIMG>
<P/><B>Step 2: Showing onto</B>:
<P/>
Take any <M>q\in T.</M> Since <M>\alpha'</M> and <M>\beta</M> are
on opposite sides of <M>L,</M> so the path must
intersect <M>L</M> some time or other. 

Let <M>\gamma</M> be the
first such point. Reflect the part of <M>q</M> between <M>\alpha
'</M> and <M>\gamma </M> to get a path <M>p\in S.</M>
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
How many paths are there from <M>(0,0)</M> to <M>(10,3)</M> that
are strictly positive at all times <M>>0?</M>
<SOLN/>
This is very similar to the exercise above (with <M>L</M> given
by the horizontal line at height <M>0</M>), except that we start
on the line itself. 
<P/>
However, it is obvious that our path must go to <M>(1,1)</M>
after the first step. So the last exercise may be applied
between <M>A:(1,1)</M> and <M>B:(10,3).</M>
</EXM>

<HEAD2>First passage theorem</HEAD2>
<THM name="First passage theorem">
Consider all paths of length <M>n</M> starting at <M>(0,0).</M>
Let <M>r\in\{1,...,n\}.</M> Then the number of paths that attain
height <M>r</M> for the first time at time <M>n</M> is 
<D>
N_{n-1,r-1}-N_{n-1,r+1}.
</D>
</THM>
<PF>
Such a path must pass through <M>(n-1,r-1)</M> and <M>(n,r).</M>
Also it must never meet the the line at height <M>r</M> up to and
including time <M>n-1.</M>
<P/>
By reflection principle the path up to time <M>n-1</M> may be
chosen in <M>N_{n-1,r-1}-N_{n-1,r+1}</M> ways. The step from
time <M>n-1</M> to <M>n</M> is forced (it has to move up). 
<P/>
Hence the result.
</PF>


<HEAD2>Maximum theorem</HEAD2>
<THM name="Maximum theorem">
Consider all paths of length <M>n</M> starting from <M>(0,0).</M>
Let <M>r\in\{0,...,n\}.</M> Then 
the number of paths with maximum <M>r</M> is <M>N_{n,r}</M>
if <M>n,r</M> have the same parity, and <M>N_{n,r+1}</M> else.
</THM>
<PF>
We need to  find the number of paths with maximum <M>r.</M>
<P/>
We shall split the set of all such paths
based on where the path ends. Clearly, it can end somewhere <M>\leq r.</M>
<P/>
Fix any end point <M>A:(n,k)</M> for <M>k\leq r.</M> 
So enough to count all paths with maximum <M>r</M> and ending at
some given <M>A.</M>
<P/>
<HIDE lab="why">
<MSG>Notice that it is enough to count all paths with maximum <M>\geq
r</M> and ending at <M>A.</M></MSG>
<HIDDEN>If this number is <M>M_r</M> then our answer is <M>M_r-M_{r+1}.</M>
</HIDDEN></HIDE>
This is <M>N_{n,2r-k}</M> by the <B>reflection principle</B>. 
<P/>
So the number of paths with maximum <M>r</M> and ending
at <M>A</M> is 
<D>
N_{n,2r-k} - N_{n,2(r+1)-k}.
</D>
We shall now sum this over <M>k\leq r.</M> Two points are to
be noted about this: 
<UL>
<LI>If <M>N_{n,2r-k}</M> is denoted by <M>a_k,</M> then we are
summing 
<D>
(a_r-a_{r-2}) + (a_{r-1}-a_{r-3}) + (a_{r-2}-a_{r-4}) + \cdots 
</D>
Notice the two-step telescoping structure: each negative term
cancels the positive term two steps ahead. 
</LI>
<LI>The sequence <M>(a_k)</M> eventually becomes 0, as <M>k</M>
goes down. </LI></UL>
So only the first two two terms survive, i.e., <M>a_r+a_{r-1}</M>
or <M>N_{n,r}+N_{n,r+1}.</M>
<P/>
We know that <M>N_{a,b}</M> is 0 if <M>a,b</M> have opposite
parities. Hence the result.
</PF>


<HEAD2>No 0-return theorem</HEAD2>
<THM name="No 0-return theorem">
Consider all paths of length <M>2n</M> starting
at <M>(0,0)</M>. The number of these paths
that never return to <M>0</M> is <M>N_{2n,0}.</M>
</THM>
<PF>
Such a path must either always be positive. Or always be
negative. Clearly, the number of all-positive paths is the same
as that of all-negative paths.
<P/>
An all-positive path must visit <M>(1,1)</M> immediately
after <M>(0,0).</M> So enough to compute the number of
all-positive paths starting from <M>(1,1).</M>
<P/>
Where can such a path end? It can end at <M>2r</M> for
some <M>r\in\{1,...,n\}.</M>

<P/>
By the <B>reflection principle</B>, 
the total number of all-positive paths from <M>(1,1)</M>
to <M>(2n,2r)</M> is the total number of <M>(1,1)\to(2n,2r)</M> paths
minus the total number of <M>(1,-1)\to(2n,2r)</M> paths, i.e., 
<M>N_{2n-1,2r-1}-N_{2n-1,2r+1}.</M>

<P/>
So the total number of all-positive paths is the telescoping sum
<D>
(N_{2n-1,1}-N_{2n-1,3}) +
(N_{2n-1,3}-N_{2n-1,5}) + \cdots + (N_{2n-1,2n-1}-N_{2n-1,2n+1})
= N_{2n-1,1}-N_{2n-1,2n+1} = N_{2n-1,1},
</D>
since <M>N_{2n-1,2n+1}=0</M> (<M>\because 2n+1 > 2n-1</M>).
<P/>

Combining all-positive and all-negative paths, the total count is
<M>2N_{2n-1,1} =
2\binom{2n-1}{n}=[[2(2n-1)!][(n-1)!n!]] =[[(2n!)][n!n!]]
=\binom{2n}{n} = N_{2n,0}.</M>
</PF>

<HEAD2>First 0-return theorem</HEAD2>
<THM name="First 0-return theorem">
Consider all paths of length <M>2n</M> starting at <M>(0,0).</M>
The number of these paths that return to <M>0</M> at <M>2n</M>
for the first time is <M>4N_{2n-2,0}-N_{2n,0}=[[N_{2n,0}][2n-1]].</M>
</THM>
<PF>
Let <M>A</M> be the set of all the paths that never return to 0.
<P/>
Let <M>B</M> be the set of all the paths that never return to
before or at time <M>2n-2.</M> (We are always considering paths
of length <M>2n.</M>)
<P/>
Then we want to find <M>|B\setminus A|.</M>
<P/>
Since <M>A\seq B,</M> this is <M>|B|-|A|.</M>
<P/>
Now <M>|A| = N_{2n,0}</M> by the <B>No 0-return theorem</B>.
<P/>
Also, by the same theorem, <M>|B| = 2^2N_{2n-2,0}.</M>
<HIDE lab="ext"><MSG>(Why?)</MSG>
<HIDDEN>By the <B>No 0-return theorem</B>, total number of paths
of length <M>2n-2</M> that never returns to <M>0</M>
is <M>N_{2n-2,0}.</M> Then we are free to choose the next two
steps (from time <M>2n-2</M> to time <M>2n</M>), which may be
done in <M>2^2</M> ways.</HIDDEN>
</HIDE>
<P/>
Hence the result.
</PF>


<EXR>
Consider all paths of length <M>2n</M> starting at <M>(0,0).</M>
What is the number of these paths that return to <M>0</M>
at <M>2r</M> for some given <M>r < n?</M> Also, how many of these
return to 0 from the positive side?
</EXR>

<HEAD2>Last 0-return theorem</HEAD2>
<THM name="Last 0-return theorem">
Consider all paths of length <M>2n</M> starting at <M>(0,0).</M>
Take any <M>k\in\{1,...,n\}.</M> The number of these paths that
hit 0 for last time at <M>2k</M> is <M>N_{2k,0}\times N_{2n-2k,0}.</M>
</THM>
<PF>
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
in <M>N_{2n-2k,0}</M> ways, by the <B>no 0-return theorem</B>. Hence the result.
</PF>

<HEAD2>Positive duration theorem</HEAD2>
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
Consider all paths of length <M>2n</M> starting at <M>(0,0).</M>
Take any <M>k\in\{1,...,n\}.</M> The number of these paths that
remain positive for exactly <M>2k</M> time units is <M>N_{2k,0}\times N_{2n-2k,0}.</M>
</THM>
<PF>
Let's warm up by looking at an example with <M>n=7</M> and <M>k=4.</M>
<COMMENT>
x = c(1,1,0,0,0,1,1,1,0,0,0,0,1,0)
rw(x,'pathlead')
</COMMENT>
<CIMG web="pathlead.png">First 0-return  at <M>4</M></CIMG>

We shall split the set of all such paths into some disjoint
subsets based on when the first 0-return occurs and from which
side. For example, in the above example, it occurs at 4,
and from the positive side. In general, here are
all the possible cases:

<CIMG web="pathcases.png">Different cases</CIMG>
Let's first deal with the red case (i.e., when the path never
returns to 0). Obviously, this situation can occur only
when <M>2k=0</M> (the path is always below the <M>x</M>-axis) or
when <M>2k=2n</M> (the path is always above the <M>x</M>-axis).
<P/>
In both these cases the result follows immediately
from the <B>No 0-return theorem</B>.

<P/>

Next let's consider the green case.
<P/>
How many such
paths are possible such that the first 0-hit occurs at <M>2r</M>
from the positive side? The
answer is
<Q>
#(<M>2r</M> length paths with first 0-hit from positive side at <M>2r</M>)<M>\times</M> #(<M>2n-2r</M> length paths
with exactly  <M>2k-2r</M> positive segments).
</Q>
Out of the two factors we already know a nice formula for the
first one from the <B>First 0-return theorem</B>.
 Also, the
second factor is precisely of the type that we want to find in
this theorem. However, it is for a shorter path (length
being <M>2n-2r</M> instead of <M>2n</M>). So induction on
path-length may help.

<P/>
Notice that here <M>r\in\{1,...,k\}.</M> (Otherwise, you get more
than <M>2k</M> segments above the <M>x</M>-axis.)
<P/>
Next look at the blue case.
<P/>
How many such
paths are possible such that the first 0-hit occurs at <M>2r</M>
from the negative side? The
answer is
<Q>
#(<M>2r</M> length paths with first 0-hit from negative side at <M>2r</M>)<M>\times</M> #(<M>2n-2r</M> length paths
with exactly  <M>2k</M> positive segments).
</Q>
Again, the first factor is tractable by the <B>First 0-return
theorem</B>, and the second factor may hopefully be dealt with by
induction. 
<P/>
Notice that here <M>r\in\{1,...,n-k\}.</M> (Otherwise, you get less
than <M>2k</M> segments above the <M>x</M>-axis.)

<P/>

We shall use induction on <M>n\geq k.</M> (Here we are
holding <M>k</M> fixed.)
<P/>
<B>Basis</B>: Here we consider  <M>n=k,</M> i.e., the case where
all the segments are above the <M>x</M>axis. We shall employ a
trick here. Shift the path by <M>(1,1).</M> and
connect <M>(0,0)</M> to <M>(1,1)</M> The following diagrams would
help you to understand the transformation.
<COMMENT>
rw2(c(0,1,0,1,2,1,0,1,2),'was')
rw2(c(0,1+c(0,1,0,1,2,1,0,1,2)),'is',c('red',rep('black',8)))
</COMMENT>
<CIMG web="was.png">The original path</CIMG>
<CIMG web="is.png">The transformed path (the extra segment shown
in red)</CIMG>
Notice that this gives a bijection between 
<UL>
<LI>the set of paths of length <M>2n</M> where all the segments
are above the <M>x</M>-axis</LI>
<LI>the set of positive paths of length <M>2n+1</M> that never return to 0.</LI>
</UL>
Now the size of the 
latter set is <M>N_{2n,0}</M><HIDE lab="baje"><MSG>(Why?)</MSG>
<HIDDEN>
Since <M>2n+1</M> is odd, so each element of this set is a
positive path that does not return to 0 up to and including
time  <M>2n</M>, and then it is free to move wherever it wants at
time <M>2n+1</M> (since it can never hit 0 at an odd time point).

<P/>
So the size is <M>[[12]]\times N_{2n,0}\times 2.</M>
The <M>[[12]]</M> because we are considering
only <I>positive</I> paths. The 2 because the path is free to
move from time <M>2n</M> to <M>2n+1.</M>
</HIDDEN></HIDE>, completing the proof of the basis.
<P/>
<B>Hypothesis</B>: Assume the result for <M>n\in\{k,k+1,...,m-1\}</M> for some <M>m> k.</M>
<P/>
<B>Step</B>: Shall show for <M>n=m.</M>
<P/>
Here the required number is 
<Q>
<M>[[12]]\sum_{r=1}^k</M> #{<M>2r</M> length paths with first 0-return at <M>2r</M>}<M>N_{2n-2k,0} N_{2k-2r,0}</M>
+<M>[[12]]\sum_{r=1}^{n-k}</M> #{<M>2r</M> length paths with
first 0-return at <M>2r</M>}<M>N_{2k,0} N_{2n-2k-2r,0}</M> 
</Q>
Take terms free of <M>r</M> out of the summations:
<Q>
<M>[[12]]N_{2n-2k,0}\sum_{r=1}^k</M> #{<M>2r</M> length paths with first 0-return at <M>2r</M>}<M>N_{2k-2r,0}</M>
+<M>[[12]]N_{2k,0}\sum_{r=1}^{n-k}</M> #{<M>2r</M> length paths with first 0-return at <M>2r</M>}<M> N_{2n-2k-2r,0}</M> 
</Q>
Of course, you can now use the <B>First 0-return theorem</B> and
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
</PF>


<HEAD2>Problems for practice</HEAD2>
<EXR>
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
favourable oucomes correspond to the paths that always remains
positive 0 after starting from (0,0).
 These paths must visit (1,1) after <M>(0,0).</M> 

Hence #{paths from (0,0) to <M>(p+q,p-q)</M> ever returning to 0}
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
<EXR><CIMG web="most22.png"/>
<ANS>This is just the complement of the last problem. So the answer is <M>1-[[a-b][a+b]]=[[2b][a+b]].</M></ANS>
</EXR>

<EXR>Let <M>a,b>0.</M> Show that the number of paths from <M>(0,0)</M> to <M>(n,a)</M> that are
always <M>>-b</M> is <M>N_{n,a}-N_{n,a+2b}.</M> <ANS>
#{paths from <M>(0,0)</M> to <M>(n,a)</M> that are always <M>>-b</M>}<BR/>
=#{paths from <M>(0,0)</M> to <M>(n,a)</M>}-#{paths from <M>(0,0)</M> to <M>(n,-a-2b)</M>} by reflection principle<BR/>
 = <M>N_{n,a}-N_{n,-a-2b}</M><BR/> 
 = <M>N_{n,a}-N_{n,a+2b}</M> by symmetry.

</ANS></EXR>

<EXR>Let <M>b> a> 0.</M> Show that the number of paths
from <M>(0,0)</M> to <M>(n,a)</M> that are
always <M><b</M> is <M>N_{n,a}-N_{n,2b-a}.</M>
<ANS>
#{paths from <M>(0,0)</M> to <M>(n,a)</M> that are always <M><b</M>}<BR/>
=#{paths from <M>(0,0)</M> to <M>(n,a)</M>}-#{paths from <M>(0,0)</M> to <M>(n,2b-a)</M>} by reflection principle<BR/>
 = <M>N_{n,a}-N_{n,2b-a}.</M> 
</ANS></EXR>

<EXR>Show that if <M>a> c> 0</M>  and <M>b>0</M>, then  the number of paths from (0,0) to <M>(n,c)</M>
  that attain height <M>a</M>  and <I>then</I>  attain height <M>-b</M>  before finishing at <M>(n,c),</M>  is <M>N_{n,2a+2b+c}.</M> 
 The paths may have also attained height <M>-b</M>  before attaining height  <M>a.</M>
<ANS>
<CIMG web="drefl.png"/>
</ANS> </EXR>
<EXR>Let <M>a>c>0</M> and <M>b>0.</M> Show that the number of
paths from <M>(0,0)</M> which touch the
horizontal line at height <M>a</M> and then lead to <M>(n,c)</M>
without having touched the horizontal line at height <M>-b</M> is  
<M>N_{n,2a-c}-N_{n,2a+2b+c}.</M> (Note that the path may touch
the horizontal line at height <M>-b</M> <I>before</I> hitting
the line at height <M>a.</M>)<ANS>
Let <M>A = </M> {paths from <M>(0,0)</M> which touch the
horizontal line at height <M>a</M> and then lead to <M>(n,c)</M> }.
Let <M>B = </M>{paths in <M>A</M>  that do not attain height <M>-b</M>  <I>after</I>  attaining height <M>a</M> }.

Then the answer is <M>|A|-|B|.</M>   By reflection principle <M>|A| = N_{n,2a-c}</M>  and <M>|B| = N_{n,2a+2b+c}.</M>
Hence the result.
</ANS></EXR>

<EXR>Prove that there are as many paths from (0,0)
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


<EXR>True or false: The probability that before time <M>2n</M> there occur
exactly <M>r</M> returns to the origin equals the probability
that a return occurs at time <M>2n</M>  preceded by at
least <M>r</M> returns.
<ANS>False. Consider <M>r=1</M>  and <M>n=2.</M>  Then the first probability is <M>[[12]].</M> 
 But the second probability is <M>[[14]].</M></ANS>
</EXR>

<EXR>Consider random paths of length <M>2n</M> starting
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

<EXR>Find the fallacy in the following argument:
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

<EXR><CIMG web="most56.png"/>
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
<DISQUSE url="https://arnabc74.github.io/prob1_2024/fluc.html" id="fluc"/>
</E>@}
</NOTE>
