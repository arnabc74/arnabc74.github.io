<NOTE>
@{<E>
<HEAD1>Standard discrete distributions </HEAD1>
<HEAD1>Finite sample space</HEAD1>
We shall now discuss four different PMF's: discrete uniform, Bernoulli,
binomial and hypergeometric. In all these cases the sample space is a
finite set.
<HEAD2>Discrete uniform</HEAD2>
<B>Notation:</B> <B>DUnif</B>(<M>S</M>), where <M>S</M> is any finite set.
<P/>
<B>Sample space:</B> Any finite set <M>S.</M>
<P/>
<B>PMF:</B> Let <M>S</M> have <M>n</M> outcomes.
<D>P(X=x) = <CASES>
              \frac{1}{n} <IF>x\mbox{ is in }S</IF>
              0 <IF>x\mbox{ is not in }S.</IF>
            </CASES>
</D>
<B>Where used:</B> Often we have a random variable, <M>X,</M> that can
take finitely 
many values, and all the values are <I>equally likely.</I> Such a random
variable has discrete uniform distribution. 
<P/>
Let us see how one arrives at
the PMF given above. The sample space <M>S</M> has 
<M>n</M> outcomes. All these
outcomes are equally likely. So <M>P(X=x)</M> must be the same
for all <M>x</M> in <M>S.</M> Now, the sum of the probabilities of all the
outcomes in <M>S</M> must be 1. So each <M>P(X=x)</M> must be <M>1/n.</M>
<P/>
<B>Terminology:</B> Such an <M>X</M> is said to have (or follow) <B>DUnif</B><M>(S)</M>
distribution. We also say that <M>X</M> is a <B>DUnif</B><M>(S)</M> random
variable, and write <M>X\sim</M><B>DUnif</B><M>(S).</M>
<P/>
<EXM>
Consider a fair die---a die that is  equally 
likely to land on any of the six faces. If <M>X</M> denotes the outcome of
a roll of this die then <M>X</M> has <B>DUnif</B><M>\{1,2,3,4,5,6\}</M>
distribution. 
</EXM>
<P/>
<EXM>
If you toss a fair coin (i.e., a coin that is equally heavy on
either side) and 
<D>
Y = <CASES>
      -5 <IF>head</IF>
      10 <IF>tail</IF>
    </CASES>,
</D>
then <M>Y\sim</M><B>DUnif</B><M>\{-5,10\}.</M>
</EXM>
<P/>
<EXM>
<M>Y</M> has <B>DUnif</B><M>\{0,1,2,3\}</M> distribution. Find <M>P(Y=2)</M> and 
<M>P(Y\mbox{ is odd}).</M>
<SOLN/> The sample space has 4 outcomes in it. Each outcome is equally
likely. Since the total of the probabilities must be 1, each outcome has
probability <M>\frac14.</M> In particular, <M>P(Y=2)=\frac14.</M> Also,
<M>P(Y\mbox{ is odd}) = P(Y=1\mbox{ or }Y=3) =
P(Y=1)+P(Y=3)=\frac14+\frac14=\frac12.</M> 
</EXM>
<P/>

<EXR ref="dunif1">
<M>X</M> follows <B>DUnif</B><M>\{1,2,3,4,5\}</M> distribution. Find the
following probabilities.
<FL><LI><M>P(X=2)</M>
</LI><LI><M>P(X=3)</M>
</LI><LI><M>P(X=6)</M>
</LI><LI><M>P(X=2\mbox{ or }X=1)</M>
</LI><LI><M>P(X\mbox{ is even})</M>
</LI><LI><M>P(X\geq2)</M>
</LI></FL>
</EXR>
<ANS ref="dunif1"><FL><LI><M>\frac15</M>
</LI><LI><M>\frac15</M>
</LI><LI><M>0</M>
</LI><LI><M>\frac25</M>
</LI><LI><M>\frac25</M>
</LI><LI><M>\frac45</M>
</LI></FL></ANS>
<P/>
<EXR ref="dunif2">
<M>U</M> is a <B>DUnif</B><M>\{-2,-1,0,1,2\}</M> random variable. Find the
following probabilities.
<FL><LI><M>P(U^2=1)</M>
</LI><LI><M>P(2U-9=2)</M>
</LI><LI><M>P(U^2-3U+2=0)</M>
</LI><LI><M>P(U\neq0)</M>
</LI></FL>
</EXR>
<ANS ref="dunif2"><FL><LI><M>\frac25</M>
</LI><LI><M>0</M>
</LI><LI><M>\frac25</M>
</LI><LI><M>\frac45</M>
</LI></FL></ANS>
<P/>
<EXR ref="dunif3">
Express the distributions of the following random variables in terms of the
discrete uniform distribution.
<OL>
<LI>The top card is drawn from a well-shuffled deck of cards. 
<D>
Y = <CASES>
      1 <IF>heart</IF>
      2 <IF>diamond</IF>
      3 <IF>club</IF>
      4 <IF>spade</IF>
    </CASES>.
</D>
</LI><LI> A fair die is rolled.
<D>
Z = <CASES>
      0 <IF>even</IF>
      1 <IF>odd</IF>
    </CASES>.
</D>
</LI></OL>
</EXR>
<HINT ref="dunif3">A deck has 52 cards: 13 of them are hearts, 13 are
diamonds, 13 clubs and 13 spades. When you pick the top card of a
well-shuffled deck any of the 52 cards are equally likely to occur.
</HINT>
<ANS
ref="dunif3"><FL><LI><B>DUnif</B><M>\{1,2,3,4\}.</M></LI><LI><B>DUnif</B><M>\{0,1\}.</M></LI></FL></ANS> 
<B>Expectation and variance:</B>
If <M>X\sim</M><B>DUnif</B><M>\{x_1,x_2,...,x_n\}</M> then 
<MULTILINE>
E(X) &=& \frac{1}{n}\sum_{i=1}^nx_i\\
Var(X) &=& \frac1n\sum_{i=1}^n x_i^2 - \left(\frac{1}{n}\sum_{i=1}^nx_i\right)^2.
</MULTILINE>
<P/>
<MULTILINE>
E(X) &=& \sum_{i=1}^n x_iP(X=x_i)\\
     &=& \sum_{i=1}^n x_i\frac1n\\
     &=& \frac1n\sum_{i=1}^n x_i.
</MULTILINE>
<P/>
<MULTILINE>
E(X^2) &=& \sum_{i=1}^n x_i^2P(X=x_i)\\
     &=& \sum_{i=1}^n x_i^2\frac1n\\
     &=& \frac1n\sum_{i=1}^n x_i^2.
</MULTILINE>
<P/>
So
<D>
Var(X) = E(X^2) - (E(X))^2 = \frac1n\sum_{i=1}^n
x_i^2-\left(\frac{1}{n}\sum_{i=1}^nx_i\right)^2. 
</D>
<P/>
<EXM>
Compute mean and variance of a <B>DUnif</B><M>\{1,...,n\}</M> random variable,
<M>X.</M>
<SOLN/>Here <M>x_1=1,x_2=2,...,x_n=n.</M> In other words,, <M>x_i=i</M>
for <M>i=1,...,n.</M>
<M>E(X)=\frac1n\sum_{i=1}^n i = \frac{n+1}2.</M>
<M>E(X^2)=\frac1n\sum_{i=1}^n i^2 = \frac{(n+1)(2n+1)}{6}.</M>
Hence, <M>Var(X) = E(X^2)-(E(X))^2 = \frac{n^2-1}{6}.</M>
</EXM>
<P/>
<EXR ref="dunifxv1">
If <M>Y</M> has <B>DUnif</B><M>\{0,1,...,n\}</M> distribution, then compute 
<M>E(Y)</M> and <M>Var(Y).</M>
</EXR>
<ANS ref="dunifxv1">\frac{n}2,\frac{n(n+2)}{12}.</ANS>
<HEAD2>Bernoulli</HEAD2>
<P/>
<B>Notation:</B> <B>Bern</B>(<M>\theta</M>), where <M>0 \leq \theta \leq
1.</M>
<P/>
<B>Sample space:</B> \{0,1\}
<P/>
<B>PMF:</B> <M>P(X=0)=1- \theta, P(X=1)=\theta</M>
<P/>
<B>Where used:</B>
As mentioned above <B>Bern</B>(<M>\theta</M>) random variable can take only
two values, 0 and 1. In fact `0' and `1' are used merely as names. The
probability of any random experiment with only two possible outcomes is a
Bernoulli distribution, if we call one of the outcomes as `0' and the
other as `1'.
<P/>
<B>Terminology:</B> Such an <M>X</M> is said to have (or follow) <B>Bern</B><M>(\theta)</M>
distribution. We also say that <M>X</M> is a <B>Bern</B><M>(\theta)</M> random
variable, and write <M>X\sim</M><B>Bern</B><M>(\theta).</M>
<P/>
<EXM>
Coin toss has two possible outcomes, head and tail. If we call head as `1'
and tail as `0' then we have <B>Bern</B>(<M>\theta</M>) random variable
where <M>\theta=P(head).</M>
</EXM>
<P/>
<B>Expectation and variance:</B>
If <M>X</M> is a <B>Bern</B>(<M>\theta</M>) random variable, then 
<MULTILINE>
E(X)&=&(1-\theta) \times 0 + \theta \times 1 = \theta\\ 
Var(X)&=&\theta(1-\theta). 
</MULTILINE>
This is because <M>E(X^2)=(1-\theta) \times 0^2 + \theta \times
1^2=\theta</M>
<P/>
So <M>Var(X)=E(X^2)-(E(X))^2=\theta-\theta^2=\theta(1-\theta)).</M>
<P/>
<EXM>
<M>X</M> is a <B>Bern</B><M>(\frac45)</M> random variable. Find <M>E(X)</M> and
<M>Var(X).</M>
<SOLN/> Here <M>\theta=\frac45.</M> So <M>E(X) = \theta = \frac45,</M>
and
<M>Var(X) = \theta(1-\theta) = \frac45(1-\frac45)=\frac4{25}.</M>
</EXM>
<P/>

