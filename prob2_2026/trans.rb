 @{<NOTE>
<M>\newcommand{\x}[1]{X_{(#1)}}</M>
<M>\newcommand{\v}[1]{{\mathbf #1}}</M>
<TITLE>Transformations</TITLE>
We often work with functions of random variables. New random variables are created out of existing ones via functions. 
So a natural requirement is to be able to work out the distributions of the new random variables in terms those of the existing
 ones. There are quite a few techniques to do this. 

<HEAD1 u="https://youtu.be/I-bRxjHDWNU">Via CDF</HEAD1>
If we working with univariate distributions, then the most general (and often the simplest)
 technique is to use CDF. This is particularly so, if the transformation is a monotone one. 
<EXM>
If <M>X</M>  is uniformly distributed over <M>[0,2],</M>  then find a density for <M>X^2.</M>  
<SOLN/>
Let <M>Y = X^2.</M>  A density for <M>X</M>  is <M>f(x) = [[12]]</M>  if <M>0\leq x\leq 2</M>  (and 0 else). We shall pass
 to the CDF of <M>X:</M>
<D>F(x) = <CASES>0<IF>x < 0</IF> [[x2]]<IF>0\leq x < 2</IF> 1<ELSE/></CASES> </D>
From this we shall compute the CDF of <M>Y.</M>  Clearly, <M>Y</M>  cannot take values outside <M>[0,4].</M>  So <M>G(y) = 0</M> 
 if <M>y<0</M> and <M>G(y) = 1</M>  if <M>y\geq 4.</M>  

Let <M>y\in[0,4).</M>

Then 
<D>G(y) = P(Y\leq y) = P(X^2\leq y) = P(X\leq \sqrt y) = [[12]]\sqrt y.</D>
Differentiating this, we arrive at the required density of <M>Y</M>  as
<D>g(y) = G'(y) = <CASES>[[1][4\sqrt y]]<IF>y\in(0,4)</IF> 0<ELSE/></CASES></D>
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
<D>g(y) = <CASES>[[1][2\sqrt y]]<IF>y\in(0,1)</IF> 0<ELSE/></CASES> </D>
</EXM>
<HEAD2>Problem set <PS/></HEAD2>
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

<HEAD1 u="https://youtu.be/iXBVeR0qeEA">Order statistics (part 1)</HEAD1>
An interesting application of non-monotonic transformation that can be handled by CDF is about
 <TERM>order statistic</TERM>s.   If we have a random sample <M>X_1,...,X_n</M>, and sort them as <M>X_{(1)}\leq X_{(2)}\leq \cdots X_{(n)},</M> 
 then <M>X_{(i)}</M>  is called the <TERM><M>i</M>-th order statistic</TERM>. 

We shall start with the simplest case <M>\x n</M>, the maximum. Let <M>X_i</M>'s be IID with common density <M>f(x)</M> 
 and CDF <M>F(x).</M>  Let us find the density of <M>\x n.</M>  

We shall first compute the CDF <M>G(x)</M>of <M>\x n.</M>  
<D>G(x) = P(\x n\leq x) = P(\forall i~~X_i\leq x) = P(X_1\leq x)\cdots P(X_n\leq x) =(F(x))^n.</D>
Hence a density of <M>\x n</M>  is <M>g(x) = G'(x) = n(F(x))^{n-1}f(x).</M>  
<HEAD2>Problem set <PS/></HEAD2>
<EXR>Let <M>X_1,...,X_n</M>  be IID with density <M>f(x).</M>  Find a density for <M>\x 1</M>, the minimum.</EXR>

<EXR>If <M>X_1,...,X_5</M>  are IID with density <M>f(x)=<CASES>2 e^{-2x}<IF>x>0</IF>
 0<ELSE/></CASES></M>, find density of <M>\x 5.</M></EXR>

<EXR>If <M>X_1,...,X_n</M>  are IID with density 
<M>f(x)=<CASES>[[1\theta]]<IF>x\in(0,\theta)</IF>
 0<ELSE/></CASES></M>, find a constant <M>c</M>  such that <M>E(c\x n)=\theta.</M></EXR>

<HEAD1 u="https://youtu.be/4Jm_oZYM4xY">Order statistics (part 2)</HEAD1>
If <M>X_1,...,X_n</M>  are IID with density <M>f(x)</M>  then there is a particularly simple formula for the joint density of <M>(\x 1,...,\x n).</M>
Before giving the general form, let us warm up with a simple example.

<EXM>
Let <M>X_1, X_2</M>  be IID with density <M>f(x)</M>  and CDF <M>F(x).</M>
Show that the joint CDF of <M>(\x 1, \x 2)</M>  (call it <M>G(x,y)</M>, say)  is free of
 <M>x</M>  when <M>x>y.</M>  So what will be <M>[[\partial^2][\partial x\partial y]] G(x,y)</M>  in this case?
<SOLN/>
To keep things concrete, let's first work with <M>x=3</M>  and <M>y=2.</M>  Then
<M>G(3,2) = P(\x 1\leq 3,\x 2\leq 2) = P(\x 2\leq 2),</M> 
 since <M>\{\x 1\leq 3,\, \x 2\leq 2\} = \{\x 2\leq 2\}. </M>  

More generally, if <M>x > y,</M>  then <M>G(x,y)</M>  is going to be free of <M>x.</M>


So we have <M>[[\partial^2][\partial x\partial y]] G(x,y) = 0</M>  if <M>x > y.</M>
</EXM>
If we work with <M>X_1,...,X_n</M>  instead of just <M>X_1,X_2,</M>  then the same argument would show that 
<M>[[\partial^n][\partial x_1\cdots\partial x_n]] G(x_1,...,x_n) = 0</M>  unless <M>x_1\leq x_2\leq\cdots\leq x_n.</M> 

<EXM>Same set up as in the last example. Now find <M>G(x,y)</M>  for <M>x < y.</M>  Again find <M>[[\partial^2][\partial x\partial y]] G(x,y).</M>
<SOLN/>
Let us start with <M>x=3</M>  and <M>y=2.</M>  Then
<M>G(2,3) = P(\x 1\leq 2,\, \x 2\leq 3).</M> 

By the inclusion-exclusion principle, this is <M>P(X_1\leq 2,\, X_2\leq 3)+P(X_1\leq 3,\, X_2\leq 2)-P(X_1\leq 2,\, X_2\leq 2)=F(2)F(3)+F(3)F(2)-F(2)^2.</M>

In general, for <M>x < y</M>  we have <M>G(x,y) = 2F(x)F(y)-F(x)^2.</M>

The last term will be killed when we differentiate wrt <M>y.</M>  The first term will
 produce <M>2f(x)f(y).</M>     So <M>[[\partial^2][\partial x\partial y]] G(x,y)= 2f(x)f(y).</M>
</EXM> 
Again, if we work with <M>X_1,...,X_n</M>  instead of just <M>X_1,X_2,</M>  then the same argument would show that 
<M>[[\partial^n][\partial x_1\cdots\partial x_n]] G(x_1,...,x_n) = n!f(x_1)f(x_2)\cdots f(x_n)</M> if
 <M>x_1\leq x_2\leq\cdots\leq x_n.</M> 

Combining our findings from the two example,  
we get the following theorem.

<THM>
If <M>X_1,...,X_n</M>  are IID with density <M>f(x),</M>  then the joint density
 of the order statistics <M>(\x 1,...,\x n)</M>  is 
<D>g(x_1,...,x_n)=<CASES>n!f(x_1)\cdots f(x_n)<IF>x_1 < \cdots < x_n</IF> 0<ELSE/></CASES>.</D>
</THM>
<COMMENT><PF>
The proof is exactly as for the bivariate case. The only point that is slightly non-trivial is the inclusion-exclusion, and
 the vanishing of all but the first inclusion terms upon differentiation. 

To see this, notice that there are <M>n!</M>  inclusion terms in the first step.
A typical such term is like <M>P(A_\pi),</M>  where
<D>A_\pi = \{X_1\leq x_{\pi(1)},...,X_n\leq x_{\pi(n)}\},</D>  
where <M>\pi</M>  is some permutation of <M>\{1,...,n\}.</M>  If we take some other permutation <M>\xi</M>  we get <M>A_\xi</M>,
 then a typical exclusion term in the second step is the intersection  
<D>A_\pi\cap A_\xi = \{\forall i~~X_i\leq \min\{x_{\pi(i)},x_{\xi(i)}\}\}.</D>
This is bound to be free of at least one <M>x_i.</M>  
<BECAUSE>
Since <M>\pi\neq\xi,</M>  hence <M>\pi(i)\neq \xi(i)</M>  for some <M>i.</M>  Let <M>\pi(i) = a</M>  and <M>\xi(i) =b.</M> 
 Then it involves only the smaller of <M>x_a</M>  and <M>x_b.</M>
</BECAUSE> 

</PF></COMMENT>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>If <M>X_1,X_2,X_3</M>  are IID with density 
<M>f(x)=<CASES>1<IF>x\in(0,1)</IF>
 0<ELSE/></CASES></M>, find density of <M>\x 2.</M></EXR>

<EXR>If <M>X_1,...,X_n</M>  are IID with common CDF <M>F(x),</M>  then show that the CDF of <M>\x k</M>  is
<D>P(\x k\leq x) = \sum_{j=k}^n \binom n j F(x)^j(1-F(x))^{n-j}.</D>
</EXR>
<EXR>If <M>X_1,...,X_n</M>  are IID with common density <M>f(x),</M>  then find density of <M>\x k.</M>
</EXR>

<HEAD1 u="https://youtu.be/7HN_a4n5oDo">Order statistics (part 3)</HEAD1>
 Here we shall dicuss an interesting heuristics. 

<EXM>If <M>X_1,...,X_{20}</M>  are IID with density <M>f(x),</M>  then write down the joint density of <M>(\x 3, \x 4, \x 7, \x {15}).</M>
<SOLN/>
We can of course derive the required joint density by starting with the joint density of <M>(\x 1,...,\x {20})</M>  and then
 integrating over all <M>\x i</M>  for <M>i\not\in\{3,4,7,15\}.</M>  But there is a simple heuristic alternative worth learning.

Let the required joint density be <M>g(a,b,c,d).</M>  Think of it like this: if, for some very
 small <M>\epsilon > 0</M>  we write <M>x\approx y</M>  to mean <M>x\in(*(y-[[\epsilon2]],y+[[\epsilon2]])*),</M>  then
<D>P(\x 3\approx a,\, \x 4\approx b,\, \x 7\approx c,\, \x {15}\approx d)\approx g(a,b,c,d) \epsilon^4.</D>
The heuristic technique tries to find the probability directly using combinatorics (and a pinch of salt). Consider the number
 line below, and think of how the <M>\x i</M>'s are scattered along it.
 <CIMG web="ordline0.png"></CIMG>
From this we can see how many <M>X_i</M>'s need to be where:
 <CIMG web="ordline1.png"></CIMG>
Partition <M>\{1,2,...,20\}</M>  into <M>2+1+1+2+1+7+5.</M>  This may be done in <M>[[20!][2!2!7!5!]]</M>  ways.
Now we write down the probability for each "block". The singleton blocks have approximate probability as "density <M>\times \epsilon.</M> 
 <CIMG web="ordline2.png"></CIMG>
Multiplying everything we get the final answer
<D>g(a,b,c,d) = <CASES>[[20!][2!2!7!5!]] f(a)f(b)f(c)f(d)(F(a))^2(F(c)-F(b))^2 (F(d)-F(c))^7 (1-F(d))^5<IF>a < b < c < d</IF> 0<ELSE/></CASES></D>
</EXM>
<HEAD2>Problem set <PS/></HEAD2>

<EXR>Check that this heutistic method gives the same density for <M>\x 1</M>  and <M>\x n</M>  that we obtained earlier.</EXR>

<EXR>Write down the joint density of <M>(\x 1, \x n)</M>  using this heuristic method.</EXR>

<EXR>Let <M>X_1,...,X_{15}</M>  be a random sample from a distribution with density <M>f(x).</M> 
 Write down a density for the sample median. Sample median is the central value among the
 <M>X_i</M>'s, i.e., <M>\x 8</M>  in this case.</EXR>

<HEAD1 u="https://youtu.be/lw4-9KY6MW0">Jacobian formula (1 dim)</HEAD1>
To understand the Jacobian method, it will help to look at the univariate CDF method. Let <M>f(x)</M>  be a density of <M>X</M> 
 and let <M>Y=h(X),</M>  where <M>h(\cdot)</M>  is an increasing bijection with differentiable <M>h ^{-1}(y).</M>

Then the CDF of <M>Y</M>  is <M>G(y) = P(Y\leq y) = P(h(X)\leq y) = P(X\leq h ^{-1}(y)) = F(h
 ^{-1}(y)),</M>  where <M>F(\cdot)</M>  is the
 CDF of <M>X.</M>  

So <M>Y</M>  has density given by
<D>g(y) = G'(y) = [[d][dy]]F(h ^{-1}(y)) = f(h ^{-1}(y))[[d][dy]]h ^{-1}(y).</D>
So far we are assuming that <M>h(\cdot)</M>  is an increasing function. A very similar argument works for a decreasing function
 as well. In general for any bijection <M>h(\cdot),</M>  we have
<D lab="(*)">g(y) =  f(h ^{-1}(y)) [|[ [[d][dy]]h ^{-1}(y) ]|].</D>


<HEAD2>Problem set <PS/></HEAD2>
<EXR>If <M>X</M>  has density <M>f(x)</M>, then find density of <M>aX+b</M>  for <M>a\neq 0</M>  and <M>b\in\rr.</M></EXR>

<EXR>If <M>X</M>  has density <M>f(x) =<CASES>c\, x e^{-x}<IF>x>0</IF> 0<ELSE/></CASES> </M>, then
 find density of <M>Y = \sqrt{X}.</M></EXR>

<EXR>Let <M>X</M>  have density <M>f(x) = <CASES>2 e^{-2x}<IF>x>0</IF> 0<ELSE/></CASES></M>  Find
 density of <M>Y=X^2</M>  using (*).</EXR>
<EXR>Let <M>X</M>  have density <M>f(x).</M>  Find
 density of <M>Y=a X+b</M>  using (*) if <M>a\neq 0.</M>  </EXR>

<EXR>Let <M>X</M>  have uniform distribution over <M>(-1,1).</M>  Find density of <M>Y=\sin X</M>  using (*).</EXR>
<HEAD1 u="https://youtu.be/sGlCID43YeE">Jacobian formula (intuition)</HEAD1>
 
Let's first massage (*) into a more elegant form. We know that <M>h(h ^{-1} (y))\equiv y.</M>

Differentiating this wrt <M>y</M>  we have <M>h'(h ^{-1} (y))[[d][dy]] h ^{-1}(y) \equiv 1,</M>  i.e., 
<D>[[d][dy]] h ^{-1}(y) = [[1][h'(h ^{-1}(y))]].</D>
So we get 
<D>g(y) = [[f(h ^{-1}(y))][ |h'(h ^{-1}(y))| ]].</D>
If we write <M>x = h ^{-1}(y),</M>  this will look less complicated:
<D>g(y) = [[f(x)][ |h'(x)| ]].</D>
So we may say that <M>g</M>  is just same as <M>f,</M>  except that it is scaled by <M>h'.</M>   

 Suppose that <M>X</M>  has uniform distribution over <M>[0,1].</M>
Consider the density of <M>X.</M>   Imagine 10 equal length subintervals along <M>[0,1].</M>  Since the total 
area under the density is 1, the rectangle on each  subinterval has area <M>[[1][10]].</M>  You may
 say that each subinterval accounts for <M>[[1][10]]</M>  mass. 
<CIMG web="squeeze1.png">All the rectangles are identical</CIMG>
When you compute <M>Y=X^2,</M>  the intervals close to 0 get squeezed further down to 0,
 while those closer to 1 are stretched. 
<CIMG web="squeeze2.png">Rectangles are squeezed and stretched</CIMG>
But still each rectangle has to account for <M>[[1][10]]</M>  mass. So the squeezed rectangles have
to  compensate by growing taller,
 while the stretched ones compensate by getting shorter.
<CIMG web="squeeze3.png">All rectangles now again have area <M>[[1][10]].</M></CIMG>
 This
 leads to <M>Y</M>  having higher density near 0 than near 1. Thus, the non-uniformity of the density is controlled by the
 squeezing of the transforming function, i.e., the derivative. Smaller the derivative, higher the density. 
<HEAD2>Problem set <PS/></HEAD2>
<EXR>
If <M>X</M>  has uniform distribution over (2,4)
then roughly sketch the density of <M>Y = [[1X]].</M>  Don't apply the Jacobian formula
 algeraically. Think in terms of which part
 gets squeezed/expanded. 
</EXR>

<EXR>Suppose that <M>X</M>  is uniform over <M>(-1,1)</M>  and <M>Y=X^2.</M>  (not a bijection!).
 Guess the form of the density of <M>Y.</M>  Do you see why we needed the transform to be bijective in our intuition?
<ANS>We were assuming that density of <M>Y</M>  at any given point was controlled by the density
 of <M>X</M>  at only one point. But in this example, the density of <M>Y</M>  at, say,
 <M>y=[[14]]</M>  is governed by the density of <M>X</M>  at <M>x=[[12]]</M>  as well as <M>x=-[[12]].</M></ANS>
 </EXR>

<HEAD1 u="https://youtu.be/GMC3sHP9HWg">Jacobian matrix</HEAD1>
In (*) above we had
<D>g(y) =  f(h ^{-1}(y)) [|[ [[d][dy]]h ^{-1}(y) ]|],</D>
where <M>h</M>  was assumed to be a bijection with differentiable <M>h ^{-1}.</M>  

In order to  generalise this  to the multivariate set up, we need to work with a bijection <M>h:\rr^n\to\rr^n.</M> 
   We need to do two things:
<UL><LI>we need to define differentiability for functions from <M>\rr^n</M>  to <M>\rr^n.</M>
</LI><LI>
we need to compute derivative of such functions.</LI></UL>
<HEAD2>Multivariate differentiation</HEAD2>
<M>f:\rr\to\rr</M>  is called differentiable at some <M>a</M>, if 
<D>\lim_{x\to a} [[f(x)-f(a)][x-a]]\mbox{ exists finitely.}</D>
If this limit is called <M>m</M>, then this can be recast in the geometrically more applealing way as 
<D>\exists m\in\rr~~ \lim_{x\to a}[[f(x)-\{f(a)+m\cdot(x-a)\}][x-a]] = 0.</D>
This is geometrically more appealing because you can think of this as <M>f(x)-f(a)\approx m\cdot(x-a),</M>  i.e., near <M>a</M> 
 the graph of <M>f</M>  looks like the line passing through <M>(a,f(a))</M>  with slope <M>m.</M>  

This immediately generalises to <M>f:\rr^n\to\rr^m</M>  as follows.
<DEFN name="Multivariate differentiation">
Call <M>f:\rr^n\to\rr^m</M>  <TERM>differentiable</TERM> at <M>\v a\in\rr^n</M>  if 
<D>\exists M_{m\times n} ~~ \lim_{\v x\to \v a}[[f(\v x)-\{f(\v a)+M\cdot(\v x-\v a)\}][\|\v x-\v a\|]] = \v 0.</D>
</DEFN>
Such a matrix <M>M</M>  may depend on <M>\v a,</M>  and will be unique, and its <M>(i,j)</M>-th entry will be given by 
<D>m_{ij} = [[\partial f_i][\partial x_j]].</D>
Here <M>f_i</M>  is the <M>i</M>-th component of <M>f.</M>  

Let us digest this using an example. 


<EXM>
Let <M>f:\rr^2\to\rr^2</M>  be <M>f(x_1,x_2) = (\sin (x_1x_2),\, x_1-x_2^2).</M>  Find its Jacobian. Also find the determinant
 of the Jacobian.
<SOLN/>
Note that <M>f</M>  consists of two function <M>f_1,f_2:\rr^2,\to\rr.</M>  These are its <TERM>component</TERM>  functions,
 <M>f_1(x_1,x_2) = \sin(x_1x_2)</M>  and <M>f_2(x_1,x_2) = x_1-x_2^2.</M>  

The Jacobian is a <M>2\times 2</M>  matrix with <M>(i,j)</M>-th entry <M>[[\partial f_i][\partial x_j]].</M>  Note that each
 row is devoted to a single <M>f_i</M>  and each column to a single <M>x_j.</M>  In general, if we had <M>f:\rr^n\to\rr^m</M> 
 the matrix would have been <M>m\times n.</M>  

In our case 
<MULTILINE>
[[\partial f_1][\partial x_1]] & = & x_2\cos (x_1x_2),\\
[[\partial f_1][\partial x_2]] & = & x_1\cos (x_1x_2),\\
[[\partial f_2][\partial x_1]] & = & 1\\
[[\partial f_2][\partial x_2]] & = & -2x_2.
</MULTILINE>
So the Jacobian is 
<D><MAT>x_2\cos (x_1x_2) & x_1\cos (x_1x_2)\\ 1 & -2x_2</MAT>.</D>
Its determinant is 
<D>x_2\cos (x_1x_2)\times(-2x_2)- x_1\cos (x_1x_2)\times 1  = -(2x_2^2+x_1)\cos (x_1x_2).</D>
</EXM>  

<Q><ALERT/>If all this looks like unmotivated magic, you might benefit from <LINK
 to="https://youtu.be/zm3L8Dw79xA?si=IVz7PWwway-myQ3R">this introductory  video
 that I have made for Jacobians</LINK>. The video is about 21 min long, which is too long for my taste. You may like to navigate
 to relevant portions of it using the following guideline:
<UL>
<LI><LINK to="https://youtu.be/zm3L8Dw79xA?si=IVz7PWwway-myQ3R&t=0s">0:00</LINK>: Casting univariate
 differentiation into a form suitable for generalisation. </LI>
<LI><LINK to="https://youtu.be/zm3L8Dw79xA?si=IVz7PWwway-myQ3R&t=271s">4:31</LINK>: Differentiation of <M>f:\rr^n\to\rr^m</M> </LI>
<LI><LINK to="https://youtu.be/zm3L8Dw79xA?si=IVz7PWwway-myQ3R&t=514s">8:34</LINK>: Geometric
 interpretation of Jacobian matrices </LI>
<LI><LINK to="https://youtu.be/zm3L8Dw79xA?si=IVz7PWwway-myQ3R&t=905s">15:05</LINK>: Why
 care about the determinant of Jacobian </LI>
</UL>
</Q>
<COMMENT>
First we look at the bivariate case using  a simple example. Suppose we start with some <M>(X,Y)</M>
 distributed uniformly on the unit square. As in the univariate case, we split <M>[0,1]</M>  into  10 equal subintervals.
 We do this along both the axes, creating a square grid.
<CIMG web="bivsq1.png"></CIMG>
The total mass is 1. Each square accounts for <M>[[1][100]]</M>  mass. Next we transform it to <M>(U,V) = (X^2,Y^2).</M> The
 grid now changes to the following.
<CIMG web="bivsq2.png"></CIMG>
To account for same mass as before, the cuboids standing on smaller bases must have largeer heights.
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

More generally, for a linear transformation <D><MAT>U\\V</MAT>  = A<MAT>X\\Y</MAT>,</D>
the role of <M>[[14]]</M>  is played by <M>det(A).</M>  So the density is to be divided by <M>det(A).</M>  

A differentiable nonlinear transformation can be locally approximated by a linear transformation at each point, where the
 matrix is the Jacobian. So we have to divide by its determinant. Sometimes it is more conveneint
 to think of this as multiplying
 by the determinant of the Jacobian of the inverse function. Formally, we get the following theorem.
</COMMENT>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>Compute the Jacobian matrix for <M>h(x,y) = (x+y,x-y).</M></EXR>

<EXR>What is the Jacobian matrix for the transform <M>h:\rr^n\to\rr^n</M>  where <M>h(\v x) = A\v
 x+\v b</M>  for some matrix <M>A_{n\times n}</M>  and vector <M>\v b_{n\times 1}</M>?</EXR>

<HEAD1 u="https://youtu.be/9pWai6cA7no">Multivariate Jacobian formula</HEAD1>
We shall imitate our familiar  univariate Jacobian formula
<D>g(y) =  f(h ^{-1}(y)) [|[ [[d][dy]]h ^{-1}(y) ]|]</D>
to get the following theorem. 
<THM>
Let <M>\v X</M>  be an <M>\rr^n</M>-valued random vector. Let <M>h:\rr^n\to\rr^n</M>  be a
bijection with differentiable inverse. Let <M>\v Y = h(\v X).</M> 
 Then <M>\v Y</M>  has density
<D>g(\v y) = f(h ^{-1}(\v y)) J,</D>
where <M>J</M>  is the absolute determinant of Jacobian of <M>h ^{-1}(\v y).</M>
</THM>
 We shall not prove this theorem here. But the intuitive argument is just as in the univariate case. 

<EXM>
Let <M>\v X = (X_1,X_2)</M>  be uniformly distributed over <M>[1,2]\times[3,4].</M> Let <M>Y_1 =
 X_1X_2</M>  and <M>Y_2 = X_1.</M>  Find the joint
 density of <M>\v Y = (Y_1,Y_2).</M>  
<SOLN/>
Let <M>S = [1,2]\times[3,4].</M>  

Here the transform is <M>h(x_1,x_2) = (x_1x_2,x_1).</M>

Clearly, <M>h:S\to h(S)</M>  is a bijection,  because given <M>y_1=x_1x_2</M>  and <M>y_2=x_1</M>   you can recover <M>(x_1,x_2)\in[1,2]\times[3,4]</M> 
 uniquely. 

The inverse transform is <M>h ^{-1}(y_1,y_2) = (*(y_2,[[y_1][y_2]])*).</M>
The Jacobian of this is 
<D><MAT>0 & 1\\[[1][y_2]] & -[[y_1][y_2^2]]</MAT>,</D>
which has absolute determinant <M>[[1][y_2]],</M>  since <M>y_2 > 0.</M>

So the required density will be 
<D>g(y_1,y_2)  = <CASES>[[1][y_2]]<IF>(*(y_2,[[y_1][y_2]])*)\in S</IF> 0<ELSE/></CASES></D>
Often we want to write it as 
<D>g(y_1,y_2)  = <CASES>[[1][y_2]]<IF>(y_1,y_2)\in T</IF> 0<ELSE/></CASES></D>
for some suitably defined <M>T.</M>  This may be done as follows.  

<M>(*(y_2,[[y_1][y_2]])*)\in S</M>  means 
<D>1\leq y_2 \leq 2 \mbox{ and } 3\leq [[y_1][y_2]]\leq 4.</D>
Sketching these restrictions we get this region:
<CIMG web="jreg.png"><M>T</M>  shown in red</CIMG>
</EXM>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>If <M>(X,Y)</M>  has joint density <M>f(x)=<CASES>x+y<IF>x,y\in[0,1]</IF> 0<ELSE/></CASES></M>,
 then find the joint density of <M>(X+Y, X-Y).</M> </EXR>

<EXR>If <M>(X,Y)</M>  is uniformly distributed over <M>[0,1]\times[0,2]</M>, then find the joint density of <M>(X^2,X+Y).</M></EXR>

<EXR>If <M>(X,Y)</M>  is uniformly distributed over the red rectangle below, then find
non-zero constants  <M>a,b,c,d</M>  such that <M>U=aX+bY</M>  and <M>V=cX+dY</M>  are independent.
<CIMG web="rotrect.png"></CIMG>
</EXR>
<HEAD1 u="https://youtu.be/xAPiZWIYiF4">Sum</HEAD1>
Suppose that we are given the joint density of <M>(X,Y).</M>  We want to find the density of
 <M>X+Y.</M>  Can we use Jacobians for this? Yes, but not directly. The Jacobian technique works
 directly only when we are dealing with transformations from <M>\rr^n</M>  to <M>\rr^n,</M>  and
 the transformation must be bijective with nonsingular Jacobian. Unfortunately, <M>(X,Y)\mapsto
 X+Y</M>  does not satisfy any of these conditions, it is from <M>\rr^2</M>  to <M>\rr,</M>  and
 is not bijective. But we can remdy this by considering the transformation <M>h(X,Y) =
 (X,X+Y).</M>  This is a bijective nonsingular linear transformation. So the Jacobian technique will apply.

<EXM>
Let <M>(X_1,X_2)</M>  have joint density <M>f(x_1,x_2).</M> Find  density of <M>X_1+X_2.</M>
<SOLN/>
Consider <M>(Y_1,Y_2) = (X_1,X_1+X_2).</M>  

Here the transform is <M>h(x_1,x_2) = (x_1,x_1+x_2).</M>  This is a bijection from <M>\rr^2</M>  to <M>\rr^2</M>  with inverse
 <M>h ^{-1}(y_1,y_2) = (y_1,y_2-y_1).</M>

The Jacobian matrix is <M><MAT>1 & 0\\-1 & 1</MAT></M>, with absolute determinant  1. So the required density is 
<D>g(y_1,y_2) = f(y_1,y_2-y_1). </D>
Now we need to find the marginal density of <M>Y_2.</M>  This is 
<D>g_2(y_2) = \int_{-\infty}^\infty g(y_1,y_2)\, dy_1 = \int_{-\infty}^\infty f(y_1,y_2-y_1)\, dy_1.</D>
</EXM>
The result is quite useful, and worth recording as a theorem:
<THM>
If <M>(X,Y)</M>  had joint density <M>f(x,y)</M> 
 for <M>(x,y)\in\rr^2</M>, then  the density of <M>X+Y</M>  is 
<D>f_{X+Y}(u) = \int_{-\infty}^\infty f(x,u-x)\, dx.</D>
</THM>
A special case is when the two random variables are independent:
<THM>If <M>X,Y</M>  are indenedent random variables with densities <M>f(x)</M>  and <M>g(y),</M>  respectively, then 
the density of <M>X+Y</M>  is 
<D>f_{X+Y}(u) = \int_{-\infty}^\infty f(x)g(u-x)\, dx.</D>
</THM>
This gives us a way to manufacture a new density by combining two existing densities. This is called <TERM>convolution</TERM>.

<DEFN name="Convolution">
If <M>f,g</M>  are two densities, then their <TERM>convolution</TERM>  is the density <M>f*g</M>  given by
<D>(f*g)(u) = \int_{-\infty}^\infty f(x)g(u-x)\, dx.</D>
</DEFN>

<EXM>
If <M>X,Y</M>  are independent uniform over <M>(0,1),</M>  then find  density of <M>X+Y.</M>  
<SOLN/>
The answer is <M>f*f,</M>  where <M>f(x) =<CASES>1<IF>0 < x < 1</IF> 0<ELSE/></CASES> </M>  

So 
<D>(f*f)(u) = \int_{-\infty}^\infty f(x)f(u-x)\, dx = \int_{\max\{0,u-1\}}^{\min\{1,u\}}dx=<CASES>u<IF>0 <u < 1</IF> 2-u<IF>1 <u < 2</IF> 0<ELSE/></CASES></D>
To see this notice that for  <M>f(x)</M>  to be nonzero we need <M>0 < x < 1,</M>  while for <M>f(u-x)</M>  to be non-zero
 we need <M>0 < u-x < 1,</M>  or <M>u > x >u-1.</M>  So for <M>f(x)f(u-x)</M>  to be non-zero we need <M>1,u > x >0,u-1.</M> 
 Also, the non-zero value of <M>f(x)f(u-x)</M>  is 1.
</EXM>
<HEAD2>Problem set <PS/></HEAD2>

<EXR>Show that <M>f*g = g*f.</M></EXR>

<EXR>Does there exist a density <M>i(x)</M>  such that for all densities <M>f</M>  we have <M>i*f = f?</M>
<ANS>Think in terms of random variables.</ANS>
</EXR>

<EXR>If <M>X,Y</M>  are IID with common density <M>\lambda e^{-\lambda x}</M>  (<M>x>0</M>), then
 find the density of <M>X+Y.</M></EXR>

<EXR>If <M>X,Y</M>  are independently distributed uniformly over <M>(0,1),</M>  the sketch density of <M>X+Y.</M></EXR>


<EXR>If <M>X,Y</M>  are independent with common density <M>f(x)</M>, what will density of <M>X-Y</M>  be? </EXR>
<HEAD1 u="https://youtu.be/8XC0IhfmOUM">Quotient</HEAD1>
Sometimes we need to work with the quotient of two independent random variables. The following theorem helps when the random variables
 are both positive and independent.

<THM>
Let <M>X,Y</M>  are independent  random variables with densities <M>f_X(x)</M>  and <M>f_Y(y),</M>  respectively. Let <M>Y</M> 
 be always positive. 
 Then <M>Z=X/Y</M>  has density
<D>f_Z(z) = \int_0^\infty uf_X(zu)f_Y(u)\, du.</D>
</THM>
<PF>
Use the Jacobian technique for the transform <M>(X,Y)\mapsto (*([[XY]],Y)*)\equiv(Z,U).</M>
</PF>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>Prove the above theorem using Jacobian.</EXR>

<EXR>If <M>X,Y</M>  are independent and uniformly distributed over <M>[1,2],</M>  then find density of <M>X/Y.</M></EXR>

<EXR>If <M>X,Y</M>  are IID with common density <M>f(x)=<CASES>e^{-x}<IF>x>0</IF> 0<ELSE/></CASES></M>,
  then find density of <M>X/Y.</M></EXR>

<EXR>A point <M>Q</M>  is chosen at random from the unit square. Let <M>Q</M>  be
 <M>(R,\Theta)</M>  in polar coordinates. Find density of <M>\tan\Theta.</M></EXR>

<HEAD1 u="https://youtu.be/VwmX-rmTLUw">Characteristic function (CF)</HEAD1>
<ALERT/>(The video has been corrected.)

We have seen various functions connected with a distribution, PMF, PDF, CDF and MGF. In case,
 you have forgotten about  the
 concept of a <TERM>moment
 generating function (MGF)</TERM> that we briefly touched upon last
 semester, here is the definition
 again:
<DEFN name=" Moment generating function (MGF)">
The MGF of a random variable <M>X</M>  is defined as the function 
<M>M_X(t) = E(e^{Xt})</M>
for whatever <M>t\in\rr</M>  the expectation is finite. (Since <M>e^{Xt}</M>  is a positive random
 variable, it's expectation is always defined.)  
</DEFN>
Out of these only CDF is guaranteed to exist for any random variable. And also uniquely determines
  a distribution (i.e., if the CDFs of two random variables match, then their distributions must
 also match). Unfortunately, CDF does not "play well" with convolution, i.e., if <M>X,Y</M>  are
 independent then there is no nice formula expressing  the CDF of <M>X+Y</M>  in terms of those of <M>X</M>  and <M>Y.</M> 
 There is, however, one such function that combines all the good properties: it exists finitely
 for all random variables, it uniquely determines a distribution and "plays well" with
 convolution. Its definition is given below.
<DEFN name="Characteristic function (CF)">
The  <TERM>characteristic function (CF)</TERM>  of a random variable <M>X</M>  is defined as the
 function <M>\xi_X:\rr\to\cc</M>  as 
<M>\xi_X(t) = E(e^{iXt})</M>
for  <M>t\in\rr.</M>
</DEFN>
You may be scared by the unexpected appearance of complex numbers inside the expectation! 
Let's learn about complex random variables.

<HEAD2>Complex random variables</HEAD2>
Just remember that 
A complex random variable <M>Z</M>   means <M>Z = X+i Y,</M>  where <M>X,Y</M>  are (real) random variables. We define <M>E(Z)=E(X)+iE(Y)</M> 
 (and say <M>E(Z)</M>  does not exist if at least one of <M>E(X), E(Y)</M>  does not). 

Since we have <M>e^{iXt} = \cos (Xt)+i\sin(Xt)</M>, the characteristic function is just 
<M>\xi_X(t) = E(\cos(Xt))+i E(\sin(Xt)).</M>
Since <M>\cos</M>  and <M>\sin</M>  are both bounded, finite existence of the expectation is not a problem. 

<HEAD2>Complex calculus</HEAD2>
For <M>f:\rr\to\cc</M>  write <M>f(x) = g(x) + i h(x) </M>  for <M>g,h:\rr\to\rr.</M>  Then differentiation and integration
 are defined in the obvious way:
<MULTILINE>
f'(x) & = & g'(x) + i h'(x),\\
\int f(x)\, dx & = & \int g(x)\, dx + i\int h(x)\, dx.
</MULTILINE>
From this it immediate follows (check!) that
<M>[[d][dx]]e^{ix} = i e^{ix}</M>  and <M>\int e^{ix}\, dx = [[1i]]e^{ix}+</M> arbit
 constant.
<HEAD2>An example</HEAD2>
<EXM>
Find the CF of <M>X</M>  having density <M>f(x) = <CASES> 3 e^{-3x}<IF>x>0</IF> 0<ELSE/></CASES> </M>
<SOLN/>
<D>E(e^{iXt}) = 3\int_0^ \infty e^{ixt}e^{-3x}\, dx = 3\int_0^\infty e^{(it-3)x}\, dx = [[3][3-it]]</D>
for <M>t\in\rr.</M>  
</EXM>
Clearly, for any random variable <M>X</M>  we have <M>\xi_X(0) = 1.</M>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>Find CF for the degenerate distribution at <M>5.</M></EXR>
<EXR>Find CF for the uniform distribution over <M>(-1,1).</M></EXR>

<HEAD1 u="https://youtu.be/9lsO1kR9OaQ">Properties of CF</HEAD1>
The following two theorems are what make CF useful.

<THM>
If <M>X,Y</M>  are two random variables such that 
<M>\xi_X(t) \equiv \xi_Y(t)</M>,   then <M>X</M>  and <M>Y</M>  must have the same distribution.
</THM>
<PF>Will be done next semester.</PF>

<THM>
If <M>X,Y</M>  are independent random variables, then <M>\xi_{X+Y}(t) = \xi_X(t)\xi_Y(t)</M>  for <M>t\in\rr.</M>
</THM>
<PF>
Since <M>X,Y</M>  are independent, hence so are their functions <M>e^{iXt}</M>  and <M>e^{iYt}.</M>  

Since their expectations are finite, so <M>E(e^{iXt}\times e^{iYt}) = E(e^{iXt})\times E(e^{iYt}).</M>  Hence the result. 

</PF>

If we know a list of CFs for some standard distributions, then these two results often help us to
 identify if the convolution
 of two distributions in our list again belong to the list. 
Here is an example.

<EXM>
Suppose that you are told that, for <M>a>0</M>, the distribution with density 
<M>f_a(x) = <CASES>c x^{a-1}e^{-x}<IF>x>0</IF> 0<ELSE/></CASES></M>  has CF
 <M>\xi_a(t) = (1-it)^{-a}.</M> for <M>t< 1.</M>  

Show that for <M>a,b>0</M>  we have <M>f_a* f_b = f_{a+b}.</M>
<SOLN/>
You can of course show this directly using the definition of convolution. But that would require you to compute an integral.
 But it is trivial using CF: <M>\xi_a(t)\xi_b(t) = (1-it)^{-a} (1-it)^{-b} = (1-it)^{-(a+b)}</M>  for <M>t \in\rr.</M>  

Since CF uniquely determines the distribution, we get the result.
</EXM>
<HEAD2>Problem set <PS/></HEAD2>

<EXR>Let <M>X</M>  have CF <M>\xi_X(t).</M>  Let <M>Y = ax+b.</M>  Find <M>\xi_Y(t),</M>  the CF of <M>Y.</M></EXR>

<HEAD1>Miscellaneous problems</HEAD1>
::<EXR><EIMG web="hpstrans1.png"/></EXR>
::<EXR><EIMG web="hpstrans2.png"/></EXR>
::<EXR><EIMG web="hpstrans4.png"/></EXR>
::<EXR><EIMG web="hpstrans7.png"/>
<IMG web="hpsref8.png">Here is Exercise 8:</IMG> 
</EXR>
::<EXR><EIMG web="hpstrans8.png"/></EXR>
::<EXR><EIMG web="hpstrans9.png"/></EXR>
::<EXR><EIMG web="hpstrans12.png"/></EXR>
::<EXR><EIMG web="hpstrans14.png"/>
<IMG web="hpsref19.png">Here is Exercise 19:</IMG> 
</EXR>
::<EXR><EIMG web="hpstrans21.png"/></EXR>
::<EXR><EIMG web="hpstrans23.png"/>
<IMG web="hpsrefs1.png">Here is Exercise 38:</IMG> 
</EXR>
::<EXR><EIMG web="hpstrans24.png"/></EXR>
::<EXR><EIMG web="hpspdf7.png"/></EXR>
::<EXR><EIMG web="hpspdf11.png"/>
<IMG web="hpsrefs2.png">Here is Exercise 4:</IMG> 
</EXR>

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
<IMG web="rossrefs1.png">Here is Theoretical Exercise 2:</IMG> 
</EXR>
::<EXR><EIMG web="rosspdf24.png"/></EXR>
::<EXR><EIMG web="rosspdf35.png"/></EXR>

</NOTE>@}
