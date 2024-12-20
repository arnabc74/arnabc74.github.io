 @{<NOTE>
<M>\newcommand{\x}[1]{X_{(#1)}}</M>
<M>\newcommand{\v}[1]{{\mathbf #1}}</M>
<TITLE>Transformations</TITLE>
We often work with functions of random variables. New random variables are created out of existing ones via functions. 
So a natural requirement is to be able to work out the distributions of the new random variables in terms those of the existing
 ones. There are quite a few techniques to do this. 

<HEAD1>Via CDF</HEAD1>
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
<HEAD2>Problem set 1</HEAD2>
<EXR>
If <M>X</M>  has density <M>f(x)=<CASES>2x<IF>x\in(0,1)</IF> 0<ELSE/></CASES></M>, then find density of <M>X^2.</M>
</EXR>

<EXR>If <M>X</M>  has constant density over <M>(0,1)</M>  and zero outside it, then guess the
 density of <M>1-X</M>, and prove your guess.</EXR>

<EXR>If <M>X</M>  has density <M>f(x)</M>, then the density of <M>-X</M>  is 
<OL type="A"><LI><M>f(x)</M></LI><LI><M>-f(x)</M></LI><LI><M>f(-x)</M></LI><LI><M>-f(-x)</M></LI></OL>
</EXR>

<EXR>If <M>(X,Y)</M>  has joint density <M>f(x,y) = [[1][2\pi]] e^{-[[12]](x^2+y^2)},</M>  then
 find the density of <M>R = \sqrt{X^2+Y^2}.</M></EXR>

<EXR>If <M>(X,Y)</M>  is uniformly distributed over the unit disc in <M>\rr^2,</M>  and we write
 <M>(X,Y)</M>  as <M>(R,\Theta)</M>  in polar coordinates where <M>\Theta\in[0,2\pi),</M>  then
 find density of <M>R</M>  and also the density of <M>\Theta.</M></EXR>

<HEAD1>Minimum, maximum and other order statistics</HEAD1>
An interesting application of non-monotonic transformation that can be handled by CDF is about
 <TERM>order statistic</TERM>s.   If we have a random sample <M>X_1,...,X_n</M>, and sort them as <M>X_{(1)}\leq X_{(2)}\leq \cdots X_{(n)},</M> 
 then <M>X_{(i)}</M>  is called the <TERM><M>i</M>-th order statistic</TERM>. 

We shall start with the simplest case <M>\x n</M>, the maximum. Let <M>X_i</M>'s be IID with common density <M>f(x)</M> 
 and CDF <M>F(x).</M>  Let us find the density of <M>\x n.</M>  

We shall first compute the CDF <M>G(x)</M>of <M>\x n.</M>  
<D>G(x) = P(\x n\leq x) = P(\forall i~~X_i\leq x) = P(X_1\leq x)\cdots P(X_n\leq x) =(F(x))^n.</D>
Hence a density of <M>\x n</M>  is <M>g(x) = G'(x) = n(F(x))^{n-1}f(x).</M>  


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

<HEAD2>Problem set 2</HEAD2>
<EXR>Let <M>X_1,...,X_n</M>  be IID with density <M>f(x).</M>  Find a density for <M>\x 1</M>, the minimum.</EXR>

<EXR>If <M>X_1,...,X_5</M>  are IID with density <M>f(x)=<CASES>2 e^{-2x}<IF>x>0</IF>
 0<ELSE/></CASES></M>, find density of <M>\x 5.</M></EXR>

<EXR>If <M>X_1,...,X_n</M>  are IID with density 
<M>f(x)=<CASES>[[1\theta]]<IF>x\in(0,\theta)</IF>
 0<ELSE/></CASES></M>, find a constant <M>c</M>  such that <M>E(c\x n)=\theta.</M></EXR>

<EXR>If <M>X_1,X_2,X_3</M>  are IID with density 
<M>f(x)=<CASES>1<IF>x\in(0,1)</IF>
 0<ELSE/></CASES></M>, find density of <M>\x 2.</M></EXR>

<EXR>If <M>X_1,...,X_n</M>  are IID with common CDF <M>F(x),</M>  then show that the CDF of <M>\x k</M>  is
<D>P(\x k\leq x) = \sum_{j=k}^n \binom n j F(x)^j(1-F(x))^{n-j}.</D>
</EXR>
<EXR>If <M>X_1,...,X_n</M>  are IID with common density <M>f(x),</M>  then find density of <M>\x k.</M>
</EXR>


<HEAD1>Using Jacobian</HEAD1>
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

This has an intuitive interpretation. Suppose that <M>X</M>  has uniform distribution over <M>[0,1].</M>
Consider the density of <M>X.</M>   Imagine 10 equal length subintervals along <M>[0,1].</M>  Since the total 
area under the density is 1, the rectangle on each  subinterval has area <M>[1][10]].</M>  You may
 say that each subinterval accounts for <M>[1][10]]</M>  mass. 
<CIMG web="squeeze1.png">All the rectangles are identical</CIMG>
When you compute <M>Y=X^2,</M>  the intervals close to 0 get squeezed further down to 0,
 while those closer to 1 are stretched. 
<CIMG web="squeeze2.png">Rectangles are squeezed and stretched</CIMG>
But still rectangle has to account for <M>[[1][10]]</M>  mass. So the squeezed rectangles have compensate by growing taller,
 while the stretched ones do so by getting shorter.
<CIMG web="squeeze3.png">All rectnagles now again have area <M>[[1][10]].</M></CIMG>
 This
 leads to <M>Y</M>  having higher density near 0 than near 1. Thus, the non-uniformity of the density is controlled by the
 squeezing of the transforming function, i.e., the derivative. Smaller the derivative, higher the density. 

Now we look at the bivariate case. First a simple case. Suppose we start with some <M>(X,Y)</M>
 distributed uniformly on the unit square. As in the univariate case, we split <M>[0,1]</M>  into  10 equal subintervals.
 We do this along both the axes, creating a square grid.
<CIMG web="bivsq1.png"></CIMG>
The total mass is 1. Each square accounts for <M>[[1][100]]</M>  mass. Next we transform it to <M>(U,V) = (X^2,Y^2).</M> The
 grid now changes to the following.
<CIMG web="bivsq2.png"></CIMG>
To account for same mass a before, the cuboids standing on small bases must have large heights.
<COMMENT>
source('/home/asu/na/s/othernotes/talks/obj.r')
x=y=(0:2/2)^2
dx = diff(x)
dy = diff(y)
h=1/outer(dx,dy)
sink('image/hist.obj')
histObj(x,y,h)
sink()
</COMMENT>

More generally for a linear transformation <D><MAT>U\\V</MAT>  = A<MAT>X\\Y</MAT>,</D>
the role of <M>[[14]]</M>  is played by <M>det(A).</M>  So the density is to be divided by <M>det(A).</M>  

A differentiable nonlinear transformation can be locally approximated by a linear transformation at each point, where the
 matrix is the Jacobian. So we have divide by its determinant. Sometimes it is more conveneint to think of this as multiplying
 by the determinant of the Jacobian of the inverse function. Formally, we get the following theorem.

<THM>
Let <M>\v X</M>  be an <M>\rr^n</M>-valued random vector. Let <M>h:\rr^n\to\rr^n</M>  be a
bijection function with differentiable inverse. Let <M>\v Y = h(\v X).</M> 
 Then <M>\v Y</M>  has density
<D>f(h ^{-1}(\v y)) J,</D>
where <M>J</M>  is the absolute determinant of Jacobian inverse evaluated at <M>h ^{-1}(\v y).</M>
</THM>
 
<EXM>
Let <M>(X,Y)</M>  be uniformly distributed over the unit square. Let <M>U = X^2+Y</M>  and <M>V = X+Y^2.</M>  Find the joint
 density of <M>(U,V).</M>  
<SOLN/>

</EXM>
<HEAD2>Problem set 3</HEAD2>
<EXR>If <M>(X,Y)</M>  has joint density <M>f(x)=<CASES>x+y<IF>x,y\in[0,1]</IF> 0<ELSE/></CASES></M>,
 then find the joint density of <M>(X+Y, X-Y).</M> </EXR>

<EXR>If <M>(X,Y)</M>  is uniformly distributed over <M>[0,1]\times[0,2]</M>, then find the joint density of <M>(X^2,X+Y).</M></EXR>

<EXR>If <M>(X,Y)</M>  is uniformly distributed over the red rectangle below, then find
non-zero constants  <M>a,b,c,d</M>  such that <M>U=aX+bY</M>  and <M>V=cX+dY</M>  are independent.
<CIMG web="rotrect.png"></CIMG>
</EXR>
<HEAD1>Sum</HEAD1>
Suppose that we are given the joint density of <M>(X,Y).</M>  We want to find the density of
 <M>X+Y.</M>  Can we use Jacobians for this? Yes, but not directly. The Jacobian technique works
 directly only when we are dealing with transformations from <M>\rr^n</M>  to <M>\rr^n,</M>  and
 the transformation must be bijective with nonsingular Jacobian. Unfortunately, <M>(X,Y)\mapsto
 X+Y</M>  does not satisfy any of these conditions, it is from <M>\rr^2</M>  to <M>\rr,</M>  and
 is not bijective. But we can remdy this by considering the transformation <M>h(X,Y) =
 (X+Y,Y).</M>  This is a bijective nonsingular linear transformation. So the Jacobian technique will apply.

<EXM>
Let <M>(X,Y)</M>  be uniformly distributed over the unit square. Find the density of <M>X+Y.</M>
<SOLN/>
Consider <M>(U,V) = (X+Y,Y).</M>  

The support of <M>(X,Y)</M>  was <M>[0,1]\times[0,1].</M>  We need to find that of <M>(U,V).</M> 
In other words, we are looking for <M>S\seq\rr^2</M>  such that <M>(U,V)\in S</M>  if and only
 if <M>(X,Y)\in[0,1]\times[0,1].</M>

We have the constraints <M>X\geq 0,</M>  <M>X\leq 1,</M>  <M>Y\geq 0,</M>  and <M>Y\leq 1.</M>  We shall convert each of
 them to constraints on <M>U,V</M>  in two ways, forward and backward. We have <M>U=X+Y</M>  and also <M>X\geq 0</M>  and
 <M>Y\geq 0</M>. So <M>U\geq 0.</M>  That is an example of a forward constraint. Again <M>X = U-V.</M>  So <M>U-V\geq 0.</M> 
 That is an example of a backward constraint. 

Combining everything we get <M>S=\{(u,v)~:~0\leq u+v\leq 1,~0\leq v\leq 1\}.</M>

A little sketch would keep things clear. 

The absolute determinant of the Jacobian is 1. So the required density is 
<D>f(u,v) = <CASES>1<IF>(u,v)\in S</IF> 0<ELSE/></CASES> </D>
Now we need to find the marginal density of <M>U.</M>  This is 
<D>f_U(u) = \int_{-\infty}^\infty f(u,v)\, dv = \int_0^u 1\, dv = u</D>
when <M>0\leq u\leq .</M>  and 0 else.
</EXM>   
Note that the difficuly in the above example lay in working with the constraints. 
If <M>(X,Y)</M>  had joint density <M>f(x,y)</M> 
 for <M>(x,y)\in\rr^2</M>  
then the following general theorem is easy to prove.

<THM>
If <M>(X,Y)</M>  had joint density <M>f(x,y)</M> 
 for <M>(x,y)\in\rr^2</M>, then  the density of <M>X+Y</M>  is 
<D>f_{X+Y}(u) = \int_{-\infty}^\infty f(x,u-x)\, dx.</D>
</THM>
<THM>If <M>X,Y</M>  are indenedent random variables with densities <M>f(x)</M>  and <M>g(y),</M>  respectively, then 
the density of <M>X+Y</M>  is 
<D>f_{X+Y}(u) = \int_{-\infty}^\infty f(x)g(u-x)\, dx.</D>
</THM>
This gives us a way to manufacture a new density by combining two existing densities. This is called <TERM>convolution</TERM>.

<DEFN name="Convolution">
If <M>f,g</M>  are two densities, then their <TERM>convolution</TERM>  is the density <M>f*g</M>  given by
<D>(f*g)(u) = \int_{-\infty}^\infty f(x)g(u-x)\, dx.</D>
</DEFN>

<HEAD2>Problem set 4</HEAD2>

<EXR>Prove the two theorems above using Jacobian.</EXR>
<EXR>Show that <M>f*g = g*f.</M></EXR>

<EXR>Does there exist a density <M>i(x)</M>  such that for all densities <M>f</M>  we have <M>i*f = f?</M></EXR>

<EXR>If <M>X,Y</M>  are IID with common density <M>\lambda e^{-\lambda x}</M>  (<M>x>0</M>), then
 find the density of <M>X+Y.</M></EXR>

<EXR>If <M>X,Y</M>  are independently distributed uniformly over <M>(0,1),</M>  the sketch density of <M>X+Y.</M></EXR>


<EXR>If <M>X,Y</M>  are independent with common density <M>f(x)</M>, what will density of <M>X-Y</M>  be? </EXR>
<HEAD1>Quotient</HEAD1>
Sometimes we need to work with the quotient of two independent random variables. The following theorem helps when the random variables
 are both positive and independent.

<THM>
If <M>X,Y</M>  are independent positive random variables with densities <M>f_X(x)</M>  and <M>f_Y(y),</M>  respectively,
 then <M>Z=X/Y</M>  has density
<D>f_Z(z) = \int_0^\infty xf_X(x)f_Y(xz)\, dx</D>
for <M>z>0.</M>
</THM>
<HEAD2>Problem set 5</HEAD2>
<EXR>Prove the above therem using Jacobian.</EXR>

<EXR>If <M>X,Y</M>  are independent and uniformly distributed over <M>[1,2],</M>  then find density of <M>X/Y.</M></EXR>

<EXR>If <M>X,Y</M>  are IID with common density <M>f(x)=<CASES>e^-x<IF>x>0</IF> 0<ELSE/></CASES></M>,
  then find density of <M>X/Y.</M></EXR>

<EXR>A point <M>Q</M>  is chosen at random from the unit square. Let <M>Q</M>  be
 <M>(R,\Theta)</M>  in polar coordinates. Find density of <M>\tan\Theta.</M></EXR>

<HEAD1>Problems for practice</HEAD1>
::<EXR><EIMG web="hpstrans1.png"/></EXR>
::<EXR><EIMG web="hpstrans2.png"/></EXR>
::<EXR><EIMG web="hpstrans3.png"/></EXR>
::<EXR><EIMG web="hpstrans4.png"/></EXR>
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
