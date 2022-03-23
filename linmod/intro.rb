<NOTE>
@{<E>
<M>
\newcommand{\v}{\vec}
\newcommand{\hv}[1]{\hat{\vec#1}}
\newcommand{\col}{\mathcal{C}}
\newcommand{\argmin}{\mathrm{argmin}}
</M>
<HEAD1>What's a linear model?</HEAD1>

We learn to solve a linear system of equations during our school days. Here is
a familiar example: <M>3a+4b=10,</M> <M>4a+b=9</M>
and <M>2a+3b=7.</M>
<P/>
The solution turns out to be unique: <M>a=2</M> and <M>b=1.</M>
<P/>
Simple! But why would we ever want to solve such a system in real
life? Here is one situation. We are finding the mass of two
different atoms, <M>A</M> and <M>B.</M> We cannot weigh them separately. However, we can
weigh different compounds like <M>A_3B_4</M> and <M>A_4B</M>
and <M>A_2B_3.</M> Hence the three equations. 
<P/>
I admit it is a contrived example. But even this example will
show a difficulty that is present all the time in real life. When
we measure anything we make random error. Repeatedly measuring
the same quantity leads to slightly differing results. So we may
get measurements like 9.8, 9.1 and 7.0 in place of the exact
values 10, 9 and 7. So the system is now 
<D>
3a+4b\approx 9.8\\
4a+b\approx 9.1\\
2a+3b\approx 7.0
</D>
Our first impulse may be just to pretend that
the <M>\approx</M>'s are <M>=</M>'s, solve the system as before,
then report the solution as approximate values for <M>x</M>
and <M>y.</M> Just try this out, and you'll see that it's
impossible. The system is inconsistent! 
<P/>
It might seem strange, but a real life measurement scenario
mostly produces inconsistent systems. In mathematics an
inconsistent system is just absurd. But from the view point of
real life applications, we should better call them <I>almost
consistent.</I> It should be possible to get values for the unknowns
such that the LHS is pretty close to the RHS. Possibly, the
simplest such example is when we measure the same
length, <M>\ell,</M> twice
and get two values 10.50 and 10.49. This is actually an
inconsistent system: 
<D>
\ell = 10.50\\
\ell = 10.49
</D>
Mathematically, this is impossible! 
However, when we write this more correctly as 
<D>
\ell \approx 10.50\\
\ell \approx 10.49
</D>
there is nothing to make us feel uncomfortable. In fact, we may
even feel happy about the precision of the measurements. 

<P/>
Such an approximate system of linear equations is called
a <B>linear model</B>. The traditional notation is 
<D>
\v y = X \v \beta + \v \epsilon.
</D>
Here <M>\v y</M> is the measurement vector, <M>X</M> is the fixed
known matrix, <M>\v \beta </M> is the vector of unknowns
and <M>\v \epsilon </M> is the random error vector. 
<P/>
We call <M>\v y</M> the <B>response</B>, <M>X</M> the <B>design
matrix</B>, <M>\v \beta </M> the <B>parameter vector</B>.

<P/>
For example, in our weighing example, we have 
<D>
\v y = <MAT>9.8\\9.1\\7.0</MAT>,\quad X = <MAT>3 & 4\\4 & 1\\2 & 3</MAT>\text{ and } \beta = <MAT>a\\b</MAT>.
</D>
<HEAD1>Estimating <M>\h \beta </M></HEAD1>
This may be done by
choosing that value of <M>\v \beta</M> for which <M>\v y</M> is
as close as possible to <M>X\v \beta.</M> In other words, 
<D>
\hv \beta  = \argmin_{\v \beta} \|\v y-X\v \beta\|.
</D>
Here <M>\|\cdots\|</M> denotes the Euclidean distance. So we are
using our familiar least squares method. 


<HEAD1>Using R</HEAD1>
We may use R to perform least squares estimation. 

<EXM>
Solve the weighing problem using R. 
<SOLN/>
First construct the design matrix and the response vector:
<R>
X = matrix(<RB e="column-wise_entries">c(3,4,2,4,1,3)</RB>,<RB e="nrow">3</RB>,<RB e="ncol">2</RB>) 
y = c(9.8,9.1,7.0)
</R>
Now invoke the <CODE>lm</CODE> function (<CODE>lm</CODE> is
abbreviation of linear model) as follows:
<R>
solve(t(X)%*%X, t(X) %*% y)
</R>
In case you do not know, if <M>A</M> is a nonsingular matrix and <M>\v b</M>
is a vector, then <CODE>solve</CODE><M>(A,\v b)</M> computes <M>A
^{-1} \v b.</M>  
</EXM>
This example brings up an important question: will <M>X'X</M>
always be nonsingular? The answer is "No!", and this brings us to
the next topic of discussion.


<HEAD2>Unique?</HEAD2>
 Do the normal equations always produce unique
solution? Not necessarily. For example, if the linear model is 
<D>
2.9 = \beta_1 + \beta_2 +           \epsilon_1\\
3.0 = \beta_1 + \beta_2 +           \epsilon_2\\
2.5 =                     \beta_3 + \epsilon_3,
</D>
then you can never hope to get <M>\h\beta_1</M> and <M>\h\beta_2</M>
uniquely. But <M>\h\beta_3</M> may be found uniquely.
Also, <M>\h\beta_1+\h\beta_2</M> is unique, i.e.,
whatever least squares solutions <M>\h\beta_1</M> and <M>\h\beta_2</M> you take, their sum
will always be the same. 
<HEAD1>More R</HEAD1>
The technique we learned using R is not enough to tackle such
non-unique cases. As such cases are quite common in practice, R
has a specialised tool for them: the <CODE>lm()</CODE>
function. The name is an abbreviation of "linear model". 
<R>
X = matrix(c(1,1,0,1,1,0,0,0,1),3,3)
y = c(2.9, 3.0, 2.5)
lm(y ~ X - 1)
</R>
The first two lines are as before. The third line is the tricky
one. The <CODE>~</CODE> denotes the <M>\approx</M> of our
approximate system of equations. To specify <M>\v y\approx X \v \beta</M>, you always write the <M>\v y</M> to
the <I>left</I> of the <CODE>~</CODE>. There are various ways to
specify the <M>X\v \beta </M> part. We shall learn about them in
due course. Here we have given the simplest form, where we have
explicitly constructed the <M>X</M> matrix, and specified it
after the <CODE>~</CODE>. (As we shall see later, the explicit
construction of <M>X</M> in line 1 is rarely required in
practice, as R can build <M>X</M> for us.) R has the habit of
putting a additional column of <M>1</M>'s before <M>X.</M> This
will often prove useful later. But for now we do not need
it. The <CODE>-1</CODE> prevents this. 
<P/>
<ALERT/>An expression like this with a <CODE>~</CODE> is called
a <B>formula</B> in R. It attaches special meanings to regular
math symbols. For instance, <B>X-1</B> does not mean
subtracting <M>1</M> from <M>X.</M>
<P/>
The output is 
<PRE>
Call:
lm(formula = y ~ X - 1)

Coefficients:
  X1    X2    X3  
2.95    NA  2.50  
</PRE>
The presence of the <CODE>NA</CODE> indicates non-uniqueness. R
is reporting one particular solution where <M>\beta_1 = 2.95</M>,
<M>\beta_2 = 0</M> and <M>\beta_3 = 2.50.</M> The <CODE>NA</CODE>
means the condition <M>\beta_2 = 0</M> is put arbitrarily
by <M>R</M> in order to get a particular solution. We shall see
later how R decides this. 

<HEAD1>Enter statistics</HEAD1>
So far we have not explicitly put any assumption on the behaviour
of the error. Our approach has been informal, and based on common
sense. But even this informal approach has secretly relied on
some assumptions. The following example shows this.

<EXM>We consider the simplest example of measuring the same
length repeatedly. Suppose that the first 10 measurements are
taken by some precise instruments, and the remaining 10 by a
less precise instrument. Now taking simple average does not seem
the best thing to do. We feel that we should give more weight to
the precise measurements.</EXM>

<P/>
A statistical model involves some random quantity, and typically
we make assumptions regarding its distribution. For a linear
model the error vector <M>\v \epsilon </M> is basically the
source of randomness (<M>\v y</M> is random because of the
contribution of <M>\v \epsilon.</M>) So far we have been silent
about the distribution of <M>\v \epsilon.</M> There are various
types of assumptions that we can impose on <M>\v \epsilon.</M>
Here are some of them:
<UL>
<LI>One of the simplest possible assumptions is the Gauss-Markov
set up, where we simply assume that <M>E(\v \epsilon)=\v 0</M>
and <M>V(\v \epsilon) = \sigma^2 I,</M> for some
unknown <M>\sigma^2>0.</M> Notice that here are are not assuming
any specific distribution for <M>\v \epsilon.</M></LI>

<LI>We might put the stronger assumption <M>\v \epsilon \sim
N_n(\v 0, \sigma^2 I),</M> for some
unknown <M>\sigma^2>0.</M></LI>

<LI>In the above two assumptions, we may replace <M>\sigma^2
I</M> by some (partially) unknown positive definite
matrix <M>\Sigma.</M></LI>

<LI>More exotic assumptions are possible, e.g., the components
of <M>\v \epsilon </M> have double exponential distribution.</LI>




</UL>


<HEAD1>Exercises</HEAD1>
<OL>
<LI>Solve the following approximate system using R:
<MULTILINE>
3a + 4b + c & \approx & 3.4\\
3a + 4b + c & \approx & 3.5\\
4a + 3b + 2c & \approx & 10.1\\
4a + 3b + 2c & \approx & 9.8\\
6a + 5b + 2c & \approx & 5.6
</MULTILINE>
</LI>
<LI>Let's see how R tackles a linear model where the design matrix that is not full
column rank:
<D>
X = <MAT>
1 & 1 & 0\\
1 & 1 & 0\\
1 & 0 & 1\\
1 & 0 & 1\\
</MAT>,\quad 
\v y = <MAT>3.4\\3.5\\10.5\\10.3</MAT>.
</D>
Here the first column of <M>X</M> is a column of <M>1</M>'s. So
you may just type the last two columns in R, and omit the <CODE>-1</CODE>.
</LI>
<LI>
In the problem above R produced <I>one</I> least squares
solution. But we know that there are infinitely many. Write down
two more solutions. Can you write a general form for all least
squares solutions here?
</LI>
<LI>R automatically stores various qunatities computed
by <CODE>lm</CODE>. We shall explore some of them here. Let's
work with the linear model from the last exercise. Create the
full design matrix (including its first column) and type:
<R>
myfit = lm(y~X-1)
</R>
The variable <CODE>myfit</CODE> now contains lots of the
information about the fit. You may extract the computed least
squares solution <M>\hv \beta </M> as 
<R>
myfit$coef
</R>
This may be used in future computations. Compute <M>\h y = X\hv
\beta.</M> Remember that <CODE>%*%</CODE> is the R notation for
matrix multiplication. This <M>\h y</M> is the foot of the
perpendicular dropped from <M>\v y</M> to <M>\col(X).</M>
Usually <M>\hv y</M> is called the <B>fitted</B> vector. R already
computes them:
<R>
myfit$fitted
</R>
The vector <M>\v y - \hv y</M> is called the <B>residual</B>
vector:
<R>
myfit$resid
</R>
There are many other pieces of information packed
in <CODE>myfit</CODE>:
<R>
names(myfit)
</R>
</LI>
<LI>The closer <M>\v y</M> is to <M>\col(X),</M> the better is
the fit of the linear model. Here are various ways to measure
this "closeness": 
<OL type="a">
<LI>How close <M>\|\v y-\hv y\|^2</M> is to 0.</LI>
<LI>How close <M>[[\|\hv y\|^2 ][ \|\v y\|^2 ]]</M> is to 1.</LI>
</OL>
Comment why these are not "good" measures of fit. Come up with 
pairs of examples where the fit is equally good (according to
commonsense) yet these measures say otherwise.
</LI>
<LI>Consider a linear model <M>\v y = X \beta +\epsilon,</M>
where <M>X</M> is not full col rank. Pick any basis
of <M>\col(X).</M> Stack these vectors side by side a columns to
get a matrix <M>B.</M> Let <M>\v w = B(B'B) ^{-1} B' \v y.</M>
Show that <M>\v w = \hv y</M> irrespective of the choice
of <M>B.</M></LI>
<LI>Consider a linear model with design matrix 
<D>
X = <MAT>
1 & 1 & 0\\
1 & 1 & 0\\
1 & 0 & 1\\
1 & 0 & 1\\
</MAT>.
</D>
If <M>\v \beta = (\beta_1, \beta_2, \beta_3)',</M> then show that
whatever least squares solution <M>\hv \beta </M> you take, <M>\h
\beta_2-\h \beta_3</M> is always the same. Characterise all
vectors <M>\v \ell\in\rr^3</M> such that <M>\v \ell' \hv \beta</M>
does not depend on the choice of the least squares solution.
</LI>
<LI>Generalise the characterisation from the last problem to
arbitrary design matrix.</LI>
</OL>
<DISQUSE id="lmintro1" url="https://arnabc74.github.io/linmod/intro.html"/>
</E>@}
</NOTE>
