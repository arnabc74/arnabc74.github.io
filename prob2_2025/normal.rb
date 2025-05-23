 @{<NOTE>
<M>\newcommand{\v}[1]{\boldsymbol{#1}}</M>
<M>\newcommand{\k}[1]{\chi^2_{(#1)}}</M>
<TITLE>Multivariate normal and related distributions</TITLE>
<HEAD1 u="https://youtu.be/3EQggZLAYKY">Multivariate normal distribution (part 1)</HEAD1>


Here we shall discuss the most commonly used multivariate distribution, the multivariate normal distribution. 

First we shall recast the defnition of univariate normal from the last chapter to a form suitable for generalisation to higher
 dimensions. Instead of defining <M>N(\mu,\sigma^2)</M>  via density, we shall start with just <M>N(0,1)</M>  and define
 it via the density <M>[[1][\sqrt{2\pi}]] e^{-x^2/2},~~x\in\rr.</M>  Then for any <M>\sigma^2 \geq 0</M>  we can define <M>N(\mu,\sigma^2)</M> 
 as the distribution of <M>\sigma X+\mu,</M>  whre <M>X\sim N(0,1).</M>  Convince yourself that this is equivalent to what
the definition of univariate normal given  in the last chapter, and that this includes the <M>\sigma^2=0</M>  case also.
 
Now we are ready for the multivariate generalisation. For <M>N(\mu, \sigma^2)</M>  the parameters were <M>\mu\in\rr</M> 
 and <M>\sigma^2\geq 0.</M>  In <M>m</M>-dim our parameters will be a vector <M>\v\mu\in\rr^m</M>  and a NND matrix
 <M>\Sigma_{m\times m}. </M>  We shall need the following fact about NND matrices from linear algebra:
<THM>
A matrix <M>\Sigma_{m\times m}</M>  is NND if and only if <M>\Sigma = AA'</M>  for some <M>A_{m\times n}</M>  for some <M>n\in\nn.</M>
</THM>
<PF>Should be covered in your Vectors and Matrices course.</PF>

At last we come to the definition of multivariate normal.
<DEFN name=" Multivariate normal">
For any <M>\v\mu\in\rr^m</M>  and any NND <M>\Sigma_{m\times m}</M>  we define  <M>N_m(\v\mu, \Sigma)</M>, the <M>m</M>-dimensional
 <TERM>multivariate normal distribution</TERM>  as the distribution of 
 <M>\v Y=A\v X + \v \mu</M>, where <M>\v X_{m\times 1}</M>  has IID <M>N(0,1)</M>  components, and
 <M>A_{m\times m}</M>  is any matrix
 such that <M>\Sigma = AA'.</M>
</DEFN>
The only point that you might feel uncomfortable about is the choice of <M>A.</M>  In the univariate
 case, obtaining <M>\sigma</M> 
 from <M>\sigma^2</M>  was straightforward: we could just take the (unique) nonnegative square root. But in
 the multivariate set up
 there are, in general, infinitely many choices for <M>A</M>  such that <M>\Sigma=AA'.</M>  Which
 one should we take? Fortunately
 it does not matter here, because as we are going to show now, any choice leads to the same distribution of <M>A\v X+\v\mu.</M> 
 
For this purpose we shall use characteristic functions. 
<HEAD2>Problem set <PS/></HEAD2>
<EXR>Follow the definition to obtain the density of <M>\v Y = <MAT>Y_1\\Y_2</MAT>\sim N_2(*(<MAT>10\\20</MAT>,<MAT>1 & 0\\0 & 4</MAT>)*).</M>
You may use <M>A = <MAT>1 & 0\\0 & 2</MAT>.</M>  
</EXR>

<HEAD1 u="https://youtu.be/EJd_YvDzI_s">Multivariate normal distribution (part 2)</HEAD1>
<HEAD2>Justifying the defintion using characteristic function</HEAD2>
In the multivariate set up, characteristic function is  defined as follows.

<DEFN name="Multivariate characteristic function">
Let <M>\v U = (U_1,...,U_m)'</M>  be a random vector. Then its <TERM>characteristic function</TERM>  is defined as <M>\xi:\rr^m\to\cc</M> 
 where
<D>\xi(t_1,...,t_m)\equiv \xi(\v t) = E(e^{i\v t'\v U}).</D>
</DEFN>
The following theorem, which is an obvious analogue for the corresponding univariate theorem, is what makes characteristic function
 useful.
<THM>
For any <M>\rr^m</M>-valued random vector, its characteristic function exists. Also, the characteristic function uniquely
 determines the distribution.
</THM>
<PF>Not in this course.</PF>
Now let us return to the definition multivariate normal. 

<HEAD2>Back to normal</HEAD2>
We shall take any <M>A</M>  with
 <M>\Sigma=AA',</M>  and show that the 
 characteristic function of <M>\Sigma\v X+\v\mu</M>  will depend on <M>A</M>  only through <M>AA'=\Sigma.</M>  So the particular
 choice of <M>A</M>  will not matter.

We shall start with the characteristic function of  <M>\v X</M>:
<D>E(\exp(i\v t'\v X) = E(e^{it_1X_1+\cdots it_nX_n}) =E(e^{it_1X_1}\cdots e^{it_nX_n})=
 E(e^{it_1X_1})\cdots E(e^{it_nX_n})) = e^{-t_1^2/2}\cdots e^{-t_n^2/2} = \exp(*(-[[12]]\v t'\v t)*).</D> 
So the characteristic function of <M>A\v X + \v \mu</M>  is 
<MULTILINE>
E(\exp(i\v t'(A\v X+\v \mu)) 
& = & E(\exp(i((A'\v t)'\v X+\v t'\v \mu))\\
& = & \exp(*(-[[12]]\v t'AA'\v t+i\v t'\v\mu)*)\\
& = & \exp(*(-[[12]]\v t'\Sigma\v t+i\v t'\v \mu)*),
</MULTILINE>
which indeed does not involve <M>A.</M> 

As a by product of the above steps we also get the characteristic function of <M>N_m(\v\mu,\Sigma).</M> 
<HEAD2>Problem set <PS/></HEAD2>
<EXR>Write down the characteristic function of <M>N_2(\v\mu,\Sigma)</M>  where <M>\v\mu=<MAT>1\\2</MAT></M>  and <M>\Sigma=<MAT>2&1\\1&3</MAT>.</M></EXR>

<EXR>There are algorithms that will take <M>\Sigma</M>  as input and produce an <M>A</M>  as
 output suh that <M>\Sigma=AA'.</M>  The Cholsesky (read as ko-less-key) decomposition algorithm is
 one such (implemeted in the R function <TT>chol</TT>). But for small matrices, it is possible to
 construct <M>A</M>  by hand. Suppose <M>\Sigma=<MAT>2&1\\1&3</MAT>.</M>  Find a lower triangular <M>A</M>  with <M>\Sigma=AA'.</M> </EXR>

<EXR>Find <M><M>\v\mu</M> </M>  and <M>\Sigma</M>  if <M>N_2(\v\mu,\Sigma)</M>  has characteristic function
 <M>\xi(t_1,t_2) = \exp(-2t_1^2-t_2^2+t_1t_2)</M>  for <M>(t_1,t_2)\in\rr^2.</M></EXR>
<EXR>True or false: The characteristic function of <M>N_m(\v\mu,\Sigma)</M>  is real-valued if and only if <M>\v\mu=\v0.</M></EXR>

<HEAD1 u="https://youtu.be/r5R0ZXMAOYw">Multivariate normal distribution (part 3)</HEAD1>
 
<THM>
If <M>\v Y\sim N_m(\v \mu, \Sigma)</M>  and <M>B_{n\times m}</M>  and <M>\v c_{n\times 1}</M>  are
 fixed, then <M>\v Z = B\v Y+\v c\sim N_n(B\v \mu + \v c, B\Sigma B').</M>
</THM>
<PF>
Be careful that the variance matrix is <M>B\Sigma B'</M>  and not <M>B'\Sigma B.</M>

Let <M>\Sigma = AA'.</M>  Then, by definition,  <M>\v Y</M>  has the same distribution as that of <M>A\v
 X+\v\mu,</M>  where <M>\v X\sim N_m(\v,I).</M> 
 
So <M>B\v Y+\v c</M>  has the same distribution as that of <M>B(A\v X+\v\mu)+\v c = BA\v X + (B\v\mu+\v c).</M>  This is,
 by definition, <M>N_n(B\v\mu+\v c, BAA'B') = N_n(B\v\mu+\v c, B \Sigma B').</M>
</PF>
The theorem could also be proved using characteristic function. 

<HEAD2>Two corollaries</HEAD2>
Here is the first corollary.
<THM>
If <M>\v X = (X_1,...,X_n)'\sim N_n(\v \mu,\Sigma),</M>  then any subvector of  <M>\v X</M>  has multivariate normal distribution
 with the corresponding subsector of <M>\v \mu</M>  and corresponding principal submatrix of <M>\Sigma.</M>
</THM>
<PF>
Extracting a subvector is same as premultiplying by a matrix. The matrix is obtained by selecting appropriate rows of the
 identity matrix. 

Apply the affine transform result with <M>B=</M> this matrix and <M>\v c=\v0</M>  to prove this theorem.
</PF>

The second corollary is the multivariate analogue of univariate standardisation: If <M>X\sim N(\mu,\sigma^2)</M>  for <M>\sigma^2>0,</M> 
 then <M>[[X-\mu][\sigma]]\sim N(0,1).</M>

<THM>
Let <M>\v X\sim N_n(\v\mu,\Sigma)</M>  where <M>\Sigma</M>  is nonsingular. Let <M>\Sigma = AA'</M>  for <M>A_{n\times n}.</M>
Then <M>A ^{-1} (\v X-\v\mu)\sim N_n(\v0,I).</M>
</THM>
<PF>
Direct application of the theorem. Just notice that <M>A</M>  must be nonsingular, because had it
 been singular,  <M>AA'</M> 
 would have been singular, as well. 
</PF>

<HEAD2>Problem set <PS/></HEAD2>
<COMMENT>
A = matrix(sample(5,25,rep=T),5,5)
A%*%t(A)
mat2lat(A%*%t(A))
</COMMENT>
<EXR>Let 
<D><MAT>X_1\\X_2\\X_3\\X_5\\X_5</MAT>\sim N_5(*(<MAT>1\\2\\3\\4\\5</MAT>,<MAT>50 & 42 & 41 & 48 & 27\\ 42 & 40 & 38 & 40 & 25\\
 41 & 38 & 51 & 53 & 39\\ 48 & 40 & 53 & 61 & 39\\ 27 & 25 & 39 & 39 & 38</MAT>)*). </D>
Find the distribution of <M>\v Y = (2X_1-3X_4+X_5,~~X_1+X_4)'.</M>

[Hint: Don't struggle with the full <M>5\times5</M>  matrix.]
</EXR>
<EXR>
If <M>X_1,...,X_n</M>  are IID <M>N(0,1).</M>  Let <M>\v X = (X_1,...,X_n)'.</M>  Let <M>A_{n\times n}</M>  be any orthogonal
 matrix. Then show that the components of <M>A\v X</M>  are again IID <M>N(0,1).</M>
<ANS>
Here <M>\v X\sim N_n(\v0,I).</M>  So <M>A\v X\sim N_n(A\v0,AIA') = N_n(\v0,I),</M>
since <M>A</M>  is orthogonal.
</ANS></EXR>
<HEAD1 u="https://youtu.be/wFf2WTW_5M0">Multivariate normal distribution (part 4)</HEAD1>
<HEAD2>Mean and dispersion</HEAD2>
It is easy to find the mean vector and variance matrix of a multivariate normal distribution:
<THM>
If <M>\v Y\sim N_m(\v\mu,\Sigma)</M>, then  <M>E(\v Y)=\v \mu</M>   and <M>V(\v Y) = \Sigma.</M> 
</THM>
<PF>
Let <M>\Sigma = AA'.</M>  Then <M>\v Y</M>  has the same distribution as <M>A\v X+\v \mu</M>  where the <M>\v X</M>  has
 components IID <M>N(0,1).</M>

So <M>E(\v X) = \v 0</M>  and <M>V(\v X) = I.</M>  

Hence <M>E(\v Y) = E(A\v X+\v\mu) = A E(\v X)+\v\mu = \v\mu,</M>
and <M>V(\v Y) = V(A\v X+\v\mu) = A V(\v X)A' = AA'=\Sigma.</M> 
</PF>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>Find <M>E(\v X)</M>  and <M>V(\v X)</M>  if <M>\v X</M>  has characteristic function
 <M>\xi(t_1,t_2) = \exp(-2t_1^2-t_2^2+t_1t_2)</M>  for <M>(t_1,t_2)\in\rr^2.</M></EXR>

<EXR>If <M>\v X\sim N_m(\v\mu,\Sigma)</M>  and the components of <M>\v X</M>  are all independent,
 then what can you say about the structure of <M>\Sigma?</M></EXR>

<HEAD1 u="https://youtu.be/Y9Y1bHsltoA">Multivariate normal distribution (part 5)</HEAD1>

<HEAD2>Independent vs zero covariance</HEAD2>
If two random variables are
independent, they must also have covariance zero. However, the converse is not true in general. For multivariate
 normal the converse is also
 true. For this we need the following result about characteristic function:

<THM>
If <M>\v X</M>  and <M>\v Y</M>  are two random vectors with characteristic functions <M>\xi_X(\v s)</M>  and
 <M>\xi_Y(\v t)</M>, then the characteristic function of <M>\v Z = <MAT>\v X\\\v
 Y</MAT></M>  is <M>\xi_Z(\v s,\v t)=\xi_X(\v s)\xi_Y(\v t)</M>  if and only if <M>\v X</M>  and
 <M>\v Y </M> are independent.
</THM>
<PF>Direct application of definition.</PF>

<THM>If 
<D>\v X = <MAT>\v X_1\\\v X_2</MAT>'\sim N_n(*(\underbrace{<MAT>\v \mu_1\\\v \mu_2</MAT> }_{\v\mu},
\underbrace{<MAT>\Sigma_{11} &  \Sigma_{12}\\\Sigma_{12}' & \Sigma_{22}</MAT> }_\Sigma)*),</D>  then
 <M>\v X_1</M>  and <M>\v X_2</M>  are
 independent if and only if <M>\Sigma_{12} = O.</M></THM>
<PF>
The characteristic function of <M>\v X</M>  is 
<M>\xi_{\v X}(\v t)=\exp(*(-[[12]]\v t'\Sigma\v t+i\v t'\v \mu)*).</M>

Writing <M>\v t =<MAT>\v t_1\\\v t_2</MAT>, </M>  we have
<D>\v t'\Sigma\v t =<MAT>\v t_1' & \v t_2'</MAT><MAT>\Sigma_{11} &  \Sigma_{12}\\\Sigma_{12}' & \Sigma_{22}</MAT><MAT>\v t_1\\\v t_2</MAT>
= \v t_1'\Sigma_{11}\v t_1+ \v t_1'\Sigma_{22}\v t_2,</D>
since <M>\Sigma_{12}=O.</M>

Again
<D>\v t'\v \mu = <MAT>\v t_1' & \v t_2'</MAT><MAT>\v \mu_1 & \v \mu_2</MAT>  = \v t_1'\v \mu_1+\v t_2'\v \mu_2</D>
So the characteristic function factorises as
<D>\xi_{\v X}(\v t)\equiv \xi_{\v X_1}(\v t_1)\xi_{\v X_1}(\v t_2),</D>
and hence <M>\v X_1</M>  and <M>\v X_2</M>  are independent, as required.
</PF>

An important corollary is the following result.

<THM>If <M>\v X\sim N_n(\v\mu, I)</M>  and <M>A_{p\times n}</M>  qr <M>B_{q\times n}</M>  are any
 two fixed matrices with <M>AB'=O,</M>  then <M>A\v X</M>  and <M>B\v X</M>  must be independent.</THM>
<PF>
Immediate rom the theorem (try it!).
</PF>

A further corollary is 
<THM>Suppose that <M>\v X\sim N_n(\v\mu, I)</M>  and let <M>S, T</M>  be two mutually orthogonal
 subspaces of <M>\rr^n.</M>  Let <M>\v Y</M> and <M>\v Z</M>  be orthogonal projections of <M>\v
 X</M>  on <M>S</M>  and <M>T,</M>  respectively. Then <M>\v Y</M>  and <M>\v Z</M>  must be independent.</THM>
<PF>

Let <M>P_S</M>  and <M>P_T</M>  be the orthogonal projection operators for <M>S</M>  and <M>T.</M>
  Then they are both symmetric idempotent matrices with <M>P_SP_T = 0.</M>

Now apply the last theorem.
</PF>
<HEAD2>Problem set <PS/></HEAD2>


<EXR>Let <M>\v X\sim N_n(\v\mu,I).</M>  Let <M>\v a, \v b\in\rr^n</M>  be orthogonal to each
 other. Show that <M>\v a'\v X</M>  and <M>\v b'\v X</M>  must be independent.</EXR>


<EXR>Let <M><MAT>\v X_{m\times 1}\\\v Y</MAT> \sim N_{m+n}(*(<MAT>\v \mu_1\\\v\mu_2</MAT>, <MAT>A_{m\times m} & B\\B' &
 C</MAT>)*).</M>  What is the distribution of <M>\v X</M>  and <M>\v Y</M>  separately? </EXR>

<EXR>(Continuation of the last problem) If <M>A</M> is nonsingular, then show that <M>\v
 Y-B'A ^{-1}\v X</M>  and
 <M>\v X</M>  are independent.
</EXR>

<EXR>(Continuation of the last problem) Write <M>\v Y = B'A ^{-1} \v X + (\v Y-B'A ^{-1}\v X)</M>  and 
 show that the conditional distribution of <M>\v Y</M>  given <M>\v X=\v x</M>  is 
<M>N_n (\v \mu_2+B'A ^{-1}(\v x-\v\mu_1), C-B'A ^{-1} B).</M>  [Does this remind you of multiple regression?]
<ANS>
Let us write the condl distribution as <M>Distr(\v Y|\v X=\v x)</M>.

Then 
<MULTILINE>
Distr(\v Y|\v X=\v x) 
& = & Distr(B'A ^{-1} \v X + (\v Y-B'A ^{-1}\v X)|\v X=\v x)\\
& = & Distr(B'A ^{-1} \v x + (\v Y-B'A ^{-1}\v X)|\v X=\v x)\\
& = & B'A ^{-1} \v x +Distr( \v Y-B'A ^{-1}\v X|\v X=\v x)\\
& = & B'A ^{-1} \v x +Distr( \v Y-B'A ^{-1}\v X)<SINCE><M>\because</M>  indep</SINCE>
</MULTILINE>
Now 
<D>\v Y-B'A ^{-1}\v X = <MAT>-B A ^{-1} & I </MAT><MAT>\v X\\\v Y</MAT>.</D>
So <M>Distr( \v Y-B'A ^{-1}\v X)</M>  may be computed easily.
</ANS>
</EXR> 

<EXR>Let <M>\v X\sim N_n(\v0,I).</M>  We take some subspace of <M>\rr^n,</M>  and project <M>\v
 X</M>  on it to get a vector <M>\v Y.</M>  Let <M>\v Z = \v X-\v Y.</M>  The situation is
 depicted pictorially below.
<CIMG web="projrej.png"></CIMG>
Show that <M>\v Y</M>  and <M>\v Z</M>  are independent.
</EXR>

<HEAD1 u="https://youtu.be/rawtkxZq4fA">Multivariate normal distribution (part 6)</HEAD1>
As we have already mentioned, a multivariate normal distribution need not always have a density. However, for an important
 special case, it does. This case is called the nonsingular
 case, while the other case is called singular. The  case is determined by the <M>\Sigma</M> 
 matrix. If it is nonsingular, then we have density, else not.  We prove these next.

<HEAD2>Nonsingular: When density exists</HEAD2>
<THM>If <M>\Sigma</M>  is a nonsingular  matrix, then <M>N_m(\v\mu,\Sigma)</M>  has density  
<D>[[1][\sqrt{(2\pi)^n det(\Sigma)}]]\exp(*(-[[12]](\v y-\v\mu)'\Sigma ^{-1}(\v y-\v\mu))*)\mbox{ for }\v y\in\rr^n,</D> 
</THM>
<PF>
Since <M>\Sigma</M>  is NND, we can write <M>\Sigma = AA'</M>  for some 
 <M>A_{m\times m}.</M> 
 So <M>N_m(\v\mu,\Sigma)</M> 
 is the distribution of <M>A\v X+\v\mu,</M>  where <M>\v X</M>  has IID <M>N(0,1)</M>  components.

Clearly, the density of <M>\v X</M>  is 
<D>[[1][\sqrt{(2\pi)^n}]]\exp(*(-[[12]]\v x'\v x)*)\mbox{ for }\v x\in\rr^n.</D>
Now, since <M>\Sigma</M>  is nonsingular, so must be <M>A</M>, and hence
 the transform <M>\v Y =  A\v X+\v \mu</M>  is a bijection. 

The inverse transform is <M>\v X = A ^{-1}(\v Y-\v\mu).</M>

The Jacobian of this inverse transform is <M>A ^{-1}.</M>


So the Jacobian formula
 gives (check!) the following density for <M>\v Y = A\v X+\v \mu</M>
<D>[[|det(A ^{-1})|][\sqrt{(2\pi)^n}]]\exp(*(-[[12]](\v y-\v\mu)'(A ^{-1})'A ^{-1}(\v y-\v\mu))*)\mbox{
 for }\v y\in\rr^n.</D> 
Since <M>\Sigma = AA',</M>  hence  <M>|det(A ^{-1})| = [[1][\sqrt{det(\Sigma)}]]</M>  and <M>(A ^{-1})'A ^{-1} = (AA') ^{-1} = \Sigma ^{-1}.</M>

So the density may be written as
<D>[[1][\sqrt{(2\pi)^n det(\Sigma)}]]\exp(*(-[[12]](\v y-\v\mu)'\Sigma ^{-1}(\v y-\v\mu))*)\mbox{ for }\v y\in\rr^n,</D> 
as required.
</PF>
<HEAD2>Singular: when density does not exist</HEAD2>
The other half does not even need any normality assumption.

<THM>If <M>V(\v Y)</M>  is a singular  matrix, then <M>\v Y</M>  cannot have a density.
</THM>
<PF>
Let <M>\v Y</M>  have
 dispersion matrix <M>\Sigma</M> 
 which is singular. 

Let, if possible, <M>\v Y</M>  have density.

Then <M>\exists \v a\neq\v0~~\Sigma \v a = \v 0.</M>  So <M>\v a'\Sigma \v a = 0.</M>   

But <M>\v a'\Sigma \v a = V(\v a' \v Y),</M>  hence we see that <M>\v a'\v Y</M>  must be a constant with probability 1.
 
We can extend <M>\{\v a\}</M>  to a basis <M>\{\v a,...\}</M>  of <M>\rr^m.</M> 
 
Let <M>P = <MAT>\v a & \cdots </MAT></M>  be the matrix with these as columns.

Then <M>P</M>  is nonsingular, and so <M>\v Z = P'\v Y</M>  is a bijective transform of <M>\v Y.</M>

So, by the Jacobian formula, <M>\v Z</M>  must also have joint density. Then its first component <M>\v a'\v Y</M>  must also
 have a (marginal) density. But that is impossible, since it is a degenerate random variable.

Hence the result. 
</PF>

<HEAD2>Problem set <PS/></HEAD2>
<EXR>Describe <M>N_2(\v0,I)</M>  distribution.</EXR>

<EXR>Let
<D><MAT>X\\Y</MAT> \sim N_2(*(<MAT>1\\2</MAT>, <MAT>1 & -1\\-1 & 1</MAT>)*).</D>
If we take data <M>(x_1,y_1),...,(x_n,y_n)</M>  from <M>(X,Y)</M>, what will the scatterplot look like?
</EXR>


<HEAD1 u="https://youtu.be/3r6klLqHPpA"><M>\chi^2</M>  distribution</HEAD1>
Starting from this section, we shall discuss some distributions related to the normal distribution.
<DEFN name="$\chi^2$">If <M>X_1,...,X_n</M>  are IID <M>N(0,1)</M>  then the distribution of <M>\sum_1^n X_i^2</M> 
 is called <TERM>chi-square distribution with degrees of freedom</TERM> 
 <M>n.</M>  We write 
<D>\sum_1^n X_i^2\sim \chi_{(n)}^2.</D>
</DEFN>
<THM>
<M>\k n</M>  is the same as <M>Gamma(*([[12]],[[n2]])*).</M>
</THM>
<PF>
Let <M>X_1,...,X_n</M>  be IID <M>N(0,1).</M>

Then <M>X_1^2</M>  has CDF <M>F(\cdot),</M>  where <M>F(a)=0</M>  for <M>a<0</M>  and for <M>a\geq 0</M>  we have
<D>F(a) = P(X_1^2\leq a) =[[1][\sqrt{2\pi}]] \int_{-\sqrt a}^{\sqrt a} e^{-x^2/2}\, dx=[[2][\sqrt{2\pi}]] \int_0^{\sqrt a} e^{-x^2/2}\, dx.</D>
Differentiating wrt <M>a</M>  we get the density
<D>f(a) = F'(a) = [[2][\sqrt{2\pi}]] e^{-a/2}\mbox{ for }a>0.</D>
We immediately recognise it as the <M>Gamma(*([[12]],[[12]])*)</M>  density.

So <M>X_i^2\sim Gamma(*([[12]],[[12]])*)</M>   for <M>i=1,2,...,n.</M>

Also they are independent. 

So, by the additivity property of the <M>Gamma</M>  distribution, we have 
 <M>\sum_1^n X_i^2 \sim  Gamma(*([[1][2]],[[n2]])*).</M>

Hence <M>\k n\equiv  Gamma(*([[1][2]],[[n2]])*),</M>   as required. 
</PF>

Since we have already learned that the characteristic function of <M>Gamma(p,\alpha)</M>  is <M>(*([[p][p-it]])*)^\alpha,</M> 
 hence we have the following characteristic function for the <M>\k n</M>  distribution:

<THM name="Characteristic function of $\chi^2_{(n)}$">
The characteristic function of <M>\k n</M>  is <M>\xi(t) = (1-2it)^{-n/2}</M>  for <M>t\in\rr.</M>
</THM>
<PF>
Put <M>p=[[12]]</M>  and <M>\alpha=[[n2]]</M>  in the characteristic function of <M>Gamma(p,\alpha).</M>
</PF>
<HEAD1 u="https://youtu.be/xDLG6SCBg_Q">Geometry of <M>\chi^2_{(k)}</M></HEAD1>
If we consider a random vetor <M>\v X</M>  in <M>\rr^k</M>  with IID <M>N(0,1)</M>  components, <M>\|\v X\|^2\sim \k k.</M> 
 This is little more than the definition. 

<THM>Now let be <M>\v X\sim N_n(\v 0, I).</M>  Let <M>S</M>  be any <M>k</M>-dimensional subspace of
 <M>\rr^n. </M>  Consider the orthogonal projection <M>\v Y</M>  of <M>\v X</M>  onto <M>S.</M> Then <D>\|\v Y\|^2\sim \k k.</D> 
 </THM>
<PF>
We take any ONB of <M>S</M>  and extend it to an ONB of <M>\rr^n. </M>  Pack the ONB as rows to get an orthogonal matrix
 <M>Q.</M>  

Then <M>\v Z=Q\v X\sim N_n(\v 0, I).</M>

Also <M>\|\v Y\|^2 = \sum_1^k Z_i^2\sim\k k,</M>  as required.
</PF>


<DEFN name="Non-central $\chi^2$">
If <M>X_1,...,X_n</M>  are independent <M>N(\mu_i,1),</M>  then the distribution <M>\sum X_i^2</M>  is
 called <TERM>noncentral <M>\k n</M>  with noncentralty parameter <M>\sum_i\mu_i^2.</M></TERM> 
</DEFN>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>Let <M>\v X\sim N_n(\v \mu, I).</M>  Let <M>S</M>  be any <M>k</M>-dimensional subspace
 containing <M>\v \mu.</M>  Then show that the orthogonal projection of <M>\v X</M>  onto
 <M>S^\perp</M>  must have <M>\k {n-k}</M>  distribution.</EXR>

<EXR>(Continuation of the last problem) How will the answer to the last problem change if <M>\v\mu\not\in S?</M></EXR>
<HEAD1 u="https://youtu.be/BRwFMYfb4rE">Sampling distributions for normal sample</HEAD1>

<THM>
Let <M>X_1,...,X_n</M>  be a random sample (i.e., IID) from <M>N(\mu, \sigma^2).</M> We consider
 the sampe mean <M>\bar X=[[1n]]\sum _1^nX_i</M>  and sample variance <M>S^2=[[1n]]\sum_1^n (X_i-\bar X)^2.</M>   Then 
<OL>
<LI><M>\bar X\sim N(*(\mu,[[\sigma^2][n]])*)</M></LI>
<LI><M>[[nS^2][\sigma^2]]\sim \k {n-1}</M></LI>
<LI><M>\bar X</M>  and <M>S^2</M>  are independent.</LI>
</OL>
</THM>
<PF>Without loss of generality, we take <M>\mu=0</M>  and <M>\sigma=1.</M>
<BECAUSE>Once we have proved the <M>\mu=0</M>  case, we can work with <M>\mu+\sigma X_i</M>  to
 get the general form.</BECAUSE>
In <M>\rr^n</M>  consider the subspace <M>V=span\{\v 1\},</M>  where <M>\v 1</M>  is the vector of al <M>1</M>'s. Clearly,
 <M>dim(V)=1</M>  and <M>dim(V^\perp)=n-1.</M>

We have learnt that in <M>\rr^n</M>  the component (i.e., orthogonal projection) of one vector <M>\v v</M>  along
 another vector <M>\v u</M>  is <M>[[\v u'\v v][\v u'\v u]]\v u.</M> 

So the orthogonal projection of <M>\v X</M>  along <M>\v 1</M>  (i.e., on <M>V</M>) is <M>\bar X\v 1.</M>  

Hence the orthogonal projection of <M>\v X</M>  on <M>V^\perp</M>  is  
<D>\v Y = \v X-\bar X\v 1 = <MAT>X_1-\bar X\\\vdots\\X_n-\bar X</MAT>.</D>
So from earlier result, we immediately see that these two projections must be independent.

Now <M>\bar X</M>  is a function of the first projection, while <M>S^2</M>  is a function of the second. So they are independent.

Also <M>nS^2 = \|\v Y\|^2\sim \k{n-1}.</M>

The distribution of <M>\bar X</M>  is obvious from an earlier theorem.
</PF>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>
Same set up as in the theorem above. What will  the distribution of <M>\sum_1^n (X_i-a)^2</M> be, where <M>a\in\rr</M>  is
a fixed number?
</EXR>
<HEAD1 u="https://youtu.be/mv62pUoznVI"><M>t</M>  distribution</HEAD1>
<DEFN name="$t$-distribution">
If <M>X\sim N(0,1)</M>  and <M>Y\sim\k n</M>  and they are independent, then the distribution of <M>X/(\sqrt{Y/n})</M>  is
 called <M>t</M>-distribution with <M>n</M>  degrees of freedom. Here <M>n>0</M>  need not be an integer.
</DEFN>
Let us derive density of <M>t</M>-distribution with <M>n</M>  degrees of freedom. We shall do this step by step. 

From <M>Y</M>  we shall pass on to <M>Z = \sqrt{[[Yn]]}</M>  and then to <M>[[XZ]].</M>  

Y has density <M>f_Y(y) =<CASES>\mbox{const } e^{-[[y2]]}y^{[[n2]]-1}<IF>y>0</IF> 0<ELSE/></CASES> </M>

The transform to go from <M>Y</M>  to <M>Z</M>  is <M>z = h(y) = \sqrt{[[yn]]}</M>  with inverse <M>y = h ^{-1}(z) = n z^2.</M> 
 
Hence, by the Jacobian formula, <M>Z</M>  has density
<D>f_Z(z) = 2nz f_Y(nz^2) = <CASES>\mbox{const } e^{-nz^2/2} z^{n-2}<IF>z>0</IF> 0<ELSE/></CASES></D>
Next we shall employ the quotient formula to find density of <M>T = [[XZ]]</M>  as 
<MULTILINE>
f_T(t) 
& = & \int_0^\infty u f_X(tu) f_Z(u)\, du\\
& = & \mbox{const} \int_0^\infty u e^{-t^2u^2/2} e^{-nu^2/2} u^{n-2}\, du\\
& = & \mbox{const} \int_0^\infty  u^{n-1} e^{-(t^2+n)u^2/2}\, du.
</MULTILINE>
Substituting <M>v = [[u^2][2]]</M>  we have 
<MULTILINE>
& = & \mbox{const} \int_0^\infty  v^{[[n-1][2]]} e^{-(t^2+n)v}\, dv\\
& = & \mbox{const} \int_0^\infty  v^{[[n+1][2]]-1} e^{-(t^2+n)v}\, dv\\
& = & \mbox{const } \Gamma(*([[n+1][2]])*) (t^2+n)^{-[[n+1][2]]}
& = & \mbox{const } (t^2+n)^{-[[n+1][2]]}.
</MULTILINE>
If you keep track of the constants, you will find that it is
<D>[[\Gamma(*([[n+1][2]])*)][\sqrt{n\pi}\Gamma(*([[n][2]])*)]]\times n^{[[n+1][2]]}.</D>
It should not be difficult to see that <M>t</M>-density is symmetric around 0. The densities are much like the <M>N(0,1)</M> 
 density. They lie somewhere in-between the Cauchy density and <M>N(0,1)</M>  density. As the degrees of freedom increase
 to <M>\infty,</M>  the <M>t</M>-distribution approaches <M>N(0,1).</M>  For degrees of freedom more than 40, the <M>t</M>-density
 is virtually indisguishable from that of <M>N(0,1)</M>  density.

<HEAD2>Problem set <PS/></HEAD2>
<EXR>Let <M>X_1,...,X_n</M>  be a random sample from <M>N(\mu,\sigma^2).</M>  Then what is the distribution of 
<D>[[\sqrt n(\bar X-\mu)][\sqrt{\sum(X_i-\bar X)^2/(n-1)}]]?</D>
</EXR>


<HEAD1 u="https://youtu.be/xTL6asmWxA8"><M>F</M>  distribution</HEAD1>
<DEFN name="$F$-distribution">
If <M>X\sim \k m</M>  and <M>Y\sim \k n</M>  are independent random variables, then the distribution of <M>[[X/m][Y/n]]</M>  is
 called <M>F</M> -distribution with numerator degrees of freedom <M>m</M>  and denominator degrees of freedom <M>n.</M>
</DEFN>
The density of <M>X</M>  is <M>f_X(x) =<CASES>\mbox{const }x^{[[m2]]-1}e^{-[[x2]]}<IF>x>0</IF> 0<ELSE/></CASES> </M>

Similarly, 
the density of <M>Y</M>  is <M>f_Y(x) =<CASES>\mbox{const }y^{[[n2]]-1}e^{-[[y2]]}<IF>y>0</IF> 0<ELSE/></CASES> </M>

Hence density of <M>Z = [[XY]]</M>  is 
<MULTILINE>
f_Z(z)
& = & \int_0^\infty u f_X(zu)f_Y(u)\, du\\
& = & \mbox{const}\int_0^\infty u (zu)^{[[m2]]-1}e^{-[[zu][2]]} u^{[[n2]]-1}e^{-[[u2]]}\, du\\
& = & \mbox{const }z^{[[m2]]-1}\int_0^\infty  u^{[[m+n][2]]-1}e^{-[[z+1][2]]u}\, du\\
& = & \mbox{const }z^{[[m2]]-1}\Gamma(*([[m+n][2]])*) (*([[z+1][2]])*)^{-[[m+n][2]]}\\
& = & \mbox{const }z^{[[m2]]-1}(z+1)^{-[[m+n][2]]}.
</MULTILINE>
Hence the density of <M>[[nm]]Z</M>  is 
<D>f(x) =<CASES>\mbox{const }x^{[[m2]]-1}(mx+n)^{-[[m+n][2]]}<IF>x>0</IF> 0<ELSE/></CASES> </D>

<HEAD2>Problem set <PS/></HEAD2>
<EXR>Let <M>X_1,...,X_m</M>  and <M>Y_1,...,Y_n</M>  be random samples from
 <M>N(\mu_1,\sigma^2)</M>  and <M>N(\mu_2,\sigma^2)</M>, respectively (same <M>\sigma^2).</M>  
Then what
 is the distribution of 
<D>[[\sum(X_i-\bar X)^2/(m-1)][\sum(Y_i-\bar Y)^2/(n-1)]]?</D>
</EXR>
<HEAD1 u="https://youtu.be/XCtgYh2ux7M">Distribution of quadratic forms (part 1)</HEAD1>
<DEFN name="Quadratic form">
By a <TERM>quadratic form</TERM>  in <M>n</M>-variables we understand a function <M>q:\rr^n\to\rr</M>  of the form
<D>q(\v x) = \v x' A \v x</D>
for some fixed real, symmetric matrix <M>A</M>.
</DEFN>
Any quadratic form is a linear combination of terms like <M>x_i^2</M>  or <M>x_ix_j</M>  (for <M>i\neq j</M>). The definition
 implies that every real, symmetric matrix produces a quadratic form. Conversely, every quadratic form has a unique real,
 symmetric matrix associated with it. 
<EXM>
Write down the real, symmetric matrix associated with the quadratic form <M>q(x,y) = x_1x_2-x_2^2.</M>
<SOLN/>
There are two variables, so the matrix will be a <M>2\times 2</M>  one. The diagonal entries will come from the coefficcients
 of the square terms: <M><MAT>0 & ?\\? & -1</MAT></M>, and the off-diagonal entries will come from the cross product terms:
<M><MAT>0 & [[12]]\\[[12]] & -1</MAT>.</M>  The rule is: <M>(i,j)</M>-th entry is half the coefficient of <M>x_ix_j.</M>
</EXM>
In this section we shall deal with the following set up:
<Q>
<M>X_1,...,X_n</M>  are IID <M>N(0,1),</M>  or, equivalently <M>\v X = (X_1,...,X_n)'\sim N_n(\v0,I).</M>  We have some real, symmetric matrix
 <M>A.</M>  We want to explore various necessary and sufficient condtions under which the quadratic form <M>\v X'A\v X</M> 
 will have a <M>\k k</M>  distribution, and how <M>k</M>  is related with <M>A.</M>
</Q>

We had seen earlier that if <M>\v Y</M>  is the orthogonal projection of <M>\v X</M>  onto some subspace <M>T</M>  of <M>\rr^n,</M> 
 then <M>\|\v Y\|^2\sim \k {dim(T)}.</M>  
Since a matrix is an orthogonal projection matrix iff it is symmetric and idempotent, and the rank
 of he matrix equals the dimension of the space we project on, we
get  the following result. 
<THM>
Let <M>A</M>  be a symmetric, idempotent matrix. Then <M>\v X'A\v X\sim\k{rank(A)}.</M> 
</THM>
A  sort of converse is also true, as shown in the next theorem.
<THM>
Let <M>\v X\sim N_n(\v 0,I).</M>  Let <M>A</M>  be a real symmetric matrix.  Then <M>\v X'A\v X\sim \k r</M>  for some <M>r\in\nn.</M> 
 Then <M>A</M>  must be idempotent, and <M>r = rank(A).</M>
</THM> 
<PF>
This proof requires spectral representation of real, symmetric matrices whch allows us to write <M>A</M>  as <M>A = P'DP</M> 
 for some orthogonal matrix <M>P</M>  and diagonal matrix <M>D.</M>  

Then <M>\v X' A\v X = \v X'P' D P \v X = (P\v X)' D (P\v X).</M>  

Now <M>\v Y=P\v X\sim N_n(\v0,I)</M>  and so we can write <M>(P\v X)' D (P\v X) = \sum_1^k d_i Y_i^2</M>, where <M>k=rank(A).</M>

The <M>Y_j</M>'s are IID <M>N(0,1)</M>  and so <M>Y_j^2</M>'s are IID <M>\k 1</M>  random variables with characteristic function
 <M>(1-2it)^{-1/2}.</M>

So the characteristic function of <M>\sum_1^k d_i Y_i^2</M>  is
<D>E[*[\exp(*(it\sum_1^k d_j Y_j^2)*)]*] = \prod_1^k E[*[\exp(*(it d_j Y_j^2)*)]*] = \prod_1^k \xi(t d_j) = \prod_1^k (1-2it d_j)^{-1/2}.</D>
We want this to be the characteristic function of <M>\k r</M>  for some <M>r.</M>  So 
<D>\prod_1^k (1-2it d_j)^{-1/2}=(1-2it)^{-r/2}.</D>
In other words, we need 
<D>(1-2it d_1)\cdots (1-2it d_k)=(1-2it)^r.</D>
Matching degrees of both sides, we see <M>r=k.</M>  

Also, matching coefficients of powers of <M>t,</M>  we 
 see that <M>d_1=\cdots=d_k=1.</M>  Hence <M>A = P'<MAT>I & O\\O & O</MAT>P</M>. We know that any matrix of this form must
 be idempotent. This completes the proof.
</PF>
<HEAD1 u="https://youtu.be/ObK-yPeTs7E">Distribution of quadratic forms (part 2)</HEAD1>
We know that sum of independent <M>\chi^2</M>  random variables is a again a <M>\chi^2</M>  random variable with degrees of freedom
 adding up. Here is a partial converse.
<THM>
If <M>X\sim\k m</M>  and <M>Y</M>  is a nondegenerate independent random variable such that <M>X+Y\sim\k n</M>,
 then we must have <M>n> m</M> and <M>Y\sim\k{n-m}.</M>
 </THM>
<PF>
Let <M>Y</M>  have characteristic function <M>\xi(t).</M>  Then we have <M>(1-2it)^{-m/2} \xi(t) = (1-2it)^{-n/2}.</M>  

Hence we must have <M>\xi(t) = (1-2it)^{-(n-m)/2}.</M>  

Since <M>\xi(t)</M>  is the characteristic function of some nondegenerate random variable, hence
 <M>\xi(t)</M>  must be bounded and not identically
 equal to 1. So <M>n > m.</M>  

Since characteristic function determines the distribution, hence <M>Y\sim\k{n-m},</M>  as required.
</PF>

<THM name="Fact from linear algebra">
If <M>A</M>  is idempotent, then <M>rank(A)=tr(A).</M>
</THM>

<THM name="Fisher-Cochran theorem">
Let <M>A_1,...,A_k</M>  be some <M>n\times n</M>  nonzero, real, symmetric matrices with
 <M>A_1+\cdots+A_k = I.</M>  Then the following
 are equivalent:
<OL>
<LI><M>\forall i~~ A_i^2 =A_i.</M></LI>
<LI><M>r(A_1)+\cdots+r(A_k) = n.</M></LI>
<LI><M>\forall i\neq j~~ A_iA_j =O.</M></LI>
</OL>
</THM>
<PF>
<U>(2) implies (1), (3)</U>: Let <M>A_i = B_iC_i</M>  be a rank factorisation. Then 
<D>I = B_1C_1+\cdots+B_kC_k = \underbrace{<MAT>B_1 & \cdots & B_k</MAT> }_B\underbrace{<MAT>C_1\\ \vdots \\ C_k</MAT> }_C. </D>
By (2) <M>B</M>  and <M>C</M>  are  <M>n\times n.</M>  So they are inverse of each other. 

Hence <M>CB = I,</M>  as well. In other words,
 <D><MAT>C_1\\ \vdots \\ C_k</MAT><MAT>B_1 & \cdots & B_k</MAT>=I.</D>
Hence <M>\forall i~~C_iB_i = I</M>  and <M>\forall i\neq j~~C_iB_j = O.</M>

So <M>A_i^2 = B_iC_iB_iC_i = B_iC_i= A_i.</M>  

Also for <M>i\neq j</M>  we have  <M>A_iA_j = B_iC_iB_jC_j = O.</M>

<U>(3) implies (1)</U>: We have <M>A_1+\cdots+A_k=I.</M>  Multiplying both sides with <M>A_i</M>  we get <M>A_iA_1+\cdots+A_iA_k=A_i.</M> 
 
Thanks to (3), only the <M>i</M>-th term survives in the LHS. So we have <M>A_i^2 = A_i,</M>  as required.

<U>(1) implies (2)</U>: We have <M>tr(A_1)+\cdots+tr(A_k) = tr(I)=n.</M>

Since we have assumed (1), hence <M>tr(A_i)=r(A_i).</M>  So (2) follows.
</PF>


Why do we care about the Fisher-Cochran theorem in probability or statistics? Because we often start with a random vector
 <M>\v X\sim N_n(0,I),</M>  and split <M>\|\v X\|^2</M>  into some quadratic forms <M>\|\v X\|^2 = \v X\v X = \v X'A_1\v X+\cdots+\v X'A_k\v X.</M>
Then the Fisher-Cochran theorem implies  that if all the quadratic forms have
 <M>\chi^2</M>-distributions, then must also be independent, and their degrees of freedom must add
 up to <M>n.</M>

<HEAD1>Miscellaneous problems</HEAD1>
<EXR>If <M>X</M>  has a density of the form <M>f(x) \propto \exp(a+b+cx^2),~~x\in\rr,</M>  then
find <M>E(X)</M>  and <M>V(X)</M>  in terms of <M>a,b,c.</M>  Also find median of <M>X.</M></EXR>
<EXR>Construct <M>(X,Y)</M> such that marginally <M>X</M>
and <M>Y</M> have <M>N(0,1)</M> distribution, but <M>(X,Y)</M>
is not bivariate normal.</EXR>
<EXR>Suppose that you have a software to generate IID replications from <M>N(0,1).</M>  Let
<M>\mu\in\rr^n</M>  and  <M>\Sigma</M>  be any <M>n\times n</M>  PD matrix. Suggest how you can
 use the software to generate a single observation from <M>N_n(\mu,\Sigma).</M>  Assume that the
 software can perform matrix operations.</EXR>
<EXR>If <M>X,Y</M>  are IID <M>N(0,1)</M>, then what is the chance that the random point
 <M>(X,Y)</M>  lies in the annulus shown below?
<CIMG web="annulus.png"/>
Express you answer in terms CDF of some standard distribution.
</EXR>
<EXR>Let <M>X_1,...,X_n</M>  be a random sample from <M>N(\mu,\sigma^2)</M>  for some
 <M>\mu\in\rr</M>  and <M>\sigma^2>0.</M>  Find <M>a<b</M>  such that <M>P(*(a< [[\bar
 X-\mu][S/\sqrt{n}]] < b)*) = 0.95</M>  and <M>b-a</M>  is the least possible subject to this.</EXR>
<EXR><EIMG web="rossfcpnorm1.png"/></EXR>
<EXR><EIMG web="rossfcpnorm2.png"/></EXR>
<EXR><EIMG web="rossfcpnorm3.png"/></EXR>
<EXR><EIMG web="rossfcpnorm4.png"/></EXR>
<EXR><EIMG web="rossfcpnorm5.png"/></EXR>
<EXR><EIMG web="rossfcpnorm6.png"/></EXR>
<EXR><EIMG web="rossfcpnorm7.png"/></EXR>
<EXR><EIMG web="rossfcpnorm8.png"/></EXR>
<EXR><EIMG web="rossipmnorm1.png"/></EXR>
<EXR><EIMG web="rossipmnorm2.png"/></EXR>
::<EXR><EIMG web="hpstrans19.png"/></EXR>

::<EXR><EIMG web="wilks9.png"/></EXR>


</NOTE>@}
