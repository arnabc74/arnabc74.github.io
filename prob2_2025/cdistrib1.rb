 @{<NOTE>
<TITLE>Sone standard densities</TITLE>
Last semester, we had learned some standard discrete distributions like binomial and geometric. Similarly, here we shall
 learn about some standard distributions with densities. 

<HEAD1><M>Unif(a,b)</M></HEAD1>
This distribution captures the idea of a random variable that take any value in <M>(a,b)</M>  with equal probability. It
 has PDF <M>f(x) =<CASES>[[1][b-a]]<IF>a < x < b</IF> 0<ELSE/></CASES> </M>
Notice that a PDF must be defined over entire <M>\rr.</M>  Hence we need the "else" clause. Also <M>a< x < b</M>  could be
 replaced by <M>a\leq x < b</M>  or <M>a\leq x \leq b</M>  or <M>a< x \leq b</M>  without any change in meaning. 

The CDF is 
<D>F(x) = <CASES>0<IF>x < a</IF> [[x-a][b-a]]<IF>a\geq x < b</IF> 1<IF>b\geq x</IF></CASES>.</D>

Of a great importance is the special case <M>Unif(0,1).</M>  It plays a crucial role in the proof of the fundamentanl theorem
 of probability as well as random number generation using a computer. Both these applications come from the same theorem,
 which we shall discuss <LINK to="trans.html">later</LINK> in the course.

<HEAD2>Problem set 1</HEAD2>

<EXR>Let <M>X\sim Unif(0,1),</M>  <M>Y\sim Unif(10,20),</M>  and <M>Z\sim Unif(100,101).</M>
  Without explicitly computing their variances pick the correct option below:
<OL type="A">
<LI><M>V(X) <  V(Y) <  V(Z)</M></LI>
<LI><M>V(X) >  V(Y) >  V(Z)</M></LI>
<LI><M>V(X) = V(Z) <  V(Y)</M></LI>
<LI><M>V(Y) =  V(Z) <  V(X)</M></LI>
</OL>
</EXR>
<EXR>If <M>X\sim Unif(a,b),</M>  then find <M>E(X),</M>  <M>V(X)</M>  and MGF of <M>X.</M></EXR>

<EXR>If <M>X\sim Unif(0,\theta),</M> for some <M>\theta>0.</M>  Fix any density <M>f_\theta(x)</M> of <M>X.</M>
Plot <M>f_\theta(1)</M>  as a function of <M>\theta.</M></EXR>

<EXR>Let <M>X\sim Unif(0,1).</M>  Let <M>a_i = [[in]]</M>  for
 <M>i=0,...,n.</M>  Fix any permutation <M>\pi</M>  of <M>\{1,2,...,n\}.</M>  We shall
 ''scramble'' <M>X</M>  using <M>\pi</M>  to obtain <M>Y.</M>  If <M>Y = f(X)</M>, where <M>f(x) =
 a_{\pi(i-1)}+(x-a_i)</M>  if <M>x\in [a_{i-1},a_i).</M>  What is the distribution of <M>Y?</M></EXR>

<HEAD1>A step towards proving the fundamental theorem of probability</HEAD1>
 To prepare for the theorem we define a right-inverse of any CDF. 

<DEFN>
Let <M>F</M>  be any CDF. Then define <M>F^-:(0,1)\to\rr</M>  as 
<D>F^-(x) = \inf\{t~:~F(t)\geq x\}.</D>
</DEFN>
This is well-defined since if <M>a\in (0,1)</M>  then <M>\{t~:~F(t)\geq a\}</M>  is nonempty (as
 <M>\lim_{x\to \infty}F(x)= 1</M>), and is bounded below (as <M>\lim_{x\to -\infty}F(x)= 0</M>  and <M>F</M>  is non-decreasing).

A couple of properties of <M>F^-</M>  are in order:
<THM>
Let <M>F</M>  be any CDF. Then <M>F^-</M>  is non-decreasing. Also <M>\forall x\in(0,1)~~F(F^-(x))=x.</M> 
</THM>
Now for the all-important theorem.  
<THM>
Let <M>U\sim Unif(0,1).</M>  Let <M>F(x)</M>  be any CDF.
 Then <M>F^-(U)</M>  must have CDF <M>F.</M>
</THM>
<PF>
 Let <M>Y = F^-(U).</M>  Then for any <M>a\in\rr</M>  we have 
<D>P(Y\leq a) = P(F^-(U)\leq a) = P(U\leq F(a)) = F(a),</D>
completing the proof.
</PF>
This shows that if we can show the existence of (or generate random numbers from)  <M>Unif(0,1)</M>, then we can do so for
 any CDF.

::<EXR>Show that <M>f(x) = <CASES>e^{-x}<IF>x>0</IF> 0<ELSE/></CASES></M>  is a PDF. Suggest how you
 may generate a random variable with this PDF starting from a <M>Unif(0,1)</M>  random variable.</EXR>
SS
It has a partial converse, which is also important.
<THM>
If <M>X</M>  is a continuous random variable with CDF <M>F,</M>  then <M>F(X)\sim Unif(0,1).</M>
</THM>
<PF>
Clearly, <M>Y=F(X)</M>  can only take values in <M>[0,1].</M>  So <M>P(Y\leq y) = 0</M>  if
 <M>y<0</M>  or if <M>y>1.</M>  

Take any <M>y\in[0,1].</M>  Then <M>P(Y\leq y) = P(F(X)\leq y)= P(X\leq F^-(y))= F(F^-(y))=y.</M> 
</PF>
This is used to construct a P-P plot.

<HEAD1>Exponential distribution</HEAD1>
<DEFN>We say that <M>X</M>  has an <TERM>Exponential distribution</TERM>  with <TERM>rate</TERM> 
 <M>\lambda</M>  if it has PDF <M>f(x)=<CASES>\lambda e^{-\lambda x}</CASES></M></DEFN>

Some typical exponential densities  are shown  below.
<CIMG web="expodens.png">Higher <M>\lambda</M>  means faster decay</CIMG>
<COMMENT>
svg("image/expodensraw.svg")
x = seq(0,5,len=1000)
y1 = dexp(x,rate=1)
y2 = dexp(x,rate=2)
y3 = dexp(x,rate=0.5)
bareplot(x,y1,t='l',ylim=range(-0.1,y1,y2,y3),xlim=c(-0.1,5))
lines(x,y2)
lines(x,y3)
abline(h=0,v=0)
dev.off()
</COMMENT>
<EXR>If <M>X\sim Expo(\lambda)</M>  for <M>\lambda>0,</M>  find <M>E(X)</M>  and <M>V(X).</M></EXR>

<EXR>Show that <M>Expo(\lambda)</M>  for <M>\lambda>0</M>  is memoryless, i.e., if <M>X\sim
 Expo(\lambda)</M>, then <M>\forall a, b>
 0~~P(X>a+b|X>a)</M>  is free of <M>a.</M></EXR>

<EXR>Let <M>X</M>  be any nonnegative absolutely continuous memoryless random variable, i.e.,
 <M>\forall a, b> 0~~P(X>a+b|X>a)</M>  is free of <M>a.</M>  Show that <M>X\sim Expo(\lambda)</M>  for some <M>\lambda>0.</M> </EXR>

<EXR>Find the CDF of <M>Expo(\lambda)</M>  for <M>\lambda>0.</M>  If you have <M>X\sim
 Unif(0,1),</M>  suggest a function <M>f(\cdot)</M>  such that <M>f(X)\sim Expo(\lambda).</M></EXR>

<EXR>Find MGF of <M>Expo(\lambda)</M>  for <M>\lambda>0.</M>  </EXR>

<HEAD1>Gamma distribution</HEAD1>
<DEFN name="Gamma distribution">
Here we need to know about the gamma function <M>\Gamma:(0,\infty)\to(0,\infty)</M>  defined as
<D>\Gamma(x) = \int_0^\infty t^{x-1}e^{-t}\, dt.</D>
<EXR>
Find <M>\Gamma(1)</M>  and <M>\Gamma(2).</M>
</EXR>

<EXR>Use integration by parts to show that for <M>x>1</M>  we have <M>\Gamma(x) = (x-1)\Gamma(x-1).</M>
Hence argue that for <M>n\in\nn</M> 
 we have <M>\Gamma(n) = (n-1)!.</M></EXR>

<TERM>Gamma distribution with parameters</TERM>  <M>a,p</M>  is the distribution with density
<D>f(x) =<CASES> [[p^a][\Gamma(a)]] x^{a-1} e^{-px}<IF>x>0</IF> 0<ELSE/></CASES></D>
We shall denote it by <M>Gamma(p,a).</M>  The order of the two parameters in this notation is not standard. 
Often <M>p</M>  is called the <TERM>rate</TERM>  and <M>a</M>
 is called the <TERM>shape</TERM>  parameter.
</DEFN>
Some typical gamma densities  are shown  below.
<CIMG web="gammadens1.png">All these have <M>p=1.</M>  Note how <M>a</M>  controls the position of the ''knee''</CIMG>
<CIMG web="gammadens2.png">All these have <M>p=2.</M>  Again, <M>a</M>  controls the position of the ''knee''</CIMG>
<CIMG web="gammadens3.png">All these have <M>p=0.5.</M>  Here also <M>a</M>  controls the position of the ''knee''</CIMG>
<COMMENT>
svg("image/gammadens%draw.svg")
x = seq(0,5,len=1000)
r = 1
y1 = dgamma(x,rate=r,shape=1)
y2 = dgamma(x,rate=r,shape=2)
y3 = dgamma(x,rate=r,shape=0.5)
bareplot(x,y1,t='l',ylim=range(-0.1,5),xlim=c(-0.1,5))
lines(x,y2)
lines(x,y3)
abline(h=0,v=0)
r = 2
y1 = dgamma(x,rate=r,shape=1)
y2 = dgamma(x,rate=r,shape=2)
y3 = dgamma(x,rate=r,shape=0.5)
bareplot(x,y1,t='l',ylim=range(-0.1,5),xlim=c(-0.1,5))
lines(x,y2)
lines(x,y3)
abline(h=0,v=0)
r = 0.5
y1 = dgamma(x,rate=r,shape=1)
y2 = dgamma(x,rate=r,shape=2)
y3 = dgamma(x,rate=r,shape=0.5)
bareplot(x,y1,t='l',ylim=range(-0.1,5),xlim=c(-0.1,5))
lines(x,y2)
lines(x,y3)
abline(h=0,v=0)

dev.off()
</COMMENT>

<THM name="Additivity of gamma">
If <M>X, Y</M>  are independent <M>Gamma(p,a_1)</M>  and <M>Gamma(p,a_2)</M>  (same rate), then <M>X+Y\sim Gamma(p,a_1+a_2).</M>
</THM>
<PF>
Direct application of the convolution formula. Or you may use MGF. 
</PF>

There is an interesting relation linking the gamma distribution with the exponential distribution. 

<THM name="Gamma to exponential">
<M>Gamma(p,1) \equiv Expo(p).</M>
</THM>
<PF>
Hardly anything to prove.
</PF>

<THM name="Exponential to gamma">
If <M>X_1,...,X_n</M>  are IID <M>Expo(\lambda),</M>  then <M>\sim_1^n X_i\sim Gamma(\lambda,n).</M>
</THM>
<PF>
Use induction on <M>n.</M>  The last theorem provides the basis, and the additivity property provides the step.
</PF>

::<EXR><EIMG web="rossipmjoint7.png"/></EXR>

<HEAD1>Beta distribution</HEAD1>
<DEFN name="Beta distribution"> 
The distribution with density
<D>f(x) = <CASES>[[1][B(a,b)]] x^{a-1}(1-x)^{b-1}<IF>x\in(0,1)</IF> 0<ELSE/></CASES></D>
for <M>a,b>0</M>  is called the <TERM>Beta distribution with parameters</TERM>  <M>a,b.</M>  
</DEFN>

<EXR>For particular values of <M>a,b</M>  we get the <M>Unif(0,1)</M>  distribution. Which values?</EXR>

The beta densities show a wide variety of shapes. 
<COMMENT>
svg("image/betadensraw.svg")
x = seq(0,1,len=100)
y1 = dbeta(x,4,5)
y2 = dbeta(x,0.5,5)
y3 = dbeta(x,4,0.5)
y4 = dbeta(x,4,1)
bareplot(x,y1,t='l',ylim=range(-0.1,5),xlim=c(-0.1,1.1))
lines(x,y2)
lines(x,y3)
lines(x,y4)
abline(h=0,v=0:1)
dev.off()
</COMMENT>
<EXR>
If <M>X\sim Beta(a,b)</M>, then exactly one of the two statements is correct in general. Which one?
<HL>
<LI><M>E(X) = [[a][a+b]].</M></LI>
<LI><M>E(X) = [[b][a+b]].</M></LI>
</HL>
Answer by thinking about the density. Now prove it mathematically.
</EXR>

<EXR>If <M>X\sim Beta(a,b)</M>, then find <M>V(X).</M></EXR>

<HEAD1>Cauchy distribution</HEAD1>
<DEFN name="Cauchy distribution">
By <TERM>Cauchy distribution</TERM>  we mean the distribution with density
<D>f(x) = [[1][\pi(1+x^2)]],\quad x\in\rr.</D>
Sometimes we also talk about <M>Cauchy(\mu,\sigma)</M>  distribution which is the distribution of <M>\mu+\sigma X</M>, where
 <M>X</M>  has the above density. In this notation, the density corresponds to the <M>Cauchy(0,1)</M>  distribution. 
</DEFN>

The most important reason for including this distribution in our discussion is that it has one notoriously bad property. It
 does not have any finite moment!  In particular, do not think that <M>Cauchy(\mu,\sigma)</M>  has
 mean <M>\mu</M>  and variance <M>\sigma^2.</M>   

<THM>
If <M>X</M>  has <M>Cauchy</M>  distribution, then <M>E(X)</M>  does not exist. As a result <M>E(X^n)</M>  does not exists
 for any <M>n\in\nn.</M>  
</THM>
<PF>
<M>\int_0^\infty [[x][1+x^2]]dx\sim \int_0^\infty [[1x]]dx = \infty.</M>
</PF>

<HEAD1>Normal distribution</HEAD1>
This is the most commonly used distribution in statistics.

<DEFN name="Normal distribution">
We say that <M>X\sim N(\mu,\sigma^2)</M>  to mean <M>X</M>  has density 
<D>\phi(x) = [[1][\sqrt{2\pi\sigma^2}]] \exp(*(-[[(x-\mu)^2][\sigma^2]] )*),\quad x\in\rr.</D>
</DEFN>
The density looks like the following: 
<CIMG web="normdens.png"><M>\mu</M>  controls centre, <M>\sigma</M>  controls spread</CIMG>
<COMMENT>
svg("image/normdensraw.svg")
x = seq(-5,5,len=1001)
y1 = dnorm(x,0,1)
y2 = dnorm(x,2,1)
y3 = dnorm(x,0,0.5)
bareplot(x,y1,t='l',ylim=range(-0.1,y1,y2,y3))
lines(x,y2)
lines(x,y3)
abline(h=0,v=c(0,2))
dev.off()
</COMMENT>
Proving thst this is indeed a density is not entirely straightforward. Louiville showed that its CDF
<D>\Phi(x) = \int_{-\infty}^x \phi(t)\, dt</D>
cannot be expressed in terms of elementary functions (trigonometric, exponential, logarithmic,
 square root, cube root etc).  However, its value may be computed nuerically for any given <M>x.</M>  

<EXR>SHow that if <M>X\sim N(\mu,\sigma^2),</M>  then <M>E(X)=\mu</M>  and <M>V(X)=\sigma^2.</M></EXR>

<EXR>If <M>X\sim N(0,1),</M>  then express the following probabilities in terms of <M>\Phi(\cdot).</M>  
<FL><LI><M><M>P(X<1)</M></M></LI>
<LI><M><M>P(|X|<1)</M></M></LI>
<LI><M><M>P(|X|>2)</M></M></LI>
</FL>
</EXR>

<THM>
If <M>X\sim N(\mu,\sigma^2),</M>  then for any <M>a\in\rr</M>  and <M>b\neq 0</M>  we have
 <M>a+bX\sim N(a+b\mu,b^2 \sigma^2).</M>
</THM>
<PF>
Directly from Jacobian formula.
</PF>

A corollary is the following theorem.

<THM>
If <M>X\sim N(\mu,\sigma^2),</M>  then <M>[[X-\mu][\sigma]]\sim N(0,1).</M>
</THM>
The transformation from <M>X</M>  to <M>[[X-\mu][\sigma]]</M>  is called <TERM>standardisation</TERM>.

<EXR>If <M>X\sim N(2,3^2),</M>  then express the following probabilities in terms of <M>\Phi(\cdot).</M>  
<FL><LI><M><M>P(X<1)</M></M></LI>
<LI><M><M>P(|X|<1)</M></M></LI>
<LI><M><M>P(|X|>2)</M></M></LI>
</FL>
</EXR>

<HEAD1>Problems for practice</HEAD1>
::<EXR><EIMG web="rossdistrib1.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib2.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib3.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib4.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib5.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib6.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib7.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib8.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib9.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib10.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib11.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib12.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib13.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib14.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib15.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib16.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib17.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib18.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib19.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib20.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib21.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib22.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib23.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib24.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib25.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib26.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib27.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib28.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib29.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib30.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib31.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib32.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib33.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib34.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib35.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib36.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib37.png"></EIMG></EXR>
::<EXR><EIMG web="rosspdf9.png"/>

Here is Example 5b that is refered above:
<IMG web="rosspdf10.png">Example 5b</IMG>
</EXR>

::<EXR><EIMG web="rosspdf15.png"/></EXR>
::<EXR><EIMG web="hpspdf21.png"/></EXR>
::<EXR><EIMG web="hpspdf23.png"/></EXR>
::<EXR><EIMG web="hpspdf25.png"/></EXR>
::<EXR><EIMG web="hpspdf27.png"/></EXR>
---
::<EXR><EIMG web="hpspdf28.png"/></EXR>
::<EXR><EIMG web="hpspdf29.png"/></EXR>
::<EXR><EIMG web="hpspdf30.png"/></EXR>
::<EXR><EIMG web="hpspdf31.png"/></EXR>
::<EXR><EIMG web="hpspdf32.png"/></EXR>
::<EXR><EIMG web="hpspdf33.png"/></EXR>
::<EXR><EIMG web="hpspdf34.png"/></EXR>
::<EXR><EIMG web="hpspdf35.png"/></EXR>
::<EXR><EIMG web="hpspdf36.png"/></EXR>
::<EXR><EIMG web="hpspdf37.png"/></EXR>
::<EXR><EIMG web="hpspdf38.png"/></EXR>
::<EXR><EIMG web="hpspdf39.png"/></EXR>
---
::<EXR><EIMG web="hpspdf41.png"/></EXR>
::<EXR><EIMG web="hpspdf42.png"/></EXR>
::<EXR><EIMG web="hpspdf43.png"/></EXR>
::<EXR><EIMG web="hpspdf44.png"/></EXR>
</NOTE>@}
