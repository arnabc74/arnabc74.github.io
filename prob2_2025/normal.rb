 @{<NOTE>
<M>\newcommand{\v}[1]{{\mathbf #1}}</M>
<M>\newcommand{\k}[1]{\chi^2_{(#1)}}</M>
<TITLE>Multivariate normal and related distributions</TITLE>
<HEAD1>Multivariate normal</HEAD1>
Here we shall discuss the most commonly used multivariate distribution, the multivarite normal distribution. 
<DEFN name=" Multivariate normal">
Let <M>\v X = (X_1,...,X_n)'</M>  be a random vector, where  <M>X_1,...,X_n</M>  are IID
 <M>N(0,1).</M> Let <M>A_{m\times n}</M>  be any fixed matrix, and <M>\v b_{m\times1}</M>  be any
 fixed vector. Then the joint distribution of <M>\v Y=A\v X + \v b</M>  is called <M>m</M>-dimensional
 multivariate normal. 
</DEFN>
Clearly, the distribution depends on <M>A</M>  and <M>\v b.</M> However, different values of <M>A</M>  and <M>\v b</M>  may
 lead to the same multivariate normal. To explore this dependence we first consider <M>\v X,</M>  which has characteristic function 
<D>E(\exp(i\v t'\v X) = \exp(*(-[[12]]\v t'\v t)*).</D> 
So the characteristic function of <M>\v Y = A\v X + \v b</M>  is 
<D>E(\exp(i\v t'(A\v X+\v b)) =E(\exp(i((A'\v t)'\v X+\v t'\v b)) = \exp(*(-[[12]]\v t'AA'\v t+i\v t'\v b)*).</D>
This involves <M>\v b</M>  directly, but <M>A</M>  only through <M>AA'.</M>  So we parametrise
 multivariate normal by <M>\v b</M>  and <M>AA'.</M>  It will turn out that <M>E(\v Y)=\v b</M>   and <M>V(\v Y) = AA'.</M> 
 These are more commonly denoted by <M>\v \mu</M>  and <M>\Sigma,</M>  and <M>m</M>-dimensional multivariate normal with
 these parameters is denoted by <M>N_m(\v mu, \Sigma).</M>  The abbreviation MVN is also used for multivariate normal.

<HEAD2>Nonsignular and singular</HEAD2>
The density of <M>\v X</M>  is 
<D>(2\pi)^{-[[n2]]}\exp(*(-[[12]]\v x'\v x)*)\mbox{ for }\v x\in\rr^n.</D>
If <M>A</M>  is a nonsingular matrix, then the transform <M>\v X\mapsto A\v X+\v b</M>  is a bijection. So the Jacobian formula
 gives the following density for <M>\v Y = A\v X+\v b</M>
<D>(2\pi det(AA'))^{-[[n2]]}\exp(*(-[[12]]\v y'(AA') ^{-1}\v y)*)\mbox{ for }\v y\in\rr^n.</D> 
This is sometimes called a nonsingular multivariate normal to distinguish from the case where <M>A</M>  is singular, where
 <M>\v Y</M>  does not admit a density. 

<EXR>Describe <M>N_1(5,0)</M>  distribution.</EXR>
<HEAD2>Properties</HEAD2>
<THM>
If <M>X_1,...,X_n</M>  are IID <M>N(\mu, \sigma^2),</M>  then  <M>\v X = (X_1,...,X_n)'\sim N_n((\mu,...,\mu)',\sigma^2 I_n).</M>
</THM>

<THM>
If <M>\v X\sim N_n(\v \mu, \Sigma)</M>  and <M>B_{m\times n}</M>  and <M>\v c_{m\times 1</M>  are fixed, then <M>B\v X+\v c\sim N_m(B\v \mu + \v c, B\Sigma B').</M>
</THM>
<PF>
Directly from definition. Just be careful that the variance matrix is <M>B\Sigma B'</M>  and not <M>B'\Sigma B.</M>
</PF>

In particular, we have the following corrolary.
<THM>
If <M>\v X = (X_1,...,X_n)'\sim N_n(\v \mu,\Sigma),</M>  then any subvector of  <M>\v X</M>  has multivariate normal distribution
 with the corresponding subsector of <M>\v \mu</M>  and principal submatrix of <M>\Sigma.</M>
</THM>

If two random variables are
independent, they must also be uncorrelated. However, the converse is not true. For multivariate normal the converse is also
 true.
<THM>If <M>\v X = (X_1,...,X_n)'\sim N_n(\v \mu,\Sigma),</M>  then <M>X_i</M>  and <M>X_j</M>  are
 independent if and only if <M>\sigma_{ij} = 0.</M></THM>
<PF>
First obtain the joint distribution of <M>(X_i,X_j)</M>  using the last theorem. Then show that characteristic function factors
 out.
</PF>
<HEAD2>Problem set 1</HEAD2>

Next we shall discuss some distributions related to the normal distribution.
<HEAD1><M>\chi^2</M>  distribution</HEAD1>
If <M>X_1,...,X_n</M>  are IID <M>N(0,1)</M>  then the distribution of <M>\sum_1^n X_i^2</M>  is called <TERM>chi-square distribution wit degrees of freedom</TERM> 
 <M>n.</M>  We write 
<D>\sum_1^n X_i^2\sim \chi_{(n)}^2.</D>

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

<DEFN name="Non-central $\k$">
If <M>X_1,...,X_n</M>  are independent <M>N(\mu_i,1),</M>  then the distribution <M>\sum X_i^2</M>  is
 called <TERM>noncentral <M>\k n</M>  with noncentralty parameter <M>\sum_i\mu_i^2.</M></TERM> 
</DEFN>
<HEAD2>Problem set 2</HEAD2>
<HEAD1><M>t</M>  and <M>F</M>  distributions</HEAD1>
<HEAD2>Problem set 3</HEAD2>
<HEAD1>Sampling distributions for normal sample</HEAD1>
<HEAD2>Problem set 4</HEAD2>

<HEAD1>Problems for practice</HEAD1>
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
</NOTE>@}