<EXR ref="bernxv1">
Find <M>E(Z)</M> and <M>Var(Z)</M> if <M>Z\sim</M><B>Bern</B><M>(\theta),</M> where
<FL><LI><M>\theta=\frac13</M>
</LI><LI><M>\theta=\frac12</M>
</LI><LI><M>\theta=\frac25</M>
</LI><LI><M>\theta =0.001.</M>
</LI><LI><M>\theta =0.999.</M>
</LI></FL>
</EXR>
<ANS ref="bernxv1"><FL><LI><M>\frac13,\frac{2}9</M>
</LI><LI><M>\frac12,\frac{1}4</M>
</LI><LI><M>\frac25,\frac{6}{25}</M>
</LI><LI><M>0.001,0.000999</M>
</LI><LI><M>0.999,0.000999</M>
</LI></FL></ANS>
<P/>
<EXM>
<M>X</M> is a <B>Bern</B>(0.5) random variable. <M>Y</M> has a <B>Bern</B>(0.2)
distribution. <M>X</M> and <M>Y</M> are independent. Let <M>Z=XY.</M> Show
that <M>Z</M> has <B>Bern</B>(0.01) distribution. Hence compute <M>Var(Z)</M>. 
<P/>
<SOLN/> Since X and Y can take only the values 0 and 1, hence their product, Z,
can be only 0 or 1. So, Z must have  a <B>Bern</B><M>(\theta)</M>
distribution for some <M>\theta</M>. We have to show that
<M>\theta=0.01.</M>
<P/>
Now,
<MULTILINE>
\theta &=& P(Z=1)\\
       &=& P(XY=1)\\
       &=& P(X=1 \mbox{ and } Y=1)\\
       &=& P(X=1)P(Y=1) \mbox{ since <M>X,Y</M> independent} \\
       &=& 0.5 \times 0.2\\
       &=& 0.01
</MULTILINE>  
<P/>
So by property of Bernoulli distribution we have
<D>
Var(Z)=0.01(1-0.01)=0.0099
</D>
</EXM>
<P/>
<HEAD2>Binomial</HEAD2>
<B>Notation :</B> <B>Bin</B>(<M>n, \theta</M>), where n is some positive
integer and <M>0 < \theta < 1.</M>
<P/>
<B>Sample Space :</B> <M>\{0,1,\cdots,n\}.</M>
<P/>
<B>PMF:</B>
<D>
P(X=x)=<CASES>
          {n\choose x} \theta ^x (1-\theta)^{n-x}<IF>x=0,1,...,n</IF>
          0 <ELSE/>
       </CASES>
