 @{<NOTE>
<TITLE>Joint distribution</TITLE>
<HEAD1>Basics</HEAD1>
Just as we had encountered joint distribution while learning about discrete random variables, we have the
concept of joint distribution for absolutely continuous distributions as well. 

<DEFN>
Let <M>X,Y</M>  be jointly distributed random variables. We say that they are <TERM>jointly absolutely continuous</TERM> if 
 there is some <M>f:\rr^2\to[0,\infty)</M>  such that 
<D>\forall a \leq b, c \leq d~~P(#( (X,Y)\in[a,b]\times[c,d] )#) = \int_a^b \int_c^d f(x,y)\, dxdy.</D>
Any such <M>f</M>  is called a <TERM>joint PDF</TERM>  of <M>(X,Y).</M> 
</DEFN>
Of course, this may be generalised to any finite number of jointly distributed random variables in the obvious way. 

The following theorem is not unexpected.

<THM>
A function <M>f:\rr^2\to[0,\infty)</M>  is a joint PDF if and only if <M>\int_{-\infty}^\infty\int_{-\infty}^\infty f(x,y)\, dxdy = 1.</M>
</THM>
<PF>This, as you may have guessed, is an application of the fundamental theorem of probability. We
 shall not go into the details of the proof in this course.</PF>

<EXM>If <M>f(x,y) = <CASES>c<IF>x^2+y^2\leq 1</IF> 0<ELSE/></CASES></M>  is a density, then find <M>c.</M>
<SOLN/> The total area under the density is the volume of the cylinder with unit radius and height <M>c.</M>  This volume
 is <M>\pi c.</M>  So we need <M>\pi c = 1,</M>  i.e., <M>c [ [[1\pi]].</M>
</EXM>
<EXM>Find <M>c\in\rr</M>  such that <M>f(x,y) =<CASES>c(x+y)<IF>0\leq x,y,\leq 2</IF> 0<ELSE/></CASES> </M>  is a density.
<SOLN/>
We need <M>\int_{-\infty}^\infty\int_{-\infty}^\inftyf(x,y)\, dx dy = 1,</M>  i.e., 
<D>\int_0^2\int_0^2 c(x+y)\, dx dy = 1.</D>
Now
<D>\int_0^2\int_0^2 c(x+y)\, dx dy = c\int_0^2[*[\int_0^2 c(x+y)\, dx]*] dy = c\int_0^2[*[ [[12]]x^2+xy]*]_0^2 dy=c\int_0^2( 2+2y)\, dy=8c.</D>
So we need <M>8c=1</M>  or <M>c = [[18]].</M>
</EXM>
This solution shows a very useful technique of performing a iterated integral (i.e., one integral inside another). The variable
 for the outer integral is considered a constant in the inner integral. 

<HEAD2>Problem set 1</HEAD2>

::<EXR>Find <M>c\in\rr</M>  such that <M>f(x,y) =<CASES>cxy<IF>0\leq x,y,\leq 2</IF> 0<ELSE/></CASES> </M>  is a density.</EXR>

::<EXR>If <M>ax+by</M>  is a density on the unit square, what are the possible values for <M>a,b?</M></EXR>

::<EXR>Find <M>c\in\rr</M>  such that <M>f(x,y) =<CASES>ce^{-x-y}<IF>0\leq x,y,< \infty</IF> 0<ELSE/></CASES></M>
is a density.</EXR>

::<EXR>Find <M>c\in\rr</M>  such that <M>f(x,y) =<CASES>cye^{-x}<IF>0\leq x,y,< \infty</IF> 0<ELSE/></CASES>
 </M>  is a density<ANS>Impossible since the integral is divergent.</ANS></EXR>

::<EXR>Find <M>c\in\rr</M>  such that <M>f(x,y) =<CASES>cxy<IF>(x,y)\in[-1,1]\times[0,1]</IF> 0<ELSE/></CASES> </M>  is a density.
<ANS>Impossible, <M>f(x,y)</M>  takes negative values.</ANS></EXR>


<HEAD1>Computing probabilities using geometry</HEAD1>  
Visualise the graph of the density as the roof of a tent. Then <M>P((X,Y)\in A)</M>  is the volume
 of the cylinder-like region inside the tent with <M>A</M>  as its floor. For many simple cases,
 the volume may be computed using geometric considerations. For more complicated cases we resort
 to iterated integrals. We shall discuss the geometric approach first. 

The most important special case when the roof of the tent is flat and horizontal. In this case we call the distribution uniform,
 as we have already learned. 
<HEAD2>Problem set 2</HEAD2>
::<EXR><EIMG web="hpsjoint1.png"/></EXR>
::<EXR><EIMG web="hpsjoint2.png"/></EXR>

<HEAD1>Computing probability using iterated integrals</HEAD1>
<EXM>
Let <M>(X,Y)</M>  have density <M>f(x,y) = <CASES>x+y<IF>0\leq x,y\leq 1</IF> 0<ELSE/></CASES>.</M>  Find <M>P(Y\leq X^2).</M>
<SOLN/>
The random point <M>(X,Y)</M>  always lies in the unit square. Our set of interest is shown in
 red below.
<CIMG web="jsq.png"></CIMG>
 We need to integrate
 the density over this set. In other words, we are trying to find the volume of the tent with the density as its roof and
 the red region as its floor. This may be computed as follows:
<D>\int_0^1 [*[\int_0^{x^2} (x+y)\, dy]*] dx = \int_0^1 [*[ xy+[[12]]y^2 ]*]_0^{x^2} \,
 dx=\int_0^1 x^3+[[12]]x^4\, dx = [[14]] + [[1][10]] = [[7][20]].</D>
We could have done it the other way around, too:
<D>\int_0^1 [*[\int_{\sqrt y}^1 (x+y)\, dx]*] dy = \cdots.</D>
This should also lead to the same answer (check!). 
</EXM>
<HEAD2>Problem set 3</HEAD2>
<EXR>Let <M>(X,Y)</M>  have joint density <M>f(x)=<CASES>cxy<IF>x,y\in[0,1],\,x\leq y</IF>
 0<ELSE/></CASES>.</M>  Find <M>P(Y< \sqrt{X}).</M></EXR>

<EXR>Let <M>(X,Y)</M>  have joint density <M>f(x)=<CASES>c(x+y)<IF>x,y\in[0,1]</IF>
 0<ELSE/></CASES>.</M>  Find <M>P(*(Y< [[12]])*).</M></EXR>

<EXR>Let <M>X,Y</M>  be IID <M>Unif(0,1).</M>  Find <M>P(X^2\leq Y \leq X).</M></EXR>

<EXR>If <M>(X,Y)</M>  has joint density <M>e^{-(x+y)}</M>  for <M>x,y>0,</M>  (and 0 else), then find <M>P(X^2+Y^2<1).</M></EXR>

<HEAD1>CDF</HEAD1>
We have already learned the definition of joint CDF in the last semester:

<DEFN name="CDF">
If <M>X,Y</M>  are jointly distributed random variables, then their <TERM>joint cumulative distribution function</TERM> is defined as
 <M>F:\rr^2\to[0,1]</M>, where
<D>F(x,y) = P(X\leq x,\, Y\leq y).</D>
 </DEFN>
This definition does not care if <M>X,Y</M>  are discrete, continuous or absolutely continuous or something else.

Since the CDF is defined in terms probability, we can compute it by iterated integrals of the density. 
<EXM>Let <M>(X,Y)</M>  have uniform distribution over the unit square. Find its CDF, <M>F(x,y).</M>
<SOLN/>
The values of <M>F(x,y)</M>  over certain regions of <M>\rr^2</M>  should be clear, as shown below.
<CIMG web="clearcdf.png">The unit square is shown in red</CIMG>
The red square is the floor of the tent. Since its area is 1, and the roof of the tent is flat, horizontal, the height must
 be <M>[[11]]=1</M>  to keep the total volume <M>1.</M>  
So to find <M>F(x,y)</M>  for <M>(x,y)</M>  in the red region we just divide the area of the shaded rectangle by the red
 square. 
<CIMG web="redcdf.png"></CIMG>
This gives <M>F(x,y) = xy.</M>

Similarly, if <M>(x,y)</M>  is in the blue region, we need to consider only the red part of the shaded rectangle. 
<CIMG web="bluecdf.png"></CIMG>
This gives <M>y.</M>

Similar consideration shows <M>F(x,y) = x</M>  over the green part. 

So the CDF is
<D>F(x,y) = <CASES>xy<IF>0< x,y\leq 1</IF> 
x<IF>0<x\leq 1, y>1</IF>
y<IF>0<y\leq 1, x>1</IF>
0<IF>x\leq 0\mbox{ or } y\leq 0</IF>
1<IF>x, y>1</IF>
</CASES>. 
</D>
</EXM>
In this example we could avoid integration because the distribution was uniform. The next example is more general. 

<EXM>Let <M>(X,Y)</M>  have density <M>f(x,y)=x+y</M> over the unit square. Find its CDF, <M>F(x,y).</M>
<SOLN/>
The red-blue-green break up remains the same here as in the last example, as the support of the distribution is the unit
 square. The values (0 and 1) of the CDF over the white regions are also as before. 

For <M>(x,y)</M>  in the red region,
<D>F(x,y) = \int_0^x\int_0^y (u+v)\, dudv  = \int_0^x[[12]]y^2+yv\,dv = [[12]]xy^2+xy.</D>
Similarly, work out the values for the blue and green regions.</EXM>

Finding the CDF from the density requires quite a bit of effort. But going the other way around is a lot easier. You just
 need to differentiate twice partially, once wrt <M>x</M>  and once wrt <M>y</M>  (in either order). Thus,
<D>f(x,y) = [[\partial^2][\partial x\partial y]] F(x,y)=[[\partial^2][\partial y\partial x]] F(x,y).</D>
For <M>(x,y)</M>  where the partial derivatives
 fail to exist, set <M>f(x,y) = 0</M>  (or any arbitrary non-negative value).

<ALERT/>But remember that this formula works only when we know that a density exists! 
<EXM>
Let our CDF be
<D>F(x,y) = <CASES>xy<IF>0< x,y\leq 1</IF> 
x<IF>0<x\leq 1, y>1</IF>
y<IF>0<y\leq 1, x>1</IF>
0<IF>x\leq 0\mbox{ or } y\leq 0</IF>
1<IF>x, y>1</IF>
</CASES>. 
</D>
Given that a density exists, find it. 
<SOLN/>
Since we are about differentiate wrt both <M>x</M>  and <M>y,</M>  the parts of <M>F(x,y)</M>  that do not involve both the
 variables must vanish. So we need to work with only the <M>xy</M>  part, which after the two differentiations would yield
 <M>1.</M>  So a denity is 
<M>f(x,y) = <CASES>1<IF>0<x,y<1</IF> 0<ELSE/>.</CASES> </M>
</EXM>
<HEAD2>Problem set 4</HEAD2>
<EXR>Find the joint CDF of <M>(X,Y)</M>  if <M>X\sim Bern(1/2)</M>  and <M>Y\sim Unif(0,1)</M>  and they are independent.</EXR>

<EXR>Let <M>F(x,y)=\min\{x,y\}</M>  for <M>0\leq x,y\leq 1</M>  be the joint CDF of <M>(X,Y).</M> 
 Find <M>P(*(X\leq [[12]], Y\leq [[12]])*)).</M></EXR>

<EXR>If <M>(X,Y)</M>  have joint density <M>c(x^2+y)</M>  over the unit square, then find the joint CDF.</EXR>

<HEAD1>Marginals</HEAD1>
We can find the distribution of <M>X</M>  and <M>Y</M>  separately given the joint distribution of <M>(X,Y).</M>  
In particular, a marginal density of <M>X</M>  is given by 
<D>f_X(x) = \int_{-\infty}^\infty f(x,y)\, dy</D>
and a marginal density of <M>Y</M>  by 
<D>f_Y(y) = \int_{-\infty}^\infty f(x,y)\, dx.</D>

<HEAD2>Problem set 5</HEAD2>
::<EXR><EIMG web="hpsjoint4.png"/></EXR>
::<EXR><EIMG web="hpsjoint5.png"/></EXR>
::<EXR><EIMG web="hpsjoint6.png"/></EXR>

<HEAD1>Independence</HEAD1>
We already know the following general definition of  jointly distributed random variables being independent:
<DEFN name="Independence">
Let <M>X_1,...,X_n</M>  be jointly distributed random variables. We say they are <TERM>(mutually) independent</TERM>  if
 for all <M>\{i_1,...,i_k\}\seq \{1,...,n\}</M>  and any <M>B_1,...,B_k\in{\mathcal B}</M>  we have
<D>P(X_{i_1}\in B_1, ..., X_{i_k}\in B_k) = P(X_{i_1}\in B_1)\times\cdotsP( X_{i_k}\in B_k).</D>
</DEFN> 
Incidentally, it is not enough to have <M>P(X_i\in B_i, X_j\in B_j) = P(X_i\in B_i)P( X_j\in B_j)</M>  for all <M>i\neq j.</M> 
 If only this holds, then we call <M>X_1,...,X_n</M>  only <TERM>pairwise independent</TERM>, which is weaker than mutual
 independent.

This is the general case. For the absolutely continuous case, if <M>f(x,y)</M>  is a joint density, then <M>f(x,y)</M>  can
 be factored as <M>f(x,y) = f_X(x)f_Y(y)</M>, where <M>f_X,</M>  <M>f_Y</M>  are marginal densities of <M>X</M>  and <M>Y.</M> 
 
<HEAD2>Problem set 6</HEAD2>
<EXR>If two independent random variables <M>X,Y</M>  have marginal densities <M>f(t) = e^{-\lambda t}</M>  for
 <M>t>0</M>  (and 0 else), then find the joint density of <M>(X,Y).</M></EXR>

<EXR><M>(X,Y)</M>  is distributed uniformly over the unit disc in <M>\rr^2.</M>  Are <M>X,Y</M>  independent?</EXR>

<EXR>If the joint density of <M>(X,Y)</M>  is of the form <M>f(x)g(y),</M>  then show that
 <M>X</M>  and <M>Y</M>  must be independent. Also show that <M>f_X\propto f</M>  and <M>f_Y\propto g.</M></EXR>

<EXR>If <M>(X,Y)</M>  are independent, then is it true that the joint CDF
is the product of the marginal CDFs?
</EXR>
<HEAD1>Conditional distribution</HEAD1>
So far the absolutely continuous case closely mimics the discrete case, with integration replacing summation.  
But we cannot follow the same path for conditional distribution. If <M>(X,Y)</M>  are jointly discrete then we defined the
 conditional PMF of <M>X</M>  given <M>Y=y</M>  as <M>x\mapsto P(X=x|Y=y) = [[P(x=x,Y=y][P(Y=y)]],</M>  and we did this only
 for <M>y</M>  in the support of <M>Y,</M>  as that guaranteed <M>P(Y=y)>0.</M>

So for the jointly absolutely continuous case, we define a <TERM>conditional PDF</TERM>  of <M>X</M>  given <M>Y=y</M> 
 as 
<D>f_{X|Y}(x|y) =[[f(x,y)][f_Y(y)]]</D> 
where <M>f_Y</M>  is a marginal density of <M>Y</M>  and <M>f_Y(y)>0.</M> Don't feel uncomfortable
 with the arguments of <M>f_{Y|X}</M>  being written as <M>x|y</M>. You could have written it as
 <M>f_{Y|X}(x,y)</M>,  as well.   

The most glaring difference between conditional PDF and conditional PMF is that the conditional PDF is not a
 conditional probability,
 since <M>P(Y=y)=0.</M>  Due to the same reason,
<M>\int_a^bf_{X|Y}(x|y)\, dx</M>  does not give <M>P(X\in [a,b]|Y=y),</M>  as <M>P(Y=y)=0.</M>

However, the theorem of total probability is still valid:

<THM name="Total probability"><M>\int_c^d \int_a^bf_{X|Y}(x|y)f_Y(y)\, dxdy=P(X\in [a,b], Y\in[c,d]).</M></THM>
<PF>  This is obvious
 from the definition of <M>f_{Y|X}(x|y).</M></PF>
It is this theorem that justifies the definition of conditional PDF.

Other than this difference, the rest follows as in the discrete case. We have the concepts of
 conditional expectation, conditional variance etc as usual. 

<DEFN>
If <M>(X,Y)</M>  is jointly absolutely continuous, then <M>E(X|Y=y) = \int_{-\infty}^\infty f_{X|Y}(x,y)\, dx</M>  and 
<D>V(X|Y=y) = E((X-E(X|Y=y))^2|Y=y).</D>
</DEFN> 
The tower property also works as before. 
<HEAD2>Problem set 7</HEAD2>

<EXR>If <M>(X,Y)</M>  is uniformly distributed over the triangle <M>\{(x,y)~:~0\leq x \leq y,\,
 0\leq y\leq 1\}.</M>  Guess a conditional density of <M>X</M>  given <M>Y=y?</M>  First try
 to guess, and then check it from the definition.</EXR>

<EXR>Let <M>X|Y=y</M>  have density <M>f_{X|Y}(x|y) = <CASES>c_y x^2<IF>x\in[0,y]</IF>
 0<ELSE/></CASES></M>, where <M>c_y</M>  is free of <M>x.</M> 
Let <M>Y</M>  be uniformly distributed over <M>[0,1]</M>.  Find <M>f_{Y|X=x}(y|x).</M></EXR>

<EXR>If <M>(X,Y)</M>  has joint density <M>f(x,y)=<CASES>x+y<IF>0\leq x,y\leq 1</IF> 0<ELSE/></CASES>,</M>
then find <M>E(X|Y=y)</M>  and <M>V(Y|X=x).</M></EXR>

<HEAD1>Exchangeable distribution</HEAD1>
If <M>X_1, X_2, X_3</M>  are IID, then the joint distribution of <M>(X_1,X_2,X_3)</M>  is the same
 as that of <M>(X_2,X_3,X_1)</M>  or <M>(X_1,X_3,X_2)</M>   or any other permutation of the three random variables. 
This "invariance under permutation" property is called <TERM>exchangability</TERM>, and is found in many joint distributions
 other than the IID set up. 

<DEFN name="Exchangeable">
We say that the jointly distributed random variables <M>X_1,...,X_n</M>  are <TERM>exchangable</TERM>  if for any permutation
 <M>\pi</M>  of <M>(1,...,n)</M>  the joint distribution of <M>(X_1,...,X_n)</M>  is the same as that of <M>(X_{\pi(1)},...,X_{\pi(n)}).</M>
</DEFN> 
Here is a non-IID example.
<EXM>
In a box we have 10 balls 4 of which are black, the rest being light magenta (with a tinge of yellow on one side). 2 balls
 are drawn one by one using SRSWOR. Let <M>X_1=</M> the indicator of the <M>i</M>-th selected ball being black (<M>i=1,2</M>).
 Then show that <M>X_1,X_2</M>  are exchangeable. 
<SOLN/>
<TABLE>
<TR><TH/><TD><M>X_2=0</M></TD><TD><M>X_2=1</M></TD></TR>
<TR><TD><M>X_1=0</M></TD><TD><M>[[6\times5][10\times9]]</M></TD><TD><M>[[6\times4][10\times9]]</M></TD></TR>
<TR><TD><M>X_1=1</M></TD><TD><M>[[4\times6][10\times9]]</M></TD><TD><M>[[4\times3][10\times9]]</M></TD></TR>
</TABLE>
Since this matrix is symmetric, hence the result.
</EXM>
Obviously such brute force computation will be infeasible if the number of random variables increase. So you will need to
proceed more systematically to answer the next problem.
<EXR>
We have <M>n</M>  balls <M>m</M>  of which are dark purple (the rest being of a nondescript colour). We draw an SRSWOR of
 <M>k</M>  balls. Let <M>X_i=</M>  the indicator of the <M>i</M>-th selected ball being dark purple. Show that <M>X_1,...,X_k</M> 
 are exchangeable.
</EXR> 

<EXR>Consider Polya's urn scheme (5 black 5 white to start with, 1 ball drawn at each step,
 replaced and 1 more ball of the observed colour added). Let <M>X_i=</M> indicator of the
 <M>i</M>-th drawn ball being black. Show that <M>X_1,X_2,...,X_n</M>  are exchangeable for <M>n\in\nn.</M> </EXR>

<THM>
If <M>X_1,...,X_n</M>  are exchangeable, then for any <M>\{i_1,...,i_k\}\seq \{1,...,n\}</M>  the joint distribution of <M>(X_{i_1},...,X_{i_k})</M> 
depends only on <M>k,</M>  and not on  <M>i_1,...,i_k.</M>  
</THM>
<PF>
Let <M>F(x_1,...,x_n)</M>  be the joint CDF of <M>(X_1,...,X_n).</M>  

Let <M>\pi</M>  be any permutation <M>\{1,...,n\}</M>  with <M>\pi(1)=i_1, ..., \pi(k)=i_k.</M>  Then 
by exchangeability <M>F(x_1,...,x_n)</M>  is the joint CDF of <M>(X_{\pi(1)},...,X_{\pi(n)})</M>  as well. 

Then the joint CDF of <M>(X_{i_1},...,X_{i_k})</M>  is <M>F(x_1,...,x_k,\infty,...,\infty),</M>  which is free of <M>i_1,...,i_k,</M> 
 as required.
</PF>

Exchangeable random variables allow for symmetry arguments. The next problem is one example. 
<HEAD2>Problem set 8</HEAD2>
<EXR>
If <M>X_1,...,X_n</M>  are exchangeable positive random variables with finite expectations,  then find <M>E((X_1+X_2)/(X_1+\cdots+X_n)).</M>
</EXR>

<EXR>Three dice are rolled and their outcomes are called <M>X_1,X_2</M>   and <M>X_3.</M>  Let
 <M>Y_1 = X_1+X_2,</M>  <M>Y_2 = X_2+X_3,</M>  and <M>Y_3 = X_3+X_1.</M>  Is <M>(Y_1,Y_2,Y_3)</M> 
 exchangeable? Justify your answer.</EXR>

<EXR>A box contains 10 balls numbered 1 to 10. A ball is drawn at random, and its number noted.
 Without replacing the ball, another ball is drawn at random from the rest, and its number is also
 noted. If the two numbers are <M>X</M>  and <M>Y</M>, respectively, then is <M>(X,Y)</M>  exchangeable?</EXR>

<EXR>(Continuation of the last exercise) Solve the last problem if at each step the ball with
 number <M>i</M>  on it  is selected with probability proportional to <M>i.</M>
</EXR>

<HEAD1>Points to ponder</HEAD1>
<HEAD2>Marginal densities <M>\not\Rightarrow</M>  joint density</HEAD2>
Note that if <M>X</M>  and <M>Y</M>  are jointly distributed discrete random variables, then immediatly we are assured of
having their joint PMF. But not so in case of absolutely continuous distributions. Even if
 <M>X</M>  and <M>Y</M>  are each absolutely continuous, still <M>(X,Y)</M>  may fail to be <I>jointly</I>  absolutely continuous.

<EXM>Suppose <M>X\sim Unif(0,1)</M>  and <M>Y = X.</M>  Then show that <M>(X,Y)</M>  is not
 jointly absolutely continuous. 
<SOLN/>
Here the CDF of <M>(X,Y)</M>  is 
<D>
F(x,y)=P(X\leq x,\, Y\leq y) = P(X\leq\min\{x,y\}) = <CASES>0<IF>\min\{x,y\}<0</IF> 1<IF>0\leq \min\{x,y\} < 1</IF> 1<IF>\min\{x,y\} \geq 1</IF></CASES>.
</D>
Hence, if <M>(X,Y)</M>  is jointly absolutely continuous, then a joint density would be given by <M>f(x,y)</M>, where 
<D>f(x,y) = [[\partial^2][\partial x\partial y]] F(x,y).</D>
This forces <M>f(x,y)\equiv 0,</M>  which is not a PDF.
  </EXM>
However, if <M>(X,Y)</M>  is jointly absolutely continuous, then both <M>X</M>  and <M>Y</M>  must also be absolutely continuous.

<HEAD2>Point mass and jointly continuous</HEAD2>
Let <M>X</M>  be a random variable with CDF <M>F.</M>  Then the following two statements are equivalent:
<OL>
<LI><M>F</M>  is continuous everywhere.</LI>
<LI><M>\forall a\in\rr~~P(X=a)=0.</M></LI>
</OL>
Consider the corresponding statements in the bivariate scenario. <M>(X,Y)</M>  have joint CDF <M>F(x,y).</M>  Then the statements
 are 
<OL>
<LI><M>F</M>  is continuous everywhere.</LI>
<LI><M>\forall (a,b)\in\rr^2~~P(X=a,\,Y=b)=0.</M></LI>
</OL>
Here the first statement implies the second statement, but the converse is not true in general. 
Can you think of a counterexample? An exercise below will given you a hint.
<HEAD2>Problem set 9</HEAD2>
<EXR>Let <M>X\sim Bernoulli(*([[12]])*)</M>  and <M>Y\sim Unif(0,1)</M>  be independent random
 variables. Write down their joint CDF. Is it continuous everywhere? What is <M>P(X=a,\,Y=b)</M>  for any given <M>(a,b)?</M></EXR>

Univariate CDFs are nondecreasing functions, and hence can have only countably many discontinuities.
<BECAUSE>You can put rationals
 in the gaps.</BECAUSE>
However, for bivariate or higher dimensional CDFs, the situation is drastically different. 
<EXR>
There are different ways to approach a point in <M>\rr^2.</M>  The following diagram shows some of them. 
<CIMG web="limdir.png"><M>(a,b)</M>  is the point at the centre.</CIMG>
In each case find
 <M>\lim_{(x,y)\to(a,b)} F(x,y).</M>  In each case the limit will be one of  
<Q>
<M>P(X < a,\, Y< b)</M>, <M>P(X \leq a,\, Y< b)</M>, <M>P(X < a,\, Y\leq b)</M>  and <M>P(X \leq a,\, Y\leq b).</M>
</Q> 
</EXR>

<EXR>(Continuation of the last exercise) In exactly three of the cases above we must have
 <M>\lim_{(x,y)\to(a,b)} F(x,y) = F(a,b).</M>  Which three?</EXR>

<EXR>(Continuation of the last exercise) Argue that <M>F(x,y)</M>  is discontinuous at
 <M>(a,b)</M>  if and only if <M>P(X < a,\, Y< b) < P(X \leq a,\, Y\leq b).</M></EXR>

<EXR>(Continuation of the last exercise) Argue that <M>F(x,y)</M>  is discontinuous at
 <M>(a,b)</M>  if and only if <M>P(X \leq a,\, Y= b \mbox{ or }X = a,\, Y\leq b)>0.</M></EXR>
<EXR>(Continuation of the last exercise) Sketch the set <M>\{X \leq a,\, Y= b \mbox{ or }X = a,\, Y\leq b\}</M>  in the
 <M>XY</M>-plane for <M>(a,b) = (1,2)</M>  and also for <M>(a,b) = (1,3).</M>  Argue that either
 <M>F(x,y)</M>  has no discontinuity, has
 or uncountably many discontinuities.
</EXR>


<HEAD1>Miscellaneous problems</HEAD1>
::<EXR><EIMG web="hpsjoint3.png"/></EXR>
::<EXR><EIMG web="hpsjoint7.png"/></EXR>
::<EXR><EIMG web="hpsjoint8.png"/></EXR>
::<EXR><EIMG web="hpsjoint9.png"/></EXR>
::<EXR><EIMG web="hpsjoint10.png"/></EXR>
::<EXR><EIMG web="hpsjoint11.png"/></EXR>
::<EXR><EIMG web="rossipmjoint1.png"/></EXR>
::<EXR><EIMG web="rossipmjoint2.png"/></EXR>
::<EXR><EIMG web="rossipmjoint3.png"/></EXR>
::<EXR><EIMG web="rossipmjoint4.png"/></EXR>
::<EXR><EIMG web="rossipmjoint5.png"/></EXR>
::<EXR><EIMG web="rossipmjoint6.png"/></EXR>
::<EXR><EIMG web="rossipmjoint8.png"/></EXR>
::<EXR><EIMG web="rossipmjoint9.png"/></EXR>
::<EXR><EIMG web="rossipmjoint10.png"/></EXR>
::<EXR><EIMG web="rossipmjoint11.png"/></EXR>
::<EXR><EIMG web="rossipmjoint12.png"/></EXR>
::<EXR><EIMG web="rossipmjoint13.png"/></EXR>
</NOTE>@}
