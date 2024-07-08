<NOTE>
@{<E>
<HEAD1>Convex function</HEAD1>
Here are two possible definitions of a convex function. We have
already given the first definition:
<DEFN name="Convex function (version 1)">
A function <M>f:\rr\to\rr</M> is called <B>convex</B>
if <M>\forall a\in\rr</M> there is a line <M>y = \ell_a(x)</M>
through <M>(a,f(a))</M> that lies on or below the graph
of <M>f(x),</M> i.e., 
<D>
\forall x\in\rr~~ \ell_a(x) \leq f(x).
</D>
</DEFN>

The second definition is 

<DEFN name="Convex function (version 2)">
A function <M>f:\rr\to\rr</M> is called <B>convex</B>
if <M>\forall a< b \in\rr</M> and <M>\forall \alpha \in (0,1)</M>
we have 
<D>
f(\alpha a + (1-\alpha) b) \leq \alpha f(a) + (1-\alpha) f(b).
</D>
</DEFN>
Given any two number <M>a,b</M> all numbers between them may be
expressed as <M>\alpha a+ (1-\alpha) b</M> for
some <M>\alpha\in(0,1).</M> Also for any <M>\alpha\in(0,1)</M>
the number <M>\alpha a+ (1-\alpha) b</M> must lie
between <M>a</M> and <M>b.</M> So 
graphically, the second definition  means the chord always lies above the graph of
the function. 

<P/>
We shall now show that these two definitions are equivalent. 

<THM>
If <M>f(x)</M> is convex according to the first version, then it
must be convex according to the second version.
</THM>
<PF>
We shall show this using probability!
<P/>
Take any <M>a < b\in\rr</M> and any <M>\alpha \in (0,1).</M>

Define a random variable that takes values <M>a</M> and <M>b</M>
with probabilities <M>\alpha</M> and <M>1-\alpha,</M> respectively.
<P/>
Then Jensen's inequality says <M>f(E(X))\leq E(f(X)).</M>
<P/>
Now <M>E(X) = \alpha a + (1-\alpha) b</M> and <M>E(f(X)) = \alpha f(a) + (1-\alpha) f(b).</M>
<P/>
Hence the result.
</PF>

<THM>
If <M>f(x)</M> is convex according to the second version, then it
must be convex according to the first version.
</THM>
<PF>
For any <M>a < b\in\rr</M> define <M>slope(a,b)</M> as the slope
of the chord of <M>f(x)</M> over <M>[a,b].</M> In other words,
<D>
slope(a,b) = [[f(b)-f(a)][b-a]].
</D>
<CIMG web="slope.png"/>
Notice that if <M>x_1 < x_2 < x_3,</M> then <M>slope(x_1,x_2)
\leq slope(x_2,x_3)</M> and <M>slope(x_1,x_3) \leq slope(x_2,x_3).</M>
<P/>
Now take any <M>a\in\rr.</M> Fix any <M>b > a.</M>
<P/>
Define, for <M> x< a,</M> a new function <M>g(x) = slope(x,a).</M>
<P/>
Notice that <M>g(x)</M> is a nondecreasing function. 
<HIDE lab="conv1">
<MSG>(Why?)</MSG>
<HIDDEN>
If <M>x_1  < x_2 <a</M> then <M>g(x_1) = slope(x_1,a) \leq slope(x_2,a) = g(x_2).</M>
</HIDDEN>
</HIDE>
Also it is
bounded from above by <M>slope(a,b).</M>
<HIDE lab="conv2">
<MSG>(Why?)</MSG>
<HIDDEN>
If <M>x <  a < b</M> then <M>g(x) = slope(x,a) \leq slope(a,b).</M>
</HIDDEN>
</HIDE>
<P/>
So <M>\lim_{x\to a-} g(x)</M> must exist finitely. <HIDE lab="conv3">
<MSG>(Why?)</MSG>
<HIDDEN>
Let <M>A = \{g(x)~:~x < a\}.</M> Then <M>A\neq\phi</M>
and <M>A</M> is bounded from above by <M>b.</M>
<P/>
So <M>\sup(A)</M> exists. Call it <M>m.</M>
<P/>
Take any <M>\epsilon>0.</M>
<P/>
Then <M>\exists q\in A~~q\in (m-\epsilon,m].</M>
<P/>
Now <M>q = g(p)</M> for some <M>p < a.</M>
<P/>
Then for any <M>x\in (p,a)</M> we have <M>g(p) \leq g(x) \leq m.</M>
<P/>
Hence the result.
</HIDDEN>
</HIDE>
Call it <M>m.</M>
<P/>
Define <M>\ell_a(x)</M> as the line through <M>(a,f(a))</M> with
slope <M>m.</M> In other words, <M>\ell_a(x) = f(a) + m(x-a).</M>
<P/>
It is easy to see that this <M>\ell_a(x)</M> works for us.
</PF>
<DISQUSE url="http://www.isical.ac.in/~arnabc/prob1/convex.html" id="convex"/></E>@}
</NOTE>
