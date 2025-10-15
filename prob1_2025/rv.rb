@{<NOTE><TITLE>Random variables</TITLE>
<M>\newcommand{\pow}{{\mathcal P}}</M>
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
from the mechanism that decides what goes <I>into</I> this: head or tail?
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

<ALERT/>Don't let the notation <M>X ^{-1}</M>  make you think that <M>X:\Omega\to\rr</M>  has to be
 invertible. For any <M>f:A\to B</M>  we can define <M>f ^{-1}:\pow(B)\to\pow(A)</M>  as follows (here <M>\pow</M>  denotes
 power set, i.e., the set of all subsets):
for <M>V\in\pow(B)</M>  we define <M>f  ^{-1}(V)=\{a\in A~:~f(a)\in V\}</M>. 

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
variable? Well, for if our <M>\Omega</M>  is a countable set (finite/infinite), then 
the answer is "yes".  We shall not worry about the uncountable case here. 

<HEAD1>Distribution of a random variable</HEAD1>
Consider another gambling game. 
<EXM>
A fair die is rolled. I shall pay you Rs 10 if the die shows an
even number, you'll pay me Rs 20 otherwise. Let's denote
by <M>Y</M> your gain (in Rs). Express <M>Y</M> as a function from <M>\{1,2,3,4,5,6\}</M>  to <M>\rr.</M>
Let <M>A = \{10\}.</M> Find <M>Y ^{-1} (A)</M> and using it
find <M>P(Y\in A).</M> 
<SOLN/>
Here <M>Y^{-1}(A) = \{2,4,6\}.</M> So <M>P(Y=10) = P(\{2,4,6\}) = [[16]]+[[16]]+[[16]] = [[12]].</M>
</EXM>

In each of  these examples we had a random variable  that
took only two values <M>10</M> and <M>-20.</M> Which random variable do
you think is more profitable for you, <M>X</M>  or <M>Y</M>? Well, both are actually the
same so far as profit goes. Understand this carefully: <M>X</M>  and <M>Y</M>
 are completely different as functions (their
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
 any  set <M>B\seq\rr.</M>  
</DEFN>

How do we specify the distribution of a random variable? Do we make a list of all the subsets of <M>\rr</M>, and label them with
their probabilities? That would be insane, because there are uncountably infinitely many such subsets. 
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

<HEAD1>Problems for practice</HEAD1>
::<EXR>(Easy)<CIMG web="rossrv1.png"/>
<ANS>
<M>P(X=i) = [[^5P_{i-1}\times 5\times (10-i)!][10!]]</M>  for <M>i=1,2,3,4,5,6.</M>  The probability is
 0 for <M>i=7,8,9,10.</M>
</ANS>
</EXR>
::<EXR>(Easy)<CIMG web="rossrv2.png"/>
<ANS>If <M>n</M>  is even, then all even values between <M>0</M>  and <M>n.</M>  If <M>n</M>  is
 odd, then all the odd values in the same range.</ANS>
</EXR>
::<EXR>(Easy)<CIMG web="rossrv3.png"/>
<ANS>
(a) <CIMG web="cdf.png">Plot of CDF</CIMG>

(b) <M>P(*(X > [[12]] )*) = 1-F(*([[12]])*) = [[34]].</M>

(c) <M>P(2< X \leq 4) = F(4)-F(2) = [[1][12]].</M>

(d) <M>P(X < 3) = F(3-) = [[11][12]].</M>

(e) <M>P(X=1) = F(1)-F(1-) = [[16]].</M>
</ANS>
</EXR>

::<EXR>(Easy)<CIMG web="rossrv4.png"/>
<ANS><M>P(X=1) = P(X\leq 1)-P(X< 1).</M>

Now <M>\{X < 1\} = \lim_n {*{X\leq 1-[[1n]]}*}.</M>  Since this is an increasing limit, hence by continuity of 
probability, we have <M>P(X<1) = \lim_n P(*(X\leq 1-[[1n]])*) = \lim_n F(*(1-[[1n]])*) = F(1-).</M>

Hence <M>P(X=1) = F(1)-F(1-).</M>
</ANS>
</EXR>

::<EXR>(Easy)<CIMG web="hpsrv1.png"/>
<ANS>
<M>P(|X-1|\geq 2) = P(X\leq -1\mbox{ or }X\geq 3) = P(X\leq -1) + P(X\geq 3) = P(X\leq -1) +
 P(X \gt 3)+P(X=3) = F_X(-1)+1-F_X(3)+P(X=3) =F_X(-1)+1-F_X(3),</M>
since <M>P(X=3)=0</M>.

[Thanks to ''Chaitu'' for correcting a typo here.]
</ANS>
</EXR>
In all the following problems the term "density" stands for "PMF".

::<EXR>(Easy)<CIMG web="hpsrv3.png"/>
<ANS>
(b) <M>X</M>  can take values <M>0,1,...,n</M>.  We have 
<D>P(X=k) = \binom{n}{k} (*([[35]])*)^k (*([[25]])*)^{n-k}</D>  for <M>k=0,1,...,n</M>.
The PMF is zero otherwise. 

(a) Here <M>n</M>  ca be at most 10. For <M>k=0,...,6</M>  we have
<D>P(X=k) = [[\binom{6}{k}\binom{4}{n-k}][\binom{10}{k}]]. </D>
Here we have the understanding that <M>\binom{n}{r} = 0</M>  if <M>r\not\in\{0,1,...,n\}</M>. 
</ANS>
</EXR>
::<EXR>(Easy)<CIMG web="hpsrv4.png"/>
<ANS>For this to be a PMF we need <M>f(1)+\cdots+f(N)=1</M>.

So <M>c(2+2^2+\cdots 2^N) = 1</M>. 
</ANS>
</EXR>
::<EXR>(Easy)<CIMG web="hpsrv5.png"/>
<ANS>
(a) <M>P(X<0) = f(-3)+f(-1) = 0.1 + 0.2 = 0.3</M>.

(b) <M>f(0)+f(2) +f(8) = 0.15+0.1+0.05</M>.

(c) <M>f(1)+f(2)+f(3)+f(5)+f(8) = 0.2+0.1+0.15+0.05+0.05 = </M>

(d) <M>P(X=-3|X\leq 0)= [[P(X=-3 \& X\leq 0)][P(X\leq 0)]] =  [[P(X=-3)][P(X\leq 0)]] = [[f(-3)][f(-3)+f(-1)+f(0)]] = </M>

(e) <M>P(X\geq 3| X > 0) = [[P(X\geq 3 \& X > 0)][P(X > 0)]] = [[P(X\geq 3)][P(X>0)]]= [[f(3)+f(5)+f(8)][f(1)+f(2)+f(3)+f(5)+f(8)]].</M>
</ANS>
</EXR>
::<EXR>(Medium)<CIMG web="hpsrv6.png"/>

Here they mean an SRSWR of size 2.
<ANS>
Clearly <M>X</M>  can take values in <M>\{1,2,...,12\}</M>.

So if <M>k\not\in\{1,2,...,12\}</M>, then <M>P(X=k) = 0</M>.

Now let <M>k\in\{1,2,...,12\}</M>.

Let the first number be <M>X_1</M>  and the second be <M>X_2</M>

Then <M>P(X\leq k) = P(X_1\leq k \& X_2\leq k) = P(X_1\leq k)P(X_2\leq k) = (*([[k][12]])*)^2</M>.

Actually this formula also holds for <M>k=0</M>.

So for <M>k\in\{1,2,...,12\}</M>  we have 
<D>P(X=k)= P(X\leq k)-P(X\leq k-1) = [[k^2-(k-1)^2][144]],</D>
which is the required PMF. 
</ANS>
</EXR>
::<EXR>(Medium)<CIMG web="hpsrv7.png"/>
<ANS>
(a) Of course we assume that <M>n\leq r</M>. 

Then <M>P(Y\leq y) = 0</M>  if <M>y < 1</M>  and also
 <M>P(Y\leq y) = 1</M>  if <M>y\geq r</M>. 

Let <M>y\in [1,r)</M>. Then <M>\{Y\leq y\}</M>  means all the balls are from <M>\{1,...,[y]\}</M>. 

This has probability <M>[[\binom{[y]}{n}][\binom{r}{n}]]</M>. 

(b) Similar. 
</ANS>
</EXR>
The nex two problems refer to the following CDF:
<CIMG web="hpsmore1.png"/>
::<EXR>(Easy)<CIMG web="hpsmore2.png"/>
<ANS>
<M>F(m) = [[12]]</M>  means <M>1-e^{- \lambda m} = [[12]]</M>, or 
<M>m = [[\log 2][\lambda]]</M>.
</ANS>
</EXR>
::<EXR>(Easy)<CIMG web="hpsmore3.png"/>
<ANS>First notice that since <M>F(x)</M>  is a continuous function, hence for any given <M>a\in\rr</M>  we must have <M>P(X=a) = 0</M>.

So <M>P(X\geq 0.01) = P(X > 0.01) = 1-F(0.01) = e^{-\lambda/100}</M>.

So we get <M>e^{-\lambda/100}=[[12]]</M>  or <M>\lambda=100\log 2</M>. 

Again, <M>P(X\geq t) = e^{-\lambda t}</M>.

So we need <M>e^{-\lambda t} = 0.9</M>. Hence <M>t = -[[\log 0.9][\lambda]] = -[[\log 0.9][100\log 2]]</M>.

This is actually positive, since <M>\log 0.9 < 0</M>.
</ANS>
</EXR>
::<EXR>(Easy)<CIMG web="hpsmore4.png"/>
<ANS>
(a) <M>P(*([[12]]\leq X \leq [[32]])*) = P(*(X\leq [[32]])*) - P(*(X < [[12]])*)
= P(*(X\leq [[32]])*)-P(*(X\leq [[12]])*),</M>
since <M>P(*(X=[[12]])*) = 0</M>  as <M>F(x)</M>  is continuous at <M>x=[[12]]</M>.

So the answer is <M>F(*([[32]])*)-F(*([[12]])*) = [[34]]-[[16]]=[[7][12]]</M>.

(b) <M>P(*([[12]]\leq X \leq 1)*) = P(*(X\leq 1)*) - P(*(X < [[12]])*) = F(1)-P(*(X < [[12]])*)</M>. 
Now proceed as before. 

(c) <M>P(*([[12]]\leq X < 1)*) = P(*(X< 1)*) - P(*(X < [[12]])*) = \lim_{x\to
 1-}F(x)-F(*([[12]])*) = [[13]]-[[16]] = [[16]].</M>. 

(d) <M>P(*(1\leq X\leq [[32]])*) = P(*(X\leq[[32]])*) - P(X < 1) = F(*([[32]])*)-\lim_{x\to1-} F(x) = [[34]]-[[13]] = [[5][12]]</M>.

(e) <M>P(1 < X < 2) = P(X<2)-P(X\leq1) = \lim_{x\to2-}F(x)-F(1) = 1-[[12]] = [[12]]</M>.

Actually here <M>F(x)</M>  is continuous at <M>x=2</M>. 

[Thanks to Avigyan for correcting a silly mistake in the solution to part (e).] 
</ANS>
</EXR>
::<EXR>(Medium)<CIMG web="hpsmore5.png"/>
Here are the properties (i)-(iv) from section 5.1.1:
<CIMG web="hpsmore6.png"></CIMG>
Here <M>F(\pm\infty) = \lim_{x\to\pm\infty} F(x)</M>  and <M>F(x+) = \lim_{t\to x-} F(t).</M>
<ANS>
(a) (i), (ii), (iii) No modification. (iv) <M>F(x-) = F(x)</M>  for all <M>x</M>. 

(b) (i) No modification. (ii) nonincreasing. (iii) <M>F(-\infty) = 1</M>  and <M>F(\infty) = 0</M>. (iv) No modification.
 
(c) (i) No modification. (ii) nonincreasing. (iii) <M>F(-\infty) = 1</M>  and <M>F(\infty) = 0</M>. (iv) <M>F(x-) = F(x)</M>  for all <M>x</M>. 
</ANS>

</EXR>
</NOTE>@}