</D>
<P/>
<B>Terminology:</B> Such an <M>X</M> is said to have (or follow) <B>Bin</B><M>(n,\theta)</M>
distribution. We also say that <M>X</M> is a <B>Bin</B><M>(n,\theta)</M> random
variable, and write <M>X\sim</M><B>Bin</B><M>(n,\theta).</M>
<P/>
<B>Where used :</B> Suppose that we have some random experiment with only
two possible outcomes. Let us call one of the outcomes `0', and the other
`1'. If the probability of `1' is <M>\theta,</M> then the outcome is a
<B>Bern</B>(<M>\theta</M>) random variable, that we have already seen. Now
suppose that we perform the experiment <M>n</M> times <M>independently</M> and
count the number of times we see `1'. Suppose that this number is
<M>X</M>. Then <M>X</M> is a random variable with <B>Bin</B>(<M>n,
\theta</M>) distribution.
<P/>
Let us see how this description leads to the formula for the binomial
PMF For easy understanding, we shall work with 3 coin tosses. The coin
has <M>P(head)=\theta.</M> So here <M>n=4.</M> Let us find out the
probability of having exactly 2 heads among the 3 tosses. A typical
outcome of the 4 tosses is 
<D> HHT.</D>
 Here `H' means `Head' and `T' means
`Tail'. Thus, the above outcome means that the first two tosses have produced
heads, the third toss has produced a tail.
The probability of this is 
<D>
\theta\times \theta\times (1-\theta) = \theta^2(1-\theta).
</D>
The <M>\theta</M>'s in the left hand side are for the heads, and the
<M>(1-\theta)</M> is for the tail. These are multiplied together because
the coin tosses are independent. 
<P/>
The following table shows all the <M>2^3=8</M> possible outcomes of the 3
tosses. 
<P/>
<TABLE>
<TR><TH>Outcome </TH><TH> Probability</TH></TR>
<TR><TD><M>HHH</M> </TD><TD> <M>\theta^3</M></TD></TR>
<TR><TD><B>HHT</B> </TD><TD> <M>\theta^2(1-\theta)</M></TD></TR>
<TR><TD><B>HTH</B> </TD><TD> <M>\theta^2(1-\theta)</M></TD></TR>
<TR><TD><M>HTT</M> </TD><TD> <M>\theta(1-\theta)^2</M></TD></TR>
<TR><TD><B>THH</B> </TD><TD> <M>\theta^2(1-\theta)</M></TD></TR>
<TR><TD><M>THT</M> </TD><TD> <M>\theta(1-\theta)^2</M></TD></TR>
<TR><TD><M>TTH</M> </TD><TD><M> \theta(1-\theta)^2</M></TD></TR>
<TR><TD><M>TTT</M> </TD><TD> <M>(1-\theta)^3</M></TD></TR>
</TABLE>
<P/>
The outcomes for which we have exactly two heads have been shown in bold. 
Notice that there are exactly <M>{3 \choose 2} = 3</M> such cases. Each of
these has probability <M>\theta^2(1-\theta).</M> Adding these we get the
probability of having exactly two heads as
<D>
{3 \choose 2}\theta^2(1-\theta) = 3 \theta^2(1-\theta).
</D>
<P/>
This method is general and can be used to find out the probability that
there are exactly <M>x</M> heads out of <M>n</M> independent coin tosses:
<P/>
<D>
{n \choose x}\theta^x(1-\theta)^{n-x},
</D>
which is the binomial PMF
<P/>
<EXR ref="bin1">
List all the possible outcomes of <M>n=4</M> tosses having exactly
<M>x=2</M> heads. For example, one possible outcome is <M>HTHT.</M> How
many such outcomes are there?
</EXR>
<ANS ref="bin1">HHTT,HTHT,HTTH,THHT,THTH,TTHH. There are 6.</ANS>
<P/>
<EXM>
<M>U</M> is distributed as <B>Bin</B><M>(5,\frac14).</M> Find <M>P(U=2).</M>
<SOLN/> 
<MULTILINE>
P(U=2)&=&{5\choose2}\left(\frac14\right)^2\left(1-\frac14\right)^{5-2}\\
&=&\frac{5!}{2!(5-2)!}\left(\frac14\right)^2\left(\frac34\right)^3\\
&=&\frac{5!}{2!3!}\cdot\frac{27}{1024}\\
&=&\frac{5\times4}{2}\cdot\frac{27}{1024}\\
&=&\frac{135}{512}.
</MULTILINE>
</EXM>
<P/>
<EXR ref="bin2">
<M>Y</M> is distributed as <B>Bin</B><M>(4,\frac23).</M> Find the following
probabilities.
<FL><LI><M>P(Y=0)</M>
</LI><LI><M>P(Y=4)</M>
</LI><LI><M>P(Y=1\mbox{ or }Y=3)</M>
</LI><LI><M>P(Y\leq 3)</M>
</LI></FL>
</EXR><ANS ref="bin2"><FL><LI><M>\frac1{81}</M>
</LI><LI><M>\frac{16}{81}</M>
</LI><LI><M>\frac{40}{81}</M>
</LI><LI><M>\frac{55}{81}</M>
</LI></FL></ANS>
<P/>
<EXR ref="bin3">
<M>Z\sim</M><B>Bin</B><M>(5,\frac12).</M> Find the following.
<FL><LI><M>P(Z\mbox{ is odd})</M>
</LI><LI><M>P(Z=-1)</M>
</LI><LI><M>P(Z=2)-P(Z=3)</M>
</LI><LI><M>P(Z=1)-P(Z=4)</M>
</LI></FL>
</EXR><ANS ref="bin3"><FL><LI><M>\frac12</M>
</LI><LI><M>0</M>
</LI><LI><M>0</M>
</LI><LI><M>0</M>
</LI></FL></ANS>
<P/>
<EXR ref="bin4">
If <M>X</M> has <B>Bin</B><M>(100,0.5)</M> distribution. Then find <M>a\neq37</M> such
that <D>
P(X=a) = P(X = 37).
</D>
</EXR><ANS ref="bin4"><M>a=100-37=63.</M></ANS>
<HINT ref="bin4">Notice that for any <M>n</M> the <B>Bin</B><M>(n,0.5)</M>
distribution is 
symmetric, i.e., <MULTILINE>P(X=x) &=& {n\choose x}0.5^x(1-0.5)^{n-x}\\
& =&{n\choose n-x}0.5^{n-x}(1-0.5)^x\\
& =& P(X=n-x).
</MULTILINE>
</HINT>
<EXM>
A couple plans to have 6 babies (Good heavens!). The chance of a boy being
born is 
0.4. Let <M>X</M> be the number of sons born to this couple. What is the
distribution of <M>X</M>.
<P/>
<SOLN/> Here, each birth is a random experiment with two possible outcomes: boy or
girl. Let us call boy as `1' and girl as `0'. We assume that the outcome
of one birth is independent of the others. So here a <B>Bern</B>(0.4) random
experiment has been repeated independently 6 times, and <M>X</M> denotes
the number of `1' s. Hence <M>X</M> has <B>Bin</B>(6, 0.4) distribution.
</EXM>
<P/>
<EXR ref="bin5">
In the above example let <M>Y</M> be the number of girls. What is the
distribution of <M>Y</M>? 
</EXR><ANS ref="bin5"><M>Y\sim</M><B>Bin</B><M>(6,0.6).</M></ANS>
<P/>
<EXM>
A mobile tower is sending 10 signals to another mobile tower.Owing to
mechanical problems a signal may become corrupted during transmission with
probability 0.1. Corruption of one signal is independent of that of the
others. Find the probability distribution of the number of corrupted
signals. The communication is OK if 2 or less signals have been
corrupted. Find the chance that communication is OK.
<P/>
<SOLN/> Let <M>X =</M> number of corrupted signals. Sending each
signal is a 
random experiment with two possible outcomes: `corrupted' and `not
corrupted'. Let us call `corrupted' as `1' and `not corrupted' as
'0'. Then the random experiment has a <B>Bern</B>(0.1) outcome. We are
repeating it 10 times independently and <M>X</M> is the number of `1's. So
<M>X</M> has <B>Bin</B>(10, 0.1) distribution.
<P/>
The probability that the communication is OK is
<MULTILINE>
P(X \leq 2) &=& P(X=0) + P(X=1) + P(X=2)\\
            &=& {10\choose 0}(0.1)^0(0.9)^{10-0} +\\
            & & {10\choose 1}(0.1)^1(0.9)^{10-1} + {10\choose 2}(0.1)^2(0.9)^{10-2}\\
            &=& 0.93
</MULTILINE>
</EXM>
<P/>
<B>Expectation and variance:</B> If <M>X</M> has a
<B>Bin</B>(<M>n,\theta</M>) distribution, then 
<MULTILINE>
E(X) &=& n\theta\\ Var(X)& =& n\theta(1-\theta)
</MULTILINE>
<P/>
<MULTILINE>
E(X) &=& \sum_{x=0}^n x P(X=x)\\
     &=& \sum_{x=0}^n x {n\choose x}\theta^x (1-\theta)^{n-x}
</MULTILINE>
The first term in the sum (i.e., the term for <M>x=0</M>) is 0. So
     we can drop that term to get
<MULTILINE>    
\sum_{x=0}^n x {n\choose x}\theta^x (1-\theta)^{n-x} 
     &=& \sum_{x=1}^n x {n\choose x}\theta^x (1-\theta)^{n-x}\\
     &=& n \sum_{x=1}^n {n-1\choose x-1}\theta^x (1-\theta)^{n-x}\\
     &=& n \theta \sum_{x=1}^n {n-1\choose
                 x-1}\theta^{x-1}(1-\theta)^{n-x}
</MULTILINE>
Now we shall put <M>y=x-1</M> to get
<MULTILINE>
n \theta \sum_{x=1}^n {n-1\choose
                 x-1}\theta^{x-1}(1-\theta)^{n-x}
     &=& n \theta \sum_{y=0}^n {n-1\choose y}\theta^{y}
     (1-\theta)^{n-1-y}\\ 
&=& n \theta \left(\theta + (1-\theta)\right)^{n-1}\\
&=& n \theta.
</MULTILINE>
<P/>
<MULTILINE>
E(X(X-1)) &=& \sum_{x=0}^n x(x-1) P(X=x)\\
     &=& \sum_{x=0}^n x(x-1) {n\choose x}\theta^x (1-\theta)^{n-x}
</MULTILINE>
The first <I>two</I> terms (the terms corresponding to `<M>x=0</M>' and
     `<M>x=1</M>') are both zeros. Dropping them from the sum we get
<MULTILINE>
\sum_{x=0}^n x(x-1) {n\choose x}\theta^x (1-\theta)^{n-x}
     &=& \sum_{x=2}^n x(x-1) {n\choose x}\theta^x (1-\theta)^{n-x}\\
     &=& n(n-1) \sum_{x=2}^n {n-2\choose x-2}\theta^x
     (1-\theta)^{n-x}\\
     &=& n(n-1) \theta^2 \sum_{x=2}^n {n-2\choose x-2}\theta^{x-2}
     (1-\theta)^{n-x}.
</MULTILINE>
Putting <M>y=x-2</M> this becomes
<MULTILINE>
n(n-1) \theta^2 \sum_{y=0}^n {n-2\choose y}\theta^{y}
     (1-\theta)^{(n-2)-y}\\
= n(n-1) \theta^2 \left(\theta + (1-\theta)\right)^{n-2}
&=& n(n-1) \theta^2 
</MULTILINE>
<P/>
<MULTILINE>
E(X^2) &=& E(X(X-1))+ E(X) \\
&=& n(n-1) \theta^2 + n \theta\\
&=& n^2\theta^2 -n \theta^2+ n \theta
</MULTILINE>
<P/>
<MULTILINE>
Var(X) &=& E(X^2)-(E(X))^2\\
&=&  n^2\theta^2 -n \theta^2+ n \theta+ n^2 \theta^2\\
&=& n\theta(1-\theta)
</MULTILINE>
<P/>

<EXM>
Assuming that <M>T\sim</M><B>Bin</B><M>(100,\frac15),</M> find <M>E(T)</M> and
standard deviation 
of <M>T.</M>
<SOLN/> Here <M>n=100</M> and <M>\theta=\frac15.</M> So 
<M>E(T) = n \theta = 100\times \frac15 = 20.</M> Similarly,
<M>Var(T) = n \theta(1-\theta) = 
100\times\frac15\times(1-\frac15)= 16.</M>
Hence standard deviation of <M>T</M> is <M>\sqrt{16} = 4.</M> 
</EXM>
<P/>
<EXR ref="binxv1">
Find <M>E(Z)</M> and <M>Var(Z)</M> if <M>Z\sim</M><B>Bin</B><M>(n,p),</M> where
<FL><LI><M>n=20,p=\frac13</M>
</LI><LI><M>n=10,p=\frac12</M>
</LI><LI><M>n=20,p=\frac25</M>
</LI><LI><M>n=1000,p=0.01.</M>
</LI></FL>
</EXR>
<ANS ref="binxv1"><FL><LI><M>\frac{20}3,\frac{40}9</M>
</LI><LI><M>5,\frac{10}4</M>
</LI><LI><M>8,\frac{24}5</M>
</LI><LI><M>10,9.9.</M>
</LI></FL></ANS>
<P/>
<BOX>
If <M>X</M> is a <B>Bin</B>(<M>m,\theta</M>) random variable, and <M>Y</M>
is a <B>Bin</B>(<M>n,\theta</M>) random variable (same <M>\theta</M> for
both!) and <M>X,Y</M> are independent, then
<D>
(X+Y)\mbox{ follows <B>Bin</B>}(m+n,\theta)\mbox{ distribution.}
</D>
</BOX>
<P/>
This result may be intuitively understood as follows. Suppose that we have
a coin with <M>P(head) = \theta.</M> Then <M>X</M> is like the number of
heads out of <M>m</M> tosses of the coin, and <M>Y</M> is like the number
of heads out of <M>n</M> other tosses. So <M>X+Y</M> is like the total
number of heads among <M>m+n</M> tosses of the coin. Since the coin has
<M>P(head) = \theta,</M> hence we see that <M>X+Y</M> has
<B>Bin</B><M>(m+n,\theta)</M> distribution. 
<P/>
<EXM>
What is the distribution of <M>U+V,</M> if <M>U\sim</M><B>Bin</B><M>(10,0.1)</M> and
<M>V\sim</M><B>Bin</B><M>(6,0.1)?</M>
<SOLN/> <M>U+V\sim</M><B>Bin</B><M>(16,0.1).</M>
</EXM>
<P/>

<EXR ref="bin6">
If <M>X_1,X_2</M> and <M>X_3</M> are independent random variables with 
<B>Bin</B><M>(5,\frac13),</M> <B>Bin</B><M>(10,\frac13)</M> and
<B>Bin</B><M>(6,\frac13)</M> distributions, respectively.
Find the distribution of <M>(X_1+X_2+X_3).</M>
</EXR><ANS ref="bin6"><M>(X_1+X_2+X_3)\sim</M><B>Bin</B><M>(21,\frac13).</M></ANS>
<HINT ref="bin6">First add <M>X_1</M> and <M>X_2.</M> Now notice that 
<M>(X_1+X_2)</M> is independent of <M>X_3.</M></HINT>
<P/>
<HEAD2>Hypergeometric</HEAD2>
<B>Notation:</B> <B>HypGeom</B>(<M>N,M,n</M>), where <M>N,M,n</M> are all
positive integers such that <M>M\leq N</M> and <M>n\leq N.</M>
<P/>
<B>Sample Space:</B> <M>\{\max\{0,n-(N-M)\},1,\cdots,\min\{n,M\}\}.</M>
<P/>
<B>PMF:</B>
<D>
P(X=x)=<CASES>
         \frac{{M\choose x} {N-M\choose n-x}}{{N\choose
         n}}<IF><M>x=0,...,n</M></IF>
         0 <ELSE/>
       </CASES>
</D>
<P/>
<B>Terminology:</B> Such a random variable
 <M>X</M> is said to have (or follow) <B>HypGeom</B><M>(N,M,n)</M>
distribution. We also say that <M>X</M> is a <B>HypGeom</B><M>(N,M,n)</M> random
variable, and write <M>X\sim</M><B>HypGeom</B><M>(N,M,n).</M>
<P/>
<B>Where used:</B> Suppose that in a box there are <M>N</M> balls, among
which <M>M</M> are white and the remaining <M>N-M</M> are black. You put
your hand in the box and collect <M>n</M> balls at random. Let <M>X</M> be
the number of white balls among those <M>n</M> balls. Then <M>X</M> is
distributed as <B>HypGeom</B>(<M>N,M,n</M>).
<P/>
Let us derive the hypergeometric PMF using an example. Suppose we have
<M>N=5</M> balls out of which <M>M=3</M> are white, the remaining
<M>N-M=5-3=2</M>  being
black. We pick <M>n=2</M> balls at random. We want to find out the
probability that exactly <M>x=1</M> of these two picked balls is
white. First, there are <M>{5\choose 2} = 10</M>  ways to pick 2 balls out
of 5. These are:
<P/>
<IMG src="hypgeom.eps">Sampling 2 balls from 5</IMG>
<P/>
All these are equally likely. So each has probability
<M>\frac{1}{10}.</M> 
Out of these there are 6 cases where exactly one white ball has been
picked. These cases are shown inside dashed boxes. This number 6 comes as follows. To get exactly 1 white ball you
need to pick 1 ball from the <M>M=3</M> white balls and the other <M>1</M>
ball from the <M>N-M=2</M> black balls. This can be done in 
<D>
{3\choose 1}{2\choose 1} = 3\times2 = 6
</D>
ways. So the probability of having exactly one white ball in the sample of 2
balls is
<D>
\frac{{3\choose 1}{2\choose 1}}{{5\choose 2}} = \frac{6}{10} = \frac35.
</D>
The same argument gives you the hypergeometric PMF as shown below.
<IMG src="hgpmf.eps">Components of <B>HypGeom</B><M>(N,M,n)</M> PMF</IMG>
<P/>
<EXM>
Find <M>P(Y=2)</M> where <M>Y\sim</M><B>HypGeom</B><M>(5,3,4).</M>
<SOLN/> Here <M>N=5, M=3</M> and <M>n=4.</M> So
<D>
P(Y=2) = \frac{{M\choose 2}{N-M\choose n-2}}{{N\choose n}}
=\frac{{3\choose2}{2\choose 2}}{{5\choose4}}.
</D>
Now, <M>{3\choose2}=3,</M> <M>{2\choose 2}=1</M> and <M>{5\choose4}=5.</M>
So <M>P(Y=2) = \frac35.</M>
</EXM>
<P/>
<EXR ref="hg1">
<M>X</M> is known to follow <B>HypGeom</B><M>(10,4,8).</M> Find the following
probabilities.
<FL><LI><M>P(X=2)</M>
</LI><LI><M>P(X=3)</M>
</LI><LI><M>P(X=5)</M>
</LI><LI><M>P(X=1)</M>
</LI><LI><M>P(X=4)</M>
</LI></FL>
</EXR><ANS ref="hg1"><FL><LI><M>\frac2{15}</M>
</LI><LI><M>\frac8{15}</M>
</LI><LI><M>0</M>
</LI><LI><M>0</M>
</LI><LI><M>\frac13</M>
</LI></FL></ANS>
<P/>
<EXR ref="hg2">
Suppose that <M>Y</M> has <B>HypGeom</B><M>(100,30,40)</M> distribution and <M>Z</M> has 
<B>HypGeom</B><M>(100,70,40)</M> distribution. Then which of the following two
probabilities is larger and why?
<D>
P(Y=10),\quad P(Z=30)
</D>
</EXR><ANS ref="hg2">Equal.</ANS>
<HINT ref="hg2">Think of the following descriptions of <M>Y</M> and
<M>Z.</M> In a box there are 100 balls, 30 of which are white, the
remaining 70 being black. You pick 40 balls at random. <M>Y</M> is the
number of <I>white</I> balls that you get, and <M>Z</M> is the number of
<I>black</I> balls that you get.</HINT>
<EXM>
In a class of 10 students there are 4 girls. If 3 students are selected at
random from this class what is the chance that exactly 2 girls are
selected? 
<P/>
<SOLN/>This is very much like the balls-in-a-box situation, where the 10 students are
like 10 balls, the girls being the white balls, and the boys the black balls.
Here <M>N=10,M=4,n=3.</M> If <M>X</M> is the number of girls selected then 
<D>
X\sim <B>HypGeom</B>(10,4,3).
</D>
So <M>P(\mbox{exactly 2 girls are selected}) = P(X=2),</M> which is given
by
<D>
P(X=2) = \frac{{4\choose 2} {10-4\choose 3-2}}{{10\choose 3}} = 
  \frac{6\times 6}{120} = \frac3{10}.
</D>
</EXM>
<P/>
<B>Expectation and variance:</B>
If <M>X</M> is a <B>HypGeom</B>(<M>N,M,n</M>) random variable then 
<MULTILINE>
E(X) &=& n\frac{M}{N},\\
Var(X) &=& \frac{(N-M)(N-n)Mn}{N^2(N-1)}.
</MULTILINE>
<P/>
<MULTILINE>
E(X) &=& \sum_{x=0}^n xP(X=x) =\sum_{x=0}^n x\frac{{M \choose x} {N-M \choose n-x}} {{N \choose n}}\\
     &=& \frac1{{N \choose n}}\sum_{x=0}^n x {M \choose x} {N-M \choose
     n-x} 
</MULTILINE>
The `<M>x=0</M>' term is zero. We drop it to get
<MULTILINE>
\frac1{{N \choose n}}\sum_{x=0}^n x {M \choose x} {N-M \choose
     n-x} 
