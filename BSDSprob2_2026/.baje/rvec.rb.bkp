@{<NOTE>
<M>\newcommand{\v}[1]{\boldsymbol{#1}}</M>
<M>\newcommand{\k}[1]{\chi^2_{(#1)}}</M>
<M>\newcommand{\cov}{\mathrm{cov}}</M>
<TITLE>Expectation and variance of random vectors</TITLE>
<HEAD1>Expectation, variance of random vectors</HEAD1>
We know that if <M>X_1,...,X_n</M>  are jointly distributed random variables, then <M>\v X=(X_1,...,X_n)'</M> 
 is called a <TERM>random vector</TERM>, and is usually considered as an <M>n\times 1</M>  column vector. We define 
<M>E(\v X)</M>  as
<D>E(\v X) = <MAT>E(X_1)\\\vdots\\E(X_n)</MAT>.</D>
The motivation is again from statistical regularity. If you take many IID replications of 
<M>\v X</M>  and average them, then (under very general conditions) the average will converge to <M>E(\v X).</M> 

The case of dispersion is slightly trickier. We shall start with the definition and provide the motivation later. 
<DEFN name="Dispersion matrix">
Let <M>\v X</M>  be a random vector with components <M>X_1,...,X_n.</M>  Then its <TERM>dispersion matrix</TERM>  or <TERM>variance matrix</TERM> 
 or <TERM>variance-covariance matrix</TERM>  is defined as the <M>n\times n</M>  symmetric matrix with <M>(i,j)</M>-th entry
 <M>\cov(X_i,X_j).</M>  In particular, its <M>i</M>-th diagonal entry is <M>V(X_i).</M>
</DEFN> 

<HEAD2>Problem set <PS/></HEAD2>
<EXR>If <M>X_1,...,X_n</M>  are IID with mean 2 and variance 5, and <M>\v X = (X_1,...,X_n)'</M>,
 then find <M>E(\v X)</M>  and <M>V(\v X).</M> Express <M>V(\v X)</M>  as a linear combination of
 identity matrix <M>I_n</M>  and <M>J_n,</M>  the <M>n\times n</M>  matrix with all entries equal to <M>1.</M></EXR>

<EXR>If <M>X_1\sim Binom(*(10,[[13]])*)</M>  and <M>X_2=10-X_1</M>  and <M>\v X = (X_1,X_2)'</M> 
 then find <M>E(\v X)</M>  and <M>V(\v X).</M></EXR>


<EXR>Let <M>\v X = (X_1,X_2,X_3)'</M>  have 
<D>V(\v X) = <MAT>
3 & 2 & 1\\
2 & 4 & 2\\
1 & 2 & 5
</MAT>.</D>
Find <M>cor(X_1,X_3).</M>
</EXR>

<EXR>In the last problem, also find <M>V(X_1-3X_2)</M>  and <M>\cov(X_1+X_2,X_3).</M></EXR>

<EXR>If <M>X_1,...,X_n</M>  are iid <M>Poi(1),</M>  then find <M>\cov(\v X),</M>  where<M>\v X = (X_1,...,X_n).</M></EXR>

<EXR>A fair coin is tossed thrice. Let <M>X_{ij}</M>  be the indicator that the <M>i</M>-th and
 <M>j</M>-th tosses show the same outcome. Find the covariance matrix of <M>(X_{12},X_{23},X_{31}).</M></EXR>

<EXR>Let <M>\v X = (U,U^2),</M>  where <M>U\sim Unif(-1,1).</M>  Find <M>\cov(\v X).</M></EXR>

<HEAD1>Motivation behind the definition of dispersion matrix</HEAD1>
A multivariate data set may appear to have different amounts of dispersion depending how you view
 it. <LINK to="tstpca.html">This 3D scatterplot</LINK>,  for example, will show this phenomenon
 when you drag it with a mouse. The
 dispersion matrix is a way to take all possible viewpoints into account. 

To
 motivate the definition of
 dispersion matrix consider the
 bivariate case. Let the
 two components of our random
 vector be <M>X</M>  and <M>Y.</M>  If we take
 many iid replications, we get points like <M>(X_1,Y_1),...,(X_n,Y_n).</M>  Think of these like a scatterplot. 
<CIMG web="scat1.png"></CIMG>
If we look at this cloud of points from position A, then the points appear more scatterred than when we look from B. This
 is an interesting feature of multivariate dispersion, it depends on how you look at it. A good  measure of dispersion
 should not depend on the direction we are looking from. Rather, it should capture the comprehensive picture,
from which we should be able to work out the dispersion from any desired direction. To achieve 
 this, imagine a ruler placed on the scatterplot with its 0 mark at the origin. 
Parallel rays of
 light are shining perpendicularly down on the ruler from both
 sides, casting shadows of the points on the ruler:
<CIMG web="scat2.png">Light rays (shown in red) are dropping perpendicularly on the ruler</CIMG>
Then each bivariate point reduces to a single number along the scale, and we may compute variance of the numbers to measure
 the dispersion when looking from that particular direction. 

See <LINK to="https://acbsds.shinyapps.io/varmat/">this interactive
 demo</LINK>  to understand this better.

In the biavariate case we can quantify the position of the ruler by the anngle it makes with the positive <M>x</M>-axis.
 But 
in general <M>\rr^n</M>  we  imagine a unit
 vector <M>\v u</M>  along the
 ruler from its 0 mark (at the origin) reaching up to its 1 mark.
<CIMG web="scat3.png">Projecting a typical point perpendicularly on the ruler</CIMG>
Then
 a point <M>\v v \equiv (X,Y)</M> 
 will project to the vector  
<D>[[\v v'\v u][\v u'\v u]] \v u,</D>
shown in blue.<XP>1</XP> Measured in units of <M>\v u</M>,  this will show up at the mark <M>[[\v v'\v u][\v u'\v u]]</M>  of the ruler.

Now, <M>[[\v v'\v u][\v u'\v u]] = pX+qY</M> for some <M>p,q\in\rr.</M>  <XP>2</XP>
Then the
 variance of <M>pX+qY</M> 
 will be <M>p^2 V(X)+q^2 V(Y) + 2pq\, \cov(X,Y),</M>  which may be written as  <XP>3</XP>
<D><MAT>p & q</MAT><MAT>V(X) & \cov(X,Y)\\\cov(X,Y) & V(Y)</MAT><MAT>p\\q</MAT>.</D>
Here <M>p,q</M>  are controlled by the position of the ruler. Notice that the matrix in the middle does not
 involve <M>p,q.</M>  Thus, it contains
 information about dispersion for every
 possible way of placing the ruler.
 This matrix is indeed the dispersion matrix we  defined above.

<HEAD2>Problem set <PS/></HEAD2>
<EXR>Consider the toy bivariate data set <M>(1, 2), (3, 4), (2.1, 3.1), (4, 5).</M>  Draw the
 scatterplot. Imagine that we are looking down as shown. Guess the variance as seen from that
 direction. Check your guess by actual computation.
<CIMG web="lookex.png"></CIMG>
</EXR>

<EXR>Let the dispersion matrix of <M>(X,Y)</M>  be <M><MAT>1 & 0\\0 & 2</MAT></M>. Find
 <M>\theta\in [0,\pi)</M>  such that <M>V(\cos (\theta) X + \sin(\theta) Y)</M>  is maximum. When is the variance minimum?</EXR>

<EXR>Let the dispersion matrix of <M>\v X</M>  be <M><MAT>2 & 0 & 0\\0 & 1 & 0\\0 & 0 & 3</MAT></M>. Find
a unit vector <M>\v \ell</M>  such that <M>V(\v \ell' \v X)</M>  is minimum. Is this <M>\v \ell</M>  unique?
</EXR>

<EXR>Consider the four scatterplots below. 
<CIMG web="covex.png"></CIMG>
They correspond to the following covariance matrices (in some order):
<D>C_1=<MAT>2.5 & 1\\1 & 2.5</MAT>, C_2=<MAT>4 & 0\\0 & 1</MAT>, C_3=<MAT>2.5 & -1\\-1 & 2.5</MAT>  \mbox{ and
 }C_4=<MAT>1 & 0\\0 & 4</MAT>.</D>
Which corresponds to which?
</EXR>
 <HEAD1>Properties of expectation, variance of random vectors</HEAD1>
The following facts are immediate from the definition.
<THM>
Let <M>\v X_{n\times 1}</M>  be a random vector with <M>E(\v X)=\v\mu</M>  and <M>V(\v X) = \Sigma.</M>  Then, for any
 matrix <M>A_{m\times n}</M>
  and any vector <M>\v b_{m\times 1}</M>, 
 we have
<OL>
<LI><M>E(A\v X+\v b) = A\v\mu+\v b</M>,</LI>
<LI><M>V(A\v X+\v b) = A\Sigma A'</M></LI>
</OL>
</THM> 
<PF>
Let <M>\v Y = A\v X+\v b.</M>  Then <M>\v Y = (Y_1,...,Y_m)'</M>, where <M>Y_i = \sum_j a_{ij}X_j + b_i.</M>  <XP>4</XP>Here I have
 denoted the <M>(i,j)</M>-th entry of <M>A</M>  by <M>a_{ij}.</M>  

Now compute <M>E(Y_i)</M>  and <M>\cov(Y_i,Y_j)</M>  directly to get the result. <XP/>

By the way, the <M>(i,j)</M>-th entry of <M>A\Sigma A'</M>  is <M>\sum_{r=1}^n\sum_{s=1}^n a_{ir} \sigma_{rs} a_{js}.</M>  
</PF>
<HEAD2>A little linear algebra</HEAD2>
You should already know the following definition from your Mathematics II course.

<DEFN name="Nonnegative definite (nnd) and positive definite (pd)">
A real, symmetricmatrix <M>A_{n\times n}</M>  is called <TERM>nonnegative definite (nnd)</TERM>  if 
<M>\forall \v\ell\in\rr^n~~\v\ell'A\v\ell\geq 0.</M>

It is called <TERM>positive definite (pd)</TERM>  if <M>\forall</M> nonzero 
<M> \v\ell\in\rr^n~~\v\ell'\Sigma\v\ell> 0.</M>
</DEFN>
Here is one important property of these matrices. 
<THM>
A real matrix <M>A</M>  is nnd if and only if <M>A = BB'</M>  for some matrix <M>B.</M>

A real matrix <M>A</M>  is pd if and only if <M>A = BB'</M>  for some nonsingular matrix <M>B.</M>
</THM>
<HEAD2>Back to probability theory</HEAD2>

<THM>
Any dispersion matrix is nnd. In other words, if <M>\Sigma_{n\times n}=V(\v X)</M>, then <M>\forall \v\ell\in\rr^n~~\v\ell'\Sigma\v\ell\geq 0.</M>
</THM>
<PF>
By the last theorem, <M>\v\ell'\Sigma\v\ell=V(\v\ell'\v X)\geq 0.</M>
</PF>

The converse is also true:
<THM>
If <M>\Sigma_{n\times n}</M>  is any nnd matrix, then it is <M>V(\v X)</M>  for some random vector
 <M>\v X_{n\times 1}.</M> 
</THM>
<PF>
Let <M>U_1,...,U_n</M>  be independent with <M>V(U_i)=1</M>  for all <M>i.</M>    Then <M>\v U=
 (U_1,...,U_n)'</M>  has <M>V(\v U) = I_n.</M>  

Since <M>\Sigma</M>  is nnd, hence <M>\Sigma = AA'</M>  for some <M>A_{n\times n}.</M>  

Let <M>\v X = A\v U.</M>  Then <M>V(\v X) = A I_n A' = AA' = \Sigma.</M> 
</PF>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>Show that for <M><MAT>a & b\\b & c</MAT></M>  to be a dispersion matrix, a necessary
 condition is that <M>b^2\leq ac.</M>  Is it a sufficient condition?</EXR>

<EXR>Show that <M>V(\v X)</M>  is singular if and only if <M>P(a_1X_1+\cdots+a_n X_n=c)=1</M>  for
 some constants <M>a_i</M>'s and <M>c</M>  such that not all <M>a_i</M>'s are zero.</EXR>


<EXR>If <M>\v X=(X,Y)'</M>  and <M>V(\v X)</M>  is a singular, then how will a scatterplot of
 replications from <M>\v X</M>  look like? Here we are running the random experiment underlying <M>\v
 X</M>  repeatedly, and getting <M>(X_1,Y_1), (X_2,Y_2),...,(X_n,Y_n),</M>  and plotting these
 <M>n</M>  points as a scatterplot. Your job is to identify some geometric pattern in the plot. </EXR>

<EXR>If <M>\cov(\v X_{n\times 1}) = \Sigma,</M>  and <M>\v b</M>  is a fixed
 <M>n</M>-dimensional vector, then what will be the dispersion matrix of <M>\v X+\v b</M>?</EXR>

<EXR>If <M>\cov(\v X_{n\times 1}) = \Sigma,</M>  and <M>\v a</M>  and <M>\v b</M>  are fixed
 <M>n</M>-dimensional vectors, then find <M>\cov(\v a'\v X,\v b' \v X).</M></EXR>

<EXR>If <M>\cov(\v X_{n\times 1}) = \Sigma,</M>  and <M>A_{r\times n}</M>  and <M>B_{s\times n}</M>  are fixed
matrices, then find a <M>r\times s</M>  matrix whose <M>(i,j)</M>-th entry is the covariance
 between the <M>i</M>-th entry of <M>A\v X</M>  and the <M>j</M>-th entry of <M>B\v X.</M>
</EXR>

<EXR>If <M>\cov(\v X) = \Sigma,</M>  and <M>\v a</M>  and <M>\v b</M>  are fixed
 <M>n</M>-dimensional vectors, then show that <M>\v a' \Sigma \v b =\v b' \Sigma \v a.</M>
Is this true for <I>any</I> symmetric <M>\Sigma</M>?
</EXR>

<EXR>Let <M>V(\v X)=\Sigma</M>  be a pd matrix with  Cholesky square root <M>A.</M> What is the
 disperstion matrix of <M>(A ^{-1})'\v X</M>? </EXR>
<HEAD1>Project: Face recognition</HEAD1>
</NOTE>@}
