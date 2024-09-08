<NOTE>
@{<E>
<HEAD1>Random variables</HEAD1>
<HEAD2>What they are</HEAD2>
Suppose that I toss a fair coin, and offer you Rs 10 for a head,
and demand <M>Rs 20</M> for a tail. In other words, your gain (in Rs)
from this deal is <M>10</M> for head and <M>-20</M> for
tail. Both <M>10</M> and <M>-20</M> are constants, but since you
do not know which of these two constants you are going to get,
you gain is a variable. Since it varies with chance, we call it
a <B>random variable</B>.
<P/>
Notice that here we have a function from <M>\{head,~tail\}</M>
to <M>\{10,-20\}</M> defined as 
<MULTILINE>
head & \mapsto & 10,\\
tail & \mapsto & -20.
</MULTILINE>
There is nothing random about this <I>function</I>. The randomness comes
from mechanism that decides what gois <I>into</I> this: head or tail?
<P/>
We use this idea to define random variables mathematically. We
start with a random experiment which is the provider of the
randomness. Then any function defined on its sample space is
called a random variable. To be precise, it is the function
(which is not at all random) that is called the random
variable. Thus, if in the above coin toss example, we replace the
fair coin with a biased coin, but keep the payment rules the
same, then we still have the same random variable. 
<P/>
Beginners often find it odd: a random variable is neither random
nor a variable!
<P/>
However, it is not as unnatural as it sounds. In calculus also we
write <M>y = x^2</M> and say <M>y</M> is a variable as well
as <M>y</M> is a function of <M>x.</M>
<P/>
<EXM>
In the coin tossing example with a fair coin, let your gain be
denoted by <M>X.</M> (or sometimes <M>X(w)</M>, if you want to emphasize
that it is a function).  Find <M>P(X=10).</M>
<SOLN/>
The immediate answer is <M>[[12]].</M> Let's see the steps that led
to this answer. <M>P(X=10)</M> is the probability that <M>X</M>
is <M>10,</M> i.e., the probability that the coin toss has
produced an outcome for which the function <M>X</M> takes the
value <M>10.</M> Thus 
<D>
P(X=10) = P{#{w\in\{head,tail\}~:~X(w)=10}#}.
</D>
Now <M>{#{w\in\{head,tail\}~:~X(w)=10}#} = \{head\},</M> and so
the problem now reduces to finding <M>P(\{head\}),</M> which is <M>[[12]].</M>
</EXM>

The general case, then, looks like this: We have a random
experiment with sample space <M>\Omega.</M> A random
variable <M>X</M> is a function <M>X:\Omega\to S</M>
where <M>S</M> is any codomain of our choice. If some one gives
us some <M>A\seq S</M> and asks us to find <M>P(X\in A),</M> we
are to actually find 
<D>
P(#({#{w\in\Omega~:~X(w)\in A}#})#).
</D>
Remember that this is the <I>definition</I> of <M>P(X\in A).</M>
The complicated looking set <M>{#{w\in\Omega~:~X(w)\in A}#}</M> is
often abbreviated to <M>\{X\in A\}</M> or <M>X ^{-1} (A).</M><FNOTE>Earlier we had
talked about "good" sets and "bad" sets. What if someone asks us
to find <M>P(X\in A),</M> where <M>X ^{-1} (A)</M> is a "bad"
subset of <M>\Omega?</M> Well, the answer is: We shall
simply refuse to find <M>P(X\in A)</M> for such an <M>A.</M> We shall
call such an <M>A</M> a "bad" subset of <M>S</M>
(w.r.t. this <M>X</M>). A subset <M>A\seq S</M> is "good" or
"bad" according as <M>X ^{-1} (A)</M> is "good" or "bad" in <M>\Omega.</M></FNOTE>

<EXM>
A fair die is rolled. I shall pay you Rs 10 if the die shows an
even number, you'll pay me Rs 20 otherwise. Again, let's denote
by <M>X</M> your gain (in Rs). Express <M>X</M> as a function
(as codomain you can take <M>\rr</M> or <M>\cc</M> or <M>\zz</M>
or <M>\{10,-20\}</M> or any other superset of <M>\{10,-20\}</M>).
Let <M>A = \{10\}.</M> Find <M>X ^{-1} (A)</M> and using it
find <M>P(X\in A).</M> 
<SOLN/>
Here <M>X ^{-1}(A) = \{2,4,6\}.</M> So <M>P(X=10) = P(\{2,4,6\}) = [[16]]+[[16]]+[[16]] = [[12]].</M>
</EXM>

In each of  these examples we had a random variable <M>X</M> that
took only two values <M>10</M> and <M>-20.</M> Which <M>X</M> do
you think is more profitable for you? Well, both are actually the
same so far as profit goes. Understand this carefully: the two
different <M>X</M>'s are completely different as functions (their
domains are also different), but in terms of the behaviour of the
output of the functions they are identical. This behaviour is
called the <B>distribution</B> of the random variable. It is the
distribution which we care about mostly in real applications. So
we often start a discussion as 
<Q>
Let <M>X</M> be a random variable taking values <M>10</M>
and <M>-20</M> each with probability <M>[[12]].</M>
</Q>
We understand implicitly that there is <I>some</I> random experiment (say
the coin toss experiment or the die roll experiment or something
similar) and <I>some</I> function from its sample space
to <M>\{10,-20\}</M> such that the distribution is as
specified. In this
course, we shall often omit  the sample space or
the function.

<HEAD2>Combining different random variables</HEAD2>
Sometimes we need to combine the values of two or more random
variables. Say <M>X,Y</M> are both random variables and we want
to compute <M>X+Y.</M> Since random variables are actually
functions, so this sum can be formed only when <M>X</M>
and <M>Y</M> have the same domain. This simple point sometimes
needs careful handling as the following example shows.

<EXM>
I am playing against two gamblers simultaneosly. One gambler
tosses a fair coin and pays Rs 10 for a head and  takes Rs 20 for  a
tail. The other gambler takes Rs 3 from me, rolls a fair die and pays me as many
rupees as the outcome. What is my total gain? 
<SOLN/>
If I call the gain
from the first gambler <M>X,</M> then <M>X</M> is a function
from <M>\{head,tail\}</M> to <M>\rr,</M> while the gain from the
second gambler is a function <M>Y:\{1,2,3,4,5,6\}\to\rr.</M>
Obviously, <M>X+Y</M> does not make any sense here. We need to
first combine the two random experiments to get the product
sample space: <M>\{head,tail\}\times\{1,2,3,4,5,6\}</M> and then
consider <M>X,Y</M> both as functions from <M>\Omega</M>
to <M>\rr.</M> For example, <M>X(head,4) = 10</M>
and <M>Y(head,4) = 4-3 = 1.</M>
<P/>
Now it is meaningful to talk about <M>X+Y.</M>
</EXM>

<HEAD1>Different types of random variables</HEAD1>
Depending on the distribution, a random variable may be of 3
types:
<UL>
<LI><B>Discrete:</B> These random variables take only countably
many (finite/infinitely many) values.</LI>
<LI><B>Continuous:</B> If a random variable takes values in some
set <M>S</M> such that <M>\forall a\in S~~P(X=a)=0,</M> then we
call it a continuous random variable. Notice that
a continuous
random variable is not defined as a random variable that takes a
"continuous stretch of values". Howeever, most continuous random
variables do indeed take all values in an interval, e.g., height
of a randomly selected person.</LI>
<LI><B>Neither discrete nor continuous:</B> These take
uncountably many values and for at least one value <M>a</M> we
have <M>P(X=a)>0.</M> </LI>
</UL>
In this course we shall focus on discrete random variables only.

<P/>
The distribution of a discrete random variable is completely
specified by the countable set of values it can take, and the
probability with which it takes each of those values. These two
specifications together are called the <B>probability mass
function (PMF)</B> of the rv. 

<HEAD1>Functions of a random variable</HEAD1> 
Any function of a random variable is again a random
variable. This is immediate from the definition of a random
variable (since composition of two functions is again a
function). 
<P/>
Notice that any function of a discrete random variable must again
be a discrete random variable. 

<HEAD1>CDF</HEAD1>
<DEFN>
Let <M>X</M> be any real valued random variable. Then
its <B>(cumulative) distribution function (CDF)</B> is defined as
the function <M>F:\rr\to[0,1]</M> where <M>\forall x\in\rr~~F(x) = P(X\leq x).</M>
</DEFN>
This definition holds for <I>all</I> real-valued random variables
(not just the discrete ones).
<P/>
The following properties are easy to prove.

<THM>
Let <M>F(x)</M> be the CDF of some rv <M>X.</M> Then 
<OL>
<LI><M>F(x)</M> must be nondecreasing, i.e., <M>\forall x < y\in\rr~F(x)\leq F(y).</M></LI>
<LI><M>\lim_{x\to-\infty} F(x) = 0.</M></LI>
<LI><M>\lim_{x\to\infty} F(x) = 1.</M></LI>
<LI><M>F(x)</M> must be right continuous, i.e.,
<M>\forall a\in\rr~~F(a+)=F(a).</M>
 </LI>
</OL>
</THM>
<PF>
<OL>
<LI>Since <M>\{X\leq x\} \seq \{X\leq y\},</M> hence <M>P(\{X\leq
x\}) \leq P(\{X\leq y\}),</M> i.e., <M>F(x)\leq F(y).</M></LI>

<LI>
Shall show 
<D>
\forall \epsilon>0 ~~ \exists M \in\rr ~~ \forall x < M~~ |F(x)-0| < \epsilon.
</D>
(Actually we may drop the absolute value sign around <M>F(x)</M>
since it is anyway <M>\geq 0</M>).

<P/>

Take any <M>\epsilon>0.</M>

<P/>


Let <M>A_n</M> be the event that <M>\{X \leq -n\}</M>
for <M>n\in\nn.</M> Then <M>F(-n) = P(A_n).</M>
Clearly, <M>A_1\supseteq A_2\supseteq A_3\supseteq\cdots</M>
and <M>\cap A_n=\phi.</M>
<P/>
So <M>P(A_n)\to 0,</M> i.e., <M>F(-n)\to 0.</M>
<P/>
So <M>N\in\nn ~~F(-N)<\epsilon.</M> 
<P/>
Choose <M>M = -N.</M>
<P/>
Take any <M>x < M.</M>
<P/>
Then <M>0\leq F(x) \leq F(M)<\epsilon,</M> since <M>F(\cdot)</M> is nondecreasing.
<P/>
So <M>|F(x)-0| < \epsilon,</M> as required.
</LI> 
<LI>
<HIDE lab="sim"><MSG>Very similar. Try yourself first, before clicking here.</MSG><HIDDEN>Shall show 
<D>
\forall \epsilon>0 ~~ \exists M \in\rr ~~ \forall x > M~~ |F(x)-1| < \epsilon.
</D>
(Actually we may drop the absolute value sign
around <M>|F(x)-1|</M> is <M>1-F(x)</M>,
since <M>F(x)\leq 1,</M> anyway.)
<P/>


Take any <M>\epsilon>0.</M>

<P/>


Let <M>A_n</M> be the event that <M>\{X \leq n\}</M>
for <M>n\in\nn.</M> Then <M>P(A_n)=F(n).</M>
<P/>

Clearly, <M>A_1\seq A_2\seq A_3\seq\cdots</M>
and <M>\cup A_n=\Omega.</M>
<P/>
So <M>P(A_n)\to 1,</M> i.e., <M>F(n)\to1.</M> 
<P/>
So <M>N\in\nn ~~|F(N)-1|<\epsilon.</M> 
<P/>
Choose <M>M = N.</M>
<P/>
Take any <M>x > M.</M>
<P/>
Then <M>0\leq 1-F(x) \leq 1-F(M) <\epsilon,</M> since <M>F(\cdot)</M> is nondecreasing.
<P/>
So <M>|F(x)-1| < \epsilon,</M> as required.
</HIDDEN></HIDE></LI>

<LI>
Shall show:
<D>
\forall a\in\rr~~\forall \epsilon>0~~\exists \delta>0~~ \forall
x\in (a,a+\delta)~~|F(x)-F(a)| < \epsilon.
</D>
Take any <M>a\in\rr</M> and any <M>\epsilon>0.</M>
<P/>
Let <M>A_n</M> be the event that <M>{*{X\leq a+[[1n]]}*}</M> for <M>n\in\nn.</M>

Also let <M>A</M> be the event that <M>\{X\leq a\}.</M>
<P/>
<HIDE lab="try"><MSG>Try the rest yourself.</MSG>
<HIDDEN>
Then <M>A_1\supseteq A_2\supseteq\cdots</M> and <M>\cap A_n = A.</M>
<P/>
So <M>P(A_n)\to P(A)</M> and hence <M>F(*(a+[[1n]])*)\to F(a).</M>
<P/>
Hence <M>\exists N\in\nn ~~ |F(*(a+[[1N]])*)-F(a)|<\epsilon.</M>
<P/>
Choose <M>\delta = [[1N]]>0.</M>
<P/>
Take any <M>x\in (a,a+\delta).</M>
<P/>
Since <M>F(\cdot)</M> is nondecreasing, hence <M>F(a)\leq F(x)
\leq F(a+\delta) < F(a)+ \epsilon.</M>
<P/>
So <M>|F(a+x)-F(a)|<\epsilon,</M> as required.
</HIDDEN>
</HIDE>
</LI>
</OL>
</PF>


A rather nontrivial  theorem is that the converse is also
true. This converse is called the <B>fundamental theorem of
probability</B>.


<THM name="Fundamental theorem of probability">
Let <M>F:\rr\to[0,1]</M> be any function satisfying the
properties listed in the last theorem. Then there must exist a real-valued
rv <M>X</M> with this <M>F(x)</M> as its CDF.
</THM>
<PF>Too technical for this course.</PF>

<THM>
Any nondecreasing function bounded from above (and hence all
CDF's) must have finite
left hand limit at each point.
</THM>
<PF>
Let <M>F:\rr\to\rr</M> be nondecreasing and bounded from above.
<P/>
Take any <M>a\in \rr.</M>
<P/>
We shall show that <M>\lim_{x\to a-} F(x)</M> exists as a finite
number, i.e.,
<D>
\exists\ell\in\rr~~\forall \epsilon>0~~\exists \delta>0~~\forall x\in(a-\delta,a)~~|F(x)-\ell|\leq\epsilon.
</D>
Consider the set <M>A=\{F(x)~:~x < a\}.</M> Then <M>A\neq\phi</M>
and bounded from above (by <M>F(a)</M>). 
<P/>
So <M>\sup(A)\in\rr.</M>
<P/>
Choose <M>\ell = \sup(A).</M>
<P/>
Take any <M>\epsilon>0.</M>
<P/>
Then <M>\exists y < a~~F(y) > \ell-\epsilon.</M> 
<P/>
Choose <M>\delta = a-y > 0.</M>
<P/>
Take any <M>x\in(a-\delta,a) = (y,a).</M>
<P/>
Then <M>F(y)\leq F(x) \leq \ell,</M> or, in other words, <M>\ell-\epsilon\leq F(x)\leq \ell.</M>
<P/>
So <M>|F(x)-\ell|\leq \epsilon,</M> as required.
</PF>

<THM>
Let <M>X</M> have CDF <M>F.</M> Then 
<D>
\forall a\in\rr~~F(a-) = P(X < a).
</D>
</THM>
<PF>
Take any <M>a\in\rr.</M>
<P/>
Let <M>A = \{X < a\}</M> and let <M>A_n
= {*{X \leq a-[[1n]]}*}</M> for <M>n\in\nn.</M>
<P/>
Then <M>A_n\nearrow A.</M>
<P/>
Hence <M>P(A_n)\to P(A).</M>
<P/>
So <M>F(*(a-[[1n]])*)\to P(A).</M>
<P/>
But <M>F(*(a-[[1n]])*)\to F(a-),</M> since <M>F(a-)</M> exists.
<P/>
Hence <M>P(X < a) = F(a-),</M> as required.
</PF>

<THM>
Let <M>X</M> have CDF <M>F.</M> Then 
<D>
\forall a\in\rr~~P(X=a) = F(a)-F(a-).
</D>
</THM>
<PF>
<M>P(X=a) = P(X\leq a)-P(X < a).</M>
</PF>

The following theorem justifies the adjective "continuous" for a
random variable.

<THM>
A random variable is continuous if and only if its CDF is
continuous everywhere.
</THM>
<PF>
Obvious from the last theorem.
</PF>

<HEAD1>PMF</HEAD1>

<DEFN name="Probability Mass Function (PMF)">
Let <M>X</M> be a discrete random variable taking
values <M>x_1,x_2,...</M> with
probabilities <M>p_1,p_2,...</M>. Then the <B>probability mass
function (PMF)</B> of <M>X</M> is defined as <M>p(x)</M> where 
<D>
\forall i~~p(x_i) = p_i.
</D>
</DEFN>
There is no clear guideline as to the choice of the domain of the
PMF, except that it must be a superset of <M>\{x_1,x_2,...\}.</M>
If you take the domain to be a strict superset, then you define
the PMF as 
<D>
p(x) = <CASES>p_i<IF>x=x_i</IF>0<ELSE/></CASES>.
</D>
Clearly, <M>\sum p_i = 1</M> and <M>\forall i~~p_i\geq 0.</M> A
consequence of the fundamental theorem of probability is that for
any countable set <M>\{x_1,x_2,...\}</M> and for any
sequence <M>(p_i)_i,</M> for which <M>\forall i~~p_i\geq 0</M>
and <M>\sum p_i=1,</M> there is a (discrete) random variable of
which the PMF is 
<D>
p(x) = <CASES>p_i<IF>x=x_i</IF>0<ELSE/></CASES>.
</D>

The CDF of a discrete random variable is like a step function. 
<HEAD1>Expectation of a random variable</HEAD1>

For many random variables we see a striking example of
statistical regularity. 

<RC>
w = sample(6,1000,rep=T)
profit =c(-20,10,-20,10,-20,10)
X = profit[w]
avgX = cumsum(X)/(1:1000)
plot(avgX,ty='l')
</RC>
In fact, it is this phenomenon that first let man to study
probability. If you run a gambling game a large number of time
the average profit becomes more and more stable. Gamblers wanted
to guess this stable value beforehand. They argued as follows:
<Q>
If I play this game a large number of times (say <M>n</M> times),
then
approximately <M>[[n2]]</M> times I should get <M>10</M>
and the remaining <M>[[n2]]</M> times I should get <M>-20.</M> So
approximately my total gain would be approximately 
<D>
[[n2]]\times 10 + [[n2]]\times (-20).
</D>
So the average would be approximately this divided by <M>n,</M>
i.e.,
<D>
[[12]]\times 10 + [[12]]\times (-20) = -5.
</D>
</Q>
Indeed, this simple argument turns out to be remarkably
accurate. Gamblers could not understand why it becomes so
accurate as <M>n</M> becomes large. But they used this formula to
find out what they could expect the random variable to do in the
long run.
<FNOTE>There is a wierd point in the definition of <M>E(X).</M>
We are working with <M>\sum p_i x_i.</M> But then why is the
condition on <M>\sum |p_i x_i|</M>? The reason for taking this absolute
value should be clear from our <LINK to="series.html">crash course on infinite series</LINK>.</FNOTE>
<DEFN name="Expectation">
Let a (discrete) random variable <M>X</M> take
values <M>x_1,x_2,...</M> with
probabilities <M>p_1,p_2,...</M>. If <M>\sum |p_i x_i|
<\infty,</M> then we define the expectation of <M>X</M> as
<D>
E(X) = \sum p_i x_i.
</D>
If  <M>\sum |p_i x_i|
=\infty,</M> then
<UL>
<LI>if all but finitely many <M>x_i</M>'s are <M>>
0,</M> (resp, <M>< 0</M>) then we say that the expectation
is <M>\infty</M> (resp, <M>-\infty</M>)</LI>
<LI>Otherwise, we say that the expectation does not exist.</LI>
</UL>
</DEFN>

<HEAD1>Expectation of a function</HEAD1>
<EXM>
Suppose I have a rv that takes values <M>-1,0</M> and <M>1</M>
with probabilities <M>0.1, 0.5</M> and <M>0.4,</M> respectively.
What is <M>E(X^2)?</M>
<SOLN/>
Here <M>X^2</M> is a new rv. Call it <M>Y,</M> say. Then <M>Y</M>
takes values <M>0</M> and <M>1</M> with probabilities <M>0.5</M>
each.

<P/>
So <M>E(Y) = [[12]].</M>
</EXM>

Here is another technique to arrive at the same result. 
<D>
E(X^2) = 0.1\times (-1)^2 + 0.5\times 0^2 + 0.4\times 1^2 = 0.5.
</D>
This technique is often easier because here we do not need to
find the distribution of <M>Y=X^2</M> first. Both these
techniques will always give the same answer. 

<THM>
Let a (discrete) random variable <M>X</M> take
values <M>x_1,x_2,...</M> with
probabilities <M>p_1,p_2,...</M>. Let <M>h(\cdot)</M> be any
function defined on the set <M>\{x_1,x_2,...\}.</M> If <M>\sum |p_i h(x_i)|
<\infty,</M> then we must have 
<D>
E(h(X)) = \sum p_i h(x_i).
</D>
Also, if <M>\sum|p_i h(x_i)|=\infty</M> and all but finitely many
<M>h(x_i)</M>'s are <M>>0</M> (resp, <M><0</M>),
then <M>E(h(X))=\infty </M>(resp, <M>-\infty</M>).
</THM>
<PF>
If <M>X</M> takes only finitely many values, then the result
follows from distributivity of multiplication over addition. 
<P/>
For the countably infinite case, the result follows from rearrangement
property of absolutely convergent series. 
</PF>

<HEAD1>Properties of expectation</HEAD1>
<HEAD2>Relation of <M>E(X)</M> with values of <M>X</M></HEAD2>

<THM>
If <M>X</M> is a degenerate rv (i.e., takes only one value with
probability 1), then <M>E(X)</M> equals that value.
</THM>

<FNOTE>Here <M>X\leq Y</M> means 
<D>
\forall w\in\Omega~~X(w)\leq Y(w).
</D>
</FNOTE>
<THM>
Let <M>X</M> be a discrete random variable. Let <M>f(x), g(x)</M> be
functions such that <M>P(f(X)\leq g(X))=1</M> and both <M>E(f(X))</M>
and <M>E(g(X))</M> exist. Then 
<M>E(f(X))\leq E(g(X)).</M>
<P/>
A similar result holds if <M>P(X\geq f(X))=1.</M>
</THM>

An immediate consequence of the above theorems is the following
theorem.

<THM>
If <M>X</M> always takes values in <M>[a,b],</M> then <M>E(X)</M>
must exist finitely, and lie in <M>[a,b].</M>
</THM>

The condition "<M>X</M> always lies in <M>[a,b]</M>" may be
written as <M>P(X\in[a,b])=1.</M>

<THM>
Let <M>a\in\rr</M> be any number. If <M>P(X\leq a)=1,</M>
then <M>E(X)=a</M> if and only if <M>X</M> is degenerate at <M>a.</M>
</THM>

However, if <M>a\in\rr</M> is replaced by <M>\infty,</M> then the
result fails, i.e., it is possible to have a random
variable <M>X</M> that is always finite (any real-valued random
variable will do, since <M>\infty\not\in\rr</M>) such
that <M>E(X)=\infty.</M> 

<EXM>
It is a standard fact that <M>\sum[[1][n^2]]<\infty.</M> Let the
sum be <M>c.</M> (The exact value of <M>c</M>
which is <M>[[\pi^2][6]],</M> is of no importance here).
<P/>
Then consider a random variable <M>X</M> that takes values
in <M>\nn</M> and <M>P(X=n)=[[1][cn^2]].</M> 
<P/>
Then <M>E(X) = [[1c]]\sum[[1n]]=\infty.</M>
</EXM>
By the way, if <M>X</M> can take values <M>x_1,x_2,...</M>, there
is no guaranty that <M>E(X)</M> will equal any of
the <M>x_i</M>'s. For example, if the <M>X</M> is the outcome of
a fair die, then <M>E(X)=3.5,</M> which is not a possible
outcome.

<HEAD2>Transformation properties</HEAD2>
<THM>
Let <M>X</M> be a discrete rv such that <M>E(X)</M> is defined. If <M>a,b</M> are constants, then <M>E(a+bX) = a+bE(X).</M>
</THM>
<PF>
Trivial.
</PF>

::<EXR>
If <M>E(X) = \mu,</M> then what is <M>E(X-\mu)?</M>
</EXR>

<THM>
Let <M>X,Y</M> be two random variables both defined on the same probability space.
We assume that both <M>E(X)</M> and <M>E(Y)</M> both exist finitely.
<P/>
Then <M>E(X+Y)</M> also exists finitely and we have
<D>
E(X+Y) = E(X)+ E(Y).
</D>
</THM>

Next we shall need a new concept, that of a convex
function. Graphically, <M>f(x)</M> is a convex function if its
graph is like a bowl opening upwards (possibly slanted). Some
examples are shown below.
<CIMG web="convexex.png"/>
Mathematically we may define a convex function as follows.
<FNOTE>While this definition is graphically quite intuitive, you
may have seen other definitions of convexity
elsewhere. Read <LINK to="convex.html">here</LINK> to learn more
about equivalences between different definitions of convexity.</FNOTE>
<DEFN name="Convex function">
A function <M>f:\rr\to\rr</M> is called <B>convex</B>
if <M>\forall a\in\rr</M> there is a line <M>y = \ell_a(x)</M>
through <M>(a,f(a))</M> that lies on or below the graph
of <M>f(x),</M> i.e., 
<D>
\forall x\in\rr~~ \ell_a(x) \leq f(x).
</D>
</DEFN>
In the following diagram the blue line is <M>\ell_a.</M> Both the
red lines are candidates for <M>\ell_b.</M>
<CIMG web="suppline.png"/>
<THM name="Jensen's inequality">
Let <M>X</M> be a discrete rv such that <M>E(X)</M> is
defined. If <M>f:\rr\to\rr</M> is any convex function for
which <M>E(f(X))</M> exists,  then <M>f(E(X))\leq E(f(X)).</M>
</THM>
<PF>
Let <M>\mu = E(X).</M> Consider <M>\ell_\mu(x)</M> as mentioned
in the definition of convexity.
<P/>
Since the graph of <M>\ell_\mu(x)</M> is a straight line passing
through <M>(\mu,f(\mu)),</M> hence it must be of the form
<D>
\ell_\mu(x) = f(\mu)+m(x-\mu),~~x\in\rr.
</D>
So 
<D>
E(f(X)) \leq E(\ell_\mu(X)) = E(f(\mu))+mE(X-\mu) = f(\mu)+0 = f(E(X)),
</D>
as required.
</PF>

::<EXR>Which is larger <M>(E(X))^2</M> or <M>E(X^2)?</M> Assume
that both exist finitely.</EXR>
<HEAD1>Indicator trick</HEAD1>
Often we have to find <M>E(X)</M>  where <M>X</M>  is the count of something, e.g., number of heads in 100 tosses of coin,
 or number of times something interesting happens. If you want to find <M>E(X)</M>  directly from the definition, then you
 need to find the distribution of <M>X</M>  first, which is often difficult. In such situatons the
 <TERM>indicator trick</TERM> may provide a short cut. 

<EXM>We have a ring of 20 lamps. A wind blows and a random subset of lamps go out. Find
 the expected number of singleton lights (i.e., lighted lamps with both neighbours off).
<CIMG web="lamps.png">The singletons are shown with arrowheads</CIMG>
<SOLN/>
Let <M>X</M>  be the number of singletons. Finding the distribution of <M>X</M>  is not easy. 

Instead we shall use the arrowheads as our random variables. Let the lamps be numbered from 1 to 20. Define <M>L_i=1</M> 
 if <M>i</M>-th lamp is on and is a singleton, and <M>0</M>  else. In other words, <M>L_i=1</M>  means we have put an
 arrow head at position
 <M>i.</M>  

Each <M>L_i</M>  is called an <TERM>indicator variable</TERM>. 

Clearly <M>X = L_1+\cdots+L_{20}.</M>

So <M>E(X) = E(L_1)+\cdots+E(L_{20}) = 20 E(L_1),</M>  since by symmetry all the <M>L_i</M>'s have the same distribution.

To find <M>E(L_1)</M>  we need to find just <M>P(L_1=1)</M>, which involves only lamp 1 and its two neighbours. It should
 be clear that <M>P(L_1) = [[1][8]].</M>  

Hence <M>E(X) = [[20][8]] = [[52]].</M>  
   </EXM>
<HEAD1>Problems for practice</HEAD1>
::<EXR>
What is <M>E(X)</M> if <M>X</M> takes the
values <M>1,2,...,n</M> with probability <M>[[1n]]</M> each?
<ANS><M>[[n+1][2]].</M></ANS>
</EXR>
::<EXR>Show that if <M>X</M>  is a random variable taking only non-negative
integer values, then 
<D>E(X) = \sum_{k=1}^\infty P(X\geq k).</D>
This formula often proves useful for finding expected counts.
<ANS>
Let <M>p_n = P(X=n)</M>  for <M>n=0,1,2,3,...</M>
Then
<MULTILINE>
P(X\geq 1) & = & p_1 + p_2 + p_3+\cdots\\
P(X\geq 2) & = & \phantom{p_1 +} p_2 + p_3+\cdots\\
P(X\geq 1) & = & \phantom{p_1 + p_2 +} p_3+\cdots\\
\cdots
</MULTILINE>
Now add columnwise. Non-negative series do not change value when 
you rearrange the terms.
</ANS>
</EXR>
::<EXR>For a group of <M>n</M>  people find the expected number of days of the year which are
 birthdays of exactly <M>k</M>  people. (Assume 365 days and that all arrangements are equally
 probable.) Also find the expected number of multiple birthdays. How large should <M>n</M>  be to
 make this expectation exceed 1?</EXR>
::<EXR>A man with <M>n</M>  keys wants to open a door (where exactly one keys works). He tries the
 keys independently at random. Find the expected number of trials needed to open the door if 
 keys are tried (a) with replacement (b) without replacement.</EXR>
::<EXR><CIMG web="rossrv1.png"/></EXR>
::<EXR><CIMG web="rossrv2.png"/></EXR>
::<EXR><CIMG web="rossrv3.png"/></EXR>
::<EXR><CIMG web="rossrv4.png"/></EXR>
::<EXR><CIMG web="rossrv5.png"/></EXR>
::<EXR><CIMG web="rossrv6.png"/></EXR>
::<EXR><CIMG web="rossrv7.png"/></EXR>
::<EXR><CIMG web="rossrv8.png"/></EXR>
::<EXR><CIMG web="rossrv9.png"/></EXR>
::<EXR><CIMG web="rossrv11.png"/></EXR>
::<EXR><CIMG web="rossrv12.png"/></EXR>
::<EXR><CIMG web="rossrv13.png"/></EXR>
::<EXR><CIMG web="rossrv14.png"/></EXR>

::<EXR><CIMG web="fellrv1.png"/>
You may use some approximations in parts (c) and (d) of this problem. For instamce there are
 <M>[[nk]]</M>  groups of <M>k</M>  patients each, even if <M>[[nk]]</M>  is not an integer. You
 may also differentiate w.r.t. <M>k.</M> 
<ANS>(a) <M>1-(1-p)^k.</M>

(b) For a group of size <M>k</M>  the random variable <M>X</M>  takes the value 
<M>k+1</M>  with probability <M>1-(1-p)^k</M>  and the value <M>1</M>  with probability <M>(1-p)^k.</M>  

So <M>E(X) = (k+1)(1-(1-p)^k)+(1-p)^k = k+1-k(1-p)^k.</M>

If there are <M>N</M>  people in all, where <M>N = qk+r</M>  with <M>r\in\{0,...,k-1\}</M>, 
then this applies to each of the <M>q</M>  groups and also the reaminder group of size <M>r.</M>  

So the required expectation is 
 <D>q(k+1-k(1-p)^k)+r+1-r(1-p)^r.</D>
If <M>k</M>  divides <M>N</M>, then this is 
<D>[[Nk]](k+1-k(1-p)^k) = N+[[Nk]]-N(1-p)^k = N(*(1+[[1k]]-(1-p)^k)*).</D>

(c) Enough to minimise <M>1+[[1k]]-(1-p)^k</M>  wrt <M>k</M>  for given <M>p.</M>

Treating <M>k </M> as a continuous variable, the derivative is 
<D>-[[1][k^2]]-(1-p)^k\log(1-p).</D>

</ANS>
</EXR>
::<EXR><CIMG web="fellrv2.png"/></EXR>
::<EXR><CIMG web="most4.png"/>
<ANS>Let <M>X = </M> the number of trials needed to get the first 6. 

Then <M>P(X=k) = (*([[56]])*)^{k-1}[[16]]</M>  for <M>k=1,2,3,....</M>

So <M>E(X) = \sum_{k=1}^\infty k (*([[56]])*)^{k-1}[[16]].</M>

Now, we know that <M>[[1][1-x]] = 1+x+x^2+x^3+\cdots</M>
if <M>|x|<1.</M>  This may be differentiated term by term (needs a justification that you should learn in your real analysis
 class) to give
<D>[[1][(1-x)^2]] = 1+2x + 3x^2+\cdots.</D>
Put <M>x=[[56]]</M>  to find the required expectation.
</ANS>
</EXR>
::<EXR><CIMG web="most6.png"/></EXR>
::<EXR><CIMG web="most14.png"/>
</EXR>
::<EXR><CIMG web="most15.png"/>
<ANS>
<CIMG web="bachmod.png">The same person may be part of two marriageable couples.</CIMG>
The guys are all distinct, and so are the girls (though it is not clear from my wonderful artwork!). 

The diagram shows 8 <I>run</I>s, i.e., stretches of same gender. A single girl or a single guy consitute the shortest possible
 run. Notice that the number of marriageable couples  is one less than the number of runs.

Thus, the number of arrangements with <M>k</M>  marriageable couples is
 the same as the number of arrangements with <M>k+1</M> runs.
 Here <M>k</M>  can take any value between <M>1</M>  and 14.

As an example let us find <M>P(k=3).</M>  

The total number of arrangements is of course <M>15!.</M>

We need <M>3+1=4</M>  runs: either male-female-male-female or female-male-female-male. 

<UL><LI><B>Step 1:</B> Arrange the guys: 8! ways</LI>
<LI><B>Step 2:</B> Arrange the girls: 7! ways</LI>
<LI><B>Step 3:</B> Insert a separator to split  the guys into two runs: 7 ways</LI>
<LI><B>Step 4:</B> Insert a separator to split  the girls into two runs: 6 ways</LI>
<LI><B>Step 5:</B> Mix them: 2 ways (M-F-M-F or F-M-F-M)</LI>
</UL>
So 
<D>P(k=3) = [[8!\times7!\times7\times6\times2][15!]].</D>
Find these for all possible values <M>k</M>, and then compute expectation. 

Or...use the indicator trick!!!
</ANS>
</EXR>
::<EXR><CIMG web="most34.png"/></EXR>
::<EXR><CIMG web="most40.png"/></EXR>

<DISQUSE url="https://arnabc74.github.io/prob1_2024/rv.html" id="rv"/>
</E>@}
</NOTE>