&=& \frac1{{N \choose n}}\sum_{x=1}^n x {M \choose x} {N-M \choose
     n-x}\\
     &=& \frac1{{N \choose n}}M \sum_{x=1}^n {M-1 \choose x-1} {N-M \choose
     n-x} \\
     &=& \frac1{{N \choose n}} {N-1 \choose n-1} \\
     &=& M\frac{n! (N-n)!}{N!}\times\frac{(N-1)!}{(n-1)!(N-n)!} \\
     &=& \frac{M}{N}n
</MULTILINE>
<P/>
<MULTILINE>
E(X(X-1)) &=& \sum_{x=0}^n x(x-1)P(X=x) \\
          &=& \sum_{x=0}^n x(x-1)\frac{{M \choose x}{N-M \choose n-x}}{{N
          \choose n}} \\
	  &=& \frac1{{N \choose n}}M(M-2) \sum_{x=2}^n {M-2 \choose
          x-2}{N-M \choose n-x} \\
	  &=& \frac1{{N \choose n}}M(M-2) {N-2 \choose n-2} \\
	  &=& \frac{M(M-1)}{N(N-1)}n(n-1)
</MULTILINE>
<P/>
<MULTILINE>
E(X^2) &=& E(X(X-1)) + E(X) \\
       &=& \frac{M(M-1)}{N(N-1)}n(n-1) + \frac{M}{N}n
