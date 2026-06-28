@{<NOTE>
[Update:[Wed Jun 17 IST 2026]]
<TITLE>Convergence theorems</TITLE>
<HEAD1>Monotone Convergence Theorem</HEAD1>
<HEAD1>Monotone convergence theorem (MCT)</HEAD1>
We would have been very happy, had there been a result saying: Whenever <M>X_n\to X</M>  we have <M>E(X_n)\to E(X)</M>. Unfortunately,
 this is not true in general (think of counterexamples). So we search for extra conditions under which it will be true. 

The following theorem is just a restatement of the second technical result discussed earlier:
<THM>
Let <M>X_n\to X</M>. Assume
<UL><LI><M>(X_n)</M>  is a non-negative, non-decreasing sequence,</LI>
<LI><M>X_n</M>'s are all simple.</LI>
</UL>
Then <M>E(X_n) \to E(X)</M>.
</THM>
 Interestingly, the last condition may be dropped (i.e., <M>X_n</M>'s need not be simple). This gives rise to the theorem
 below.
 
<THM name="Monotone convergence theorem (MCT)">
Let <M>X_n\to X</M>. Assume
<UL><LI><M>(X_n)</M>  is a non-negative, non-decreasing sequence.</LI>
</UL>
Then <M>E(X_n) \to E(X)</M>.
</THM>
<PF>
Enough to show simple random variables <M>Y_n</M>  such that <M>Y_n\uparrow X </M> and <M>Y_n\leq X_n.</M>
<BECAUSE>
We already know <M>E(Y_n)\uparrow E(X).</M>  But <M>E(X_n)</M>  is sandwiched between <M>E(Y_n)</M>  and <M>E(X).</M>
</BECAUSE>
Let <M>(Z_{n,k})_k</M>  be a simplification of <M>X_n.</M>  
<CIMG web="mctarr.png">Think of the <M>Z_{n,k}</M>'s like an infinite "matrix".</CIMG>
Each row of this "matrix" is a non-decreasing sequence. 

Let <M>Y_n = \max\{Z_{1,n},...,Z_{n,n}\}.</M>  

It is like extracting the upper triangular half of the "matrix" and taking maximum
 of each column.
<CIMG web="mctarr2.png">How <M>Y_n</M>'s are computed</CIMG>

Then <M>Y_1\leq Y_2\leq\cdots</M>
<BECAUSE>
<MULTILINE>
Y_{n+1} & = & \max\{Z_{1,n+1},...,Z_{n+1,n+1}\}\\
& \geq & \max\{Z_{1,n+1},...,Z_{n,n+1}\}<SINCE><M>\because</M> superset cannot have smaller max</SINCE>\\
& \geq & \max\{Z_{1,n},...,Z_{n,n}\},
</MULTILINE>
by non-decreasing property of <M>Z_{n,k}</M>  w.r.t. <M>k.</M>
</BECAUSE>
Also <M>Y_n\leq X_n.</M>
<BECAUSE>
<M>Z_{k,n}\leq X_k\leq X_n.</M>
</BECAUSE>
Finally, <M>Y_n\uparrow X.</M>
<BECAUSE>
We have <M>Y_k\leq X_k\leq X</M>. So <M>(Y_k)</M>  is a non-decreasing sequence bounded from above. So <M>\lim_k Y_k</M> 
 exists and <M>\lim_k Y_k\leq X</M>.

We have <M>Z_{n,k} \leq Y_k</M>  for <M>k\geq n</M>.  

Taking limit as <M>k\to \infty,</M>  we have <M>X_n\leq \lim_k Y_k.</M>

Now taking limit as <M>n\to \infty,</M>  we have <M>X\leq \lim_k Y_k.</M>  

Hence <M>\lim_k Y_k= X.</M>
</BECAUSE>
This completes the proof.
</PF>

<HEAD2>MCT for Riemann integration?</HEAD2>
Do we have an MCT for Riemann integrals, as well? Well, no, because even if <M>X_n</M>'s are
 Riemann integrable, and they increase to <M>X,</M>  there is a no guaranty that <M>X</M>  will be Riemann integrable.

Here is the standard counterexample. 

<EXM>We consider <M>[0,1]</M>  equipped with the <M>Unif[0,1]</M>   probability distribution.
Here density exists in a Riemann sense. Let <M>X</M>  be the Dirichlet function on <M>[0,1].</M>  

Since <M>\qq\cap[0,1]</M>  is countable, we may enumerate it as <M>\{r_1,r_2,...\}.</M>  Take <M>X_n=1_{\{r_1,...,r_n\}}.</M> 
 
Then the Riemann integral of each <M>X_n</M>  is <M>0.</M>  The <M>X_n</M>'s increase to <M>X.</M>  But <M>X</M>  is not
 Riemann integrable.
</EXM>

However, it may be shown that if the limit
 is a Riemann integrable, then MCT holds for Riemann integration also. 

<HEAD2>Why not decreasing?</HEAD2>
The 'M' in MCT refers to <I>monotone</I>, which may mean both increasing as well as decreasing (or non-decreasing or non-incresing).
 However, in the theorem we require the sequence of functions to be non-increasing. 


Does MCT hold for the non-increasing case? Unfortunately no, as the following counterexample shows. 

<EXM>
Here we shall work with <M>[0,1]</M>  again, equipped with <M>Unif[0,1]</M>  probability distribution. Let <M>X_n = [[1][nx]]</M> 
 (set <M>X_n=0</M>  at <M>x=0</M>). Also, take <M>X\equi0.</M>  Then <M>\forall
 \omega\in[0,1]~~X_n(w)\downarrow X(w).</M>  But <M>E(X_n)=\infty</M>  though <M>E(X)=0.</M>  


The problem is that the Lebesgue integral is <I>defined</I>  as sup of approximations <I>from below</I>.  
</EXM>
<HEAD2>Problem set <PS/></HEAD2>

<EXR>Give <M>X_n, X</M>  on <M>[0,1]</M>  equipped with <M>Unif[0,1]</M>  such that 
<OL><LI><M>X_n\to X</M>  but not monotonically</LI>
<LI><M>E(X_n), E(X)</M>  exist finitely.</LI>
<LI>But <M>E(X_n)\not\to E(X).</M></LI></OL>
<ANS>Think of constant functions and step functions with just two steps.</ANS></EXR>
<EXR>
If <M>(X_n)</M>  is a <I>nonincreasing</I> sequence of nonnegative random variables converging to some random variable <M>X,</M> 
 and <M>E(X_1)<\infty,</M>  then show that <M>E(X_n)\downarrow E(X).</M>  What if the assumption <M>E(X_1)<\infty</M>  is
 dropped?
</EXR>

<EXR>
Suppose that <M>X_n</M>'s are nonnegative random variables. Show that 
<D>E(\sum_1^\infty X_n) = \sum_1^\infty E(X_n).</D>
</EXR>
<TODO><M>\int sum = \sum \int</M>  for noneg.</TODO>
<HEAD1>Fatou's lemma</HEAD1>
<THM name="Fatou's lemma">
Let <M>(X_n)</M>  be  a sequence of nonnegative random variables.  Then
<D>E(\liminf X_n) \leq \liminf E(X_n).</D>
</THM>
<PF>
Let <M>Y_n = \inf\{X_k~:~k\geq n\}.</M>

Then, by the definition of <M>\liminf</M>, we have  <M>Y_n\uparrow \liminf X_n.</M>

So, by MCT, <M>E(Y_n)\to E(\liminf X_n).</M>

Now <M>Y_n \leq X_n,</M>  and hence <M>E(Y_n) \leq E(X_n).</M>

Hence 
<D>E(\liminf X_n) \leq \liminf E(X_n),</D>
as required.
</PF>

<HEAD1>Dominated Convergence Theorem</HEAD1>
<THM name="Dominated Convergence Theorem (DCT)">
Let <M>X_n\to X.</M>  If  <M>\forall n~~|X_n|\leq Y</M>  for some <M>Y</M>  with <M>E(|Y|)< \infty</M>, 
 then <M>E|X_n-X|\to 0</M>  and so, in particular, <M>E(X_n)\to E(X).</M>
</THM>
<PF>
Clearly, <M>|X|\leq Y.</M>

So, by triangle inequality, <M>|X_n-X|\leq |X_n|+|X|\leq 2Y.</M>

Let <M>Z_n = 2Y-|X_n-X|.</M>  Then <M>Z_n</M>'s are all nonnegative random variables. 

Applying Fatou's lemma to <M>(Z_n)</M>, we have 
<D lab="(*)">E(\liminf Z_n)\leq \liminf E(Z_n).</D>
Now 
<D>\liminf Z_n = 2Y-\limsup|X_n-X| = 2Y,</D>
and 
<D>\liminf E(Z_n) = 2E(Y)-\limsup E|X_n-X| .</D>
So (*) becomes 
<D>2E(Y)\leq 2E(Y)-\limsup E|X_n-X|,</D>
or <M>\limsup E|X_n-X|\leq 0.</M>

Hence <M>E|X_n-X|\to 0,</M>  as required.
</PF>

<TODO><OL><LI>Differentiation under integral.</LI>
<LI>Conyinuity of parameter dependent integrals.</LI>
<LI>Almost sure implies <M>L_1</M>  for dominated case.</LI>
<LI>Continuity of CF.</LI>
</OL></TODO>
</NOTE>@}
