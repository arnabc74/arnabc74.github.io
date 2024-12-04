 @{<NOTE>
<M>\newcommand{\x}[1]{X_{(#1)}}</M>
<M>\newcommand{\v}[1]{{\mathbold #1}}</M>
<HEAD1>Transformations</HEAD1>
We often work with functions of random variables. New random variables are created out of existing ones via functions. 
So a natural requirement is to be able to work out the distributions of the new random variables in terms those of the existing
 ones. There are quite a few techniques to do this. 

<HEAD2>Via CDF</HEAD2>
If we working with univariate distributions, then the most general (and often the simplest)
 technique is to use CDF. This is particularly so, if the transformation is a monotone one. 
<EXM>
If <M>X</M>  is uniformaly distributed over <M>[0,2],</M>  then find a density for <M>X^2.</M>  
<SOLN/>
Let <M>Y = X^2.</M>  A density for <M>X</M>  is <M>f(x) = [[12]]</M>  if <M>0\leq x\leq 2</M>  (and 0 else). We shall pass
 to the CDF of <M>X:</M>
<D>F(x) = <CASES>0<IF>x < 0</IF> [[x2]]<IF>0\leq x < 2</IF> 1<ELSE/></CASES> </D>
From this we shall compute the CDF of <M>Y.</M>  Clearly, <M>Y</M>  cannot take values outside <M>[0,4].</M>  So <M>G(y) = 0</M> 
 if <M>y<0</M> and <M>G(y) = 1</M>  if <M>y\geq 2.</M>  

Let <M>y\in[0,2).</M>

Then 
<D>G(y) = P(Y\leq y) = P(X^2\leq y) = P(X\leq \sqrt y) = [[12]]\sqrt y.</D>
Differentiating this, we arrive at the required density of <M>Y</M>  as
<D>g(y) = G'(y) = <CASES>[[1][4y]]<IF>y\in[0,2]</IF> 0<ELSE/></CASES></D>
</EXM> 
You see the advantage of monotonicity. Even though <M>x\mapsto x^2</M>  is a not a monotone function over <M>\rr,</M>  it
 is so when restricted to <M>[0,2].</M>  The CDF technique can handle even some simple non-monotonic cases, as we show now.

<EXM>
Let <M>X</M>  be uniform over <M>[-1,1].</M>  Find the density of <M>X^2.</M>  
<SOLN/>
Clearly, <M>Y=X^2</M>  cannot go outside <M>[0,1].</M>  So its CDF <M>G(y)</M>  must have <M>G(y)=0</M>  for <M>y<0</M> 
 and <M>G(y)=1</M>  for <M>y\geq 1.</M>  

For <M>y\in[0,1)</M>  we have
<D>G(y) = P(X^2\leq y) = P(-\sqrt y \leq X \leq \sqrt y) = \sqrt y.</D>
Differentiating we get the density
<D>g(y) = <CASES>[[1][2\sqrt y]]<IF>y\in[0,1]</IF> 0<ELSE/></CASES> </D>
</EXM>
<HEAD2>Minimum, maximum and other order statistics</HEAD2>
An interesting application of non-monotonic transformation that can be handled by CDF is about
 <TERM>order statistic</TERM>s.   If we have a random sample <M>X_1,...,X_n</M>, and sort them as <M>X_{(1)}\leq X_{(2)}\leq \cdots X_{(n)},</M> 
 then <M>X_{(i)}</M>  is called the <TERM><M>i</M>-th order statistic</TERM>. 

We shall start with the simplest case <M>\x n</M>, the maximum. Let <M>X_i</M>'s be IID with common density <M>f(x)</M> 
 and CDF <M>F(x).</M>  Let us find the density of <M>\x n.</M>  

We shall first compute the CDF <M>G(x)</M>of <M>\x n.</M>  
<D>G(x) = P(\x n\leq x) = P(\forall i~~X_i\leq x) = P(X_1\leq x)\cdots P(X_n\leq x) =(F(x))^n.</D>
Hence a density of <M>\x n</M>  is <M>g(x) = G'(x) = n(F(x))^{n-1}f(x).</M>  

<EXR>Use a similar argument to find a density for <M>\x 1</M>, the minimum.</EXR>

There is a particularly simple formula for the joint density of <M>(\x 1,...,\x n)</M>  if we know
 the joint density of <M>(X_1,...,X_n).</M>  Before giving the general form, let us warn up with a simple example.

<EXM>
Let <M>(X_1,X_2)</M>  have joint density <M>f(x_1,x_2).</M>  Then find the joint density of <M>(\x 1, \x 2).</M>
<SOLN/>
We shall first compute the joint CDF of <M>(\x 1, \x 2).</M>  Let us find <M>G(3,2) = P(\x 1\leq 3,\x 2\leq 2) = P(\x 2\leq 2),</M> 
 since <M>\{\x _1\leq 3,\, \x 2\leq 2\} = \{\x 2\leq 2\}. </M>  

More generally, if <M>x > y,</M>  then <M>G(x,y)</M>  is going to be free of <M>x.</M>

Remember that our final goal is to find the joint density of <M>(\x 1, \x 2)</M>, and for that we are going to differentiate
 partially
 w.r.t. both the arguments. So if <M>G(x,y)</M>  does not depend on either <M>x</M>  or <M>y</M>  then the density will be
 zero. 

So if <M>x > y,</M>  we have <M>g(x,y)=0.</M>  

Now let us explore <M>G(2,3) = P(\x 1\leq 2,\, \x 2\leq 3).</M> 
By the inclusion-exclusion principle, this is <M>P(X_1\leq 2,\, X_2\leq 3)+P(X_1\leq 3,\, X_2\leq 2)-P(X_1\leq 2,\, X_2\leq 2)=F(2,3)+F(3,2)+F(2,2).</M>

In general, for <M>x < y</M>  we have <M>G(x,y) = F(x,y)+F(y,x)-F(x,x).</M>

The last term will be killed when we differentiate wrt <M>y.</M>  The first two terms will
 produce <M>f(x,y)+f(y,x).</M>     

So the required joint density of <M>(\x 1, \x 2)</M>  will be <M>f(u,v),</M>  where
<D>f(u,v)=<CASES>f(u,v)+f(v,u)<IF>u < v</IF> 0<ELSE/></CASES></D>
</EXM> 
 Once you notice that only the first inclusion terms will survive the differentiations, you can easily generalise to 
any finite number of variables. This produces the following theorem.

<THM>
If <M>X_1,...,X_n</M>  are jointly distributed random variables with joint pdf <M>f(x_1,...,x_n),</M>  then the joint density
 of the order statistics <M>(\x 1,...,\x n)</M>  is 
<D>g(u_1,...,u_n)=<CASES>\sum_\pi f(u_{\pi(1)},...,u_{\pi(n)})<IF>u_1 < \cdots < u_n</IF> 0<ELSE/></CASES>,</D>
where the sum is over all <M>n!</M>  permutations <M>\pi</M>  of <M>\{1,...,n\}.</M>
</THM>
<PF>
The proof is exactly as for the bivariate case. The only point that is slightly non-trivial is the inclusion-exclusion, and
 the vanishing of all but the first inclusion terms upon differentiation. 

To see this notice that their are <M>n!</M>  inclusion terms in the first step.
A typical of these terms is like <M>P(A_\pi),</M>  where
<D>A_\pi = \{X_1\leq u_{\pi(1)},...,X_n\leq u_{\pi(n)}\},</D>  
where <M>\pi</M>  is some permutation of <M>\{1,...,n\}.</M>  If we take some other permutation <M>\xi</M>  we get <M>A_\xi.</M> 
 Then the intesection is 
<D>A_\pi\cap A_\xi = \{\forall i~~X_i\leq \min\{u_{\pi(i)},u_{\xi(i)}\}\}.</D>
This is bound to be free of at least one <M>u_i.</M>  
<BECAUSE>
Since <M>\pi\neq\xi,</M>  hence <M>\pi(i)\neq \xi(i)</M>  for some <M>i.</M>  Let <M>\pi(i) = a</M>  and <M>\xi(i) =b.</M> 
 Then it involves only the smaller of <M>u_a</M>  and <M>u_b.</M>
</BECAUSE> 

</PF>
 In the IID case we have the following special case:
<THM>
If <M>X_1,...,X_n</M>  are IID with density <M>f(x),</M>  then the joint density
 of the order statistics <M>(\x 1,...,\x n)</M>  is 
<D>g(u_1,...,u_n)=<CASES>n!f(u_1)\cdots f(u_n)<IF>u_1 < \cdots < u_n</IF> 0<ELSE/></CASES>.</D>
</THM>
<PF>
It follows immediately from the above theorem on noticing that the joint density of <M>(X_1,...,X_n)</M>  is <M>f(x_1)\cdots f(x_n).</M>
</PF>
<HEAD2>Using Jacobian</HEAD2>
To understand the Jacobian method, it will help to look at the univariate CDF method. Let <M>f(x)</M>  be a density of <M>X</M> 
 and let <M>Y=h(X),</M>  where <M>h(\cdot)</M>  is a bijection with differentiable <M>h ^{-1}(y).</M>

Then the CDF of <M>Y</M>  is <M>G(y) = P(Y\leq y) = P(X\leq h ^{-1}(y)) = F(h ^{-1}(y)),</M>  where <M>F(\cdot)</M>  is the
 CDF of <M>X.</M>  

So a density of <M>Y</M>  is 
<D>g(y) = G'(y) = [[d][dy]]F(h ^{-1}(y)) = f(h ^{-1}(y))[[d][dy]]h ^{-1}(y).</D>
Now we know that <M>h(h ^{-1} (y))\equiv y.</M>

Differentiating this wrt <M>y</M>  we have <M>h'(h ^{-1} (y))[[d][dy]] h ^{-1}(y) \equiv 1,</M>  i.e., 
<D>[[d][dy]] h ^{-1}(y) = [[1][h'(h ^{-1}(y)]].</D>
So we get 
<D>g(y) = [[f(h ^{-1}(y))][h'(h ^{-1}(y))]].</D>
If we write <M>x = h ^{-1}(y),</M>  this will look less complicated:
<D>g(y) = [[f(x)][h'(x)]].</D>
So we may say that <M>g</M>  is just same as <M>f,</M>  except that it is scaled by <M>h'.</M>   

This has an intuitive interpretation. Suppose that <M>X</M>  has uniform distribution over <M>[0,1],</M>  and we compute
 <M>Y=X^2.</M>  We actually generate 500 points from <M>[0,1].</M>  And compute <M>Y</M>  for each of them. We show
 the <M>X</M>'s along a number line, and also, separately, the <M>Y</M>'s to get:
<CIMG web="befaft.png"></CIMG>
<COMMENT>
svg('image/befaft%draw.svg',onefile=FALSE);
n = 100
x = runif(n)
y = x*x
dummy = rep(0,n)
bareplot(x,dummy)
abline(h=0)
bareplot(y,dummy)
abline(h=0)
dev.off()
</COMMENT>
To appreciate the difference, imagine 10 equal length subintervals along <M>[0,1].</M>  Each subinterval is expected to get
 about 10 points for <M>X.</M>  When you compute <M>Y=X^2,</M>  the intervals close to 0 get squeezed further down to 0,
 while those closer to 1 are squeezzed less. So the points near 0 are now more tightly together than the onces near 1. This
 leads to <M>Y</M>  having higher density near 0 than near 1. Thus, the non-uniformity of the density is controlled by the
 squeezing of the transforming function, i.e., the derivative. Smaller the derivative, higher the density. 

Now we look at the bivariate case. First a simple case. Suppose we start with soe <M>(X,Y)</M>  and transform it to <M>(U,V) = [[12]](X,Y).</M> 
 If we have a scatterplot of <M>(X,Y)</M>  then the scatterplot of <M>(U,V)</M>  is obtained by scaling everything down by
 half. So the areas get shrunk by <M>[[14]],</M>  and density becomes 4 times as much. This <M>4</M>  is the reciprocal of
 <M>[[14]],</M>  which is the area of the transformed unit square. 

More generally for a linear transformation <D><MAT>U\\V</MAT>  = A<MAT>X\\Y</MAT>,</D>
the role of <M>[[14]]</M>  is played by <M>det(A).</M>  So the density is to be divided by <M>det(A).</M>  

A differentiable nonlinear transformation can be locally approximated by a linear transformation at each point, where the
 matrix is the Jacobian. So we have divide by its determinant. Sometimes it is more conveneint to think of this as multiplying
 by the determinant of the Jacobian inverse. Formally, we get the following theorem.

<THM>
Let <M>\v X</M>  be an <M>\rr^n</M>-valued random vector. Let <M>h:\rr^n\to\rr^n</M>  be a differentiable function. Let <M>\v Y = h(\v X).</M> 
 Then <M>\v Y</M>  has density
<D>f(h ^{-1}(\v y)) J,</D>
where <M>J</M>  is the absolute determinant of Jacobian inverse evaluated at <M>h ^{-1}(\v y).</M>
</THM>
 
<HEAD2>Sum</HEAD2>
<HEAD2>Quotient</HEAD2>
<HEAD1>Problems for practice</HEAD1>
::<EXR><EIMG web="hpstrans1.png"/></EXR>
::<EXR><EIMG web="hpstrans2.png"/></EXR>
::<EXR><EIMG web="hpstrans3.png"/></EXR>
::<EXR><EIMG web="hpstrans4.png"/></EXR>
::<EXR><EIMG web="hpstrans5.png"/></EXR>
::<EXR><EIMG web="hpstrans6.png"/></EXR>
::<EXR><EIMG web="hpstrans7.png"/></EXR>
::<EXR><EIMG web="hpstrans8.png"/></EXR>
::<EXR><EIMG web="hpstrans9.png"/></EXR>
::<EXR><EIMG web="hpstrans10.png"/></EXR>
::<EXR><EIMG web="hpstrans11.png"/></EXR>
::<EXR><EIMG web="hpstrans12.png"/></EXR>
::<EXR><EIMG web="hpstrans13.png"/></EXR>
::<EXR><EIMG web="hpstrans14.png"/></EXR>
::<EXR><EIMG web="hpstrans15.png"/></EXR>
::<EXR><EIMG web="hpstrans16.png"/></EXR>
::<EXR><EIMG web="hpstrans17.png"/></EXR>
::<EXR><EIMG web="hpstrans18.png"/></EXR>
::<EXR><EIMG web="hpstrans19.png"/></EXR>
::<EXR><EIMG web="hpstrans20.png"/></EXR>
::<EXR><EIMG web="hpstrans21.png"/></EXR>
::<EXR><EIMG web="hpstrans22.png"/></EXR>
::<EXR><EIMG web="hpstrans23.png"/></EXR>
::<EXR><EIMG web="hpstrans24.png"/></EXR>
::<EXR><EIMG web="hpstrans25.png"/></EXR>
::<EXR><EIMG web="hpstrans26.png"/></EXR>
::<EXR><EIMG web="hpspdf7.png"/></EXR>
::<EXR><EIMG web="hpspdf11.png"/></EXR>

::<EXR><EIMG web="hpspdf15.png"/></EXR>
::<EXR><EIMG web="hpspdf16.png"/></EXR>
::<EXR><EIMG web="hpspdf17.png"/></EXR>
::<EXR><EIMG web="hpspdf18.png"/></EXR>
::<EXR><EIMG web="hpspdf19.png"/></EXR>
::<EXR><EIMG web="hpspdf20.png"/></EXR>
::<EXR><EIMG web="hpspdf24.png"/></EXR>

::<EXR><EIMG web="hpspdf40.png"/></EXR>

::<EXR><EIMG web="hpspdf45.png"/></EXR>
::<EXR><EIMG web="rosspdf19.png"/></EXR>


::<EXR><EIMG web="rosspdf23.png"/>
Which is Theo Exr 2??</EXR>
::<EXR><EIMG web="rosspdf24.png"/></EXR>
::<EXR><EIMG web="rosspdf35.png"/></EXR>

</NOTE>@}