</MULTILINE>
<P/>
<MULTILINE>
Var(X) &=& E(X^2) - (E(X))^2 \\
       &=& \frac{M(M-1)}{N(N-1)}n(n-1) + \frac{M}{N}n-\left(\frac{M}{N}n\right)^2 \\
       &=& \frac{(N-M)(N-n)Mn}{N^2(N-1)}.
</MULTILINE>
<P/>
<EXR ref="hgxv1">
Compute <M>E(X)</M> and <M>Var(X)</M> where <M>X</M> has <B>HypGeom</B><M>(N,M,n)</M>
distribution with
<FL><LI><M>N=10,M=5,n=6</M>
</LI><LI><M>N=20,M=3,n=2</M>
</LI><LI><M>N=12,M=4,n=4</M>
</LI><LI><M>N=15,M=15,n=15</M>
</LI></FL>
</EXR>
<ANS ref="hgxv1"><FL><LI><M>3,\frac23.</M>
</LI><LI><M>\frac{3}{10},\frac{459}{1900}.</M>
</LI><LI><M>\frac43,\frac{64}{99}.</M>
</LI><LI><M>15,0</M>
</LI></FL></ANS>
<HEAD1>Infinite sample space</HEAD1>
<HEAD2>Geometric distribution</HEAD2>
<B>Notation:</B> <B>Geom</B><M>(\theta),</M> where <M>0 < \theta <1.</M>
<P/>
<B>Sample space:</B> \{1,2,3,...\}
<P/>
<B>PMF:</B> 
<D>
P(X=x) = <CASES>
            (1-\theta)^{x-1}\theta <IF><M>x=1,2,3,...</M></IF>
            0 <ELSE/>
         </CASES>
