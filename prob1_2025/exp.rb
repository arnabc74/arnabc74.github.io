@{<NOTE>
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

<HEAD2>Simple random variables</HEAD2>
A random variable is called <TERM>simple</TERM>  if takes only finitely many values. 

<DEFN name="Expectation of simple random variables">
Let  <M>X</M> be a simpe random variable taking only the values
values <M>x_1,x_2,...,x_k</M> with
probabilities <M>p_1,p_2,..., p_k</M>.
Then we define the <TERM>expectation</TERM> of <M>X</M> as
<D>
E(X) = \sum_1^k p_i x_i.
</D>
</DEFN>

::<EXR>A random variable <M>X</M>  takes the values <M>-2, -1, 0, 1 </M>  and <M>2</M>  with
 probabilities <M>p,q,1-2p-2q, p</M>  and <M>q,</M>  respectively. Find <M>E(X).</M></EXR>

::<EXR>A random variable takes the values <M>1,2,...,10</M>  with probabilities
 <M>p_1,p_2,...,p_{10},</M>  respectively, where <M>\sum_i p_i = 1.</M>  Prove that <M>1\leq
 E(X)\leq 10.</M>  Also find <M>p_i</M>'s if <M>E(X) = 10.</M>  </EXR>

<HEAD1>Random variables taking countably many values</HEAD1>
<DEFN>
If <M>X</M>  takes only countably many <B>nonnegative</B> values <M>x_1, x_2, ...</M>   with probabilities
 <M>p_1,p_2,...</M>  where <M>\sum p_i = 1,</M> then <M>E(X)</M>
 is defined as
<D>E(X) = \sum p_i x_i.</D>
</DEFN>


For any random variable <M>X</M> we define <M>X_+ =
\max\{X,0\}</M> and <M>X_- = -\min\{X,0\}.</M> Notice that
both <M>X_+</M> and <M>X_-</M> are nonnegative. 

<EXR>Which of the following must be true?
<HL>
<LI><M>X = X_++X_-.</M></LI>
<LI><M>X = X_+-X_-.</M></LI>
<LI><M>X = X_--X_+.</M></LI>
<LI>None of the above.</LI>
</HL></EXR>


<DEFN>
If <M>X</M>  takes only countably many  values <M>x_1, x_2, ...</M>   with probabilities
 <M>p_1,p_2,...</M>  where <M>\sum p_i = 1,</M> then <M>E(X)</M>
 is defined as
<D>E(X) = <CASES>
E(X_+)-E(X_-)<IF>E(X_+), E(X_-)<\infty  </IF>
\infty <IF>E(X_+)=\infty, E(X_-)<\infty  </IF>
-\infty <IF>E(X_+)<\infty, E(X_-)=\infty  </IF>
</CASES>.</D>
</DEFN>

Notice that we leave the case <M>E(X_+), E(X_-)=\infty </M>
unmentioned in the definition. This means <M>E(X)</M> is
undefined in this case.


<THM>
If <M>X</M>  takes only countably many values <M>x_1, x_2, ...</M>   with probabilities
 <M>p_1,p_2,...</M>  where <M>\sum p_i = 1,</M> and <M>\sum |p_i x_i|< \infty,</M> then 
<D>E(X) = \sum p_i x_i.</D>
</THM>

It is possible to define expectation of random variables that are more general (taking uncountably many values). We shall
 give most general definition in the next semester. The following properties actually hold for the genral definition. 
Unless noted otherwise, we
 shall only prove them for the case of simple random variables. These proofs are actually the first steps in the general proofs
 that will come next semester. 


<HEAD1>Properties of expectation</HEAD1>
<HEAD2>Relation of <M>E(X)</M> with values of <M>X</M></HEAD2>

<THM>
If <M>X</M> is a degenerate rv (i.e., takes only one value with
probability 1), then <M>E(X)</M> equals that value.
</THM>
<PF>Easy.</PF>


<THM>
If <M>X</M> always takes values in <M>[a,b],</M> then <M>E(X)</M>
must exist finitely, and lie in <M>[a,b].</M>
</THM>
<PF>
Easy.
</PF>
The condition "<M>X</M> always lies in <M>[a,b]</M>" may be
written as <M>P(X\in[a,b])=1.</M>

<THM>Let <M>X</M>  and <M>Y</M>  be random variables taking only finitely many values, and  <M>X\leq
 Y.</M>  Then  <M>E(X)\leq E(Y).</M>  </THM>
<PF>
Here <M>X\leq Y</M>  means <M>\forall \omega\in\Omega~~X(\omega)\leq Y(\omega).</M>

As already mentioned, we shall restrict the proof to only the case where <M>X</M>  and <M>Y</M>  are both simple.

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



<THM>
Let <M>a\in\rr</M> be any number. If <M>P(X\leq a)=1,</M>
then <M>E(X)=a</M> if and only if <M>X</M> is degenerate at <M>a.</M>
</THM>
<EXR>Prove this for simple <M>X</M>.</EXR>

However, if <M>a\in\rr</M> is replaced by <M>\infty,</M> then the
result fails, i.e., 
It is possible to have a random
variable <M>X</M> that is always finite (any real-valued random
variable will do, since <M>\infty\not\in\rr</M>) such
that <M>E(X)=\infty.</M> Of course, we cannot get a counterexample using simple random variables.
 However, such counterexamples exist for random variables taking countably many values, as shown below. 

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
the <M>x_i</M>'s. For example, if  <M>X</M> is the outcome of
a fair die, then <M>E(X)=3.5,</M> which is not a possible
outcome.

<HEAD2>Transformation properties</HEAD2>
<THM>
Let <M>X</M> be a random variable and let  <M>a,b</M> be constants. Then <M>E(a+bX) = a+bE(X).</M>
</THM>
<PF>
Prove it for simple <M>X</M>.
</PF>

::<EXR>
If <M>E(X) = \mu\in\rr,</M> then what is <M>E(X-\mu)?</M>
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

If <M>X </M> takes countably infinitely many values, and <M>h(X)</M>  is non-negative, then define 
<D>
U_n =<CASES>h(X)<IF>X=x_1,...,x_n</IF> 0<ELSE/></CASES>
</D>  
and proceed as for the proof of <M>E(X)=\sum p_i x_i.</M> 
</PF>

<HEAD1>Indicator trick</HEAD1>
Often we have to find <M>E(X)</M>  where <M>X</M>  is the count of something, e.g., number of heads in 100 tosses of coin,
 or number of times something interesting happens. If you want to find <M>E(X)</M>  directly from the definition, then you
 need to find the distribution of <M>X</M>  first, which is often difficult. In such situatons the
 <TERM>indicator trick</TERM> may provide a short cut. 

<EXM>We have a ring of 20 lamps. A wind blows and a random subset of lamps go out. Find
 the expected number of singleton lights (i.e., lighted lamps with both neighbours off).
<CIMG web="lamps.png">The singletons are shown with arrowheads</CIMG>
<SOLN/>
Let <M>X</M>  be the number of singletons. Finding the distribution of <M>X</M>  is not very difficult, but still we shall
 demonstrate the use of the indicator trick. 

We shall use the arrowheads as our random variables. Let the lamps be numbered from 1 to 20. Define <M>L_i=1</M> 
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

<HEAD1>Finite existence of <M>E(X)</M></HEAD1>
We know from the definition of expectation that it may come in four varieties: it may be finite, or <M>\infty</M>  or <M>-\infty</M> 
 or undefined. 
The finite case is the most useful, and it 
sometimes helps to know some sufficient conditions for this.

<THM>
If <M>X</M> is simple, 
then <M>E(X)</M> must be finite. 
</THM>
<PF>
Goes without saying!
</PF>

Non-negative random variables have the advantage that their expectation is always defined (though may be <M>\infty</M>). Now,
 from any random variable <M>X</M>  we can easily manufacture a non-negative random variable, viz, <M>|X|.</M>  It is 
good to be able to relate <M>E(X)</M>  with <M>E(|X|).</M>

<THM>
<M>E(|X|)</M>  is finite if and only if <M>E(X)</M>  is finite. 
</THM> 
<PF>
We define <M>X_+, X_-</M>  as usual. 

Then <M>X = X_+-X_-</M>  and <M>|X| = X_++X_-</M>. 

Then finiteness of <M>E(|X|)</M>  is equivalent to finiteness of both  <M>E(X_+), E(X_-).</M>  

Again, finiteness of <M>E(X)</M>  is equivalent to finiteness of both  <M>E(X_+), E(X_-).</M>  

Hence the result.
</PF>

::<EXR>If <M>E(|X|)=\infty,</M>  then what can you say about <M>E(X)?</M>
<ANS>May be <M>\infty</M>  or <M>-\infty</M>  or undefined.</ANS>
</EXR>
<THM>
Let <M>X,Y</M> be random variables defined on the same probability space. Let <M>|X|\leq|Y|.</M>
  If <M>E(Y)</M>  is finite, then <M>E(X)</M>  must also be finite. 
</THM>
<PF>
Since <M>E(Y)</M>  is finite, hence  <M>E(|Y|)</M>  is finite. So <M>E(|X|)\leq E(|Y|)</M> 
 is also finite. Hence <M>E(X)</M>  is finite. 
</PF>

<THM>
Let <M>X,Y</M>  be random variables defined on the same probability space. Let <M>E(X)</M>  and <M>E(Y)</M>  both be finite.
 Then <M>E(\max\{X,Y\})</M>  must also be finite.
</THM>
<PF>
 Do it yourself.
</PF>

<THM>
Let <M>m<n</M> be any two positive integers. If <M>E(X^n)</M>
exists finitely, then <M>E(X^m)</M> must also exist finitely.
</THM>
<PF>
Use the fact that <M>|X^m| \leq \max\{1,|X^n|\}.</M> Now use the
last theorem.
</PF>

The following theorem often proves very useful. 

<THM name="Markov inequality">
Let <M>X</M>  be any non-negative random variable. Let <M>\epsilon>0.</M>  Then 
<D>E(X)\geq \epsilon P(X\geq\epsilon).</D>
</THM>
<PF>
Let <M>Y =<CASES>\epsilon<IF>X\geq \epsilon</IF> 0<ELSE/></CASES>. </M>
Then clearly, <M>X\geq Y</M>. So <M>E(X)\geq E(Y) = \epsilon P(X\geq \epsilon)</M>.
</PF>

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
 make this expectation exceed 1?
<ANS> 
Let <M>X_i = <CASES>1<IF>\mbox{exactly $k$ people have birthdays on day} i</IF> 0<ELSE/></CASES>.</M>

Then <M>X = \sum_1^{365} X_i.</M>  

So <M>E(X) = \sum_1^{365} E(X_i).</M>

Expected number of days of the year which are  birthdays of exactly <M>k</M>  people is <M>\binom{n}{k}[[364^{n-k}][365^{n-1}]].</M>

Expected number of multiple birthdays is <M>365{*{1-(*([[364][365]])*)^n - [[n\times 364^{n-1}][365^n]]}*}.</M>

</ANS>
</EXR>
::<EXR>A man with <M>n</M>  keys wants to open a door (where exactly one key works). He tries the
 keys independently at random. Find the expected number of trials needed to open the door if 
 keys are tried (a) with replacement (b) without replacement.
<ANS>(a) <M>\sum_1^ \infty k\cdot (*(1-[[1n]])*)^{k-1}\cdot[[1n]] = \cdots = n.</M> 

 (b) <M>\sum_1^n [[kn]] = [[n+1][2]].</M></ANS>
</EXR>
::<EXR><CIMG web="rossrv5.png"/>
<ANS>
Here <M>p</M>  is he says, and <M>p^*</M>  is what he believes. The meteorologist is not an honest one, and may 
say something different from what he believes. His only aim is to maximise the expected score. 

The expected score is 
<D>p^*(1-(1-p)^2) + (1-p^*)(1-p^2).</D>
This is to be maximised wrt <M>p</M>  (with <M>p^*</M>  fixed). 

Differentiate (or think of the graph) to see that the maximising value of <M>p</M>  is <M>p^*.</M>
</ANS>
</EXR>
::<EXR><CIMG web="rossrv6.png"/>
<ANS>
Company pays the amount <M>A</M>  with probability <M>p.</M>  It pays <M>0</M>  with probability <M>1-p.</M>

So its expected payoff is <M>pA.</M>  

Suppose that it charges <M>B.</M>  Then expected profit is <M>B-pA.</M>  To keep it 10% of <M>A</M>  we need <M>B = (p+0.1)A.</M>
</ANS>
</EXR>
::<EXR><CIMG web="rossrv7.png"/>
<ANS>
(a) <M>E(X)</M>  would be larger, because when a student is selected at random, he is more likely to come from the larger
 buses. So <M>E(X)</M>  is a weighted average of the bus sizes where the larger buses get more weight. 

But <M>E(Y)</M>  is the simple average of the bus sizes.

(b) <M>E(X) = [[40^2+33^2+25^2+50^2][40+33+25+50]].</M>

<M>E(Y) = [[40+33+25+50][4]].</M>

</ANS>
</EXR>
::<EXR><CIMG web="rossrv8.png"/>

We assume that no draw is possible. 
<ANS>
By the pigeon hole principle, the winner will be decided by at least 2 and at most 3 games. 
So the sample space is <M>\{AA, BB, ABA, BAA, BAB, ABB\}.</M>  The probabilities are, respectively, 
<M>p^2, q^2, p^2q, p^2q, pq^2, pq^2,</M> where <M>q=1-p.</M>

 If <M>X</M>  is the random variable denoting the number of
 games played, then it takes the values, respectively, <M>2,2,3,3,3,3.</M>

So <M>E(X) = 2(p^2 + q^2) + 3(2p^2q + 2pq^2)  = 2(1+pq).</M>

This is maximised when <M>pq = p(1-p)</M>  is maximised, which is when <M>p=[[12]].</M>
</ANS></EXR>
::<EXR><CIMG web="rossrv9.png"/><ANS>
(a) <M>E(#( (2+4X)^2 )#) = 4E(1+4X+4X^2) = 4(1+4E(X)+4E(X^2)) = \cdots</M>.

(b)<M> E(X^2+(X+1)^2) = E(2X^2+2X+1) = 2E(X^2)+2E(X)+1 = \cdots</M>.

</ANS></EXR>
::<EXR><CIMG web="rossrv11.png"/>
<ANS>
(a) Let <M>X_i = <CASES>1 <IF>i\mbox{-th draw is white}</IF> 0<ELSE/></CASES></M>  for <M>i=1,...,10.</M>

Then <M>E(X_i) = P(i</M>-th draw is white<M>)=[[17][40]].</M>  

So <M>E(X) = 10\times [[17][40]] = [[17][4]].</M>  

(b) Let <M>Y_i = <CASES>1<IF>i\mbox{-th white ball is selected}</IF> 0<ELSE/></CASES></M>  for <M>i=1,...,17.</M>

Then <M>E(Y_i) = P(i</M>-th white ball is delected<M>)=[[14]].</M>  

So <M>E(X) = 17\times [[14]] = [[17][4]].</M>  

</ANS>
</EXR>
::<EXR><CIMG web="rossrv12.png"/><ANS>
Let <M>X_i</M>  be as given in the hint. 

Let <M>X = </M> number of intact marriages.

Then <M>X = \sum_1^{100} X_i</M>

Now <M>E(X_i) = \binom{198}{50}/\binom{200}{50}=[[150\times149][200\times199]].</M>

So <M>E(X) = [[150\times149][2\times199]].</M>
</ANS></EXR>
::<EXR><CIMG web="rossrv13.png"/>
<ANS>
<M>E(X) = [[52]].</M>
</ANS>
</EXR>
::<EXR><CIMG web="rossrv14.png"/>
Here we assume that <M>E(X)</M>  exists finitely. The inequality holds even if 
<M>E(X^2)</M>  is not finite (with the interpretation that <M>\forall a\in\rr~~\infty \geq a</M>.)
<ANS>
You may either use Jensen's inequality with the convex function <M>f(x)=x^2</M>  or the fact that <M>V(X)\geq 0.</M>

Equality if and only if <M>V(X)= 0</M>, i.e., if <M>X</M>  is a degenerate random variable.
</ANS>
</EXR>

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
::<EXR><CIMG web="fellrv2.png"/>
<ANS>
Here <M>P(X=k) = \binom{k-1}{r-1}p^rq^{k-r}</M>  for <M>k=r,r+1,...</M>  where <M>q = 1-p.</M>

So 
<D>E(*([[rX]])*) = \sum_{k=r}^\infty \binom{k-1}{r-1}p^rq^{k-r}[[rk]].</D>
Ignoring the  terms free of <M>k</M>, and massaging the rest a little, the sum  reduces to 
<D>\sum_{k=0}^\infty [[k(k-1)\cdots(k-r+2)][k+1]] q^k.</D>
This may be handled by repeated term by term integration and differentiation of the power series
<D>1+q+q^2+\cdots = [[1][1-q]]</D>
for <M>|q|<1.</M>

You may like to deal with the <M>r=1</M>  case first.
</ANS>
</EXR>
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
::<EXR><CIMG web="most6.png"/>
<ANS>
Assuming the dice to be fair, the answer does not depend on the number 
the gambler bets on. 

Let <M>X</M>  be the loss for unit stake on 1.
Then
<D>X = <CASES>
1<IF>\mbox{no die shows 1}</IF>
-1<IF>\mbox{exactly 1 die shows 1}</IF>
-2<IF>\mbox{exactly 2 dice show 1}</IF>
-3<IF>\mbox{all 3 dice show 1}</IF>
</CASES>.</D>
So <M>P(X=1) = (*([[56]])*)^3</M>, <M>P(X=-1) = 3(*([[16]])*)(*([[56]])*)^2</M>, 
<M>P(X=-2) =
 3(*([[16]])*)^2(*([[56]])*)</M>  and <M>P(X=-3) = (*([[16]])*)^3.</M>

Hence   
<D>E(X) = (*([[16]])*)^3(5^3-3\times 5^2-6\times5-3).</D>
</ANS>
</EXR>
::<EXR><CIMG web="most14.png"/>
<ANS>
Let <M>T_1 = 1.</M>

Let <M>T_i = </M>  waiting time for the <M>i</M>-th new coupon after the <M>(i-1)</M>-th coupon has been encountered, for
 <M>i=2,3,4,5.</M>

Consider the following example to understand the definition of <M>T_i</M>'s. Suppose that the coupons arive in the order:
<Q> <RED>3</RED> 3 <RED>4</RED> 3 <RED>5</RED> 4 3 4 <RED>2</RED> 3 4 5 <RED>1</RED>.</Q>
The first occurences of each type of coupon have been shown in red. They are at positions 
<D>S_1 = 1, S_2 = 3, S_3 = 5, S_4=9\mbox{ and } S_5=13.</D>
We are defining <M>T_i = S_i-S_{i-1}</M>  for <M>i=1,...,5</M>  where <M>S_0=0.</M>

Then the <M>T_i</M>'s are independent random variables. 

<M>T_1</M>  is degenerate at 1,  and for <M>i=2,...,5</M>  we have
<D>P(T_i = k) = q_i^{k-1}p_i</D>  for <M>k\in\nn</M>  where <M>q_i = [[i-1][5]]</M>  and <M>p_i = 1-q_i.</M>

We can easily find <M>E(T_i)</M>'s. 

The answer to the problem is <M>E(T_1+\cdots+T_5) = 1+E(T_2)+\cdots+E(T_5).</M>

[Thanks to Nipam for correcting a mistake here.]
</ANS>
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
::<EXR><CIMG web="most34.png"/>
<ANS>
Let there be <M>n</M>  workers. Let <M>X</M>  be the number of working days. 

Let <M>X_i=<CASES>1<IF>i\mbox{-th day is a working day}</IF> 0<ELSE/></CASES>.</M>

Then <M>X = \sum_1^{365} X_i.</M>

Now <M>E(X_i) = P(i</M>-th day is a working day<M>)= (*([[364][365]])*)^n.</M>

So <M>E(X) = 365\times (*([[364][365]])*)^n.</M>

Hence expected number of man-days is 
<M>365n\times (*([[364][365]])*)^n=f(n)</M>, say.

We want to maximise this wrt <M>n.</M>  

Now 
<D>[[f(n+1)][f(n)]] = [[n+1][n]]\times [[364][365]].</D>
This is <M>>/=/< 1</M>  according as <M>364 >/+/< n.</M>

So the function is maximised at <M>n=364</M>  and <M>365.</M>
</ANS>
</EXR>

::<EXR><CIMG web="most40.png"/>
<ANS>
Let <M>X=</M> number of cards required to be turned. 

Then <M>P(X=k)=[[4\times {}^48P_{k-1}(52-k)!][52!]].</M>

So
</ANS>
</EXR>

</NOTE>@}
