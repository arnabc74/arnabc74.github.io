@{<NOTE>
<M>\newcommand{\toA}{\stackrel{a.s.}{\longrightarrow}}</M>
<M>\newcommand{\toP}{\stackrel{P}{\longrightarrow}}</M>
<M>\newcommand{\v}{\mathbf}</M>
<M>\newcommand{\cov}{\mathrm{cov}}</M>
[Update:[Thu Jul 09 IST 2026]]
<TITLE>Inequalities</TITLE>
<UPDT/>
<HEAD1>Cauchy-Schwartz</HEAD1>

<THM name="Cauchy-Schwarz inequality">
<M>cov(X,Y)^2 \leq V(X)V(Y).</M>
Equality holds iff <M>\exists a,b,c\in\rr~~P(aX+bY=c)=1.</M>
</THM>
<PF>
The result is obvious if <M>V(X)=0</M> or <M>V(Y)=0.</M>   So let's
consider the case where <M>V(X), V(Y)>0.</M>

Define <M>Z_1 = [[X-E(X)][V(X)]]</M>  and <M>Z_2 = [[Y-E(Y)][V(Y)]].</M>  

We know that <M>V(Z_1+Z_2)\geq 0.</M>

Derive from this <M>\cov(X,Y)\geq -1.</M>  


Similarly, derive <M>\cov(X,Y)\leq 1</M>  from <M>V(Z_1-Z_2)\geq 0.</M>

Also equality holds iff <M>V(Z_1+Z_2)=0</M>  or <M>V(Z_1-Z_2)=0</M>, i.e., if
<M>Z_1+Z_2</M> or <M>Z_1-Z_2</M>  is degenerate.

So we have either <M>P(Z_1+Z_2=k)=1</M> or <M>P(Z_1-Z_2=k)=1</M>  for some <M>k\in\rr.</M>

In both cases we have <M>P(aX+bY=c)=1</M>  for some constants, <M>a,b,c,</M>  as required.
</PF>
It is instructive to think about the  Cauchy-Schwartz inequality from a geometric perspective. If
 we take two vectors , <M>\v u</M>  and <M>\v v</M>  in
 2D or 3D, we have the identity 
<D>\v u\bullet\v v = \| \v u\| \cdot \|\v v\|\cos \theta,</D>
where <M>\theta</M>  is the angle between the two vectors. 
<CIMG web="dot.png"></CIMG>
Now, if we replace the two vectors by the random variables <M>X</M>  and <M>Y</M>, then their covariance plays the role of
 dot product. Indeed, covariance satisfies all the properties of a dot product (also called inner product in linear algebra).
 Then the role of length of a vector (called norm in linear algebra) is played by standard deviation, since <M>\|\v u\| = \sqrt{\v u\bullet\v u}.</M>

Similarly, <M>\sqrt{\cov(X,X)} = \sqrt{V(X)}.</M>  

In this sense <M>\cos \theta = [[\cov(X,Y)][\sqrt{V(X)V(Y)}]].</M>

Can we recover <M>\theta</M>  from this? Yes, using <M>cos ^{-1},</M>  provided the RHS is between <M>-1</M>  and <M>1.</M>
Well, the Cauchy-Schwartz inequality guarantees precisely that. In this geometric interpretation,
 <M>\cos \theta</M>  is called the correlation coefficient between <M>X</M>  and <M>Y.</M>  

<HEAD2>Problem set</HEAD2>
<EXR><M>X</M>  is a nonnegative random variable with finite second moment. Show that <M>P(X>0)\geq [[E^2(X)][E(X^2)]].
<HINT>Think of <M>X</M>  as  <M>X1_{X>0}.</M>
</HINT>
</M></EXR>

<EXR>Let <M>X_1,...,X_n</M>  be random variables with finite second moments. Show that
<D>V(*(\sum X_i)*) \leq (*(\sum\sqrt{V(X_i)})*)^2.</D>
</EXR>

<EXR>Show that <M>E|X-E(X)|\leq \sqrt{V(X)}</M>  for any random variable <M>X</M>  with finite second moment.</EXR>

<EXR>If <M>E(X^2)=E(Y^2) = E(XY),</M>  then show that <M>P(X=Y)=1.</M></EXR>
<HEAD1>Markov and Chebyshev inequalities</HEAD1>
Let us start with a commonsense example.
 
<EXR>Average salary in a company is Rs 50,000. It is claimed that 30% of the employees are getting
 a salary of Rs 250,000
 or more. Can this claim be true?<ANS>
Of course not! Even if the other employess get no salary at all, the average must be at least <M>0.3\times 250,000,</M> 
 which exceeds the stated average.
 
In fact, no more than <M>[[15]]</M> of
 the employees can make
 250,000 or more. Since 50000/250000 = <M>[[15]]</M>.</ANS></EXR>

The same reasoning leads to the following very useful inequality.

<THM name="Markov inequality">
Let <M>X</M>  be a nonnegative random variable.
Let <M>\epsilon>0.</M>
Then <M>P(X \geq \epsilon) \leq [[E(X)][\epsilon]].</M> 
</THM>
<PF>
Compare with <M>Y = <CASES> \epsilon<IF>x\geq \epsilon</IF> 0<ELSE/></CASES>.</M>

Note that <M>Y\leq X.</M>  Hence <M>E(Y^k)\leq E(X^k).</M>  
But <M>E(Y^k) = P(X\leq \epsilon) \epsilon^k.</M>  Hence the result.
</PF>
A point about the inequalities in the above theorem. There are two inequalities, one inside the probability, and one outside.
 Both are mixed inequalities. Obviously, you may make the first inequality strict (thereby
 weakening the result). However, you may  not replace the other inequality with a strict one, because otherwise you will
 get <M>0 < 0</M>  for the degenerate random variable <M>X\equiv0</M>.

The following variant of the Markov inequality is due to Chebyshev.
<FNOTE>Chebyshev is also credited with designing a <LINK to="https://www.youtube.com/watch?v=ISfVS4mDTKs">quadruped
robot-like linkage</LINK>.</FNOTE>
<THM name="Chebyshev inequality">
Let <M>V(X)<\infty.</M> Then 
<D>
\forall \epsilon>0~~P(|X-E(X)| \geq \epsilon) \leq [[V(X)][\epsilon^2]].
</D>
</THM>
<PF>
This is just Markov inequality with <M>k=2</M>  applied to the random variable <M>|X-E(X)|.</M>
</PF>
<HEAD2>Problem set</HEAD2>
<EXR>Give a counterexample to show that the nonnegativity assumption in the inequality may not be dropped.</EXR>

<EXR>Let <M>X</M>  be any random variable (not necessarily nonnegative). Show that 
<D>\forall \epsilon>0~~P(X\geq \epsilon) \leq [[E(X^2)][\epsilon^2]].</D>
</EXR>

<EXR>If you have solved the above exercise, you can also show that for any nonnegative random
 variable <M>X</M>  and any <M>\epsilon>0</M>  we have for each <M>k\in\nn,</M>  
<D>\forall \epsilon>0~~P(X\geq \epsilon) \leq [[E(X^k)][\epsilon^k]].</D>
Will higher values of <M>k</M>  necessarily give you better bounds?
</EXR>

<EXR>Prove that <M>\forall \epsilon>0~~[[1][\sqrt{2\pi}]]\int_{-\epsilon}^ \epsilon e^{-x^2/2}\, dx \leq
 [[1][\epsilon^4]].</M></EXR>
<HEAD1>Real life applications</HEAD1>
Markov inequality is little more than commonsense, and naturally it finds many practical applications. Its greatest strength
 lies in the fact that it makes no assumption about the distribution of the the random variable other
 than through its expectation.
For many real life random variables, estimating the mean is far easier than estimating the entire distribution. 

Let us start with an interesting application from computer science. A class of algorithms called Las
 Vegas algorithms, approach a problem in a random way that is sure to arrive at the answer, but after a random number
 of steps.  

One example is the randomised quick sort algorithm:
<Q> Here we sort an array of numbers by picking a random element from the
 array, and dividing the rest into two groups, depending on whether a number is <M>\leq</M>  or <M>></M>  than the picked
 element. Then we do the same thing recursively to both the groups separately, and stop when the entire array is sorted.</Q> 

Let <M>X</M>  denote the number steps in a Las Vegas algorithm.   We often know <M>E(X)</M>  as a function of the
 input size. For instance,
 in the randomised quicksort algorithm <M>E(X) = n\log n,</M>  where <M>n</M>  is the length of
 the array (proof not part
 of this course). 
Then Markov inequality helps us to get an upper bound on the probability that the
 algorithm will take too long.
This allows engineers to guarantee system satibility without knowing the exact distribution of <M>X.</M>

<HEAD2>Problem set</HEAD2>
<EXR>Let <M>X</M>  be the number of steps needed in a randomised quick sort algorithm. It is known that <M>E(X)=n\log n</M> 
 if the <M>n</M>  is the length of the array to be sorted.
Find an upper bound for  <M>P(X>10^6)</M>  if the input array has length <M>10^4.</M></EXR>  

<EXR><B>(Router overload)</B>
A router receives a random number (<M>X</M>) of packets every millisecond. We know from the
 past that <M>E(X)=50.</M>  We do not know the distribution of <M>X.</M>  The router's buffer can
 hold 250 packets before overflowing. Help the network engineer to provide an uppr bound to 
the failure rate,
<M>P(X\geq 250).</M>
</EXR>

<EXR><B>(Liquidity crisis)</B>
A bank has a large portfolio of small business loans. <M>X=</M> number of defaulters in a
 single month. Past experience shows <M>E(X)=2M.</M> Liquidity crisis will arise if <M>X\geq
 20M.</M>  Bound the probability of that.
</EXR>

<EXR><B>(System downtime)</B>  A financial system tracks <M>X</M>  the downtime of the system per year. Past data shows
 <M>E(X)=15</M>  minutes. Crash would result if <M>X\geq 2</M>  hours. Bound its probability.</EXR>

<EXR><B>(Volatile market)</B>
When the market is  highly volatile market, an investment fund's historical data becomes useless.
 The only certain information is the current daily expected loss <M>E(X)=100,000.</M>  Upper bound <M>P(X\geq 1,000,000).</M>
</EXR>

<EXR> <B>(Primality testing)</B>  A randomised primality testing algorithm called the Miller Rabin test applies a random
 experiment on an input integer <M>n.</M>  The (random) output is either "Composite" or "Prime".
 There is theoretical guarantee that if it says "Composite", then the input is indeed composite.
 But if it says "Prime" then the input is composite with 0.25 probability. 

Mathematically, let 
<D>X = <CASES>1<IF>\mbox{error}</IF> 0<ELSE/></CASES>.</D>
Then we have <M>E(X) = [[14]].</M>
We run this experiment <M>k</M>  times independently (on the same input), and we output
 "Composite" if at least one run says so. Otherwise, we say "Prime".

Give an uppoer bound on the probability that this battery of <M>k</M>  tests makes an error. [This
 problem can also be solved
without explicit use of Markov inequality.]
<COMMENT><M>\leq 0.25^k.</M></COMMENT>
</EXR>


<HEAD2>Project: Count-min sketch</HEAD2>
Imagine a stream of items going past you (like cars of different brands going down a road, or trees of different
 types as you walk through a forest). Each item belongs to one of a finite number of categories.
 The stream is running for a really long time (think of information packets passing through a busy
 computer connected to the internet). The number of categories is also huge (and not known
 beforehand).  Your job is to keep track
 of the frequencies of the
 different  categories you have seen so far. Tally marking is a very simple technique to achieve this.
 But if the number of categories is really huge, and most of them occur with negligible
 frequencies, tally marking is inefficient. 

Here the count-min technique provides a more efficient approximate alternative. It uses 
 functions that maps the huge set of categories to a much smaller set (whose elements we shall call buckets).   Such functions
 may be constructed in a way that if <M>X_1,X_2,...</M>  are incoming categories and <M>h(\cdot)</M>  is the function, then
 <M>h(X_1), h(X_2),...</M>  behave like IID uniform random variables on the bucket set. Also, it is possible to construct
 different such functions <M>h_1,h_2,...</M>  such that the sequences generated from them behave line independent random variables.
The functions, by the way, are themseleves deterministic, and are closely related to how a computer generates pseudo random
 numbers. Such functions are called <TERM>hash function</TERM>s. 

While such a function cannot be one-one (it maps a finite set to a much smaller set), they are often used as quick-and-dirty
versions of one-one functions (eg, checking integrity of downloaded files). This is the main idea behind the count-min algo,
 as well.

The algorithm starts by choosing a small bucket set and a small number of independent hash functions. Then it uses tally
 marking for the buckets generated by each hash function. 

When we need to estimate the frequency of some category we translate it to the corresponding
 buckets (one for each hash function), and report the minimum of the frequecies of those buckets. 

For example, suppose the original categories were <M>A,B,C,D</M>  and <M>E.</M>  The bucket set is
 <M>\{1,2,3\}.</M>  We use two hash functions <M>h_1</M>  and <M>h_2</M> :
<D>h_1(A)=3, h_1(B)=2, h_1(C)=3, h_1(D)=1, h_1(E)=1,</D>
and 
<D>h_2(A)=1, h_2(B)=2, h_2(C)=3, h_2(D)=2, h_2(E)=3.</D>
Let the input stream be <M>AABCBBBCA.</M>  Then the bucket stream generated by <M>h_1</M>  is 
<D>3,3,2,3,2,2,2,3,3.</D>  
Its frequencies are <M>f_1(1)=0, f_1(2)=4, f_1(3)=4.</M>
 
Similarly, the  bucket stream generated by <M>h_2</M>  is
<D>1,1,2,3,2,2,2,3,1.</D>
Its frequencies are <M>f_2(1)=3, f_2(2)=4, f_2(3)=2.</M>  

Let's estimate the frequency of <M>A.</M>   We first obtain the bucket to which <M>h_1</M>  maps <M>A.</M>  This is <M>h_1(A) = 3.</M>
So based on <M>h_1</M>  alone the estimate is <M>f_1(3)=4.</M>  Based on the other hash function, it is <M>f_2(h_2(A)) = 3.</M>

To obtain a combined estimator use the minimum of these, viz. <M>3.</M>  In this case, it happens to be exactly the number
 of <M>A</M>'s in the input stream. 

In general, however, thanks to the many-to-one nature of the hash functions, the estimates will be over-estimates (they can
 never be underestimates). We hope that for a large stream the errors are not too high. This hope may be turned into a result
 using Markov inequality.

First, we consider only one hash function (call it <M>h</M>). We want to find the frequency of
 <M>A.</M>  Let the true frequencies be denotes by the function <M>F.</M>  So <M>F(A)</M>  is what we want to estimate.
Surely, <M>f(h(A))\geq F(A).</M> The error <M>X=f(h(A))- F(A)</M>  is nonnegative, and is due to
 the many-to-one nature of
 <M>h.</M>  

For <M>x\in\{A,...,E\}</M>  define
<D>I(x)=<CASES>1<IF>h(x)=h(A)</IF> 0<ELSE/></CASES>.</D>
  Then <M>X=\sum_{x\neq A} F(x) I(x).</M>  

So <M>E(X)=\sum_{x\neq A} F(x) E(I(x)) = [[1b]]\sum_{x\neq A} F(x)\leq [[Nw]].</M>

Fix any <M>\epsilon>0.</M>  Then, by Markov inequality, we have 
<D>P(X\geq \epsilon N) \leq  [[E(X)][\epsilon N]]\leq [[1][w \epsilon]].</D>  
So far we were working with a single hash function. If we have <M>d</M>  hash functions, then <M>X
 = \min\{X_1,...,X_d\},</M> 
 where <M>X_i</M>  is the error from the <M>i</M>-th hash function. So 
<D>P(X\geq \epsilon N) = P(X_1\geq \epsilon N)^d\leq (*([[1][w \epsilon]])*)^d.</D>
Hence 
<D>P(X< \epsilon N) \geq 1-(*([[1][w \epsilon]])*)^d</D>
or
<D>P(*([[XN]]< \epsilon )*) \geq 1-(*([[1][w \epsilon]])*)^d.</D>
So if we choose <M>w = [[2\epsilon]]</M>  and <M>d=10,</M>  then the probability is below <M>2^{-10}.</M>
<HEAD2>Project: BJKST algorithm for counting distinct elements </HEAD2>


<HEAD1>Holder and Minkowski inequalities</HEAD1>
<THM name="Holder inequality">
Let <M>p,q>1</M> be such that <M>[[1p]]+[[1q]] = 1.</M> Let <M>X,Y</M>  be random variables with <M>E|X|^p, E|Y|^q < \infty.</M>

Then
<D>E|XY| \leq (#(E|X|^p)#)^{1/p}(#(E|Y|^q)#)^{1/q}.</D> 
</THM>
If you take <M>p=q=2,</M>  then you get back Cauchy-Schwartz inequality. 
<PF>
We shall make use of Young's inequality:
<D>\forall a,b\geq 0~~ab\leq [[a^p][p]]+[[b^q][q]].</D>
Now take 
<D>A = (#(E|X|^p)#)^{1/p}\mbox{ and } B = (#(E|Y|^q)#)^{1/q}.</D>
If <M>A=0</M>  or <M>B=0,</M>  then the result is trivially proved. 

So let's assume <M>A,B>0.</M>

Let <M>X_1 = [[|X|][A]]</M>  and <M>Y_1 = [[|Y|][B]].</M>  

Apply Young's inequality to <M>X_1</M>  and <M>Y_1.</M>  Then take expectation to complete the proof. 
</PF>

<THM name="Minkowski inequality">
Let <M>1\leq p < \infty.</M> Let <M>X,Y</M> have
finite <M>p</M>-th moment. Then
<D>
E|X+Y|^p\leq E|X|^p+E|Y|^p.
</D>
This is a form of the triangle inequality. 
</THM>

</NOTE>@}
