<NOTE>
@{
<TITLE>Numerical Analysis</TITLE>
<UPDT>FRI MAR 26 IST 2021</UPDT>
<HEAD1>Numerical Analysis</HEAD1>
Numerical analysis is all about solving equations (approximately)
using a
computer. Here the term "equation" is used in a very general
sense: You'll be given a set up, and some partial information
about it, and you have to find some other information based on
that. Here are some examples:
<UL><LI>Finding the area under a given curve.</LI>

<LI>Finding the roots of a given 10-degree polynomial.</LI>

<LI>Finding all solutions of a given linear system of
equations in 1000 variables.</LI>

<LI>Solving  a given differential equation.</LI>
</UL>
While all these sound nice, many students feel uncomfortable
about solving equations only <I>approximately</I>. For them,
numerical analysis seems to be much less useful than the exact
techniques learnt in school. Let us first understand why this is
not so. 

<HEAD2>Approximate versus exact</HEAD2>
We shall discuss some scenarios where an approximate solution is
a desirable thing.

<HEAD3>When an exact solution is impossible/difficult to find</HEAD3>
 Take for example the
integral 
<D>
\int_a^b e^{-x^2}\, dx.
</D>
We need to find this integral for given <M>a,b</M> in many
problems of probability, statistics and physics. The high-school
technique of first finding an antiderivative <M>F(x)</M>
of <M>e^{-x^2},</M> and then computing <M>F(b)-F(a),</M> does not
work here. Liouville has proved that <M>F(x)</M> cannot be
expressed in terms of any combination of trigonometric, exponential, logarithmic
or algebraic functions! 

<P/>

In some situation involving real data, we may get a rather
complicated function (e.g., motion
of the moon after taking into account the attraction of Jupiter),
and we may need to find when that function takes a certain value. (See
the <B>moonpos</B> procedure
in  <LINK to="https://idlastro.gsfc.nasa.gov/contents.html">Astrolib</LINK>
if you are astronomically inclined.) Even finding out
if the equation may be solved exactly, is a difficult problem.

<HEAD3>When an "exact solution" is not a solution at all!</HEAD3>
Suppose that you are trying to make a telescope, and find that
the distance between two lenses must be <M>x</M> cm, where <M>x^2-2 = 0.</M>
<P/>
The exact solution is of course <M>x = \sqrt 2</M>. But what does
this <M>\sqrt 2</M> really mean? It means a positive number whose
square is 2. Thus, this "exact solution" is a mere restatement of
the original problem! However, <M>x\approx 1.414</M> is of much
more use here.
<P/>
Similarly, if the exact answer to some problem is <M>\pi</M>,
then you are basically reducing that problem to the problem of
finding the ratio of the circumference and diameter of a
circle. Many "exact solutions" are just saying that the problem at
hand has the same solution as some other problem.
 
<HEAD3>When the exact solution is less reliable than the
approximate one</HEAD3>
In mathematics, we are fond of certain frequently used functions,
like sine, cosine, logarithm, exponential, square root, etc. We
are generally happy if we can express the answer to some problem
in terms of these favourite functions. For example, most students
of mathematics will consider 
<D>
[[-10 + \sqrt{10^2-4\times 7\times[[2][3]]}][2\times 7]]
</D>
to be an exact root of the equation <M>7x^2 + 10x + [[23]] = 0.</M> 

<P/>
When we need the exact numerical value, we simplify the expression down to 
<D>
[[-10+\sqrt{[[244][3]]}][14]].
</D>
No approximation so far. Now we have to find <M>[[244][3]],</M>
which cannot be stored exactly in a computer (recurring). So we
approximate it to <M>81.3333.</M> Next we feed this into the
square root. Even <M>\sqrt{81.3333}</M> cannot be stored exactly
in a computer. So another layer of approximation is
needed: <M>9.0185.</M> We have again used a 4-decimal place
approximation. Thus, 
<UL>
<LI><M>[[244][3]]</M> and <M>81.3333</M> match up to 4 decimal
places.</LI>
<LI><M>\sqrt{81.3333}</M> and <M>9.0185</M> match up to 4 decimal
places.</LI>
</UL>
But that does not guarantee that <M>\sqrt{[[244][3]]}</M>
and <M>9.0185</M> match up to 4 decimal places!
Our favourite functions may not behave nicely with approximations!
<P/>
Next we add the <M>-10</M> (this does not entail any extra
approximation). But when you finally divide by 14, yet another
layer of approximation is inevitable. So all that we can say 
about the final answer: <M>-0.0701</M>  is that it may contain an
error of unknown order of magnitude!
<P/>
A numerical method will not try to express answers in terms of
the favourite functions. It will consider the input to output as
a single function: (coefficients mapped to roots). Then it will
approximate this single function directly. Thus, typically,
you will have a more reliable error estimate here. 

<HEAD2>Who uses numerical analysis</HEAD2>
Modern engineering and physics would hardly be possible without
numerical analysis. Even computer-generate animation movies
(e.g., Shrek) or computer games involving collisions (e.g.,
simulated soccer) make heavy use of numerical analysis.
<P/>
In statistics, we often com across equations where the constants
involved are based on observed data (and hence may be nasty
beyond control). So  statistician cannot survive without
numerical analysis.
<P/>

<DISQUSE id="intro"
url="https://www.isical.ac.in/~arnabc/numana2021/intro.html"/>
@}
</NOTE>
