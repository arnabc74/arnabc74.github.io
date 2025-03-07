 @{<NOTE>
<M>\newcommand{\v}[1]{{\mathbf #1}}</M>
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
 <M>\v Y=A\v X + \v b</M>, where <M>\v X_{m\times 1}</M>  has IID <M>N(0,1)</M>  components, and
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

<HEAD1>Multivariate normal distribution (part 3)</HEAD1>
<HEAD2>Mean and dispersion</HEAD2>
It is easy to find the mean vector and variance matrix of a multivariate normal distribution:
<THM>
If <M>\v Y\sim N_m(\v\mu,\Sigma)</M>, then  <M>E(\v Y)=\v b</M>   and <M>V(\v Y) = \Sigma.</M> 
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

<HEAD1>Multivariate normal distribution (part 4)</HEAD1>
As we have already mentioned, a multivariate normal distribution need not always have a density. However, for an important
 special case, it does. This case is called the nonsingular
 case, while the other case is called singular. We discuss these next.

<HEAD2>Nonsingular and singular</HEAD2>
<THM><M>N_m(\v\mu,\Sigma)</M>  admits a density if and only if <M>\Sigma</M>  is a nonsingular  matrix. 
In this case, the density is 
<D>[[1][\sqrt{(2\pi)^n det(\Sigma)}]]\exp(*(-[[12]](\v y-\v\mu)'\Sigma ^{-1}(\v y-\v\mu))*)\mbox{ for }\v y\in\rr^n,</D> 

</THM>
<PF>
<U>If part</U>: Since <M>\Sigma</M>  is NND, we can write <M>\Sigma = AA'</M>  for some 
 <M>A_{m\times m}.</M> 
 So <M>N_m(\v\mu,\Sigma)</M> 
 is the distribution of <M>A\v X+\v\mu,</M>  where <M>\v X</M>  has IID <M>N(0,1)</M>  components.

Clearly, the density of <M>\v X</M>  is 
<D>[[1][\sqrt{(2\pi)^n}]]\exp(*(-[[12]]\v x'\v x)*)\mbox{ for }\v x\in\rr^n.</D>
Now, since <M>\Sigma</M>  is nonsingular, so must be <M>A</M>, and hence
 the transform <M>\v X\mapsto A\v X+\v \mu</M>  is a bijection. So the Jacobian formula
 gives (check!) the following density for <M>\v Y = A\v X+\v \mu</M>
<D>[[1][\sqrt{(2\pi)^n det(AA')}]]\exp(*(-[[12]](\v y-\v\mu)'(AA') ^{-1}(\v y-\v\mu))*)\mbox{ for }\v y\in\rr^n.</D> 
Here we have used the fact that <M>\sqrt{det(AA')} = \sqrt{det(A)det(A')} = |det(A)|.</M>
The density may be written as
<D>[[1][\sqrt{(2\pi)^n det(\Sigma)}]]\exp(*(-[[12]](\v y-\v\mu)'\Sigma ^{-1}(\v y-\v\mu))*)\mbox{ for }\v y\in\rr^n,</D> 
as required.

<U>Only if part</U>: Actually, this part does not even require normality. Let <M>\v Y</M>  have dispersion matrix <M>\Sigma</M> 
 which is singular. 

Let, if possible, <M>\v Y</M>  have density.

Then <M>\exists \v a\neq\v0~~\Sigma \v a = \v 0.</M>  So <M>\v a'\Sigma \v a = 0.</M>   

But <M>\v a'\Sigma \v a = V(\v a' \v Y),</M>  hence we see that <M>\v a'\v Y</M>  must be a constant with probability 1.
 
We can extend <M>\{\v a\}</M>  to a basis <M>\{\v a,...\}</M>  of <M>\rr^m.</M> 
 
Let <M>P = <MAT>\v a & \cdots </MAT></M>  be the matrix with these as columns.

Then <M>P</M>  is nonsingular, and so <M>\v Z = P'\v Y</M>  is a bijective transform of <M>\v Y.</M>

So, by the Jacobian formula, <M>\v Z</M>  must also have joint density. Then its first component <M>\v a'\v Y</M>  must also
 have a (marginal) density. But that is impossible, since it is a degenrate random variable.

Hence the result. 

</PF>

<HEAD2>Problem set <PS/></HEAD2>
<EXR>Describe <M>N_2(\v0,I)</M>  distribution.</EXR>

<EXR>Let <M>J_2</M>  be the <M>2\times2</M>  matrix with all entries equal to 1. Let 
<D><MAT>X\\Y</MAT> \sim N_2(\v 0, J_2).</D>
If we take data <M>(x_1,y_1),...,(x_n,y_n)</M>  from <M>(X,Y)</M> , what will the scatterplot look like?
</EXR>

<HEAD1>Multivariate normal distribution (part 5)</HEAD1>
<THM>
If <M>X_1,...,X_n</M>  are IID <M>N(\mu, \sigma^2),</M>  then  <M>\v X = (X_1,...,X_n)'\sim N_n((\mu,...,\mu)',\sigma^2 I_n).</M>
</THM>

<THM>
If <M>\v X\sim N_n(\v \mu, \Sigma)</M>  and <M>B_{m\times n}</M>  and <M>\v c_{m\times 1}</M>  are fixed, then <M>B\v X+\v c\sim N_m(B\v \mu + \v c, B\Sigma B').</M>
</THM>
<PF>
Directly from definition. Just be careful that the variance matrix is <M>B\Sigma B'</M>  and not <M>B'\Sigma B.</M>
</PF>

In particular, we have the following corollary.
<THM>
If <M>\v X = (X_1,...,X_n)'\sim N_n(\v \mu,\Sigma),</M>  then any subvector of  <M>\v X</M>  has multivariate normal distribution
 with the corresponding subsector of <M>\v \mu</M>  and principal submatrix of <M>\Sigma.</M>
</THM>

<HEAD2>Independent vs uncorrelated</HEAD2>
If two random variables are
independent, they must also be uncorrelated. However, the converse is not true in general. For multivariate
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
<D>\v t'\v \mu = <MAT>\v t_1' & \v t_2'</MAT><MAT>\v \mu_1 & \v \mu_2</MAT>  = \v t_1'\v \mu+\v t_2'\v \mu_2</D>
So the characteristic function factorises as
<D>\xi_{\v X}(\v t)\equiv \xi_{\v X_1}(\v t_1)\xi_{\v X_1}(\v t_2),</D>
and hence <M>\v X_1</M>  and <M>\v X_2</M>  are independent, as required.
</PF>

<HEAD2>Problem set <PS/></HEAD2>
<EXR>Let <M><MAT>\v X\_{m\times 1}\\\v Y</MAT> \sim N_{m+n}(*(\v 0, <MAT>A_{m\times m} & B\\B' &
 C</MAT>)*).</M>  What is the distribution of <M>\v X</M>  and <M>\v Y</M>  separately? </EXR>

<EXR>(Continuation of the last problem) If <M><MAT>A & B\\B' & C</MAT></M>  is nonsingular, then
 show that the conditional distribution of <M>\v Y</M>  given <M>\v X=\v x</M>  is 
<M>N_{n-m} (B'A ^{-1}\v x, D-B'A ^{-1} B).</M>

[You will need the following not-so-well-known result from linear algebra: If <M>P = <MAT>A & B \\ C & D</MAT></M>  is a nonsingular
 matrix, where <M>A</M>  is also nonsingular, then
<D>P ^{-1} = <MAT>A ^{-1} + A ^{-1}BXC A ^{-1} & -A ^{-1} BX\\ -XC A ^{-1} & X</MAT>,</D> 
where <M>X = (D-CA ^{-1} B) ^{-1}.</M> 

Also, be warned! The proof is somewhat long!]
</EXR>

<EXR>Let <M>\v X\sim N_n(\v\mu,I).</M>  Let <M>\v a, \v b\in\rr^n</M>  be orthogonal to each
 other. Show that <M>\v a'\v X</M>  and <M>\v b'\v X</M>  must be independent.</EXR>

<HEAD1><M>\chi^2</M>  distribution</HEAD1>
Starting from this section, we shall discuss some distributions related to the normal distribution.
<DEFN name="$\chi^2$">If <M>X_1,...,X_n</M>  are IID <M>N(0,1)</M>  then the distribution of <M>\sum_1^n X_i^2</M> 
 is called <TERM>chi-square distribution with degrees of freedom</TERM> 
 <M>n.</M>  We write 
<D>\sum_1^n X_i^2\sim \chi_{(n)}^2.</D>
</DEFN>
<THM>
<M>\k n</M>  is the same as <M>Gamma(*([[n2]],[[12]])*).</M>
</THM>
<PF>
We shall proceed by induction.

<U>Basis</U>: <M>n=1</M>: Let <M>X\sim N(0,1).</M>

Then <M>X^2</M>  has CDF <M>F(\cdot),</M>  where <M>F(a)=0</M>  for <M>a<0</M>  and for <M>a\geq 0</M>  we have
<D>F(a) = P(X^2\leq a) =[[1][\sqrt{2\pi}]] \int_{-\sqrt a}^{\sqrt a} e^{-x^2/2}\, dx=[[2][\sqrt{2\pi}]] \int_0^{\sqrt a} e^{-x^2/2}\, dx.</D>
Differentiating wrt <M>a</M>  we get the density
<D>f(a) = F'(a) = [[2][\sqrt{2\pi}]] e^{-a/2}\mbox{ for }a>0.</D>
We immediately recognise it as the <M>\k 1</M>  density, completing the basis.

<U>Hypothesis</U>: Assume the result for <M>n=1,...,m</M>  fir some <M>m\geq 1.</M>

<U>Step</U>: Shall show for <M>n=m+1.</M>  

Let <M>X_1,....,X_m,X_{m+1}</M>  be IID <M>N(0,1).</M>  

Then <M>\sum_1^{m+1} X_i^2 = \underbrace{\sum_1^m X_i^2}_Y + \underbrace{X_{m+1}^2}_Z.</M>

By the inducion hypothesis both <M>Y\sim Gamma(*([[m2]],[[12]])*)</M>  and <M>Z\sim Gamma(*([[12]],[[12]])*).</M> 

Also they are independent. 

So <M>Y+Z\sim Gamma(*([[m+1][2]],[[12]])*),</M>  as required. 
</PF>
<HEAD2>Geometry of <M>\chi^2_{(k)}</M></HEAD2>
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

<EXR>
Let <M>A</M>  be a symmetric, idempotent matrix. Let <M>\v X'A\v X\sim\k{r(A)}.</M>  Show tjis. 
</EXR>
The following result is used in linear models. 
<EXR>Let <M>\v X\sim N_n(\v \mu, I).</M>  Let <M>S</M>  be any <M>k</M>-dimensional subspace
 containing <M>\v \mu.</M>  Then show that the orthogonal projection of <M>\v X</M>  onto
 <M>S^\perp</M>  must have <M>\k {n-k}</M>  distribution.</EXR>

<DEFN name="Non-central $\chi^2$">
If <M>X_1,...,X_n</M>  are independent <M>N(\mu_i,1),</M>  then the distribution <M>\sum X_i^2</M>  is
 called <TERM>noncentral <M>\k n</M>  with noncentralty parameter <M>\sum_i\mu_i^2.</M></TERM> 
</DEFN>
<HEAD2>Problem set <PS/></HEAD2>
<HEAD1><M>t</M>  and <M>F</M>  distributions</HEAD1>
<HEAD2><M>t</M>  distributions</HEAD2>
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
<D>[[\Gamma(*([[n+1][2]])*)][\sqrt{n\pi}\Gamma(*([[n][2]])*)]].</D>
It should not be difficult to see that <M>t</M>-density is symmetric around 0. The densities are much like the <M>N(0,1)</M> 
 density. They lie somewhere in-between the Cauchy density and <M>N(0,1)</M>  density. As the degrees of freedom increase
 to <M>\infty,</M>  the <M>t</M>-distribution approaches <M>N(0,1).</M>  For degrees of freedom more than 40, the <M>t</M>-density
 is virtually indisguishable from that of <M>N(0,1)</M>  density.
<HEAD2><M>F</M>  distributions</HEAD2>
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
<HEAD1>Sampling distributions for normal sample</HEAD1>
<THM>
If <M>X_1,...,X_n</M>  are IID <M>N(\mu, \sigma^2),</M>  then for <M>a_1,...,a_n\in\rr</M>   we have <M>\sum a_i X_i\sim N(*(\mu\sum a_i, \sigma^2\sum a_i^2)*).</M>
</THM>
<PF>Easy.</PF>

<THM>
Let <M>X_1,...,X_n</M>  be IID <M>N(\mu, \sigma^2).</M>  Then 
<OL>
<LI><M>\overline X\sim N(*(\mu,[[\sigma^2][n]]])*)</M></LI>
</OL>

</THM>
<HEAD2>Problem set <PS/></HEAD2>

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

</NOTE>@}
