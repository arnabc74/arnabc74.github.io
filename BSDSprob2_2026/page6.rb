@{<NOTE>
<M>\newcommand{\simA}{\stackrel{\bullet}{\sim}}</M>
<M>\newcommand{\toA}{\stackrel{a.s.}{\longrightarrow}}</M>
<M>\newcommand{\toD}{\stackrel{d}{\longrightarrow}}</M>
<M>\newcommand{\toP}{\stackrel{P}{\longrightarrow}}</M>
<M>\newcommand{\v}[1]{\boldsymbol{#1}}</M>
<TITLE>Miscellaneous tools</TITLE>

<HEAD1>Slutsky's theorem</HEAD1>
We have seen that there are different modes of convergence for random variables. As long as we are working within the same
 mode, things are more or less like what we learn in real analysis. But things may get complicated if we try to mix
 different modes of convergence in the same statement. 

<EXM>If <M>X_n\toA X</M>  and
 <M>Y_n\toP Y</M>, then what   can we say about the convergence of
 <M>X_n+Y_n</M>?<SOLN/>
 One technique is to use the strength hierarchy of the different modes:
<CIMG web="rel.png"/> Here, for instance, we know that
 a.s. convergence is stronger than convergence in probability, and so we can reduce the given condition to the weakest mode
 involved: <M>X_n\toP X</M>  and <M>Y_n\toP Y</M>, and so by using property of convergence in probability, we can say <M>X_n+Y_n\toP X+Y.</M>
</EXM>
A particularly interesting situation is when <M>X_n\toD X</M>  and <M>Y_n\toP Y,</M>   and we are interested in the limiting
 behaviour of <M>X_n+Y_n.</M>  Here the weakest mode involved in convergence in distribution, and so we can reduce the given
 statement to: <M>X_n\toD X</M>  and  <M>Y_n\toD Y.</M>  But, unfortunately, convergence in distribution does not always
 respect addition. Indeed, one can get counterexamples (see <LINK to="#cex">this problem</LINK> 
 in the problem set below)
 where <M>X_n+Y_n</M>  does not converge to
 <M>X+Y</M>  in distribution. 

However, the following theorem comes to our help in a special case.

<THM name="Slutsty's theorem">Let <M>(X_n), (Y_n), X</M>  be random variables defined on the same
 probability space. <M>c\in\rr.</M>  Let
 <M>X_n\toD X</M>  and <M>Y_n\toP c.</M>

Then <OL>
<LI><M>X_n+Y_n\toD X+c.</M></LI>
<LI><M>X_n-Y_n\toD X-c.</M></LI>
<LI><M>X_nY_n\toD cX.</M></LI>
<LI><M>X_n/Y_n\toD X/c</M>  if <M>c\neq 0.</M></LI>
</OL>
</THM>
<PF>
The proof is somewhat technical in nature, and will be skipped.
</PF>
<HEAD2>Problem set</HEAD2>

<EXR>Let <M>X_n\toD N(0,1)</M>  and <M>Y_n\toP 5.</M>  Then what is the limiting distribution of <M>X_n+Y_n?</M></EXR>

<DEST name="cex"><EXR>Let <M>X_n\toD X</M>  and <M>Y_n\toP Y.</M>  Show that <M>X_n+Y_n\toD X+Y</M>  need not hold.

[Hint: Take <M>Unif(0,1)</M>  probability space. Take <M>X_n(\omega) = Y_n(\omega) = \omega.</M>  Think about how you should
 define <M>X(\omega)</M>  and <M>Y(\omega).</M> ]
</EXR></DEST>

<EXR>Let <M>X_n\toD N(0,1)</M>, <M>Y_n\toP 5</M>  and <M>Z_n\toP 4</M> with <M>z_n > 0.</M>     Then what is the
 limiting distribution of <M>[[X_n+Y_n][\sqrt {Z_n}]]?</M></EXR>

<EXR>Suppose that <M>\sqrt n(X_n-\theta)\toD Z</M>  and <M>Y_n\toP a.</M>  Show that <M>\sqrt n(X_nY_n-a\theta)\toD aZ.</M></EXR>


<EXR>Let <M>T_n</M>  be a consistent estimator of <M>\theta,</M>  and let <M>S_n</M>  be a
 consistent<IHIDE lab="?">"S_n consistent estimator of <M>\sigma^2</M> " means <M>S_n\toP
 \sigma^2</M></IHIDE> estimator of
 <M>\sigma^2.</M>  Show
 that the Studentized statistic
 <M>[[T_n-\theta][\sqrt{S_n}]]</M>  has the the same asymptotic distribution as
 <M>[[T_n-\theta][\sigma]],</M>  whenever an asymptotic distribution exists. </EXR>

<EXR>Let <M>X_n\toD X</M>  and <M>X_n+Y_n\toD X+1.</M> Does this imply that <M>Y_n\toP 1?</M> </EXR>
<COMMENT>
<LINK to="chat/Slutsky_Counterexamples_Exercises.pdf">chat/Slutsky_Counterexamples_Exercises.pdf</LINK>
<LINK to="chat/Slutsky_Qualifying_Exam_Problems.pdf">chat/Slutsky_Qualifying_Exam_Problems.pdf</LINK>
<LINK to="chat/Slutsky_Theorem_Exercises.pdf">chat/Slutsky_Theorem_Exercises.pdf</LINK>
</COMMENT>
<HEAD1>Delta method</HEAD1>
Suppose we have a differentiable function <M>f:\rr\to\rr</M>  which we visualise as a blackbox.
<CIMG web="fbox1.png"></CIMG>
Here the input <M>\mu</M>  is deterministic, and so is the output. Now suppose that the input a slightly jitterred version
 of <M>\mu:</M>
<CIMG web="fbox2.png"></CIMG>
Now the input is random, and so is the output. But if <M>X</M>  is pretty close to <M>\mu,</M>  then can we expect <M>f(X)</M> 
 to remain pretty close to <M>f(\mu)</M>? Yes, since  <M>f</M>  is continuous. Since there is
 jitter in the input, there may be jitter in the output. Which aspect of
 <M>f</M>  would control the amount of output jitter (if the level of input jitter is unchanged)?
<CIMG web="jitter.png"></CIMG>
 It should not be difficult to see that the derivative of <M>f</M>  controls this. Higher the
 derivative (in absolute value), the more jittery the output.  
 
The following theorem takes this one step further.

<THM name="Delta method">
Let <M>[[\sqrt{n}(X_n-\mu)][\sigma]]\toD</M>  some distribution. Let <M>f:\rr\to\rr</M>  be a 
 differentiable function with <M>f'(\mu)\neq 0.</M>

 Then <M>[[\sqrt{n}(f(X_n)-f(\mu))][\sigma |f'(\mu)|]]\toD</M>  the same distribution.
</THM>
<PF>Skipped.<COMMENT>Nice proof using Skorohod in Resnick (p262)</COMMENT></PF>
<HEAD2>Problem set</HEAD2>

<EXR>Suppose that <M>\sqrt n(S_n^2-\sigma^2)\toD N(0,\theta^2).</M>  Show that <M>\sqrt n(S_n-\sigma)\toD N(*(0,[[\theta^2][4 \sigma^2]])*).</M></EXR>

<EXR>If <M>\sqrt n(\bar X_n-\mu)\toD N(0,1),</M>  show that <M>\sqrt n(\log \bar X_n-\log \mu)\toD N(0,[[1][\mu^2]]).</M></EXR>
<EXR>If <M>\sqrt n(T_n-\theta)\toD N(0,\sigma^2)</M>  for some <M>\theta\neq 0,</M>  then show that 
<M>\sqrt n(*( [[1][T_n]]-[[1\theta]])*) \toD N(*(0,[[\sigma^2][\theta^2]])*).</M></EXR>

<EXR>Let <M>X_n</M>  be asymptotically <M>N(*(\mu,[[\sigma^2][n]])*).</M>  What is the asymptotic distribution of <M>[[X_n][1+X_n]]?</M></EXR>
<EXR>
We toss a coin with unknown <M>P(H)=p\in (0,1).</M>  Let <M>X_n = </M> proportion of heads. Find an asymptotic distribution
 for the odds ratio <M>[[X_n][1-X_n]].</M>  
</EXR>

<EXR><M>T_n</M>  is an estimator for a parameter <M>\theta</M>  with asymptotic distribution
 <M>N(*(\theta, [[\sigma^2][n]])*).</M>  Use deltan method to obtain an approximate 95% confidene interval for
 <M>e^\theta.</M></EXR>
<HEAD1>Variance stabilizing transform</HEAD1>
<EXM>Suppose <M>X\sim N(\mu, \sigma^2),</M>  where <M>\sigma^2</M>  is known. How can you obtain
 the 90% confidence interval for <M>\mu</M>  based on <M>X</M>?<SOLN/>
We have 
<D>Z = [[X-\mu][\sigma]]\sim N(0,1),</D>
and so taking <M>a = \phi ^{-1}(0.95),</M>  we have 
<D>P(-a < Z < a) = 0.90,</D>
<RIMG web="gautail.png"></RIMG>
or
<D>P(*(-a  <  [[X-\mu][\sigma]] < a )*) = 0.90.</D>  
In terms of <M>\mu,</M>  this is becomes 
<D>P(X-a \sigma < \mu < X + a \sigma) = 0.90.</D>  
So <M>(X-a \sigma,X + a \sigma)</M>  is a 90%
 confidence interval for <M>\mu.</M>
</EXM>
<COMMENT>
svg('image/gautailraw.svg')
curve(dnorm(x),xlim=c(-4,4))
abline(v=qnorm(0.95))
dev.off()
</COMMENT>
This example is a rather textbookish one.  Often we encounter a similar situation where the
 normality comes from CLT. There we usually have a further complication as shown in the next example.
  
<EXM><EBODY>
We have a coin with unknown probability <M>p</M>  of head. We toss it <M>n=</M>1000 times to get <M>X</M>  heads. We want to get a
 90% confidence interval for it. How to go about it?
</EBODY><SOLN/>
We can  use the CLT to conclude <M>[[Xn]]\simA N(p, [[p(1-p)][n]]).</M>
But the variance itself is a function of the unknown parameter to be estimated. Thus, even though we
 can write
<D>P(*( [[Xn]]-a\sqrt{[[p(1-p)][n]]} < p < [[Xn]]+a\sqrt{[[p(1-p)][n]]} )*)\approx 0.90,</D>  
we cannot propose <M>(*( [[Xn]]-a\sqrt{[[p(1-p)][n]]},~[[Xn]]+a\sqrt{[[p(1-p)][n]]} )*)</M>  as a confidence interval for
 <M>p</M>, since it involves <M>p</M>  itself!  
</EXM>
In general,  we often have an estimator <M>T_n</M>  for some parameter <M>\mu</M>  such that 
<D>[[\sqrt  n(T_n-\mu)][\sigma(\mu)]]\to N(0,1),</D>
for some known function <M>\sigma(\cdot).</M>  
In such a situation  we can sometimes "stabilize the variance", i.e., transform the data in a one-one way to make the
 variance free of the unknown parameter. 

<THM name="Variance stabilizing transform">
Let <M>[[\sqrt{n}(T_n-\mu)][\sigma(\mu)]]\toD</M>  some distribution. Let <M>f:\rr\to\rr</M>  be a 
strictly increasing differentiable function with <M>f'(\mu) = [[1][\sigma(\mu)]].</M>

 Then <M>\sqrt{n}(f(T_n)-f(\mu))\toD</M>  the same distribution.

Such an <M>f</M>  is called a <TERM>variance stabilizing transform</TERM>.
</THM>
<PF>By  delta method, we have 
<Q><M>[[\sqrt{n}(f(T_n)-f(\mu))][\sigma(\mu)|f'(\mu)|]]\toD</M>  the same distribution.</Q>
Now, since <M>f</M>  is strictly increasing, hence <M>f'(\mu) > 0.</M>  

Also
 <M>\sigma(\mu)f'(\mu) = 1,</M> and so  the theorem follows.
</PF>

<EXM>Find a variance stabilizing transform for the last example. Hence obtain a 90% confidence
 interval for <M>p</M>  when <M>X = 352</M> and <M>n=1000.</M><SOLN/>
There <M>E([[Xn]]) = p</M>  and <M>V([[Xn]]) = [[p(1-p)][n]].</M>  So we need <M>f'(p) = \sqrt{[[n][p(1-p)]]}.</M>  

Solving we have 
<D>f(p) = \int \sqrt{[[n][p(1-p)]]}\, dp = \cdots = \sqrt{n}\sin ^{-1} (2p-1).</D>

Using this transform we can say <M>\sqrt{n}(f(X/n)-f(p))\toD N(0,1).</M>

Hence with <M>a = \Phi ^{-1}(0.95)</M>  we have 
<D>P(*(-a < \sqrt{n}(f(X/n)-f(p)) < a)*) \approx 0.90,</D>
or
<D>P(*(f(X/n)-[[a][\sqrt n]] < f(p) < f(X/n)+[[a][\sqrt n]])*) \approx 0.90.</D>
This gives us the following confidence interval for <M>f(p)</M>:
<D>(*(f(X/n)-[[a][\sqrt n]],~f(X/n)+[[a][\sqrt n]])*) = ( -9.554731, -9.450701).</D>
Since <M>f</M>  is a strictly increasing function, we can obtain confidence interval for <M>p</M> 
 by applying <M>f  ^{-1}</M>  to this: <M>(0.8512146, 0.8527858).</M>
</EXM>
<COMMENT>
a = qnorm(0.95)
X = 352; n = 1000
f= function(x) sqrt(n)*asin(2*x-1)
finv = function(t) sin(t/sqrt(n))/2+1
c(f(X/n)-a  / sqrt(n),f(X/n)+a  / sqrt(n))
finv(c(f(X/n)-a  / sqrt(n),f(X/n)+a  / sqrt(n)))
</COMMENT>
<HEAD2>Problem set</HEAD2>
<EXR>We know that if <M>X\sim Poi(\lambda),</M>  then <M>V(X) = \lambda.</M>  Find a variance
 stabilizing transform for <M>X.</M></EXR>

<EXR>Let <M>X\sim Binom(n,p).</M>  Find a variance stabilizing transform for <M>[[Xn]].</M></EXR>
<EXR>Let <M>X\sim</M> Exponential distribution with rate <M>\lambda</M>.  Find a variance
 stabilizing transform for <M>X.</M></EXR>
<EXR>Let <M>X</M> satisfy <M>V(X) = k E(X)^ \alpha.</M>, where <M>k</M>  and <M>\alpha</M>
  are known constants.
Find a variance
 stabilizing transform for <M>X.</M></EXR>


<HEAD1>Cramer-Wold device</HEAD1>
To understand what we are about to discuss now, we need to understand what is meant by convergence in distribution for <I>random vectors</I>.
 A random vector, you will recall, is just a bunch of random variables (all defined on the same
 probability space) stacked together, e.g., <M><MAT>X\\Y</MAT></M>  or <M><MAT>X_1\\X_2\\X_3</MAT></M>. The distribution
 of a random vector <M>\v X = (X_1,...,X_d)'</M>  is defined as <M>F:\rr^d\to[0,1],</M>  where
<D>F(x_1,...,x_d) = P(X_1\leq x_1,...X_d\leq x_d).</D>
Now let <M>(\v X_n)</M>  be a sequence of random vectors. Also let <M>\v X</M>  be some random vector. Then we say <M>\v X_n\toD \v X</M> 
 if the distribution function of <M>\v X_n</M>  converges to the distribution function of <M>\v X,</M>  at every continuity
 point of the latter. More formally, let <M>F_n(\cdot)</M>  and <M>F(\cdot)</M>  be the
 distribution functions of <M>\v X_n</M>  and <M>\v X,</M>  respectively. Then we say <M>\v X_n\toD \v X</M> if for
 each continuity point <M>\v
 a</M>  of <M>F</M>  we
 have <M>F_n(\v a)\to F(\v a).</M>

As you might guess, working with random vectors is less fun than working with random variables. So we somehow want to reduce
 working with random vectors to working with the individual components. This naturally leads to the following question.
 
<EXM>Suppose that <M>X_n\toD X</M> and <M>Y_n\toD Y.</M> Does
this imply <M>(X_n,Y_n)\toD (X,Y)?</M><SOLN/>
No! As a counterexample, consider <M>Unif(0,1)</M>  probability space. Let <M>X_n(\omega) = Y_n(\omega) = \omega</M>.

Also, let <M>X(\omega) = \omega</M>  and <M>Y(\omega) = 1-\omega.</M>  

Then <M>X_n\toD X</M>  and <M>Y_n\toD Y.</M>  

But for the joint distribution consider the two diagonals shown below.
<CIMG web="diags.png"></CIMG>
<M>(X_n,Y_n)</M>  has uniform distribution on the red diagonal, while <M>(X,Y)</M>  has uniform distribution on the blue
 one. 
</EXM>
Indeed, for <M>(X_n,Y_n)\toD (X,Y)</M>  to hold, we need <I>every</I> linear combination of <M>X_n</M>  and <M>Y_n</M>  to converge
 in distribution to the corresponding linear combination of <M>X</M>  and <M>Y.</M>  For example,
 we demand that <M>2X_n-3Y_n\toD 2X-3Y.</M> 
 In general we have the following theorem.

<THM name="Cramer Wold theorem">
Let <M>(\v X_n), \v X </M> be random vectors. Then <M>\v X_n\toD \v X</M>  if and only if 
<D>\forall \v \ell\in\rr^k~~\v\ell' \v X_n\toD \v X.</D>
</THM>
<PF>
Use characteristic function (to be covered in the next page).
</PF>
<HEAD2>Applications</HEAD2>
Here are two direct applications of the Cramer-Wold device.

<THM name="Multivariate CLT">
Let <M>(\v X_n)</M>  be iid <M>k</M>-dimensional random vectors with mean vector <M>\v \mu</M>  and
 variance matrix <M>\Sigma.</M>  Then 
<D>\sqrt{n}(\v{\bar X}_n-\v\mu)\toD N_k(\v 0, \Sigma).</D>
</THM>
<THM name="Multivariate delta method">
If <M>\sqrt n(\v T_n-\v \theta)\toD N_d(\v 0, \Sigma),</M>  then <M>\sqrt n(g(\v T_n)-g(\v \theta))\toD N_d(\v 0,
 \nabla g(\v \theta)'\Sigma\nabla g(\v \theta))</M>
</THM>
<HEAD2>Problem set</HEAD2>
<EXR>
If <M>\v X_n\toD \v X</M>, then show  that each component of <M>\v X_n</M>  
 converges in distribution
 to the corresponding component of <M>\v X.</M>
</EXR>
<EXR>Prove multivariate CLT from univariate CLT using the Cramer-Wold device.</EXR>
<EXR>Consider the <M>Unif(0,1)</M>  probability space. Define <M>X(\omega) = <CASES>1<IF>w\in(*(0,[[12]])*)</IF> 0<ELSE/></CASES> </M>
and <M>Y(\omega) = <CASES>1<IF>w\in(*([[13]],[[23]])*)</IF> 0<ELSE/></CASES>.</M>  Let
 <M>(X_1,Y_1), (X_2,Y_2),...</M>  be iid versions of <M>(X,Y).</M>  Find the asymptotic distribution of <M>(\bar X_n,\bar Y_n).</M></EXR>

<EXR>Let <M>(X_n,Y_n)</M>  be an iid sequence of random vectors with mean <M>(\mu, \nu)</M>  and
 some (finite) covariance matrix. Find the  asymptotic distribution of <M>(\bar X_n,\bar Y_n).</M></EXR>

<EXR>A (possibly biased) die is rolled <M>n</M>  times. Let <M>X_{i,n}</M>  be the proportion of
 face <M>i.</M>  Find the asymptotic joint distribution of <M>(X_{1,n},...,X_{6,n}).</M></EXR>
<EXR>Prove the multivariate delta method using the Cramer-Wold device. 
</EXR>
<EXR>Let <M>X_1,X_2,...</M>  be iid with some distribution having finite moments <M>E(X_1^k) =
 \mu_k</M>  for <M>k=1,2,3,4.</M>  We are interested in the sample <M>CV</M>  of <M>X_1,...,X_n:</M>
<D>CV_n = [[S_n][\bar X_n]],</D>
where <M>\bar X_n</M>  and <M>S^2_n</M>  are the sample mean and variance of <M>X_1,...,X_n.</M>  
Use the
 multivariate CLT and delta
 method to obtain the asymptotic
distribution of <M>CV_n</M>. 
<ANS>Notice that <M>CV_n</M>  is a function of <M>(*([[1n]]\sum_1^n X_i, ~[[1n]]\sum_1^n
 X_i^2)*).</M>  Use multivariate CLT to obtain an asymptotic normal distribution for this. Next,
 write <M>CV_n</M>  as <M>g(*([[1n]]\sum_1^n X_i,~[[1n]]\sum_1^n X_i^2)*)</M>, and apply multivariate delta method. </ANS>
</EXR>
</NOTE>@}