</D>
<B>Terminology:</B> Such an <M>X</M> is said to have (or follow) <B>Geom</B><M>(\theta)</M>
distribution. We also say that <M>X</M> is a <B>Geom</B><M>(\theta)</M> random
variable, and write <M>X\sim</M><B>Geom</B><M>(\theta).</M>
<P/>
<B>Where used:</B> Suppose that we have a <B>Bern</B><M>(\theta)</M> 
random experiment. Let us perform the experiment again and again
independently until we obtain the first `1'. Then count the number of
experiments you have done (among these all but the last one have produced 
outcome `0'.) The total number of experiments performed is a random
variable with <B>Geom</B><M>(\theta)</M> distribution. 
<P/>
Let us derive the PMF using the above description. Suppose that we
have a coin with <M>P(head)=\theta.</M> We keep on tossing it until we get
the first head. Suppose that the first head comes at the <M>x</M>-th
toss. Then the first <M>x-1</M> tosses are all tails:
<D>
\underbrace{TT\cdots TT}_{x-1}H
</D>
Each of these tails occurs with probability <M>(1-\theta)</M> and the
final head occurs with probability <M>\theta.</M> So the probability of
having the first head at the <M>x</M>-th toss is
<D>
\underbrace{(1-\theta)\times\cdots\times(1-\theta)}_{x-1}\times \theta
 = (1-\theta)^{x-1} \theta, 
</D>
which is the <B>Geom</B><M>(\theta)</M> PMF
<P/>
<EXM>
If <M>X\sim</M><B>Geom</B><M>(0.3),</M> find <M>P(X>2).</M>
<SOLN/> 
<MULTILINE>
P(X>2) &=& 1-P(X\leq 2)\\
       &=& 1-\left(P(X=1) + P(X=2)\right)\\
       &=& 1-(1-0.3)^{1-1}0.3 - (1-0.3)^{2-1}0.3\\
       &=& 1-0.3-0.21 = 0.49.
</MULTILINE>
</EXM>
<P/>
<EXR ref="geo1">
If <M>G</M> is a <B>Geom</B><M>(0.2)</M> random variable, then compute the
following probabilities.
<FL><LI><M>P(G=3)</M>
</LI><LI><M>P(G=0)</M>
</LI><LI><M>P(G=1)</M>
</LI><LI><M>P(G\leq 3)</M>
</LI><LI><M>P(G>3)</M>
</LI></FL>
</EXR><ANS ref="geo1"><FL><LI><M>0.128</M>
</LI><LI><M>0</M>
</LI><LI><M>0.2</M>
</LI><LI><M>0.488</M>
</LI><LI><M>1-0.488=0.512.</M>
</LI></FL></ANS>
<P/>

<EXR ref="geo2">
Find <M>P(T\mbox{ is even})</M> where <M>T\sim</M><B>Geom</B><M>(0.4).</M> 
</EXR><ANS ref="geo2"><M>\frac{1-\theta}{2-\theta}.</M></ANS>
<HINT ref="geo2"> You will need the geometric series here.
<MULTILINE>P(X\mbox{ is even})&=& P(X=2)+P(X=4)+\cdots\\
                   &=&(1-\theta)\theta +(1-\theta)^3 \theta+
                              (1-\theta)^5 \theta+\cdots\\
                   &=& \theta(1-\theta)\left[
1+(1-\theta)^2 + (1-\theta)^4+\cdots\right].
</MULTILINE></HINT>
<P/>
<EXM>
Some versions of Ludo require you to get a `6' on the die before your
counter can move. Sometimes it takes frustratingly long time before you
finally roll a `6'. Let <M>X</M> denote the number of rolls required to
get the first `6'. If we assume the die is fair (i.e., each side has
probability 1/6 of turning up), then what is the distribution of <M>X?</M>
<P/>
<SOLN/> <M>X</M> is a <B>Geom</B>(1/6) random variable. 
</EXM>
<P/>
<EXR ref="geo3">
In the above example compute the probability of getting the first `6' within
the first 3 rolls. 
</EXR><ANS ref="geo3"><M>\frac{91}{216}</M></ANS>
<P/>
<EXR ref="geo4">
Some couples are so keen about having a son that they go on producing
babies until they get their first son, and then they stop having children. 
 Assume that at each birth a baby of
either gender is equally likely. Also assume that the births are
independent. Compute the probability that such a  couple has exactly 2
daughters. 
</EXR><ANS ref="geo4"><M>\frac18</M></ANS>
<HINT ref="geo4">
Let <M>D</M> denote the number of daughters. Then notice that 
<M>D+1</M>
is a <B>Geom</B>(0.5) random variable.
</HINT>
<B>Expectation and variance:</B> If <M>X</M> is a <B>Geom</B><M>(\theta)</M>
random variable, then
<MULTILINE>
E(X)& =& 1/\theta\\Var(X)& =& (1-\theta)/\theta^2.
</MULTILINE>
<P/>
<MULTILINE>
E(X) &=& \sum_{x=1}^\infty x(1-\theta)^{x-1}\theta\\
     &=& \theta \sum_{x=1}^\infty x(1-\theta)^{x-1}\\
     &=& \theta\cdot\frac1{(1-(1-\theta))^2}\\
     &=& \frac{\theta}{\theta^2} = \frac1{\theta}
</MULTILINE>
<MULTILINE>
E(X(X-1)) &=& \sum_{x=1}^\infty x(x-1)P(X=x) \\
          &=& \sum_{x=1}^\infty x(x-1)(1-\theta)^{x-1}\theta 
