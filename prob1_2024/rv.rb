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
Think of this as made of two stages. In the first stage we have a random
 experiment with <M>\Omega = </M>
 {Head, Tail}. In the second stage we have a function
 <M>X:\Omega\to \rr</M>
defined as 
<MULTILINE>
X(head) & = & 10,\\
X(tail) & = & -20.
</MULTILINE>
There is nothing random about this <I>function</I>. The randomness comes
from mechanism that decides what gois <I>into</I> this: head or tail?
<P/>
We use this idea to define random variables mathematically. We
start with a random experiment which is the provider of the
randomness. Then any (real valued) function defined on its sample space is
called a random variable. In probability theory, it is the function
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
variable <M>X</M> is a function <M>X:\Omega\to \rr</M>
where <M>\rr</M> is any codomain of our choice. If some one gives
us some <M>A\seq \rr</M> and asks us to find <M>P(X\in A),</M> we
are to actually find 
<D>
P(#({#{w\in\Omega~:~X(w)\in A}#})#).
</D>
Remember that this is the <I>definition</I> of <M>P(X\in A).</M>
The complicated looking set <M>{#{w\in\Omega~:~X(w)\in A}#}</M> is
often abbreviated to <M>\{X\in A\}</M> or <M>X ^{-1} (A).</M>

<HEAD3>A little measure theory again</HEAD3>
Earlier we had
talked about "good" sets and "bad" sets. The "good" sets constitute a <M>\sigma</M>-algebra. 

What if someone asks us
to find <M>P(X\in A),</M> where <M>X ^{-1} (A)</M> is a "bad"
subset of <M>\Omega?</M> Well, the answer is: We shall
simply refuse to find <M>P(X\in A)</M> for such an <M>A.</M> We shall
call such an <M>A</M> a "bad" subset of <M>S</M>
(w.r.t. this <M>X</M>). A subset <M>A\seq S</M> is "good" or
"bad" according as <M>X ^{-1} (A)</M> is "good" or "bad" in <M>\Omega.</M>

Now intervals are very useful  subsets of <M>\rr.</M> It would be a pity if an interval turns out to be a "bad" subset.
So we work with only those <M>X:\Omega\to\rr</M>  where for all intervals <M>A</M> , the set <M>X^{-1}(A)</M>  is a
 good subset of <M>\Omega.</M>   Such functions <M>X</M>  are called <TERM>Borel measurable</TERM>. 

<DEFN name="Random variable">
Let <M>\Omega</M> be a  non-empty set equipped with a <M>\sigma</M>-algebra <M> {\mathcal F}.</M> 
 Then by a <TERM>random variable</TERM>  we understand a map <M>X:\Omega\to\rr</M>  such that for
 all intervals <M>A\seq\rr</M>  we have <M>X^{-1}(A)\in{\mathcal F}.</M> 
</DEFN>

<HEAD1>New random variables from old ones</HEAD1>
<HEAD2>Addition, multiplication etc</HEAD2>
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
<HEAD2>Functions of a random variable</HEAD2> 
Is any function of a random variable is again a random
variable? Well, for all practical purposes the answer is "yes".  But technically speaking, we have to 
avoid the "bad" subsets. This is how we do it.

Let <M>X:\Omega\to\rr</M>  be any random variable. Let <M>f:\rr\to\rr</M>  be any Borel-mesurable function, i.e., if <M>B\in {\mathcal B}</M> 
 then <M>f^{-1}(B)\in {\mathcal B}.</M>  Then <M>f(X)</M>  is again a random variable. Remember that <M>f(X)</M>  actually
 means the composition function <M>(f\circ X):\Omega\to\rr.</M>

<HEAD1>Distribution of a random variable</HEAD1>
Consider another gambling game. 
<EXM>
A fair die is rolled. I shall pay you Rs 10 if the die shows an
even number, you'll pay me Rs 20 otherwise. Again, let's denote
by <M>X</M> your gain (in Rs). Express <M>X</M> as a function from <M>\{1,2,3,4,5,6\}</M>  to <M>\rr.</M>
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
domains are also different), but in terms of the "behaviour of the
output" of the functions they are identical. This "behaviour of the output" is
called the <TERM>distribution</TERM> of the random variable. It is the
distribution which we care about mostly in real applications. So
we often start a discussion as 
<Q>
Let <M>X</M> be a random variable taking values <M>10</M>
and <M>-20</M> each with probability <M>[[12]].</M>
</Q>
We understand implicitly that there is <I>some</I> random experiment (say
the coin toss experiment or the die roll experiment or something
similar) and <I>some</I> function from its sample space
to <M>\rr</M> such that the distribution is as
specified. In this
course, we shall often omit  the sample space or
the function.

<DEFN name="Distribution of a random variable">
By the <TERM>distribution</TERM> of a random variable <M>X</M>  we mean any statement that gives us <M>P(X\in B)</M>  for
 any "good" set <M>B\seq\rr.</M>  
</DEFN>

How do we specify the distribution of a random variable? Do we make a list of all the "good" sets, and label them with
their probabilities? That would woul be insane, because there are uncountaly infinitely many "good" sets. 
It turns out that specifying the probabilities of intervals like <M>(-\infty, a]</M>  is enough.
 This is what we discuss next.  
<HEAD2>CDF</HEAD2>
<DEFN>
Let <M>X</M> be any real valued random variable. Then
its <B>(cumulative) distribution function (CDF)</B> is defined as
the function <M>F:\rr\to[0,1]</M> where <M>\forall x\in\rr~~F(x) = P(X\leq x).</M>
</DEFN>

<EXM>Consider the gambling game that tosses a coin, and has payoffs <M>-10</M>  for head, and
 <M>20</M>  for tail. Let <M>X</M>  denote the payoff. What is its CDF?
<SOLN/>
Here <M>X</M>  takes only two values <M>-10</M>  and 20, each with probability <M>[[12]].</M>  

So  <M>F(a) = P(X\leq a) = 0</M>  whenever <M>a<-10.</M>  

But <M>F(-10)=P(X\leq -10) = [[12]].</M>  Indeed, as long as <M>a\in[-10,20)</M>  we have <M>F(a) = [[12]].</M> 

At <M>a=20,</M>  we have <M>F(a) = 1.</M>  In fact, <M>\forall a\geq 20~~F(a) = 1.</M>  So the graph looks like this:
<CIMG web="cdfexm.png"/> 
</EXM>
The following properties of a CDF are more or less obvious. 

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




<HEAD2>Different types of random variables</HEAD2>
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
"continuous stretch of values". However, most continuous random
variables in practice do indeed take all values in an interval, e.g., height
of a randomly selected person.</LI>
<LI><B>Neither discrete nor continuous:</B> These take
uncountably many values and for at least one value <M>a</M> we
have <M>P(X=a)>0.</M> </LI>
</UL>
The following theorem justifies the adjective "continuous" for a
random variable.

<THM>
A random variable is continuous if and only if its CDF is
continuous everywhere.
</THM>
<PF>
Obvious from the last theorem.
</PF>
In this course we shall focus on discrete random variables only.

<P/>
The distribution of a discrete random variable is completely
specified by the countable set of values it can take, and the
probability with which it takes each of those values. These two
specifications together are called the <B>probability mass
function (PMF)</B> of the rv. 



<HEAD1>PMF</HEAD1>

<DEFN name="Probability Mass Function (PMF)">
Let <M>X</M> be a discrete random variable taking
values <M>x_1,x_2,...</M> with
probabilities <M>p_1,p_2,...</M>. Then the <B>probability mass
function (PMF)</B> of <M>X</M> is defined as <M>p:\rr\to[0,1]</M> where 
<D>
p(x) = <CASES>p_i<IF>x=x_i</IF>0<ELSE/></CASES>.
</D>
</DEFN>
Clearly, <M>\sum p_i = 1</M> and <M>\forall i~~p_i\geq 0.</M> A
consequence of the fundamental theorem of probability is that for
any countable set <M>\{x_1,x_2,...\}</M> and for any
sequence <M>(p_i)_i,</M> for which <M>\forall i~~p_i\geq 0</M>
and <M>\sum p_i=1,</M> there is a (discrete) random variable of
which the PMF is <M>p(x)</M>  given above.

The CDF of a discrete random variable is a step function like the one we saw in our example.

<HEAD1>Expectation of a random variable</HEAD1>

For many random variables we see a striking example of
statistical regularity. As an example, consider this gambling game: 
<Q>A fair die is rolled. If it shows an odd number then I pay you Rs 20, else you pay me Rs 10.</Q>
A typical plot of my running average gain per game against number of games is as follows:
<CIMG web="explotnow.png"/>
It is produced by the following code. 
<RC>
w = sample(6,1000,rep=T)
profit =c(-20,10,-20,10,-20,10)
X = profit[w]
avgX = cumsum(X)/(1:1000)
#png('image/explotnow.png')
plot(avgX,ty='l',xlab="#games played",ylab="My running avg gain")
#dev.off()
</RC>
In fact, it is this phenomenon that first let man to study
probability. If you run a gambling game a large number of time
the running average profit per game becomes more and more stable. Gamblers wanted
to guess this stable value beforehand. They argued as follows:
<Q>
If I play this game a large number of times (say <M>n</M> times),
then
approximately <M>[[n2]]</M> times I should get <M>10</M>
and the remaining <M>[[n2]]</M> times I should get <M>-20.</M> So
approximately my total gain would be
<D>
[[n2]]\times 10 + [[n2]]\times (-20).
</D>
So the average should be approximately this divided by <M>n,</M>
i.e.,
<D>
[[12]]\times 10 + [[12]]\times (-20) = -5.
</D>
</Q>
Indeed, this simple argument turns out to be remarkably
accurate. Gamblers could not understand why it becomes so
accurate as <M>n</M> becomes large. But nevertheless they used this formula to
find out what they could expect the random variable to do in the
long run.

<HEAD2>Finite case</HEAD2>

<DEFN name="Expectation (finite case)">
Let a random variable <M>X</M> take only finitely many
values <M>x_1,x_2,...,x_k</M> with
probabilities <M>p_1,p_2,..., p_k</M>.
Then we define the <TERM>expectation</TERM> of <M>X</M> as
<D>
E(X) = \sum_1^k p_i x_i.
</D>
</DEFN>

<EXR>A random variable <M>X</M>  takes the values <M>-2, -1, 0, 1 </M>  and <M>2</M>  with
 probabilities <M>p,q,1-2p-2q, p</M>  and <M>q,</M>  respectively. Find <M>E(X).</M></EXR>

<EXR>A random variable takes the values <M>1,2,...,10</M>  with probabilities
 <M>p_1,p_2,...,p_{10},</M>  respectively, where <M>\sum_i p_i = 1.</M>  Prove that <M>1\leq
 E(X)\leq 10.</M>  Also find <M>p_i</M>'s if <M>E(X) = 10.</M>  </EXR>

<THM>Let <M>X</M>  and <M>Y</M>  be random variables taking only finitely many values, and  <M>X\leq
 Y.</M>  Then  <M>E(X)\leq E(Y).</M>  </THM>
<PF>
Here <M>X\leq Y</M>  means <M>\forall \omega\in\Omega~~X(\omega)\leq Y(\omega).</M>

Let <M>X</M> take values <M>x_1,...,x_m,</M>  and <M>Y</M>  take values <M>y_1,...,y_n.</M>

Let <M>p_{ij} = P(X=x_i, Y=y_j).</M>  

Clearly, if <M>p_{ij}>0,</M>  then we must have <M>x_i\leq y_j.</M>  

Now 
<MULTILINE>E(X) & = & \sum_i x_i P(X=x_i) = \sum_i (x_i \sum_j p_{ij}) =\sum_i\sum_j (x_i p_{ij})\\
& \leq &  \sum_i\sum_j (y_j p_{ij}) ~~[\because p_{ij}>0\implies x_i\leq y_j]\\
& = &  \sum_j\sum_i (y_j p_{ij})[\because \mbox{addition is associative and commutative}]\\
& = & \sum_j (y_j \sum_i p_{ij}) = \sum_j y_j P(Y=y_j) = E(Y).
</MULTILINE>
</PF>

So far we have defined expectation for only  random variables that take finitely many values. 
We shall call such random variables <TERM>simple</TERM>.
However, not all random variables are simple. We shall now generalise 
the definition of expectation for those cases as well. The generalisation turns out to be slightly tricky. 
So read this part very carefully. 

<HEAD2>Nonnegative case</HEAD2>
First, we shall consider a random variable, <M>X</M>, taking only nonnegative values. Now consider
 a simple random variable <M>U</M>  such that <M>U\leq X.</M> 
Visualise <M>X</M>  and <M>U</M>  like this (we are taking <M>\Omega</M>  an interval in the diagram):   
<CIMG web="lebmot1.png"></CIMG>
 Then we can compute <M>E(U).</M>  Also     it is natural to
 define <M>E(X)</M>  so that <M>E(U)\leq E(X).</M> 

Now look at <M>U</M>  taken as follows. 
<CIMG web="lebmot2.png"></CIMG>
This <M>U</M>  still takes finitely many values, but is much closer to <M>X </M> than before. You can feel that if <M>U</M> 
 is made finer and finer (but still remaining simple), you can make it come arbitrarily closer to <M>X.</M>
 This leads to the following approach for defining expectation of <M>X:</M>
<Q>Define <M>E(X)</M>  as supremum of <M>\{E(U)~:~U\mbox{ simple, }U\leq X\}.</M>  </Q>
Of course, before we can take supremum we need to make sure that the set is non-empty and bounded. 
<UL><LI>It is easy to see that the set is non-empty (i.e., for all nonnegative random variable <M>X</M>, there is at
 least one simple random variable <M>U</M>  such that <M>U\leq X.</M>  Just take <M>U\equiv 0.</M>  </LI>
<LI>Unfortunately, the set need not be bounded above. But that is not a serious problem. We shall
 just define <M>E(X)</M>  to be <M>\infty</M>  in those cases.</LI>
</UL>
<DEFN name="Expectation (nonnegative case)">
Let <M>X</M>  be any nonnegative random variable.
Then we define the <TERM>expectation</TERM> of <M>X</M> as
<D>
E(X) = \sup\{E(U)~:~U\mbox{ simple, }U\leq X\}
</D>
if the set is bounded above, and <M>\infty</M>  otherwise.
</DEFN>

<EXR>Suppose <M>X</M>  is a nonnegative
 random variable that is also a simple random variable. Then we have two definitions of
 <M>E(X),</M>  as a simple random variable and as a non-empty random variable. Show that both
 definitions match in this case.</EXR> 

<HEAD2>General case</HEAD2>
Finally, we attack the general case, where <M>X </M> can take both positive and negative values. 
Here we apply our approach to the positive and the negative parts separately.  More precisely, we define 
<D>X_+ = \max\{X,0\} \mbox{ and } X_- = -\max\{-X,0\}.</D>
Note that
<UL><LI>Both <M>X_+</M>  and <M>X_-</M>  are nonnegative,</LI>
<LI><M>X = X_+-X_-.</M></LI>
</UL>
We already know how to define <M>E(X_+)</M> and <M>E(X_-).</M>  We shall combine them in the obvious way to define <M>E(X):</M>
<DEFN name="Expectation (general case)">
<D>E(X) = <CASES>
E(X_+)-E(X_-)<IF>E(X_+),E(X_-)<\infty</IF>
\infty<IF>E(X_+)=\infty,~E(X_-)<\infty</IF>
-\infty<IF>E(X_+)<\infty,~E(X_-)=\infty</IF>
</CASES>.</D>
We shall say <M>E(X)</M>  is undefined if <M>E(X_+)=E(X_-)=\infty.</M>
</DEFN>

<EXR>If <M>X</M>  is a nonnegative random variable, then we have two definitions for <M>E(X).</M> 
 Check that they match.</EXR>

This expectation is also called the <TERM>Lebesgue integral</TERM>  of <M>X</M>  <TERM>wrt</TERM>  the given probability,
 and written as <M>\int X\, dP.</M>  However, we shall not use this notation here. 

<HEAD1>How to compute expectation easily?</HEAD1>
The general definition is not easy to use for computing expectation numerically, except when the random variable is simple.
 Here we discuss a few other cases where we have alternative (though equivalent) formulae for computing expectation. 
<HEAD2>Random variables taking countably many values</HEAD2>
<THM>If <M>X</M>  takes the nonnegative values <M>x_1<x_2<\cdots</M>   with probabilities
 <M>p_1,p_2,...</M>  where <M>\sum p_i = 1,</M>  then 
<D>E(X) = \sum p_i x_i.</D>
</THM>
<PF>
To show 
<D>\sum p_i x_i = \sup\{E(U)~:~U\mbox{ simple, }U\leq X\}.</D>
Let <M>L= \sum_i p_i x_i,</M>  and <M>{\mathcal D}=\{E(U)~:~U\mbox{ simple, }U\leq X\}.</M>

This requires showing two things: 
<UL><LI><M>L</M>  is an upper bound of <M>{\mathcal D},</M></LI>
<LI>no number less than <M>L</M>  is an upper bound of <M>{\mathcal D}.</M></LI></UL>

<B>Step 1:</B>  To show

<D>\forall U\in{\mathcal D}~~E(U)\leq L.</D>

Take any  <M>U\in{\mathcal D}</M>  be any simple random variable. 

Let <M>U</M>  take only the values <M>u_1,...,u_k.</M>  

Let <M>p_{ij} = P(X=x_i, U=u_j).</M>

Then <M>E(U) =\sum_j (u_j \sum_i p_{ij}) = \sum_j\sum_i u_j p_{ij}.</M>  

Also <M>L = \sum_i x_i \sum_j
 p_{ij}=\sum_i  \sum_j x_i p_{ij}=\sum_j \sum_i x_i p_{ij}.</M>
<HIDE lab="pf"><MSG>[Why?]</MSG><HIDDEN>
A finite sum can always be interchanged with an infinite sum, when the summands are all nonnegative. For example,
<D>\sum (a_n+b_n) = \sum a_n + \sum b_n.</D>
If we write <M>c_{1,n}=a_n</M>  and <M> c_{2,n}=b_n</M>  then this is 
<D>\sum_n \sum_i c_{i,n} = \sum_i \sum_n c_{i,n}.</D>  
</HIDDEN></HIDE>
Now <M>p_{ij}>0\implies u_j\leq x_i.</M>  

Hence <M>\sum_i   u_j p_{ij}\leq \sum_i   x_i p_{ij},</M>  and so <M>\sum_j\sum_i   u_j p_{ij}\leq \sum_j\sum_i   x_i p_{ij}.</M>

Thus, <M>E(U)\leq L,</M>  as required.

<B>Step 2:</B>  Shall show that no <M>L'< L</M>  is an upper bound of <M>{\mathcal D},</M>  i.e.,

<D>\forall L'< L~~\exists U\in{\mathcal D}~~E(U)> L'.</D>  

Let <M>U_n</M>  be the random variable <M>\min\{X,x_n\}.</M>  Then <M>U_n</M>  is a simple random variable such that <M>U_n\leq X.</M> 

So <M>U_n\in{\mathcal D}.</M>
 
Also <M>E(U_n)
 =\sum_{i=1}^n p_i x_i\to L.</M>  

Hence <M>\exists N\in\nn~~E(U_N) > L'.</M>  

Choose this <M>U_N</M>  as our <M>U\in{\mathcal D}.</M>

Since <M>E(U) > L',</M> this completes the proof.
 </PF>

<EXR>If <M>X</M>  takes the  values <M>x_1,x_2,...</M>  (not necessarily all nonnegative) with probabilities
 <M>p_1,p_2,...</M>  where <M>\sum p_i = 1</M> and <M>\sum |p_i x_i|<\infty,</M> then 
<D>E(X) = \sum p_i x_i.</D>
</EXR>
<EXR>If <M>X</M>  takes the  values <M>x_1,x_2,...</M>  (not necessarily all nonnegative) with probabilities
 <M>p_1,p_2,...</M>  where <M>\sum p_i = 1</M> and <M>\sum |p_i x_i|=\infty,</M> then what are the possibilities for <M>E(X):</M> 
 finite, <M>\infty</M>, <M>-\infty</M>  or undefined? Give one example of each of the possibilities. Prove the impossibility
 of the other(s).
</EXR>

<HEAD2>Expectation of a function</HEAD2>
<EXM>
Suppose I have a random variable that takes values <M>-1,0</M> and <M>1</M>
with probabilities <M>0.1, 0.5</M> and <M>0.4,</M> respectively.
What is <M>E(X^2)?</M>
<SOLN/>
Here <M>X^2</M> is a new random variable. Call it <M>Y,</M> say. Then <M>Y</M>
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
<PF>Easy.</PF>

<THM>
Let <M>X, Y</M> be any two random variables (defined on the same probability space) with <M>X\leq Y.</M>
If <M>E(X)</M>  and <M>E(Y)</M>  are both defined (may be <M>\infty</M>  or <M>-\infty</M>), then
<M>E(X)\leq E(Y).</M>
</THM>
<PF>
The result is trivial if <M>E(Y)=\infty.</M>  So we shall focus on the <M>E(Y)<\infty</M>  case. 

We had defined expectation in three steps: simple, nonnegative and general. Our proof will accordingly have three steps.

<B>Step 1: Simple:</B>

We have already seen this earlier in this page.

<B>Step 2: Nonnegative:</B>

To show <M>E(X)\leq E(Y),</M>  i.e., 
<D>\sup\{E(U)~:~U \mbox{ simple}, U\leq X\} \leq \sup\{E(V)~:~V \mbox{ simple}, V\leq Y\}.</D>
Enough to show that  <M>\{E(U)~:~U \mbox{ simple}, U\leq X\}\seq \{E(V)~:~V \mbox{ simple}, V\leq Y\}.</M>

Take any  simple <M>U\leq X.</M>  Then, since <M>X\leq Y,</M>  we also have <M>U\leq Y.</M>  Hence the result.

<B>Step 3: General:</B>

Let <M>X = X_+-X_-</M>
 and <M>Y = Y_+-Y_-</M>. 

Since <M>X\leq Y,</M>  we must have <M>X_+\leq Y_+</M>  and <M>Y_-\leq X_-.</M>  

Hence, by step 2, <M>E(X_+)\leq E(Y_+)</M>  and <M>E(Y_-)\leq E(X_-).</M>  

So <M>E(X_+)-E(X_-)\leq E(Y_+)-E(Y_-),</M>  as required.
</PF>
An immediate consequence of the above theorems is the following
theorem.

<THM>
If <M>X</M> always takes values in <M>[a,b],</M> then <M>E(X)</M>
must exist finitely, and lie in <M>[a,b].</M>
</THM>
<PF>
Easy.
</PF>
The condition "<M>X</M> always lies in <M>[a,b]</M>" may be
written as <M>P(X\in[a,b])=1.</M>

<COMMENT>
<THM>
Let <M>a\in\rr</M> be any number. If <M>P(X\leq a)=1,</M>
then <M>E(X)=a</M> if and only if <M>X</M> is degenerate at <M>a.</M>
</THM>

However, if <M>a\in\rr</M> is replaced by <M>\infty,</M> then the
result fails, i.e., 
It is possible to have a random
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
</COMMENT>
By the way, if <M>X</M> can take values <M>x_1,x_2,...</M>, there
is no guaranty that <M>E(X)</M> will equal any of
the <M>x_i</M>'s. For example, if  <M>X</M> is the outcome of
a fair die, then <M>E(X)=3.5,</M> which is not a possible
outcome.

<HEAD2>Transformation properties</HEAD2>
<THM>
Let <M>X</M> be a discrete rv such that <M>E(X)</M> is defined. If <M>a,b</M> are constants, then <M>E(a+bX) = a+bE(X).</M>
</THM>
<PF>
Do it yourself. Hint: Here also you need to proceed in three steps: simple, nonnegative, general.
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
<PF>
Another three step proof. Give it a try.
</PF>

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
Let <M>X</M> be a random variable and <M>f:\rr\to\rr</M>  be any convex function. We assume that <M>E(X)</M> 
and <M>E(f(X))</M> both exist finitely.  Then <M>f(E(X))\leq E(f(X)).</M>
</THM>
<PF>
Let <M>\mu = E(X).</M> Consider <M>\ell_\mu(x)</M> as mentioned
in the definition of convexity.
<P/>
Since the graph of <M>\ell_\mu(x)</M> is a straight line passing
through <M>(\mu,f(\mu)),</M> hence it must be of the form
<D>\ell_\mu(x) = f(\mu)+m(x-\mu),~~x\in\rr.</D>
So 
<D>
E(f(X)) \geq E(\ell_\mu(X)) = E(f(\mu))+mE(X-\mu) = f(\mu)+0 = f(E(X)),
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
