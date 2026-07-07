@{<NOTE>
[Update:[Thu Jul 02 IST 2026]]
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

<EXR>Consider <M>U\sim Unif(0,1).</M>  Let <M>X_n = U^n</M>  for <M>n\in\nn</M>. Compute both
 sides of Fatou's lemma explicitly.</EXR>

<EXR>Again let <M>U\sim Unif(0,1).</M>  Let <M>X_n=<CASES>n<IF>U\in(*(0,[[1n]])*)</IF> 0<ELSE/></CASES></M>.
Compute both sides of Fatou's lemma explicitly.</EXR>

<EXR>Let <M>U\sim Expo(1).</M>  Let <M>X_n = <CASES>e^x<IF>x\in(n-1,n]</IF> 0<ELSE/></CASES></M> 
 for <M>n\in\nn.</M>  Compute both sides of Fatou's lemma explicitly.</EXR>

<EXR>Suppose that <M>(X_n)</M>  is a sequence of  random variables with <M>X_n\to
 X.</M>  If <M>\forall n\in\nn~~ E(X_n)\in [2,5]</M>, then which of the following must be true?
<VL>
<LI><M>E(X)\geq 2</M></LI>
<M>E(X)\leq 5.</M>
</VL>
Prove and/or provide counterexample(s) accordingly. 
</EXR>

<EXR>Give examples to show that equality or strict inequality may prevail in Fatou's lemma.</EXR>


<EXR>We proved Fatou's lemma from MCT. It is possible to prove MCT using Fatou's lemma quite easily. How?</EXR>

<EXR>Let <M>(X_n)</M>  be nonnegative random variables such that <M>\forall n\in\nn~~E(X_n) \leq
 M</M>  for some <M>M\in\rr.</M>  If <M>X_n\to X,</M>  then show that <M>E(X) < \infty.</M></EXR>

<EXR>Let <M>(X_n)</M>  be nonnegative random variables such that <M>\forall n\in\nn~~E(X_n) <
 \infty.</M>  If <M>X_n\to X,</M>  then must  it be true that <M>E(X) < \infty?</M></EXR>

<COMMENT>
<LINK to="chat/Fatou_Lemma_Exercises.pdf">Fatou_Lemma_Exercises.pdf</LINK>
</COMMENT>
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
<HEAD2>Applications</HEAD2>
We can think of the conclusion of MCT or DCT as limit passing through expectation: <M>\lim E(X_n) = E(\lim X_n).</M> This
 proves handy in many situations as we discuss next.
<HEAD3>Almost sure implies <M>L_1</M>  for dominated case</HEAD3>
We have seen earlier that mere a.s. convergence (along with finite existence of expectation) does not guarantee <M>L_1</M> 
 convergence. The counterexample we had given used an unbounded sequence of random variables.  Indeed, it is not possible
 to have a counterexample using a bounded (or even dominated) sequence of  random variables.

<THM>Let <M>(X_n),X</M>  be  random variables such that <M>X_n\toA X</M>  and   <M>\forall n\in\nn~~|X_n|\leq
 Y</M>  for some random variable <M>Y</M>  with <M>E(Y) < \infty.</M>  Then <M>X_n\toL 1 X.</M></THM> 
<PF>Just a restatement of the DCT.</PF>
<HEAD3>Continuity of characteristic function</HEAD3>
Let a random variable <M>X</M>  have characteristic function <M>\xi(t)</M>  or <M>t\in\rr.</M>  We want to show that <M>\xi</M> 
 is a continuous function, i.e.,
<D>\forall t\in\rr~~\forall (t_n)\seq \rr ~~(t_n\to t\implies \xi(t_n)\to \xi(t)).</D>

Take any <M>t\in\rr</M>   any <M>(t_n)\seq\rr</M>  with <M>t_n\to\rr.</M>  

To show <M>\xi(t_n)\to \xi(t),</M>  i.e., <M>E(e^{it_n X}) \to E(e^{it X})></M>

Let <M>Y_n = e^{it_n X}</M>  and <M>Y = e^{it X}.</M>  

Then <M>Y_n\to Y</M>  and <M>|Y_n|,|Y|\leq 1.</M>

Hence by DCT <M>E(Y_n)\to E(Y),</M>  as required. 

<EXR>Show that a characteristic function must also be uniformly continuous.</EXR>

<HEAD3>Continuity of expectations involving a secondary variable</HEAD3>
The characteristic function <M>E(e^{i t X})</M>  is an example of an expectation involving a secondary variable, <M>t.</M> 
 The technique we used above may be used to prove continuity of other similar expectations. This may be stated as a theorem.

<THM>
Let <M>f(x,t)</M>  be some bounded continuous function. Then for any random variable <M>E(X,t)</M>
  is a continuous function of <M>t.</M> 
</THM>


<HEAD3>Differentiation under expectation</HEAD3>
<THM>Let <M>X(t)</M>  be a random differentiabl function of <M>t.</M>  Suppose that 
<D>\exists Z~~\forall t\in\rr ~~|X'(t)|\leq Z</D>  and <M>E(Z) < \infty.</M>  Then 
<D>[[d][dt]] E(X(t)) = E(X'(t)).</D>
</THM>
<PF>
To show <M>[[E(X(t+h)) - E(X(t))][h]] \to E(X'(t))</M>  as <M>h\to 0.</M>

Enough to show that for every <M>(h_n)</M>  with <M>h_n\to 0</M>  we have <M>[[E(X(t+h_n)) - E(X(t))][h_n]] \to E(X'(t))</M> 
 as <M>n\to \infty.</M>

Take any such <M>(h_n).</M>

Define <M>Y_n = [[X(t+h_n) - X(t)][h_n]],</M>  and <M>Y = X'(t).</M>  

Then by the given condition <M>Y_n\to Y</M>.

Also by the mean value theorem <M>Y_n = X'(t_n)</M>  for some <M>t_n</M>  between <M>t</M>  and <M>t+h_n.</M>

Hence <M>|Y_n| = |X'(t_n)| \leq Z,</M>  which has finite expecation.

Hence <M>(Y_n)</M>  is a dominated sequence. 

So, by the DCT, <M>E(Y_n)\to E(Y),</M>  completing the proof.
</PF>
</NOTE>@}
