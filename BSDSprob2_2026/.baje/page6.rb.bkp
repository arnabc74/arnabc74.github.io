@{<NOTE>
<M>\newcommand{\toD}{\stackrel{d}{\longrightarrow}}</M>
<M>\newcommand{\toP}{\stackrel{P}{\longrightarrow}}</M>
<M>\newcommand{\v}[1]{\boldsymbol{#1}}</M>
<TITLE>Miscellaneous tools</TITLE>

<HEAD1>Slutsky's theorem</HEAD1>
<THM>Let <M>(X_n), (Y_n), X</M>  be random variables defined on the same probability space. <M>c\in\rr.</M>  Let
 <M>X_n\toD X</M>  and <M>Y_n\toP c.</M>

Then <OL>
<LI><M>X_n+Y_n\toD X+c.</M></LI>
<LI><M>X_n-Y_n\toD X-c.</M></LI>
<LI><M>X_nY_n\toD cX.</M></LI>
<LI><M>X_n/Y_n\toD X/c</M>  if <M>c\neq 0.</M></LI>
</OL>
</THM>
<PF>

</PF>
<HEAD2>Problem set</HEAD2>

<EXR>Let <M>X_n\toD N(0,1)</M>  and <M>Y_n\toP 5.</M>  Then what is the limiting distribution of <M>X_n+Y_n?</M></EXR>

<EXR>Let <M>X_n\toD X</M>  and <M>Y_n\toP Y.</M>  Show that <M>X_n+Y_n\toD X+Y</M>  need not hold.</EXR>

<EXR>Let <M>X_n\toD N(0,1)</M>, <M>Y_n\toP 5</M>  and <M>Z_n\toP 4</M> with <M>z_n > 0.</M>     Then what is the
 limiting distribution of <M>[[X_n+Y_n][\sqrt {Z_n}]]?</M></EXR>

<EXR>Suppose that <M>\sqrt n(X_n-\theta)\toD Z</M>  and <M>Y_n\toP a.</M>  Show that <M>\sqrt n(X_nY_n-a\theta)\toD aZ.</M></EXR>

<EXR>Let <M>X_n</M>  be asymptotically <M>N(*(\mu,[[\sigma^2][n]])*).</M>  What is the asymptotic distribution of <M>[[X_n][1+X_n]]?</M></EXR>

<EXR>Let <M>T_n</M>  be a consistent estimator of <M>\theta,</M>  and let <M>S_n</M>  be a
 consistent estimator of <M>\sigma^2.</M>  Show that the Studentized statistic
 <M>[[T_n-\theta][\sqrt{S_n}]]</M>  has the the same asymptotic distribution as
 <M>[[T_n-\theta][\sigma]],</M>  whenever an asymptotic distribution exists. </EXR>

<EXR>Let <M>X_n\toD X</M>  and <M>X_n+Y_n\toD X+1.</M> Does this imply that <M>Y_n\toP 1?</M> </EXR>
<COMMENT>
<LINK to="chat/Slutsky_Counterexamples_Exercises.pdf">chat/Slutsky_Counterexamples_Exercises.pdf</LINK>
<LINK to="chat/Slutsky_Qualifying_Exam_Problems.pdf">chat/Slutsky_Qualifying_Exam_Problems.pdf</LINK>
<LINK to="chat/Slutsky_Theorem_Exercises.pdf">chat/Slutsky_Theorem_Exercises.pdf</LINK>
</COMMENT>
<HEAD1>Delta method</HEAD1>
<THM name="Delta method">
Let <M>[[\sqrt{n}(X_n-\mu)][\sigma]]\toD</M>  some distribution. Let <M>f:\rr\to\rr</M>  be a 
 differentiable function with <M>f'(\mu)\neq 0.</M>

 Then <M>[[\sqrt{n}(f(X_n)-f(\mu))][\sigma f'(\mu)]]\toD</M>  the same distribution.
</THM>
<PF>Nice proof using Skorohod in Resnick (p262).</PF>
<HEAD2>Problem set</HEAD2>

<EXR>Suppose that <M>\sqrt n(S_n^2-\sigma^2)\toD N(0,\theta^2).</M>  Show that <M>\sqrt n(S_n-\sigma)\toD N(*(0,[[\theta^2][4 \sigma^2]])*).</M></EXR>

<EXR>If <M>\sqrt n(\bar X_n-\mu)\toD N(0,1),</M>  show that <M>\sqrt n(\log \bar X_n-\log \mu)\toD N(0,[[1][\mu^2]]).</M></EXR>
<EXR>If <M>\sqrt n(T_n-\theta)\toD N(0,\sigma^2)</M>  for some <M>\theta\neq 0,</M>  then show that 
<M>\sqrt n(*( [[1][T_n]]-[[1\theta]])*) \toD N(*(0,[[\sigma^2][\theta^2]])*).</M></EXR>

<EXR>
We toss a coin with unknown <M>P(H)=p\in (0,1).</M>  Let <M>X_n = </M> proportion of heads. Find an asymptotic distribution
 for the odds ratio <M>[[X_n][1-X_n]].</M>  
</EXR>

<EXR><M>T_n</M>  is an estimator for a parameter <M>\theta</M>  with asymptotic distribution
 <M>N(*(\theta, [[\sigma^2][n]])*).</M>  Use deltan method to obtain an approximate 95% confidene interval for
 <M>e^\theta.</M></EXR>
<HEAD1>Variance stabilising transform</HEAD1>
<THM name="Variance stabilising transform">
Let <M>[[\sqrt{n}(X_n-\mu)][\sigma(\mu)]]\toD</M>  some distribution. Let <M>f:\rr\to\rr</M>  be a 
 differentiable function with <M>f'(\mu) = [[1][\sigma(\mu)]].</M>

 Then <M>\sqrt{n}(f(X_n)-f(\mu))\toD</M>  the same distribution.

Such an <M>f</M>  is called a <TERM>variance stabilising transform</TERM>.
</THM>
<PF>Immediate from the last theorem.</PF>

The most common application of this is when we have an estimator <M>T_n</M>  for some parameter <M>\mu</M>  with <M>[[\sqrt n(T_n-\mu)][\sigma]]\to N(0,1).</M>
This allows us to obtain a (large sample) confidence interval for <M>\mu</M>  as <M>(T_n-a \sigma/\sqrt n,T_n+a \sigma/\sqrt n).</M> 
 But this requires <M>\sigma</M>  to be known. Often <M>\sigma</M>  is a function of the unknown <M>\mu.</M>  
Then we can use a variance stabilising transform <M>f(\cdot)</M>  to get <M>\sqrt n(f(T_n)-f(\mu))\to N(0,1),</M>  from which
 we can obtain a confidence interval for <M>f(\mu).</M>  Since <M>f</M>  is one-one we can obtain a confidence et for <M>\mu</M> 
 from it.


<HEAD1>Cramer-Wold device</HEAD1>

<EXM>Suppose that <M>X_n\toD X</M> and <M>Y_n\toD Y.</M> Does
this imply <M>(X_n,Y_n)\to (X,Y)?</M></EXM>

<THM name="Cramer Wold theorem">
Let <M>(\v X_n), \v X </M> be random vectors. Then <M>\v X_n\toD \v X</M>  if and only if 
<D>\forall \v \ell\in\rr^k~~\v\ell' \v X_n\toD \v X.</D>
</THM>
<PF>
Use characteristic function (to be covered in the next page).
</PF>

<HEAD2>Multivariate CLT</HEAD2>

<EXM>Suppose that <M>X_n\toD X</M> and <M>Y_n\toD Y.</M> Does
this imply <M>(X_n,Y_n)\to (X,Y)?</M></EXM>

<THM name="Multivariate CLT">
Let <M>(\v X_n)</M>  be iid <M>k</M>-dimensional random vectors with mean vector <M>\v \mu</M>  and
 variance matrix <M>\Sigma.</M>  Then 
<D>\sqrt{n}(\v{\bar X}_n-\v\mu)\toD N_k(\v 0, \Sigma).</D>
</THM>
<HEAD2>Problem set</HEAD2>
<EXR>Prove multivariate CLT from univariate CLT using the Cramer-Wold device.</EXR>
<EXR>Prove multivariate delta method from univariate delta method using the Cramer-Wold device.</EXR>
<EXR>Let <M>(X_n,Y_n)</M>  be an iid sequence of random vectors with mean <M>(\mu, \nu)</M>  and
 some (finite) covariance matrix. Find the  asymptotic distribution of <M>(\bar X_n,\bar Y_n).</M></EXR>

<EXR>A (pssibly biased) die is rolled <M>n</M>  times. Let <M>X_{i,n}</M>  be the proportion of
 face <M>i.</M>  Find the asymptotic joint distribution of <M>(X_{1,n},...,X_{6,n}).</M></EXR>

<HEAD2>Multivariate delta method</HEAD2>
<THM name="Multivariate delta method">
If <M>\sqrt(T_n-\theta)\toD N_d(\v 0, \Sigma),</M>  then <M>\sqrt n(g(T_n)-g(\theta))\toD N_d(\v 0,
 \nabla g(\theta)'\Sigma\nabla g(\theta))</M>
</THM>
<EXR>Use the above theorem to obtain asymptotic variance of the sample CV.</EXR>

<COMMENT>
<LINK to="chat/Cramer_Wold_Device_Exercises.pdf">chat/Cramer_Wold_Device_Exercises.pdf</LINK>
<LINK to="chat/Cramer_Wold_Device_Solution_Manual.pdf">chat/Cramer_Wold_Device_Solution_Manual.pdf</LINK>
</COMMENT>
</NOTE>@}
