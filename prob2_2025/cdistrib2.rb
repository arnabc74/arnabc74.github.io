 @{<NOTE>
<TITLE>Some more standard densities</TITLE>

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

<HEAD2>Problem set <PS/></HEAD2>
<EXR>If <M>X\sim Beta(a,b)</M>  then show that <M>1-X\sim Beta(b,a).</M></EXR>

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

<HEAD2>Problem set <PS/></HEAD2>
<EXR>Show that if <M>X</M>  and <M>Y</M>  are independent Cauchy random variables, then for any <M>a\in[0,1]</M>  
 <M>aX+(1-a)Y</M>  is also a Cauchy variate. Hence conclude that if <M>X_1,...,X_n</M>  are IID
 Cauchy, then <M>\overline X</M>  is also Cauchy.</EXR>

<EXR>How can you generate a Cauchy random variable from a <M>Unif(0,1)</M>  random variable?</EXR>

<EXR>Consider the unit semicircle shown below.
<CIMG web="caupt.png"></CIMG>
 We pick a point at random on it, and extend the ray
  through it from the origin until it hits the <M>x=1</M>  line at some <M>(1,Y).</M>  Find the distribution of <M>Y.</M></EXR>

<EXR>If <M>X</M>  is a Cauchy random variable, then show that <M>[[1X]]</M>  is also a Cauchy random variable.</EXR>

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
Proving that this is indeed a density is not entirely straightforward. Louiville showed that its CDF
<D>\Phi(x) = \int_{-\infty}^x \phi(t)\, dt</D>
cannot be expressed in terms of elementary functions (trigonometric, exponential, logarithmic,
 square root, cube root etc).  However, its value may be computed nuerically for any given <M>x.</M>  

<THM>If <M>X\sim N(\mu,\sigma^2),</M>  then <M>E(X)=\mu</M>  and <M>V(X)=\sigma^2.</M></THM>


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


<HEAD2>Problem set <PS/></HEAD2>
<EXR>If <M>X\sim N(0,1),</M>  then express the following probabilities in terms of <M>\Phi(\cdot).</M>  
<OL><LI><M>P(X<1)</M></LI>
<LI><M>P(|X|<1)</M></LI>
<LI><M>P(|X|>2)</M></LI>
</OL>
</EXR>
<EXR>If <M>X\sim N(2,3^2),</M>  then express the following probabilities in terms of <M>\Phi(\cdot).</M>  
<FL><LI><M>P(X<1)</M></LI>
<LI><M>P(|X|<1)</M></LI>
<LI><M>P(|X|>2)</M></LI>
</FL>
</EXR>

<EXR>If <M>\Phi ^{-1}(0.95)=1.64</M>, then find <M>c\in\rr</M>  such that <M>P(|X-1|>c) = 0.1 </M>  where <M>X\sim N(1,1^2).</M></EXR>

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
----
::<EXR><EIMG web="hpstrans3.png"/></EXR>
::<EXR><EIMG web="hpstrans6.png"/></EXR>
::<EXR><EIMG web="hpstrans10.png"/></EXR>
::<EXR><EIMG web="hpstrans11.png"/></EXR>
::<EXR><EIMG web="hpstrans13.png"/></EXR>
::<EXR><EIMG web="hpstrans15.png"/></EXR>
::<EXR><EIMG web="hpstrans16.png"/></EXR>
::<EXR><EIMG web="hpstrans17.png"/></EXR>
::<EXR><EIMG web="hpstrans18.png"/></EXR>
::<EXR><EIMG web="hpstrans20.png"/></EXR>
::<EXR><EIMG web="hpstrans22.png"/></EXR>
::<EXR><EIMG web="hpstrans25.png"/></EXR>
::<EXR><EIMG web="hpstrans26.png"/></EXR>

</NOTE>@}
