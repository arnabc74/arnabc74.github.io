@{<NOTE>
<M>\newcommand{\v}[1]{\boldsymbol{#1}}</M>
<M>\newcommand{\k}[1]{\chi^2_{(#1)}}</M>
<M>\newcommand{\cov}{\mathrm{cov}}</M>
[Update:[Thu Jul 09 IST 2026]]
<TITLE>Sampling distrbutions for normal mean and variance</TITLE>

<HEAD1>Multivariate normal</HEAD1>
You have already learned about normal and bivarate normal  distributions in Probability I. These are all special cases of
 the multivariate normal distribution. 

<DEFN name="Multivariate normal distribution">
Let  <M>\v X</M> be a <M>d</M>-dimensional random vector with components iid <M>N(0,1).</M>  Let
 <M>A_{r\times n}</M> be any fixed matrix and <M>\v b\in\rr^r</M> be any fixed vector. Then the
 distribution of the random vector <M>A\v X + \v b</M>  is called a <M>r</M>-dimensional multivariate normal distribution.
</DEFN>

<THM>
Let  <M>\v X</M> be a <M>d</M>-dimensional random vector with components iid <M>N(0,1).</M>  Let
 <M>A_{r\times n}</M> be any fixed matrix and <M>\v b\in\rr^r</M> be any fixed vector. Then the
 MGF of the random vector <M>A\v X + \v b</M>  is given by 
<D>M(\v t)  = e^{\v b'\v t+[[12]]\v t' AA'\v t}</D>
for <M>\v t\in\rr^d.</M>
Since the MGF is defined over a neighbourhood of the origin (in fact everywhere), the MGF characterises the distribution.
Thus, the distribution is characterised by <M>\v b</M>  and <M>AA'.</M>  
</THM>

<B>Notation:</B>  Let <M>\v \mu\in\rr^d</M>  be a fixed vector, and <M>\Sigma_{d\times d}</M>  be any fixed nnd
 matrix. The distribution with mgf <M>M(\v t) = e^{\v \mu't + [[12]] \v t' \Sigma \v t}</M>  for
 <M>\v t\in \rr^d</M>  is denoted by <M>N_d(\v \mu, \Sigma).</M>

<THM>If <M>\v X\sim N_d(\v \mu \Sigma),</M>  then <M>E(\v X) = \v \mu</M>  and <M>V(\v X) = \Sigma.</M></THM>

<THM>If <M>\v X\sim N_d(\v \mu, \Sigma),</M> and <M>A_{r\times d}</M>  is any fixed  matrix and  
<M>\v b\in\rr^r</M>  is any fixed vector, then <M>AX+\v b\sim N_r(A\v\mu+\v b, A \Sigma A').)</M>
</THM>

<THM>If <M>X_1,...,.X_n</M>  are iid <M>N(0,1)</M>  random variables, then <M>\v X =
 <MAT>X_1\\\vdots\\X_n</MAT></M>  has <M>N_n(\v 0, I)</M>  distribution.</THM>


We can easily compute marginal distributions of a multivariate normal using this theorem. 
<EXM>
Let 
</EXM>

<THM>If <M>\v X\sim N_d(\v \mu, \Sigma),</M>  then <M>X_1,...,.X_n</M>  are (mutually) independent
 iff <M>\Sigma</M>  is diagonal.</THM>


<HEAD2>Problem set</HEAD2>
<HEAD1>Sampling distributions for normal sample</HEAD1>
Our main theme in this page is the following theorem. 
<THM>
Let <M>X_1,...,X_n</M>  be a random sample (i.e., IID) from <M>N(\mu, \sigma^2).</M> We consider
 the sample mean <M>\bar X=[[1n]]\sum _1^nX_i</M>  and the statistic <M>S^2=\sum_1^n (X_i-\bar X)^2.</M>   Then 
<OL>
<LI><M>\bar X\sim N(*(\mu,[[\sigma^2][n]])*)</M></LI>
<LI><M>[[S^2][\sigma^2]]\sim \k {n-1}</M></LI>
<LI><M>\bar X</M>  and <M>S^2</M>  are independent.</LI>
</OL>
</THM>
Before we start to prove this theorem, let us recall a few relevant things.

<DEFN>If <M>U_1,...,U_k</M>  are iid <M>N(0,1),</M>  then the distribution of <M>\sum_1^k
 U_i^2</M>  is called <TERM>(central) chi-square</TERM>  with <M>k</M>  <TERM>degrees of
 freedom</TERM>. This distribution is denoted by <M>\k k</M>.</DEFN>

Thus, we say <M>X\sim\k k,</M>  then you can assume that there are <M>k</M>  random variables <M>U_1,...,U_k</M>  all
 defined on the same probability space such that <M>X = U_1^2+\cdots+U_k^2.</M>


<THM>
Let <M>x_1,...,x_n</M>  be any <M>n</M>  numbers. 
Let  <M>\bar x_k=[[1k]]\sum _1^kx_i</M>  for <M>k=1,...,n</M>  and  <M>S_k^2=\sum_1^k
 (x_i-\bar x_k)^2.</M>   Then for <M>k=1,...,n-1</M>
<D>S_k^2 = \sum_1^{k-1} [[i][i+1]](x_{i+1}-\bar x_i)^2.</D>
</THM>
<PF>
Obvious for <M>k=1.</M>  
High school algebra shows <M>S_k^2-S_{k-1}^2 = [[k-1][k]] (x_k-\bar x_{k-1})^2</M>  for <M>k=2,...,n-1.</M>

Hence the result.
</PF>


<PF>
Let <M>Y_k = X_{k+1}-\bar X_k</M>  for <M>k=1,...,n-1</M>  and   <M>Y_n = \bar X_n.</M>

Then <M>\v Y = A\v X</M>  for 
<D>A = <MAT>
-1 & 1\\
-[[12]] & -[[12]] & 1\\
-[[13]] & -[[13]] & -[[13]] & 1\\
\vdots & \vdots & \vdots & & \ddots\\
-[[1][n-1]] & \cdots &  & & -[[1][n-1]] & 1\\
[[1n]]  & [[1n]] & [[1n]] & \cdots & [[1n]] & [[1n]]</MAT>.</D>

Clearly, <M>A</M>  is nonsingular (why?). 

So <M>\v Y</M>  has a multivariate normal distribution.

It is easy to work out the mean vector and covariance matrix:
<UL>
<LI><M>E(Y_k) = \cdots  =0 </M>  for <M>k=1,...,n-1,</M>  and <M>E(Y_n) = \mu.</M></LI>
<LI><M>V(Y_k) = \sigma^2(*(1+[[1k]])*)</M>  for <M>k=1,...,n-1,</M>  and <M>V(Y_n) = [[\sigma^2][n]].</M></LI>
<LI><M>\cov(Y_i,Y_j)=  \cdots = 0</M>  for <M>i\neq j\in\{1,...,n-1\}</M>  and
 <M>\cov(Y_i,Y_n)=  \cdots = 0</M>  for <M>i\in\{1,...,n-1\}.</M>    
</LI></UL>
So <M>Y_1,...,Y_n</M>  are independent random variables. 

In particular, <M>\bar X_n = Y_n \sim N(*(\mu,[[\sigma^2][n]])*)</M>, as required.

Also,
<D>S_n^2 = \sum_1^{n-1} [[i][i+1]](X_{i+1}-\bar X_i)^2 = \sum_1^{n-1} [[i][i+1]] Y_i^2.</D>
Since <M>Y_1,...,Y_{n-1}</M>  are independent with <M>Y_i\sim N(*(0, (1+[[1i]]) \sigma^2 )*),</M>  

hence <M>\sqrt{[[i][i+1]]} [[Y_i][\sigma]]</M>'s are IID <M>N(0,1)</M>  random variables (for <M>i=1,...,n-1).</M>

Hence <M>[[S_n^2][\sigma^2]]\sim\k {n-1},</M>  as required.

Notice that <M>S_n^2</M>  is a function of only <M>Y_1,...,Y_{n-1}</M>  only, which are
 independent of <M>Y_n,</M>  i.e., <M>\bar X_n,</M>  as required. 
</PF>
<HEAD2>Problem set</HEAD2>
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
 density. They lie somewhere between the Cauchy density and <M>N(0,1)</M>  density. As the degrees of freedom increase
 to <M>\infty,</M>  the <M>t</M>-distribution approaches <M>N(0,1).</M>  For degrees of freedom more than 40, the <M>t</M>-density
 is virtually indisguishable from that of <M>N(0,1)</M>  density.

<HEAD2>Problem set</HEAD2>
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
the density of <M>Y</M>  is <M>f_Y(y) =<CASES>\mbox{const }y^{[[n2]]-1}e^{-[[y2]]}<IF>y>0</IF> 0<ELSE/></CASES> </M>

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

<HEAD2>Problem set</HEAD2>
<EXR>Let <M>X_1,...,X_m</M>  and <M>Y_1,...,Y_n</M>  be random samples from
 <M>N(\mu_1,\sigma^2)</M>  and <M>N(\mu_2,\sigma^2)</M>, respectively (same <M>\sigma^2).</M>  
Then what
 is the distribution of 
<D>[[\sum(X_i-\bar X)^2/(m-1)][\sum(Y_i-\bar Y)^2/(n-1)]]?</D>
</EXR>

</NOTE>@}