</MULTILINE>
The term corresponding to `<M>x=1</M>' is zero. So we can as well start
     the sum from <M>x=2.</M>
<MULTILINE>
\sum_{x=1}^\infty x(x-1)(1-\theta)^{x-1}\theta 
	  &=& \sum_{x=2}^\infty x(x-1)(1-\theta)^{x-1}\theta \\
	  &=& \theta(1-\theta)\sum_{x=2}^\infty x(x-1)(1-\theta)^{x-2} \\
	  &=& \theta(1-\theta)\frac2{(1-(1-\theta))^3}\\
	  &=& \frac{2\theta(1-\theta)}{\theta^3} \\
	  &=& \frac{2(1-\theta)}{\theta^2}
</MULTILINE>
<P/>
<MULTILINE>
E(X^2) &=& E(X(X-1)) + E(X) \\
       &=& \frac{2(1-\theta)}{\theta^2} + \frac1{\theta} \\
       &=& \frac2{\theta^2} - \frac1{\theta}
</MULTILINE>
<P/>
<MULTILINE>
Var(X) &=& E(X^2) - (E(X))^2 \\
       &=& \frac2{\theta^2} - \frac1\theta - \left(\frac1\theta\right)^2\\
       &=& \frac{1-\theta}{\theta^2}
</MULTILINE>
<P/>
<EXR ref="geoxv1">
Find the mean and standard deviation of a <B>Geom</B><M>(\theta)</M> random
variable for the following values of <M>\theta.</M>
<FL><LI><M>\theta = \frac34.</M>
</LI><LI><M>\theta = \frac59.</M>
</LI><LI><M>\theta = \frac89.</M>
</LI></FL>
</EXR>
<ANS ref="geoxv1"><FL><LI><M>\frac43,\frac23.</M>
</LI><LI><M>\frac95,\frac65.</M>
</LI><LI><M>\frac98 \frac38.</M>
</LI></FL></ANS>
<P/>
<EXM>
When a computer tries to connect to another computer, it
 sends a connection request to the second. Depending on how busy the
 second computer is, this request may be honoured (and so the connection is
 established) or refused (hence connection is not established.) In the
 latter case, the first computer waits for some time, and sends the
 same request again. In this way the first computer keeps on trying until
 connection is established. If the attempts are independent and if the
 probability of a refusal at each attempt is 0.2, then what is the
 expected number of attempts?
<P/>
<SOLN/> If <M>X</M> denotes the number of attempts required then <M>X</M> is a
<B>Geom</B><M>(0.8)</M> random variable. So 
<D>
E(X) = 1/0.8 = 1.25
</D> 
</EXM>
<P/>
<EXR ref="geo5">
Compute <M>E(D)</M> and <M>Var(D)</M> in Exercise \ref{geo4} above.
</EXR><ANS ref="geo5"><M>E(D)=2,</M> <M>Var(D)=2.</M></ANS>
<P/>
<HEAD2>Negative binomial</HEAD2>
<B>Notation:</B> <B>NegBin</B><M>(\theta,r),</M> where <M>\theta > 0</M> and
<M>r</M> is some positive integer.
<P/>
<B>Sample space:</B> <M>\{r,r+1,r+2,...\}</M>
<P/>
<B>PMF:</B> 
<D>
P(X=x) = <CASES>
            {x-1\choose r-1}\theta^r (1-\theta)^{x-r}<IF><M>x=r,r+1,...</M></IF>
            0 <ELSE/>
         </CASES>
</D>
<B>Terminology:</B> Such an <M>X</M> is said to have (or follow) <B>NegBin</B><M>(r,\theta)</M>
distribution. We also say that <M>X</M> is a <B>NegBin</B><M>(r,\theta)</M> random
variable, and write <M>X\sim</M><B>NegBin</B><M>(r,\theta).</M>
<P/>
<B>Where used:</B>
Suppose that you have a coin with <M>P(head) = \theta.</M> You keep on
tossing it until you get the first <M>r</M> heads, and then you stop. For
instance, if <M>r=3,</M> a typical tossing session may be like this:
<D>
T,T,H,T,H,T,T,H.
</D>
If <M>X</M> denotes the total number of tosses you require, then
<M>X</M> has <B>NegBin</B>(<M>\theta,r)</M> distribution. In the tossing session
above there are 8 tosses, so <M>X=8.</M> Note that the 8 tosses could not
have been 
<D>
T,T,H,T,H,T,H,T.
</D>
Because, here you have got the third head at your seventh toss, so you
will not do the eighth toss at all. 
<P/>
Let us derive the PMF of negative binomial using an example. We are
tossing a coin with <M>P(head)=\theta</M> until we get 3 heads. We shall
find <M>P(X=5),</M> i.e., the probability that the third head comes
at the fifth toss. This can happen in the following ways:
<MULTILINE>
HHTTH&HTHTH&HTTHH\\
THHTH&THTHH&TTHHH
</MULTILINE>
<P/>
Note that in all these cases the fifth toss is a <M>H,</M> while there are
exactly <M>3-1=2</M> heads among the first <M>5-1=4</M> tosses. Thus the total number
of cases is <M>{5-1\choose 3-1} = {4\choose2}=6.</M> Each of these 6 cases has 3 heads and 2
tails, and hence has probability 
<D>
\theta^3(1-\theta)^2.
</D>  
So 
<D>
P(X=5) = {5-1\choose 3-1}  \theta^3(1-\theta)^2 = 6\theta^3(1-\theta)^2.
</D>
<P/>
<EXR ref="nb1">
If <M>X</M> follows <B>NegBin</B><M>(3,\frac14)</M> distribution, find the following
probabilities.
<FL><LI><M>P(T=5)</M>
</LI><LI><M>P(T=2)</M>
</LI><LI><M>P(T=3)</M>
</LI><LI><M>P(T\leq5)</M>
</LI></FL>
</EXR><ANS ref="nb1"><FL><LI><M>\frac{27}{512}</M>
</LI><LI><M>0</M>
</LI><LI><M>\frac3{32}</M>
</LI><LI><M>\frac9{128}</M>
</LI></FL></ANS>
<P/>
<B>Expectation and variance:</B> 
If <M>X\sim <B>NegBin</B>(\theta,r),</M> then
<MULTILINE>
E(X) & = & \frac{r}{\theta}\\ 
Var(X) & = & \frac{r(1-\theta)}{\theta^2} 
</MULTILINE>
<P/>
<EXR ref="nbxv1"> <M>Y\sim</M><B>NegBin</B><M>(r,\theta).</M> Compute <M>E(Y)</M> and
<M>Var(Y)</M> for the following values of <M>r</M> and <M>\theta.</M>
<FL><LI><M>r=3, \theta=\frac12</M>
</LI><LI><M>r=2, \theta=\frac15</M>
</LI><LI><M>r=1, \theta=\frac23</M>
</LI><LI><M>r=5, \theta=\frac13</M>
</LI></FL>
</EXR>
<ANS ref="nbxv1"><FL><LI><M>6,r=3, \theta=\frac12</M>
</LI><LI><M>10, 40 r=2.</M>
</LI><LI><M>\frac32,\frac34.</M>
</LI><LI><M>15, 30.</M>
</LI></FL></ANS>
<P/>
It should be apparent from the description of the distribution that
Negative Binomial distribution is related with the Geometric
distribution. In Geometric distribution we keep on tossing until we get the
first head, while for the Negative Binomial distribution we toss until the
first <M>r</M> heads. If <M>r=1</M> then this is same as the Geometric
distribution. 
<P/>
<BOX>
<B>NegBin</B><M>(\theta,1)</M> is the same as <B>Geom</B><M>(\theta).</M>
</BOX>
<P/>
Here is another connection.
<P/>
<BOX>
If <M>X\sim</M><B>NegBin</B><M>(\theta,r), </M><M>Y\sim</M><B>NegBin</B><M>(\theta,s)</M> and they are
independent, then 
<Q>
<M>X+Y\sim</M><B>NegBin</B><M>(\theta,r+s).</M>
</Q>
</BOX>
<P/>
<BOX>
If <M>X_1,...,X_r</M> are independent <B>Geom</B><M>(\theta)</M> random
variables, then 
<D>
X_1+\cdots+X_r\sim <B>NegBin</B>(\theta,r).
</D>
</BOX>
<EXR ref="nbxv2">
Using the above result and the mean and variance of
<B>Geom</B><M>(\theta),</M>
derive the formula for mean and variance of <B>NegBin</B><M>(r,\theta).</M>
</EXR>
<HINT ref="nbxv2">Use the result that <M>E(X_1+\cdots+X_r)=
E(X_1)+\cdots+E(X_r).</M> Also, since <M>X_1,...,X_r</M> are independent,
so  <M>Var(X_1+\cdots+X_r)=
Var(X_1)+\cdots+Var(X_r).</M></HINT>
<P/>
It is also possible to derive these directly without using the Geometric
distribution. The direct proof is more complicated and uses the result 
<D>
{x-1\choose r-1} = (-1)^{x-r} {r\choose x-r},
</D>
which is proved in the appendix.
<P/>
<HEAD2>Poisson distribution</HEAD2>
<B>Notation:</B> <B>Poi</B><M>(\lambda),</M> where <M>\lambda > 0.</M>
<P/>
<B>Sample space:</B> \{0,1,2,...\}
<P/>
<B>PMF:</B> 
<D>
P(X=x) = <CASES>
            e^{-\lambda}\cdot\frac{\lambda^x}{x!} <IF><M>x=0,1,2,...</M></IF>
            0 <ELSE/>
         </CASES>
</D>
<B>Terminology:</B> Such an <M>X</M> is said to have (or follow) <B>Poi</B><M>(\lambda)</M>
distribution. We also say that <M>X</M> is a <B>Poi</B><M>(\lambda)</M> random
variable, and write <M>X\sim</M><B>Poi</B><M>(\lambda).</M>
<P/>
<EXR ref="poi1">
If <M>X\sim</M><B>Poi</B><M>(3),</M> then find the following probabilities.
<FL><LI><M>P(X=4)</M>
</LI><LI><M>P(X=0)</M>
</LI><LI><M>P(X= -1)</M>
</LI><LI><M>P(X\leq 3)</M>
</LI></FL>
</EXR><ANS ref="poi1"><FL><LI><M>27e^{-3}/8</M>
</LI><LI><M>e^{-3}</M>
</LI><LI><M>0</M>
</LI><LI><M>43e^{-3}/4</M>
</LI></FL></ANS>
<P/>
<EXR ref="poi2">
What is the probability that a <B>Poi</B><M>(5)</M> random variable is even?
</EXR><ANS ref="poi2"><M>(e^5+e^{-5})/2</M></ANS>
<P/>
<B>Where used:</B> One use of Poisson distribution is in approximating
Binomial distribution.
<P/>
<BOX>
If <M>n</M> is large and <M>\lambda </M> is small, then
<B>Bin</B><M>(n,\lambda)</M> is approximately same as <B>Poi</B><M>(\lambda)</M>
where <M>\lambda  = n \lambda. </M>
</BOX>
<P/>
<EXM>
<M>X</M> has <B>Bin</B>(1000,0.01) distribution. Compute <M>P(X=5)</M>
approximately by using Poisson approximation. 
<P/>
<SOLN/> Here <M>n=1000</M> and <M>\lambda  = 0.01.</M> So we should take <M>\lambda
= 1000\times 0.01 = 10.</M> By Poisson approximation, <M>X</M> is
approximately a <B>Poi</B>(10) random variable. Hence
<D>
P(X=5)\approx e^{-10}10^{5}/5! = 0.03783.
</D>
It is instructive to compare this with the exact value, which is
<D>
P(X=5) = {1000\choose 5} (0.01)^5(1-0.01)^{1000-5} = 0.03745.
</D>
</EXM>
<P/>
<EXR ref="poi3">
A box has 100 items, each of which either passes a quality control test
(OK) or fails the test (BAD). If a box has more than 3 BAD items, then the
box is rejected by the quality control inspector. It is known that each
item is OK with probability 0.01, and that the items are independent. Use
Poisson approximation to compute the probability that a box is not
rejected.
</EXR><ANS ref="poi3"><M>1-\frac{8}{3e}</M></ANS>
<P/>
<B>Expectation and variance:</B> If <M>X</M> has <B>Poi</B><M>(\lambda)</M>
distribution then
<MULTILINE>
E(X)&=&\lambda\\ Var(X)& =& \lambda.
</MULTILINE>
<P/>
<MULTILINE>
E(X) &=& \sum_{x=0}^\infty xP(X=x)\\
     &=& \sum_{x=0}^\infty x\frac{e^{-\lambda}\lambda^x}{x!}\\
</MULTILINE>
The term for `<M>x=0</M>' is zero in this sum. So we can drop it to get
<MULTILINE>
\sum_{x=0}^\infty x\frac{e^{-\lambda}\lambda^x}{x!}
     &=& \sum_{x=1}^\infty x\frac{e^{-\lambda}\lambda^x}{x!}\\
     &=& e^{-\lambda}\sum_{x=1}^\infty x\frac{\lambda^x}{x!}\\
     &=& e^{-\lambda}\sum_{x=1}^\infty \frac{\lambda^x}{(x-1)!}\\
