<NOTE>
@{<E>
<HEAD1>Conditional distribution</HEAD1>
<DEFN name="Conditional distribution">
Let <M>X:\Omega\to S</M> and <M>Y:\Omega\to T</M> be joint distributed discrete random
variables. Let <M>x\in S</M> be some constant such
that <M>P(X=x)> 0.</M> Then the <B>conditional
distribution of <M>Y</M> given <M>X=x</M></B> is the probability
distribution on <M>T</M> 
<D>
A\mapsto P(Y\in A | X = x).
</D>
</DEFN>

<EXM>
A 7-segment display shows any number from 0 to 9 at random (equal
probabilities). 
<CIMG web="7seg.png"/>
Let <M>X</M> be the indicator random variable of
whether the blue segment is on. Similarly, <M>Y</M> is the
indicator for the red segment. Find the conditional distribution
of <M>Y</M> given <M>X.</M>
<SOLN/>
Here <M>X,Y</M> both take values in <M>\{0,1\}.</M> 
We need to find <M>P(Y=y | X=x)</M> for <M>x,y\in\{0,1\}.</M>
<P/>
Now <M>P(Y=1|X=1) = P(X=1,Y=1)/P(X=1).</M> 
<P/>
Both the blue and the red segments are on in only the numbers
3,4,5,6,8,9. So <M>P(X=1,Y=1) = [[6][10]].</M>
<P/>
The blue segment is on in the numbers 2,3,4,5,6,8,9. So <M>P(X=1) =[[7][10]].</M>
<P/>
Hence <M>P(Y=1|X=1) = P(X=1,Y=1)/P(X=1) = [[67]].</M>
<P/>
You should now be able to work out the other three conditional
probabilities similarly.
</EXM>

We can define conditional CDF or conditional PMF in the obvious
way.

<DEFN name="Conditional expectation / variance">
Expectation (or variance) computed baed on a conditional distribution is
called <B>conditional expectation (variance)</B>.
</DEFN>

It is important to understand that the conditional
expectation/variance is a random variable, which is a function of
the conditioning random variable.

<HEAD2>Unconditionals in terms of conditionals</HEAD2>
Remember the theorem of total probability: 
<D>
P(A) = P(B) P(A|B) + P(B^c)P(A|B^c),
</D>
where combined the two conditional probabilities of <M>A</M> to
arrive at the (unconditional) probability of <M>A?</M> 
<P/>
Well, we can do similar things with conditional
expectation/variance also. 

<THM name="Tower property">
<M>E(Y) = E(E(Y|X)).</M>
</THM>
<PF>
Let <M>X</M> take values <M>x_1,x_2,...</M> and <M>Y</M> take
values <M>y_1,y_2,...</M>. Let the joint PMF of <M>(X,Y)</M> be 
<D>
P(X=x_i~\&~Y=y_j) = p_{ij}.
</D>
Then <M>P(Y=y_j | X=x_i) = [[p_{ij}][p_{i\bullet}]].</M>
<P/>
So <M>E(Y|X=x_i) = \sum_j y_j [[p_{ij}][p_{i\bullet}]].</M>
<P/>
Expectation of this is 
<D>
\sum_i E(Y|X=x_i) p_{i\bullet} = \sum_i \sum_j y_j
[[p_{ij}][p_{i\bullet}]]p_{i\bullet} = \sum_i \sum_j y_j p_{ij} =
\sum_j y_j  \sum_i p_{ij} = \sum_j y_j   p_{\bullet j} = E(Y),
</D>
as required.
</PF>

Many expectation problems can be handled step-bystep using this
result. Here are some examples.

<EXM>
A casino has two gambling games:
<OL>
<LI>Roll a fair die, and win Rs. <M>D</M> if <M>D</M> is the
outcome. </LI>
<LI>Roll two fair dice, and win Rs 5 if both show the same
number, but lose Rs 5 otherwise.</LI>
</OL>
You throw a coin with <M>P(Head)=[[13]]</M> and decide to play game
1 if <M>Head,</M> and game 2 if <M>Tail.</M> What is your
expected gain?
<SOLN/>
Let <M>X</M> be your gain (in Rs), and let <M>Y</M> be the outcome of the
toss. 
<P/>
Then <M>E(X|Y=Head) = 3.5</M> and <M>E(X|Y=Tail) = 5\times[[6-30][36]]=-[[10][3]].</M> 
<P/>
So, by the tower property, <M>E(X) = P(X|Y=Head)\times P(Y=Head)+P(X|Y=Tail)\times P(Y=Tail) = \cdots.</M>
</EXM>

The tower property is very useful for computing expectations
involving a random number of random variables. Here is an
example.

<EXM>
A random number <M>N</M> of customers enter a shop in a
day, where <M>N</M> takes values in <M>\{1,...,100\}</M> with
equal probabilities. The <M>i</M>-th customer pays a random amount <M>X_i</M>,
where <M>X_i</M> takes values in <M>\{1,2,...,10+i\}</M>
ith equal probabilities. Assuming that <M>N,X_1,...,X_N</M> are
all independent, find the total expected payments by the
customers on that day.
<SOLN/>
We have <M>E(X_i) = [[11+i][2]].</M> 
<P/>
So <M>E(*(\sum_1^N X_i|N)*) = \sum_1^N E(X_i|N) = \sum_1^N E(X_i) = \sum_1^N [[11+i][2]] = 5.5N+[[N(N+1)][4]].</M>
<P/>
By tower property, the required answer is <M>E(*(5.5N+[[N(N+1)][4]])*)=\cdots.</M>
</EXM>

<EXM>
10 holes, numbered 1 to 10, in a row. 5 balls are dropped
randomly in them (a hole may contain any number of balls). Call a
ball "lonely" if there is no other ball in its hole or the
adjacent holes. Find the expected number of lonely balls. 
<SOLN/>
Define the indicators <M>I_1,...,I_5</M> as
<D>
I_i = <CASES>1<IF>i\mbox{-th ball is lonely}</IF>0<ELSE/></CASES>
</D>
Then the total number of lonely balls is <M>X = \sum I_i.</M>
<P/>
So we are to find <M>E(X) = \sum E(I_i).</M>
<P/>
Let <M>Y_i = </M> the hole where the <M>i</M>-th ball has fallen.
<P/>
Then <M>E(I_i|Y_i=1)</M> is the conditional probability that
all the balls except the <M>i</M>-th one has landed in
holes <M>2,...,10</M> given that the <M>i</M>-th ball has landed
in hole 1.
<P/>
You should be able to compute this easily. Similarly, you can
compute <M>E(I_i|Y_i=k)</M> for <M>k=1,...,10.</M>
<P/>
Notice that <M>Y_i</M> can take values <M>1,...,10</M> with equal probabilities.
<P/>
So tower property should provide the answer as
<D>
E(X) = \sum E(E(I_i|Y_i)) = \cdots.
</D>
</EXM>

<THM>
<M>V(Y) = E(V(Y|X)) + V(E(Y|X)).</M>
</THM>
<PF>
This follows directly from the tower property. 
<P/>
We know
<D>
V(Y|X) = E(Y^2|X) - E^2(Y|X),
</D>
and hence
<D>
E(V(Y|X)) = E(E(Y^2|X)) - E(E^2(Y|X)) = E(Y^2) -  E(E^2(Y|X)).
</D>
Again, 
<D>
V(E(Y|X)) = E(E^2(Y|X)) - E^2(E(Y|X)) = E(E^2(Y|X)) - E^2(Y). 
</D>
So 
<D>
E(V(Y|X)) + V(E(Y|X)) = E(Y^2)-E^2(Y) = V(Y),
</D>
as required.
</PF>

<HEAD2>More than 2 variables</HEAD2>
If <M>X,Y,Z</M> are jointly distributed random variables, then we
can talk about conditional distribution of <M>Z</M>
given <M>(X,Y)</M> or <M>X</M> given <M>Z</M> or <M>(X,Z)</M>
given <M>Y,</M> etc. We can even condition step by step. For
example, we can talk about <M>E(E(Z|X,Y)|X).</M> This is a
function of <M>X</M> alone. 

<HEAD2>Substitution</HEAD2>
<THM name="Substition property">
Conditional distribution of <M>f(X,Y)</M> given <M>X=x</M> is the
same as the conditional distribution of <M>f(x,Y)</M> given <M>X=x.</M>
</THM>
<PF>
This follows immediately from the definition of conditional probability.
</PF>
<HEAD1>Problems for practice</HEAD1>

::<EXR><EIMG web="condist1.png"></EIMG>

Here the word "density" is used to mean "PMF". 
<ANS>
(a) Once you realise that <M>f_X(x) = P(X=x)</M>, <M>f_Y(y) = P(Y=y)</M>  and 
<M>f_{Y|X}(y|x) = P(Y=y|X=x),</M>  the given equality is just theorem of total probability. 

(b) The RHS is <M>E(E(Y|X))</M>  and so the equality is just the tower property.
</ANS>
<HR/></EXR>
::<EXR><EIMG web="condist2.png"></EIMG>
<ANS>
<M>E(S_N) = E(E(S_N|N)) = E(N\mu) = \mu E(N).</M>

E(S_N^2) = E(E(S_N^2|N)) = E(N\sigma^2 + N^2\mu^2  ) = \sigma^2E(N^2)+\mu^2E(N^2).

The third equality follows directly from these two.
</ANS>
<HR/></EXR>
::<EXR><EIMG web="condist3.png"></EIMG>
<ANS>
(a) <M>[[23]].</M>

(b) <M>[[29]].</M>

(c) <M>[[13][27]].</M>
</ANS>
<HR/></EXR>
::<EXR><EIMG web="condist4.png"></EIMG>

You might like to solve (b) first.
<ANS>
(b) <M>P(X=Y) = [[1N]].</M>

(a) <M>P(X< Y) = P(Y < X) </M>  and <M>P(X< Y) + P(Y < X) P(X=Y)=1.</M>

Hence <M>P(X> Y) = [[12]]\times(*(1-[[19]])*) = [[49]].</M>

So <M>P(X\geq Y) = [[49]]+[[19]]=[[59]].</M>
</ANS>
<HR/></EXR>
::<EXR><EIMG web="condist5.png"></EIMG>

Here Exercise 14 means the last exercise (i.e., Exercise 4 according to our numbering).
<HR/>
<ANS>
(a) Let <M>U = \min(X,Y).</M>   Then <M>U</M>  can take values <M>0,...,N.</M>  

<M>P(U=k) = P(U\geq k)-P(U\geq k+1).</M>

Now <M>P(U\geq k) = P(X,Y\geq k) = P(X\geq k)P(Y\geq k) = (*([[N-k+1][N+1]])*)^2.</M>

Similarly, <M>P(U\geq k+1) = (*([[N-k][N+1]])*)^2.</M>

So <M>P(U=k) = [[(N-k)^2-(N-k+1)^2][(N+1)^2]] = ... .</M>

(b) Let <M>T = \max(X,Y).</M>   Then <M>T</M>  can take values <M>0,...,N.</M>  

<M>P(T=k) = P(U\leq k)-P(T\leq k-1).</M>

Now <M>P(T\leq k) = P(X,Y\leq k) = P(X\leq k)P(Y\leq k) = (*([[k+1][N]])*)^2.</M>

Similarly, <M>P(T\leq k-1) = (*([[k][N]])*)^2.</M>

So <M>P(T=k) = (*([[(k+1)^2-k^2][N^2]] = [[2k+1][N^2]].</M>

(c)   <M>R=|Y-X|</M>  can take values in 0,1,...,<M>N.</M> 

<M>P(R=0) = P(X=Y) = [[1][N+1]].</M>

For <M>k=1,...,N,</M>  we have <M>P(R=k) = P(R=k \& X < Y) + P(R=k \& X=Y) + P(R=k \& X > Y).</M>

Now <M>P(R=k \& X=Y) =0.</M>

Also <M>P(R=k \& X < Y) =P(R=k \& X > Y).</M>

For <M>\{R=k\ & X < Y\}</M>  to happen we must have <M>X = 0,...,N-k</M>  and correspondingly <M>Y = k,...,N.</M>  

So <M>P(R=k\ & X < Y) = [[N-k+1][N]].</M>

Hence <M>P(R=k) = [[2(N-k+1)][N]].</M>
</ANS>
</EXR>
::<EXR><EIMG web="condist6.png"></EIMG>
<ANS>
(a) <M>P(X=x) = \sum_y P(X=x,Y=y) = \sum_y g(x)h(y) = g(x)\sum_y h(y).</M>

(b) <M>P(Y=y) = \sum_x P(X=x,Y=y) = \sum_x g(x)h(y) = h(y)\sum_x g(x).</M>

(c) We know that <M>\sum_x\sum_y P(X=x,Y=y) = 1.</M>  Hence <M>\sum_x\sum_y g(x)h(y) = 1,</M>  i.e., <M>\sum_xg(x)\sum_y h(y) = 1.</M>

(d) To show <M>\forall x, y~~P(X=x,Y=y) = P(X=x)P(Y=y).</M>

Take any <M>x,y.</M>

Then <M>P(X=x)P(Y=y) = [#[\sum_y h(y) ]#]g(x)[#[\sum_x g(x) ]#]h(y) = g(x)h(y) = P(X=x,Y=y).</M>
</ANS>
<HR/></EXR>
::<EXR><EIMG web="condist7.png"></EIMG>
Here "density" means "PMF". 
<ANS>
(a) <M>(X_1,...,X_r)</M>  can take values <M>(x_1,...,x_r)</M>  where each <M>x_i</M>  is a nonnegative integer and <M>\sum_1^r x_i = 2r.</M> 
 
We consider the random experiment of dropping the balls one by one into the boxes. For each ball have <M>r </M> posible destinations.
 
So <M>|\Omega| = r^{2r}.</M>

Now fix some <M>(x_1,...,x_r)</M>  as above. The event <M>A=\{(X_1,...,X_r) = (x_1,...,x_r)\}</M>  may be obtained as follows.

Pick and order <M>x_i</M>  balls to drop into box <M>i</M> one by one. 

So <M>|A| = [[(2r)!][x_1!\times\cdots\times x_r!]].</M>

Hence 
<M>P\{(X_1,...,X_r) = (x_1,...,x_r)\}= [[ |A| ][ |\Omega| ]].</M>

(b) <M>[[ (2r)!][(4r)^r]]. </M>
</ANS>
<HR/></EXR>
::<EXR><EIMG web="condist8.png"></EIMG>
<ANS>
(a) <M>P(X_1+X_2=k) = \binom{n}{k} (p_1+p_2)^k p_3^{n-k}</M>  for <M>k=0,1,...,n.</M>

(b) 
<MULTILINE>
P(X_2=y|X_1+X_2 = z)
& = & [[P(X_2=y \& X_1+X_2=z)][P(X_1+X_2=z)]] \\
& = & [[P(X_1=z-y\&X_2=y)][P(X_1+X_2=z)]] \\
&  = & [[ [[n!][(z-y)!y!(n-z)!]] p_1^{z-y} p_2^y p_3^{n-z} ][ \binom{n}{z} (p_1+p_2)^z p_3^{n-z} ]]
& = & \cdots.
</MULTILINE>
</ANS>
<HR/></EXR>
::<EXR><EIMG web="condist9.png"></EIMG>
<ANS>
(a) <M>1-(*([[5][6]])*)^6.</M>

(b) For <M>n</M>  rolls <M>P(</M> at least one 6<M>)=1-(*([[56]])*)^n.</M>

We need <M>n</M>  such that <M>1-(*([[56]])*)^n\geq [[12]].</M>  

Direct computation shows <M>n\geq 4.</M>
</ANS>
<HR/></EXR>
::<EXR><EIMG web="condist10.png"></EIMG>

Imagine this set up: A coin with <M>P(H)=p</M>  is repeadly tossed. Success means <M>H.</M>
<ANS>
<M>(1-p)^{x_r-r} p^r.</M>

Thanks to Amit Prakash Jena for correcting a mistake here.
</ANS>

<HR/></EXR>
::<EXR><EIMG web="condist11.png"></EIMG>

This is a continuation of the last problem.
<ANS>
<M>P(T_1=x|N_n=1) = [[P(T_1=x\& N_n=1)][P(N_n=1)]] = [[p(1-p)^{n-1}][np(1-p)^{n-1}}] = [[1n]].</M>
</ANS>
<HR/></EXR>
::<EXR><EIMG web="condist12.png"></EIMG>

This is a continuation of the last problem.
<ANS>
Same logic as in the last solution.
</ANS><HR/></EXR>
::<EXR><EIMG web="morecond1.png"></EIMG>
<ANS>
By symmetry, the answer is <M>[[1n]]</M>  if <M>k=1.</M>  So, for general <M>k</M>  the answer is <M>[[kn]].</M>
</ANS>
<HR/></EXR>
::<EXR><EIMG web="morecond2.png"></EIMG>
<ANS>Let <M>I_j</M> be the indicator variable for whether there is a
record at position <M>j.</M> Then <M>P(I_j=1)</M> may be computed
by total probability:
<D>
P(I_j=1) = \sum_{k=j}^n P(X_j=k)P(I_j=1|X_j=k).
</D>
Similarly for <M>P(I_jI_k=1).</M></ANS>
<HR/></EXR>
::<EXR><EIMG web="morecond3.png"></EIMG>
<ANS>The problem is basically optimising <M>\sum P_i^2</M> subject
to <M>\sum P_i</M> being fixed. Cauchy-Scwartz might help.  </ANS>
<HR/></EXR>
::<EXR><EIMG web="morecond4.png"></EIMG>
<ANS>
Let the black balls be labelled <M>b_1,...,b_m.</M>  

Let <M>X_i=<CASES>1<IF>\mbox{no white drawn before }b_i</IF>
0<ELSE/></CASES>.</M>

Then <M>X= 1+\sum_1^m X_i.</M>

Also, <M>E(X_i) = [[1][n+1]]</M>. To see this consider the <M>n</M>  white balls plus <M>b_i.</M>  Out of these <M>n+1</M> 
 balls <M>b_i</M>  has the chance <M>[[1][n+1]]</M>  to come first. 

(a) <M>V(X_i) = [[n][(n+1)^2]].</M>  

Also for <M>i\neq j</M>  we have <M>E(X_iX_j) = [[2][(n+2)(n+1)]]</M>    (because out of the <M>n</M>  white balls plus <M>b_i</M> 
 and <M>b_j</M>  any of the <M>\binom{n+2}{2}</M>  pairs can come first with equal probability).

(b) Let <M>Y_i</M>  be as given in the hint. Let's take an example to 
understand how <M>Y_i</M>'s are defined. Suppose that we have <M>m=20</M>  black and <M>n=3</M>  white balls. 
Here is one way they may turn up:
<Q>
B B Y Y B B B B B  Y
</Q>
Then <M>Y_1 = 2</M>  (as there are two B's preceding the first W), <M>Y_2=0</M>  (since the second W is immediately after
 the first), and <M>Y_3 = 5</M>  (because there are as many B's between the second and third W). 

We shall argue using bijection that <M>Y_i</M>'s are all identically distributed. Let's 
try to show that <M>P(Y_1=0) = P(Y_2=0).</M>  The outcome shown above is in the event <M>\{Y_2=0\}.</M>  

Now just swap the first two W's (along with B's  immediately preceding it) to get:
<Q>
 Y B B Y B B B B B  Y
</Q>
Clearly, this is another possible outcome which is inside <M>\{Y_1=0\}.</M>  
It is not difficult to see (check!) that this swap is a bijection between the events <M>\{Y_1=0\}.</M>  and <M>\{Y_2=0\}.</M> 
If the bijection is denoted by <M>f,</M>  then <M>\forall \omega\in\Omega~~P(\omega) = P(f(\omega))</M>  (why?)

Hence <M>P\{Y_1=0\} = P\{Y_2=0\}.</M>

In general, we see that <M>Y_i</M>'s are all identically distributed. Now (b) follows immediately from (a) applied to each
 <M>Y_i</M>  separately. 
</ANS>
<HR/></EXR>
::<EXR><EIMG web="morecond5.png"></EIMG>
<ANS>
Let <M>T = \lambda X_1+ (1-\lambda) X_2.</M>  

Then <M>V(T) = \lambda^2 V(X_1) + (1-\lambda)^2 V(X_2),</M>  since <M>X_1,X_2</M>  are independent.

Thus, <M>V(T) = \lambda^2 \sigma_1^2 + (1-\lambda)^2 \sigma_2^2 = f(\lambda),</M>  say. 

Then <M>f'(\lambda) = 2 \sigma^2_1 \lambda - 2 \sigma^2_2(1-\lambda).</M>

Solving <M>f'(\lambda) = 0</M>  we get <M>\lambda = [[\sigma^2_2][\sigma^2_1+\sigma^2_2]].</M>

This is desirable because we are giving more weight to the <M>X_i</M>  that has less variance (i.e., is more stable). 
</ANS>
<HR/></EXR>
::<EXR><EIMG web="morecond6.png"></EIMG>
<ANS>
Just like <M>(a+b)(a-b) = a^2-b^2.</M>  
</ANS>
<HR/></EXR>
::<EXR><EIMG web="morecond7.png"></EIMG>

Do this only for discrete <M>X.</M>
<ANS>
<M>E(X|Y=y) = \sum_x x P(X=x|Y=y) = \sum_x x P(X=x),</M>
since <M>X,Y</M>  independent. 

Hence the result.
</ANS>
<HR/></EXR>
::<EXR><EIMG web="morecond8.png"></EIMG>

Do this for discrete <M>X, Y</M>  only. If <M>X</M>  can take values <M>x_1,x_2,x_3,...</M>  with
 positive probabilities, then
 you are prove
<D>\forall i~~E(g(X)Y|X=x_i] = g(x_i)E(Y|X=x_i).</D>
<ANS>
Take any <M>i.</M>

Then <M>E(g(X)Y|X=x_i) = \sum_y g(x_i) y P(Y=y|X=x_i) = g(x_i) \sum_y y P(Y=y|X=x_i) = g(x_i) E(Y|X=x_i),</M>  as required.
</ANS>
<HR/></EXR>
::<EXR><EIMG web="morecond9.png"></EIMG><HR/></EXR>
::<EXR><EIMG web="morecond10.png"></EIMG><HR/></EXR>
::<EXR><EIMG web="morecond11.png"></EIMG>

Will the result hold in general if the <M>X_i</M>'s are not independent?
<ANS>No, the result may not hold if the <M>X_i</M>'s have a dependence structure that is
 asymetric. A counterexample is as follows. 

<M>X_1 = </M>  outcome of a roll of a fair die. <M>X_2</M>  is obtained from <M>X_1</M>  by
 swapping 1 and 2. <M>X_3</M>  is obtained from <M>X_1</M>  by swapping 1 and 3. Then <M>E(X_1|X_1+X_2+X_3=6)=1\neq [[63]].</M> 
</ANS>
<HR/></EXR>
::<EXR><EIMG web="morecond12.png"></EIMG><HR/></EXR>
::<EXR><EIMG web="morecond13.png"></EIMG><HR/></EXR>
::<EXR><EIMG web="morecond14.png"></EIMG><HR/></EXR>
::<EXR><EIMG web="morecond15.png"></EIMG><HR/></EXR>
::<EXR><EIMG web="morecond16.png"></EIMG><HR/></EXR>
::<EXR><EIMG web="morecond17.png"></EIMG><HR/></EXR>
::<EXR><EIMG web="morecond18.png"></EIMG><HR/></EXR>

::<EXR><EIMG web="morecond19.png"></EIMG><HR/></EXR>
::<EXR><EIMG web="morecond20.png"></EIMG><HR/></EXR>
::<EXR><EIMG web="morecond21.png"></EIMG>
<ANS>
Let <M>X_i</M>  be the indicator for <M>i</M>-th red ball being a win. 

There are <M>\binom{2n}{n}</M>  sequences of <M>n</M>  R's and <M>n</M>  B's in all. Let us count
 how many of these lead to  <M>\{X_i=1\}.</M> 

Split each such sequence into two parts, the part before the <M>i</M>-th R, and the part after.
 For instance, for <M>n=4</M>  and <M>i=3</M>   the sequence RRBRBRBB is split as <RED>RRB</RED>R<BLUE>BRBB</BLUE>. 

For general <M>n</M>  and <M>i,</M>  the red part must consist of exactly <M>i-1</M>  R's and at
 most <M>i-1</M>  B's. The blue part consists of exactly <M>n-i</M>  R's and the remaining B's. 

Let <M>N_{r,b} = </M>  number of sequences with exactly <M>r</M>  R's and <M>b</M>  B's. In other words, <M>N_{r,b} =\binom{r+b}{r} = \binom{r+b}{b}. </M>

Then, for any sequence in <M>\{X_i=1\}</M>  the red part may be selected in 
<D>\sum_{j=0}^{i-1} \binom{i+j-1}{j}</D>
ways. Here <M>j</M>  denotes the number of B's in the red part. Once we also count the matching number
 of blue parts for each value of <M>j</M>, we get the size of <M>\{X_i=1\}</M>  as
<D>\sum_{j=0}^{i-1} \binom{i+j-1}{j}\binom{2n-i-j}{n-j}.</D>
Now you should be able to complete the rest.     

</ANS>
<HR/></EXR>
::<EXR><EIMG web="morecond22.png"></EIMG>
<ANS>
(a) Let's take an example with <M>n=10</M>  and <M>k=3.</M>  We are showing the selected balls in red:
<Q>
1 <RED>2 3</RED> 4 5 <RED>6</RED> 7 8 9 10
</Q>
Here <M>X = 6</M>  and <M>R = 4.</M>  

You should be able to see directly that in general <M>X+R=n.</M>
</ANS>
<HR/></EXR>
</E>@}
</NOTE>
