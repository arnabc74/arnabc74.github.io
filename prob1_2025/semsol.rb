@{<NOTE>
<HEAD1>Solution to problem 1</HEAD1>
Let <M>X=</M> number of draws needed until first repetion.

Then <M>X</M> takes values 2,3,4,...

Take any <M>k\in\{2,3,4,...\}.</M>

The event <M>\{X=k\}</M> occurs in the following steps:
<UL>
<LI>Choose first digit: 10 ways</LI>
<LI>Choose next  digit avoiding the previous: <M>(10-1)</M> ways</LI>
<LI>Continue like this up to <M>(k-1)</M>-st draw.</LI>
<LI>Choose the <M>k</M>-th same as the previous: <M>1</M> way.</LI>
</UL> 
Total number of ways: <M>10\times 9^{k-2}\times 1.</M>

Possibly number of ways to draw the first <M>k</M> digits
is <M>10^k,</M> all equally likely.

So <M>P(X=k) = \frac{10\times 9^{k-2}\times 1}{10^k} =
(0.9)^{k-1}0.1.</M>

Hence <M>E(X) = \sum_2^ \infty k  (0.9)^{k-1}0.1=\cdots.</M>

<HEAD1>Solution to problem 2</HEAD1>
<M>X</M> takes the values <M>-1,0,1,2</M> with
probabilities <M>0.1,0.2,0.2,0.5,</M> respectively. So,
conditional on <M>X>0,</M> it takes the values 1 and 2 with
probabilities <M>[[0.2][0.2+0.5]]</M>
and <M>[[0.5][0.2+0.5]]</M>.

So <M>E(X|X>0) = \cdots = [[12][7]].</M> Also, <M>E(X^2|X>0) =
\cdots = [[22][7]].</M>

So <M>V(X|X>0)=E(X^2|X>0) -E^2(X|X>0) = \cdots.</M>



<HEAD1>Solution to problem 3</HEAD1>
No, they are not equal in general. Let  <M>X\sim
Bern(*([[12]])*).</M> Then <M>Y=X.</M>
So <M>E(XY)=E(X^2)=E(X)=[[12]].</M>

But conditional on <M>X>0,</M> the distribution of <M>X</M> is
degenerate at <M>1. </M> So <M>E(X|X>0) = 1.</M>

<HEAD1>Solution to problem 4</HEAD1>
<M>cov(X,Y|Z)=E(XY|Z)-E(X|Z)E(Y|Z).</M>

So, by tower property, <M>E(cov(X,Y|Z))=E(XY)-E(E(X|Z)E(Y|Z)).</M>

Again, <M>cov(E(X|Z),E(Y|Z))=
E(E(X|Z)E(Y|Z))-E(E(X|Z))E(E(Y|Z))=E(E(X|Z)E(Y|Z))-E(X)E(Y),</M>
by tower property.

Hence <M>E(cov(X,Y|Z))+cov(E(X|Z),E(Y|Z))=
E(XY)-E(X)E(Y)=cov(X,Y),</M> as required.
<HEAD1>Solution to problem 5</HEAD1>
Yes they must be uncorrelated. Since non-degenerate, enough to
show <M>cov(X,Z)=0.</M>

Now
<MULTILINE>
cov(X,Z) 
& = & E(XZ)-E(X)E(Z)\\
& = & E(XY)-E(XE(Y|X))-E(X)E(Y-E(Y|X))\\
& = & E(XY)-E(XE(Y|X))-E(X)[E(Y)-E(E(Y|X))]\\
& = & E(XY)-E(XE(Y|X))-E(X)[E(Y)-E(Y)]<SINCE>by tower property.</SINCE>\\
& = & E(XY)-E(XE(Y|X))\\
& = & E(XY)-E(E(XY|X))<SINCE>by substitution property.</SINCE>\\
& = & E(XY)-E(XY)<SINCE>by tower property.</SINCE>\\
& = & 0,
</MULTILINE>
as required.

<HEAD1>Solution to problem 6</HEAD1>
<HEAD2>Part 1</HEAD2>
Let <M>X\sim Geometric(p).</M>

<M>P(X\geq n+r|X\geq n)=[[P(X\geq n+r, X\geq n)][P(X\geq n)]] =
[[P(X\geq n+r)][P(X\geq n)]].</M>

Now, <M>\forall k\in\nn~~P(X\geq k) = \sum_{i=k}^\infty (1-p)^{i-1}p = (1-p)^{k-1}.</M>

So <M>P(X\geq n+r|X\geq n)= (1-p)^r,</M> free of <M>n,</M> as
required.
<HEAD2>Part 2</HEAD2>
Let <M>X</M> be <M>\nn</M>-valued and memoryless.

Let <M>P(X=i) = p_i</M> for <M>i\in\nn.</M>

Then <M>\theta = P(X\geq n+1|X\geq n)</M> is free of <M>n.</M>

Now <M>P(X\geq 1) = 1</M>, since <M>X</M> is <M>\nn</M>-valued.

Again, for <M>k\geq 2,</M>
<MULTILINE>
P(X\geq k)
& = & P(X\geq k|X \geq 1)<SINCE><M>\because P(X\geq 1) = 1</M></SINCE>\\
& = & [[P(X\geq k)][P(X\geq 1)]]\\
& = &  
[[P(X\geq 2)][P(X\geq 1)]] \times [[P(X\geq 3)][P(X\geq 2)]]
\times\cdots\times [[P(X\geq k)][P(X\geq k-1)]]\\
&= & \theta ^{k-1}.
</MULTILINE>

So <M>P(X= k)=P(X\geq k)-P(X\geq k+1) = \theta^{k-1}-\theta^k =
\theta ^{k-1}(1-\theta).</M>

So <M>X\sim Geometric(1-\theta),</M> as required.


</NOTE>@}