</MULTILINE>
Now put <M>y=x-1.</M>
<MULTILINE>
e^{-\lambda}\sum_{x=1}^\infty \frac{\lambda^x}{(x-1)!}
     &=& e^{-\lambda}\sum_{y=0}^\infty \frac{\lambda^{y+1}}{y!}\\
     &=& e^{-\lambda}\lambda\sum_{y=0}^\infty \frac{\lambda^{y}}{y!}\\
     &=& e^{-\lambda}\lambda e^\lambda\\
     &=& \lambda.
</MULTILINE>
<P/>
<MULTILINE>
E(X(X-1))&=& \sum_{x=0}^\infty x(x-1)P(X=x)\\      
         &=& \sum_{x=0}^\infty x(x-1)\frac{e^{-\lambda}\lambda^x}{x!}\\
</MULTILINE>
Drop the first two terms (which are both zeroes) to obtain
<MULTILINE>
\sum_{x=0}^\infty x(x-1)\frac{e^{-\lambda}\lambda^x}{x!}
         &=& \sum_{x=2}^\infty x(x-1)\frac{e^{-\lambda}\lambda^x}{x!}\\
         &=& e^{-\lambda}\sum_{x=2}^\infty x(x-1)\frac{\lambda^x}{x!}\\
         &=& e^{-\lambda}\sum_{x=2}^\infty \frac{\lambda^x}{(x-2)!}\\
</MULTILINE>
Substitute <M>y=x-2</M> to see that
<MULTILINE>
e^{-\lambda}\sum_{x=2}^\infty \frac{\lambda^x}{(x-2)!}
         &=& e^{-\lambda}\sum_{y=0}^\infty \frac{\lambda^{y+2}}{y!}\\
         &=& e^{-\lambda}\lambda^2\sum_{y=0}^\infty \frac{\lambda^{y}}{y!}\\
         &=& e^{-\lambda}\lambda^2 e^\lambda\\
         &=& \lambda^2.\\
</MULTILINE>
<P/>
<MULTILINE>
E(X^2)   &=& E(X(X-1)+E(X)\\
         &=& \lambda^2 +\lambda.
</MULTILINE>
<P/>
<MULTILINE>
Var(X)   &=& E(X^2) - (E(X))^2\\
         &=& \lambda^2 +\lambda - \lambda^2\\
         &=& \lambda.
</MULTILINE>
<P/>
<EXR ref="poixv1">
Find the expected values of the following random variables.
<FL><LI><M>X\sim</M><B>Poi</B><M>(2).</M>
</LI><LI><M>Y\sim</M><B>Poi</B><M>(\frac12).</M>
</LI><LI><M>Z\sim</M><B>Poi</B><M>(2.5).</M>
</LI></FL>
</EXR>
<ANS ref="poixv1"><FL><LI><M>E(X)=2.</M>
</LI><LI><M>E(Y)=\frac12.</M>
</LI><LI><M>E(Z)=2.5.</M>
</LI></FL></ANS>
<P/>
<EXR ref="poixv2">
Find the variance of a <B>Poi</B><M>(\lambda)</M> random variable for the
following values of <M>\lambda.</M>
<FL><LI><M>1</M>
</LI><LI><M>9</M>
</LI><LI><M>0.01</M>
</LI></FL>
</EXR>
<ANS ref="poixv2"><FL><LI><M>1</M>
</LI><LI><M>9</M>
</LI><LI><M>0.01</M>
</LI></FL></ANS>
<P/>
<BOX>
If <M>X</M> is a <B>Poi</B><M>(\alpha)</M> random variable, <M>Y</M> is a
<B>Poi</B><M>(\beta)</M> random variable, and <M>X,Y</M> are independent,
then <M>X+Y</M> is a <B>Poi</B><M>(\alpha+\beta)</M> random variable.
</BOX>
<P/>
<EXR ref="poi4">
If <M>X_1,X_2,X_3,X_4</M> are independent random variables with
 distributions <B>Poi</B><M>(1),<B>Poi</B>(2),<B>Poi</B>(4)</M> and <B>Poi</B><M>(5),</M>
 respectively.
Find the distribution of <M>(X_1+\cdots+X_4).</M>
</EXR><ANS ref="poi4"><B>Poi</B><M>(12)</M></ANS>
<P/>

<P/>
<DISQUSE url="http://www.isical.ac.in/~arnabc/prob1/distrib.html" id="distrib"/>
</E>@}
</NOTE>
