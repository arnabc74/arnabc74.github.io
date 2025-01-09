 @{<NOTE>
<M>\newcommand{\v}[1]{{\mathbf #1}}</M>
<TITLE>Joint distribution</TITLE>
<HEAD1 u="https://youtu.be/wOwkJg5bjg0">Quick primer on multivariate calculus (part 1)</HEAD1>
We are going to use certain results from multivariate calculus that you will learn rigourously in the Analysis 3 course.
 For now, we shall only learn some definitions and results from multivariate calculus. 
<HEAD2>Graph</HEAD2>
When we
 work with <M>f:\rr\to\rr</M>  we often think about its graph which  we visualise as a curve. When
 we deal with <M>f:\rr^2\to\rr</M> 
 we visualise its graph as a surface. 

<HEAD2>Continuity</HEAD2>
For  <M>f:\rr\to\rr</M>  continuity means its graph has no break. Similarly, <M>f:\rr^2\to\rr</M>  is called continuous,
 when its graph is an unbroken surface, no hole, cut or gap. More rigourously, you can think of 
 continuity in terms limits:

 <M>f:\rr^2\to\rr</M>  is continuous at <M>\v a</M>  means, whenever <M>\v x\to \v a</M> 
 we have <M>f(\v x)\to f(\v a).</M>  

<HEAD2>Differentiability</HEAD2>
We say that <M>f:\rr\to\rr</M>  is differentiable at some point <M>a</M>  if the graph is smooth
 above <M>x=a</M>  (i.e., may be well-approximated by a straight line passing through <M>(a,f(a))</M> , and the line is not
 vertical. This line is called the tangent to the curve at that point. Any such line has equation of the form <M>y= f(a)+m\cdot(x-a).</M> 
 This <M>m</M>   is called the
 derivative of the <M>f</M> 
 at <M>a.</M>  

Similarly, <M>f:\rr^2\to\rr</M>  is called differentiable at some point <M>(a,b)</M>  if the surface is smooth over that
 point (i.e., is well-approximated by a plane passing through <M>(a,b,f(a,b))</M>, which is not vertical. Any such 
plane has equation of the form <M>y= f(a,b)+m_1\cdot(x-a)+m_2\cdot (y-b).</M>  The pair <M>(m_1,m_2)</M>  (which is commonly
 considered as a <M>1\times 2</M>  matrix) is called the derivative of <M>f</M>  at <M>(a,b).</M>  

It turns out that if <M>f</M>  is differentiable at <M>(a,b),</M>  then <M>m_1 = [[\partial
 f][\partial x]]</M>  and <M>m_2 = [[\partial f][\partial y]]</M>  at <M>(a,b).</M>  

<M>[[\partial f][\partial x]]</M>  is obtained by differentiating <M>f(x,y)</M>  wrt <M>x</M> 
 along <I>keeping <M>y</M>  fixed</I>. Similarly for <M>[[\partial f][\partial y]].</M>

<EXM>
If <M>f(x,y)  = xy^2+y + e^x,</M>  then <M>[[\partial f][\partial x]] = y^2+e^x.</M>
</EXM>

Just
 the existence of <M>[[\partial f][\partial x]]</M>  and <M>[[\partial f][\partial y]]</M>  is not enough to guarantee the
 differentiability of <M>f.</M>  However, if the partial derivatives are also continuous over a neighbourhood of <M>(a,b),</M> 
 then <M>f</M>  must be differentiable at <M>(a,b).</M>
<HEAD2>Mixed partials</HEAD2>
We can also talk about the mixed partial derivatives <M>[[\partial^2 f][\partial y\partial x]]</M>  and <M>[[\partial^2 f][\partial x\partial y]].</M> 

Here <M>[[\partial^2 f][\partial y\partial x]]</M>  means <M>[[\partial][\partial y]](*([[\partial f][\partial x]] )*),</M> 
 and 
<M>[[\partial^2 f][\partial x\partial y]]</M>  means <M>[[\partial][\partial x]](*([[\partial f][\partial y]] )*).</M> 

<EXM>
If <M>f(x,y)  = xy^2+y + e^x,</M>  then 
<M>[[\partial^2 f][\partial y\partial x]] =
 [[\partial][\partial y]](*([[\partial f][\partial x]] )*) = [[\partial][\partial y]](y^2+e^x) = 2y.</M>

Also 
<M>[[\partial^2 f][\partial x\partial y]] =
 [[\partial][\partial x]](*([[\partial f][\partial y]] )*) = [[\partial][\partial x]](2xy+1) = 2y.</M>
</EXM>
Notice that they turn out to be equal in this example. This is mostly the case. 
There are pathological examples, where they are unequal. However, for all the cases we shall need they will be equal. 
<HEAD2>Problem set <PS/></HEAD2>
<EXR>
For each of the following functions  find <M>[[\partial f][\partial x]]</M>, <M>[[\partial
 f][\partial y]]</M>  <M>[[\partial^2
 f][\partial y\partial x]]</M>  and <M>[[\partial^2 f][\partial x\partial y]].</M>
<OL>
<LI><M>f(x,y)  = e^{-x^2-y^2+2x}.</M></LI>
<LI><M>f(x,y)  = [[xy]]</M></LI>
<LI><M>f(x,y)  = \sin x+\cos y.</M></LI>
<LI><M>f(x,y)  = xy.</M></LI>
</OL>
</EXR>

<HEAD1 u="https://youtu.be/ITbIeZdJTCc">Quick primer on multivariate calculus (part 2)</HEAD1>
<HEAD2>Iterated integrals</HEAD2>
Just as we can differentiate <M>f(x,y)</M>  wrt a single variable at a time, we can
 integrate it wrt a single variable
 at a time, as well. This is called an <TERM>iterated integral</TERM>.
The integrand
 is a function of two variables, <M>x,y.</M>  Each integral is done wrt one variable. When you do
 the inner integral, you treat the variable for the outer integration as a constant.

<EXM>
<M>\int_0^1\int_0^{y^2} xy\,dxdy = \int_0^1.[. [[x^2y][2]] ]|]_0^{y^2} dy = [[12]]\int_0^1
 y^5\,dy = [[1][12]].</M>
</EXM> 
Just as a single variable integrals may be thought of as an area, an iterated integral in two
 variables may be considered as a volume. The iterated integral above gives the volume under the
 surface over the region shown below:
<CIMG web="floor.png"></CIMG> 

Here we have integrated first wrt <M>x</M>  (the inner integral) and then wrt <M>y</M>  (the outer integral). We could have
 done it the otherway around: then the iterated integral would have been 
<D>\int_0^1 \int_{\sqrt{x}}^1 xy\, dydx.</D>  
Check that this also gives the same answer. 

In this example, both the iterated integrals give the same answer. This is the case for
a very general class of integrans (including all nonnegative integrands). However, there are pathological examples where
 they may not be equal. In our course we shall always assume them to be equal. 
<HEAD2>Problem set <PS/></HEAD2>

<EXR>Find <M>\int_0^1 \int_{\sqrt{x}}^1 xy\, dydx.</M></EXR>

<EXR>What is the volume under the graph of <M>f(x,y) = x^2+y</M>  over the region
 <M>[0,1]\times[1,3]?</M> Try both orders of integration (<M>x</M>  followed by <M>y</M>, and also 
 <M>y </M> followed by <M>x</M>).</EXR>
<HEAD1 u="https://youtu.be/sKen_7PFUh4">Joint density</HEAD1>
Just as we had encountered joint distribution while learning about discrete random variables, we have the
concept of joint probability density, as well. 

<DEFN>
Let <M>X,Y</M>  be jointly distributed random variables. We say that they have <TERM>joint probability density</TERM>  
<M>f:\rr^2\to[0,\infty)</M> if
<D>\forall a \leq b, c \leq d~~P(#( (X,Y)\in[a,b]\times[c,d] )#) = \int_a^b \int_c^d f(x,y)\, dxdy.</D>
</DEFN>
If you are new to this "integral inside integral" notation, it is called an <TERM>iterated integral</TERM>. 

<EXM>
<M>\int_0^1\int_0^1 xy^2\,dxdy = \int_0^1[*[\int_0^1 xy^2\,dx]*]dy = \int_0^1[*[y^2\int_0^1 x\,dx]*]dy =\int_0^1[[12]]y^2\,dy =[[16]].</M>
</EXM>  
To visualise a joint density function, think of its graph as a surface hanging like a roof over
 the <M>xy</M>-plane. Then, for any rectangle in the <M>xy</M>-plane, the probability of
 <M>(X,Y)</M>  being inside that rectangle is the volume of the "tent" with the rectangle as its
 floor, and the surface as its roof. Indeed, thanks to the probability axioms, we can use this "volume of
 tent" idea for floors of shapes other than rectangles as well (e.g., countable
 unions/intersections of rectangles, and their complements).

The following theorem is not unexpected.

<THM>
If <M>f:\rr^2\to[0,\infty)</M>  is  joint density of some <M>(X,Y)</M>, then 
 <M>\int_{-\infty}^\infty\int_{-\infty}^\infty f(x,y)\, dxdy = 1.</M>
</THM>
<PF>This is because the double integral denotes <M>P(X\in\rr,\,Y\in\rr)=1.</M>.</PF>

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

<HEAD2>Problem set <PS/></HEAD2>

::<EXR>Find <M>c\in\rr</M>  such that <M>f(x,y) =<CASES>cxy<IF>0\leq x,y,\leq 2</IF> 0<ELSE/></CASES> </M>  is a density.</EXR>

::<EXR>If <M>ax+by</M>  is a density on the unit square, what are the possible values for <M>a,b?</M></EXR>

::<EXR>Find <M>c\in\rr</M>  such that <M>f(x,y) =<CASES>ce^{-x-y}<IF>0\leq x,y,< \infty</IF> 0<ELSE/></CASES></M>
is a density.</EXR>

::<EXR>Find <M>c\in\rr</M>  such that <M>f(x,y) =<CASES>cye^{-x}<IF>0\leq x,y,< \infty</IF> 0<ELSE/></CASES>
 </M>  is a density<ANS>Impossible since the integral is divergent.</ANS></EXR>

::<EXR>Find <M>c\in\rr</M>  such that <M>f(x,y) =<CASES>cxy<IF>(x,y)\in[-1,1]\times[0,1]</IF> 0<ELSE/></CASES> </M>  is a density.
<ANS>Impossible, <M>f(x,y)</M>  takes negative values.</ANS></EXR>


::<EXR><EIMG web="hpsjoint1.png"/></EXR>
::<EXR><EIMG web="hpsjoint2.png"/></EXR>

<HEAD1 u="https://youtu.be/eAOWy_idRSE">Computing probability using iterated integrals</HEAD1>
So far we have been finding volumnes under the joint density graph using geometry. This works only for very simple shapes.
 For more complicated cases we need to use iterated integrals. 
<EXM>
Let <M>(X,Y)</M>  have density <M>f(x,y) = <CASES>x+y<IF>0\leq x,y\leq 1</IF> 0<ELSE/></CASES>.</M>  Find <M>P(Y\leq X^2).</M>
<SOLN/>
The random point <M>(X,Y)</M>  always lies in the unit square. Our set of interest is shown in
 red below.
<CIMG web="jsq.png"></CIMG>
 We need to integrate
 the density over this set. In other words, we are trying to find the volume of the tent with the density as its roof and
 the red region as its floor. 
<R>
source("/home/asu/na/s/othernotes/talks/obj.r")
x = seq(0,1,len=20)
t = x
xx = outer(x,t,function(x,t) {x})
yy = outer(x,t,function(x,t) {t*x*x})
zz = xx+yy
paraObj(xx,yy,zz,'image/surfex1.obj')
xx = outer(x,t,function(x,t) {x})
yy = outer(x,t); yy[,]=0
zz = outer(x,t,function(x,t) {t*x*x})
paraObj(xx,yy,zz,'image/surfex2.obj')
xx = outer(x,t,function(x,t) {x})
yy = outer(x,t,function(x,t) {x*x})
zz = xx+yy
paraObj(xx,yy,zz,'image/surfex3.obj')
</R>
This may be computed as follows:
<D>\int_0^1 [*[\int_0^{x^2} (x+y)\, dy]*] dx = \int_0^1 [*[ xy+[[12]]y^2 ]*]_0^{x^2} \,
 dx=\int_0^1 x^3+[[12]]x^4\, dx = [[14]] + [[1][10]] = [[7][20]].</D>
We could have done it the other way around, too:
<D>\int_0^1 [*[\int_{\sqrt y}^1 (x+y)\, dx]*] dy = \cdots.</D>
This should also lead to the same answer (check!). 
</EXM>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>Let <M>(X,Y)</M>  have joint density <M>f(x)=<CASES>cxy<IF>x,y\in[0,1],\,x\leq y</IF>
 0<ELSE/></CASES>.</M>  Find <M>P(Y< \sqrt{X}).</M></EXR>

<EXR>Let <M>(X,Y)</M>  have joint density <M>f(x)=<CASES>c(x+y)<IF>x,y\in[0,1]</IF>
 0<ELSE/></CASES>.</M>  Find <M>P(*(Y< [[12]])*).</M></EXR>

<EXR>Let <M>X,Y</M>  be IID <M>Unif(0,1).</M>  Find <M>P(X^2\leq Y \leq X).</M></EXR>

<EXR>If <M>(X,Y)</M>  has joint density <M>e^{-(x+y)}</M>  for <M>x,y>0,</M>  (and 0 else), then find <M>P(X^2+Y^2<1).</M></EXR>

<HEAD1 u="https://youtu.be/0pRDbb0_fsk">Joint CDF</HEAD1>
We have already learned the definition of joint CDF in the last semester:

<DEFN name="CDF">
If <M>X,Y</M>  are jointly distributed random variables, then their <TERM>joint cumulative distribution function</TERM> is defined as
 <M>F:\rr^2\to[0,1]</M>, where
<D>F(x,y) = P(X\leq x,\, Y\leq y).</D>
 </DEFN>
This definition does not care if <M>X,Y</M>  are discrete, continuous or has density or not.

Note that for any given <M>(x,y),</M>  the value of the CDF, <M>F(x,y)</M>  is the probability that the random point <M>(X,Y)</M> 
 lies in the infinite rectangle lying south-west of <M>(x,y):</M>
<CIMG web="sw.png"></CIMG>
Since the CDF is defined in terms of probability, we can compute it by geometry in simple cases, and iterated
 integrals in more compicated cases.
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
<CIMG web="unit.png">The graph of the CDF</CIMG>
</EXM>
<COMMENT>
source("/home/asu/na/s/othernotes/talks/obj.r")
x = y = c(-2,seq(0,1,len=50),3)
f = function(x,y) {if(x<0) x=0 else if(x>=1) x=1;if(y<0) y=0 else if(y>=1) y=1; x*y}

z = outer(x,y,Vectorize(f)) 
sink('image/unit.obj')
surfObj(x,y,z)
sink()  
</COMMENT>
In this example we could avoid integration because the distribution was uniform. The next example is more general. 

<EXM>Let <M>(X,Y)</M>  have density <M>f(x,y)=x+y</M> over the unit square. Find its CDF, <M>F(x,y).</M>
<SOLN/>
The red-blue-green break up remains the same here as in the last example, as the support of the distribution is the unit
 square. The values (0 and 1) of the CDF over the white regions are also as before. 

For <M>(x,y)</M>  in the red region,
<D>F(x,y) = \int_0^x\int_0^y (u+v)\, dudv  = \int_0^x[[12]]y^2+yv\,dv = [[12]]xy^2+xy.</D>
Similarly, work out the values for the blue and green regions.</EXM>


<HEAD2>Problem set <PS/></HEAD2>
<EXR>Compute the remaining parts of the CDF in the  example above.</EXR>

<EXR>Find the CDF of <M>(X,Y)</M>  is the joint density is <M>f(x,y) = <CASES>e^{-x-y}<IF>x,y>0</IF> 0<ELSE/></CASES></M></EXR>


<HEAD1 u="https://youtu.be/yzjbQ_qotqQ">Joint density from CDF</HEAD1>
Finding the CDF from the density requires quite a bit of effort. But going the other way around is a lot easier. 

Suppose that you are given a CDF, <M>F(x,y)</M>  for a distribution having a density.  
Then let
<D>f(x,y) = [[\partial^2][\partial x\partial y]] F(x,y)=[[\partial^2][\partial y\partial x]] F(x,y).</D>
For <M>(x,y)</M>  where the partial derivatives
 fail to exist, set <M>f(x,y) = 0</M>  (or any arbitrary non-negative value). This <M>f(x,y)</M>  will be a density for CDF
 <M>F(x,y).</M>

<EXM>
Let our CDF be
<D>F(x,y) = <CASES>xy<IF>0< x,y\leq 1</IF> 
x<IF>0<x\leq 1, y>1</IF>
y<IF>0<y\leq 1, x>1</IF>
0<IF>x\leq 0\mbox{ or } y\leq 0</IF>
1<IF>x, y>1</IF>
</CASES>. 
</D>
You are told that there is a density corresponding to it. Find one such density.
<SOLN/>
Since we are about to differentiate wrt both <M>x</M>  and <M>y,</M>  the parts of <M>F(x,y)</M> 
 that do not involve both the
 variables must vanish. So we need to work with only the <M>xy</M>  part, which after the two differentiations would yield
 <M>1.</M>  So a density is 
<M>f(x,y) = <CASES>1<IF>0<x,y<1</IF> 0<ELSE/>.</CASES> </M>
</EXM>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>Find the joint CDF of <M>(X,Y)</M>  if <M>X\sim Bern(1/2)</M>  and <M>Y\sim Unif(0,1)</M>  and they are independent.</EXR>

<EXR>Let <M>F(x,y)=\min\{x,y\}</M>  for <M>0\leq x,y\leq 1</M>  be the joint CDF of <M>(X,Y).</M> 
 Find <M>P(*(X\leq [[12]], Y\leq [[12]])*)).</M></EXR>

<EXR>If <M>(X,Y)</M>  have joint density <M>c(x^2+y)</M>  over the unit square, then find the joint CDF.</EXR>

<HEAD1 u="https://youtu.be/xPX68qZ12Q0">Properties of joint distribution: Non-decreasing</HEAD1>
<THM>
Let <M>F(x,y)</M>  be a bivariate CDF. Then 
<OL>
<LI>for each fixed value of <M>y</M>, the function <M>x\mapsto F(x,y)</M>  is non-decreasing.</LI>
<LI>for each fixed value of <M>x</M>, the function <M>y\mapsto F(x,y)</M>  is non-decreasing.</LI>
</OL> 
</THM>
<PF>
Fix any <M>y.</M>  Fix any <M>x_1 < x_2.</M>  Then <M>F(x_2,y)-F(x_1,y) = P(X\leq x_2, Y\leq
 y)-P(X\leq x_1, Y\leq y)=P(x_1< X\leq x_2, Y\leq y)\geq0.</M>

Hence the first result. Similarly for the other.
</PF>
<THM>
Let <M>F(x,y)</M>  be a bivariate CDF. Then 
<M>\forall x,y\in\rr~~\forall a,b \geq 0~~ F(x,y)-F(x,y-b)-F(x-a,y)+F(x-a,y-b)\geq 0.</M>
</THM>
<PF>
Let <M>A = \{x-a < X \leq x,\, y-b < Y \leq y\}</M>, <M>B = \{x-a < X \leq x,\, Y \leq y\}</M>, <M>C = \{ X \leq x,\, y-b < Y \leq y\}</M>,
 and <M>C = \{ X \leq x-a,\, Y \leq y-b\}.</M>
<CIMG web="parts.png"/>
Then
<MULTILINE>
F(x,y) & = & P(A)+P(B)+P(C)+P(D),\\
F(x,y-b) & = & P(B)+P(D),\\
F(x-a,y) & = & P(C)+P(D),\\
F(x-a,y-b) & = & P(D).
</MULTILINE>
So <M>F(x,y)-F(x-a,y)-F(x,y-b)+F(x-a,y-b)=P(A)\geq 0.</M>
</PF>
This property is stronger than the non-decreasing properties mentioned earlier.

<HEAD2>Problem set <PS/></HEAD2>
<EXR>Let <M>F(x,y)</M>  be CDF of <M>(X,Y).</M>  Then express
<D>\lim_{a,b\to0+} (F(x,y)-F(x-a,y)-F(x,y-b)+F(x-a,y-b))</D>
as the probability of some familiar event.
</EXR>

<EXR>For a univariate CDF <M>F(x)</M>,  the non-decreasing property was <M>\forall
 x\in\rr~~\forall a>0~~F(x)-F(x-a)\geq 0.</M>  The proof was to note that this is <M>P(X\in(x-a,x])).</M>  

For bivariate CDF <M>F(x,y)</M>  the non-decreasing property is 
<M>\forall x,y\in\rr~~\forall a,b \geq 0~~ F(x,y)-F(x,y-b)-F(x-a,y)+F(x-a,y-b)\geq 0.</M>

The proof is to equate the lefd hand side to <M>P((X,Y)\in(x-a,x]\times(y-b,y]).</M>

Generalise this for trivariate CDFs. Drawing a picture would help. Remember the inclusion-exclusion principle.
</EXR>
<HEAD1 u="https://youtu.be/3sl9R0h2gpM">Properties of joint distribution: Limits at <M>\pm\infty</M>, right continuity</HEAD1>
<THM>
Let <M>F(x,y)</M>  be a bivariate CDF. Then 
<OL>
<LI>as <M>\min\{x,y\}\to \infty</M>, we have <M>F(x,y)\to 1</M>.</LI>
<LI>as <M>\min\{x,y\}\to -\infty</M>, we have <M>F(x,y)\to 0</M>.</LI>
</OL> 
</THM>
<PF>
To show
<D>\forall \epsilon>0~~\exists M\in\rr~~\forall x,y~~(\min\{x,y\}>M\Rightarrow F(x,y)>1-\epsilon).</D>

Take any <M>\epsilon>0.</M>

Let <M>A_n\seq\Omega</M>  be defined as <M>A_n=\{X\leq n,\, Y\leq n\}.</M> 

Then <M>A_n</M>'s increase and <M>\cup_n A_n = \Omega.</M>

So <M>P(A_n)\to 1.</M>  i.e., <M>F(n,n)\to 1</M>  as <M>n\to \infty.</M>

Hence <M>\exists M\in\nn~~F(M,M)> 1-\epsilon.</M>

Choose this <M>M.</M>

Take any <M>x,y</M>  with <M>\min\{x,y\} > M.</M>

Then <M>F(x,y) \geq F(M,y) \geq F(M,M) > 1-\epsilon,</M>  as required.

This completes the proof of the first result. 

The second result as a similar proof.
</PF>

<THM>
If <M>F(x,y)</M>  is the CDF of some <M>(X,Y)</M>, then <M>F</M>  is "north-east continuous" i.e., at each <M>(a,b)\in\rr^2</M> 
 if <M>x_n\downarrow a</M>  and <M>y_n\downarrow b</M>, then <M>F(x_n,y_n)\to F(a,b).</M>
</THM>
<PF>
Let <M>A_n=\{X\leq x_n,\, Y\leq y_n\}</M>   and <M>A=\{X\leq a,\, Y\leq b\}.</M>

Since <M>x_n\downarrow a</M>  and <M>y_n\downarrow b</M>, we have <M>A_n\downarrow A.</M>

Hence the theorem follows by continuity of probability.  
</PF>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>Let <M>(X,Y)</M>  have joint CDF <M>F(x,y).</M>  Let <M>x_n\uparrow a</M>  and 
<M>y_n\uparrow  b.</M>  Then is it true that <M>F(x_n,y_n)\uparrow F(a,b)</M>?
</EXR>

<EXR>Let <M>(X,Y)</M>  have joint CDF <M>F(x,y).</M>
Find 
<M>\lim_{n\to \infty} F(x_n,y_n)</M>  in each of the following cases. Express the limit as the probability of some event
 in terms of <M>X,Y</M>, whenever possible.
<OL>
<LI><M>x_n\to \infty, y_n\to \infty.</M></LI>
<LI><M>x_n\to \infty, y_n\to -\infty.</M></LI>
<LI><M>x_n\to -\infty, y_n\to -\infty.</M></LI>
<LI><M>x_n\to -\infty, y_n\to \infty.</M></LI>
<LI><M>x_n\equiv a, y_n\to \infty.</M></LI>
<LI><M>x_n\equiv a, y_n\to -\infty.</M></LI>
<LI><M>x_n\to \infty, y_n\equiv b.</M></LI>
<LI><M>x_n\to -\infty, y_n\equiv b.</M></LI>
<LI><M>x_n\uparrow a, y_n\uparrow b.</M></LI>
<LI><M>x_n\downarrow a, y_n\uparrow b.</M></LI>
<LI><M>x_n\uparrow a, y_n\downarrow b.</M></LI>
<LI><M>x_n\downarrow a, y_n\downarrow b.</M></LI>
</OL>
</EXR>
<HEAD1>Properties of joint distribution: Point mass and continuous</HEAD1>
Let <M>X</M>  be a random variable with CDF <M>F.</M>  Then the following two statements are equivalent:
<OL>
<LI><M>F</M>  is continuous everywhere.</LI>
<LI><M>\forall a\in\rr~~P(X=a)=0.</M></LI>
</OL>
Consider the corresponding statements in the bivariate scenario. 
<THM>Let <M>(X,Y)</M>  have joint CDF <M>F(x,y).</M> Consider  the statements
<OL>
<LI><M>F</M>  is continuous everywhere.</LI>
<LI><M>\forall (a,b)\in\rr^2~~P(X=a,\,Y=b)=0.</M></LI>
</OL>
Here the first statement implies the second statement, but the converse is not true in general. 
</THM>
<PF>
Let <M>a,b\in\rr^2</M>  and <M>a_n\uparrow a</M>  and <M>b_n\uparrow b.</M>  We have
<D>F(a,b)-F(x_n,b)-F(a,y_n)+F(x_n,y_n)=P(X\in(a_n,a],\, Y\in(b_n,b]).</D>
As <M>n\to \infty,</M>  the left hand side tends to <M>0,</M>  since <M>F(x,y)</M>  is
 continuous at <M>(a,b).</M>  Also the events <M>\{X\in(a_n,a],\,Y\in(b_n,b]\}\downarrow \{X=a,\,
 Y=b\}.</M>  

So we have <M>P(X=a,\, Y=b)=0,</M>  as required.

A counterexample for the converse is discussed in the exercise below.
</PF>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>Let <M>X\sim Bernoulli(*([[12]])*)</M>  and <M>Y</M> and density 
<D>f(x)=<CASES>1<IF>x\in[0,1]</IF> 0<ELSE/></CASES></D>
Let <M>X</M>  and <M>Y</M>   be independent random
 variables. Write down and sketch the CDFs <M>F_X(x)</M>  and <M>F_Y(y)</M>  of <M>X</M>  and <M>Y.</M>
Their joint
 CDF  is <M>F(x,y)=P(X\leq x,\, Y\leq y) =P(X\leq x)P( Y\leq y) = F_X(x)F_Y(y).</M>
Find it and fill in the cells below with appropriate formulae for <M>F(x,y).</M>  One cell has already been filled in for
 you.
<CIMG web="fexp.png"></CIMG>
 Is it continuous everywhere? What is
 <M>P(X=a,\,Y=b)</M>  for any given <M>(a,b)?</M></EXR>

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
 <M>F(x,y)</M>  has no discontinuity, or has
uncountably many discontinuities.
</EXR>

<HEAD1>Marginals</HEAD1>
We can find the distribution of <M>X</M>  and <M>Y</M>  separately given the joint distribution of <M>(X,Y).</M>  
<THM>
Let the joint CDF of <M>(X,Y)</M>  be <M>F(x,y).</M>  Let the marginal CDFs of <M>X</M>  and <M>Y</M>  be, respectively,
 <M>F_X(x)</M>  and <M>F_Y(y).</M>  Then
<UL>
<LI><M>\forall x\in\rr~~\lim_{y\to \infty} F(x,y) =F_X(x),</M></LI>
<LI><M>\forall y\in\rr~~\lim_{x\to \infty} F(x,y) =F_Y(y).</M></LI>
</UL>
</THM>
<PF>
The event <M>\{X\leq x,\,Y\leq y\}</M>  increases to <M>\{X\leq x\}</M> and <M>y\to \infty</M> 
 and to <M>\{Y\leq y\}</M>  as <M>x\to \infty.</M>

 Applying continuity of
 probability, we get the result.
</PF>
If <M>(X,Y)</M>  has a joint density, then we can obtain  (marginal) densities of <M>X</M>  and <M>Y</M>  as follows.
<THM>
If <M>(X,Y)</M>  has a joint density <M>f(x,y)</M>, then a marginal density of <M>X</M>  is given by 
<D>f_X(x) = \int_{-\infty}^\infty f(x,y)\, dy</D>
and a marginal density of <M>Y</M>  by 
<D>f_Y(y) = \int_{-\infty}^\infty f(x,y)\, dx</D>
provided these are continuous and <M>\forall x\in\rr~~\int_{-\infty}^x f_X(t)\, dt = F_X(x)</M>  and <M>\forall
 y\in\rr~~\int_{-\infty}^y f_Y(t)\, dt = F_Y(y).</M>
</THM>
<PF>
We have <M>F_X(x)  = \int_{-\infty}^x \int_{-\infty}^\infty f(s,t)\,dt\,ds.</M>

This is a (univariate) CDF. We know how to find a density for it (if one exists): we have to
 differentiate it and check if integral of the derivative gives back the CDF. 

Here, by the fundamental theorem of calculus,  <M>F_X'(x)  = \int_{-\infty}^\infty f(x,t)\,dt.</M>  Hence the result.
</PF>
<HEAD2>Problem set <PS/></HEAD2>
::<EXR><EIMG web="hpsjoint4.png"/></EXR>
::<EXR><EIMG web="hpsjoint5.png"/></EXR>
::<EXR><EIMG web="hpsjoint6.png"/></EXR>

<HEAD1>Marginal densities <M>\not\Rightarrow</M>  joint density</HEAD1>
Note that if <M>X</M>  and <M>Y</M>  are jointly distributed discrete random variables, then immediatly we are assured of
having their joint PMF. But not so in case of densities. Even if
 <M>X</M>  and <M>Y</M>  each has its own density, still <M>(X,Y)</M>  may fail to have a
 <I>joint</I>  density.

<EXM>Suppose <M>X</M> has density <M>f(x)=<CASES>1<IF>x\in(0,1)</IF> 0<ELSE/></CASES></M> and <M>Y = X.</M>  
Then show that <M>(X,Y)</M>  does not have a joint density.
<SOLN/>
Here the CDF of <M>(X,Y)</M>  is 
<D>
F(x,y)=P(X\leq x,\, Y\leq y) = P(X\leq\min\{x,y\}) = <CASES>0<IF>\min\{x,y\}<0</IF> \min\{x,y\}<IF>0\leq \min\{x,y\} < 1</IF> 1<IF>\min\{x,y\} \geq 1</IF></CASES>.
</D>
Hence, if <M>(X,Y)</M>  indeed had a joint density, then a joint density would be given
 by <M>f(x,y)</M>, where 
<D>f(x,y) = [[\partial^2][\partial x\partial y]] F(x,y).</D>
This forces <M>f(x,y)\equiv 0,</M>  which is not a PDF.
  </EXM>
However, if <M>(X,Y)</M>  has a joint density, then both <M>X</M>  and <M>Y</M>  must also have (marginal) densities.

<HEAD2>Problem set <PS/></HEAD2>
<EXR>If <M>X</M>  has density as above, then does <M>(X,X^2)</M>  have a joint density?</EXR>

<EXR>Does there exist a CDF  such that if <M>X</M>  has that CDF, then <M>(X,X)</M>  has a joint density?</EXR>

<HEAD1>Independence</HEAD1>
We already know the following general definition of  jointly distributed random variables being independent:
<DEFN name="Independence">
Let <M>X_1,...,X_n</M>  be jointly distributed random variables. We say they are <TERM>(mutually) independent</TERM>  if
 for all <M>\{i_1,...,i_k\}\seq \{1,...,n\}</M>  and any <M>B_1,...,B_k\seq\rr</M>  we have
<D>P(X_{i_1}\in B_1, ..., X_{i_k}\in B_k) = P(X_{i_1}\in B_1)\times\cdotsP( X_{i_k}\in B_k).</D>
</DEFN> 
Incidentally, it is not enough to have <M>P(X_i\in B_i, X_j\in B_j) = P(X_i\in B_i)P( X_j\in B_j)</M>  for all <M>i\neq j.</M> 
 If only this holds, then we call <M>X_1,...,X_n</M>  only <TERM>pairwise independent</TERM>, which is weaker than mutual
 independent.

So in particular if <M>X,Y</M>  are independent, then 
<D>\forall x,y\in\rr~~P(X\leq x,\, Y\leq y) = P(X\leq x)\times P(Y\leq y).</D>
In other words, the joint CDF factors into the marginal CDFs:
<D>\forall x,y\in\rr~~F(x,y) = F_X(x)F_Y(y).</D>
We had mentioned last semester that CDF characterises the entire distribution (i.e., if we know the probabilities of all
 events of the form <M>\{X\leq x\},</M>  then we can work out <M>P(X\in B)</M>  for every event <M>B</M>). 
So the next theorem is anticipated.
<THM>
Two jointly distributed random variables <M>X,Y</M>  are independent if and only if
<D>\forall x,y\in\rr~~F(x,y) = F_X(x)F_Y(y).</D>
</THM>
This is the general case. Now, if there is a joint density, then that can be factored
 into marginal densities, as well:
<THM>
Two jointly distributed random variables <M>X,Y</M> having joint density <M>f(x,y)</M> are independent if and only if
<D>\forall x,y\in\rr~~f(x,y) = f_X(x)f_Y(y),</D>
for some marginal densities <M>f_X</M>  and <M>f_Y.</M>
</THM>
 <PF>
<U>If part</U>: For any <M>x,y\in\rr</M>  we have
<D>F(x,y) = P(X\leq x,\,Y\leq y) = \int_{-\infty}^y\int_{-\infty}^x f(x,y)\, dx\,dy =\int_{-\infty}^y\int_{-\infty}^x f_X(x)f_Y(y)\, dx\,dy = [*[\int_{-\infty}^xf_X(x)\,dx]*]\times[*[\int_{-\infty}^y f_Y(y)\,dy]*] = F_X(x)F_Y(y).</D>

<U>Only if part</U>: Let <M>X,Y</M>  be independent. Let <M>f_X</M>  and <M>f_Y</M>  be densities for <M>X</M> and <M>Y.</M>
Then for any <M>[a,b]</M> and <M>[c,d]</M> we have 
<D>\int_a^b\int_c^d f_X(x)f_Y(y)\,dy\,dx =\int_a^b f_X(x) \, dx \int_c^d f_Y(y)\,dy =
 P(X\in[a,b])P(Y\in[c,d]) = P(X\in[a,b],\,Y\in[c,d]).</D>
Hence <M>f_X(x)f_Y(y)</M>  is a joint density for <M>(X,Y).</M>  
</PF>

As in the discrete case, here also we have the result that if <M>X,Y</M>  are independent, and <M>E(X), E(Y)</M>  exist,
 then <M>E(XY)</M>  exists and equals <M>E(X)E(Y).</M>  The proof is straightforward using factorisation of joint density. 
<HEAD2>Problem set <PS/></HEAD2>
<EXR>We toss two fair coins independently, and define 3 random variables <M>X,Y,Z</M>  based on
 the outcomes as follows. <M>X=1</M>  or <M>0</M>  according as the first toss shows head or not.
Similarly, <M>Y=1</M>  or <M>0</M>  according as the second toss shows head or not. <M>Z=X</M> if
 <M>Y=1</M>, else <M>Z=1-X.</M>  Show that <M>X,Y,Z</M>  are pairwise independent, but not mutually independent. 
</EXR>
<EXR>If two independent random variables <M>X,Y</M>  have marginal densities <M>f(t) = e^{-\lambda t}</M>  for
 <M>t>0</M>  (and 0 else), then find the joint density of <M>(X,Y).</M></EXR>

<EXR><M>(X,Y)</M>  is distributed uniformly over the unit disc in <M>\rr^2.</M>  Are <M>X,Y</M>  independent?</EXR>

<EXR>If the joint density of <M>(X,Y)</M>  is of the form <M>f(x)g(y),</M>  then show that
 <M>X</M>  and <M>Y</M>  must be independent. Also show that <M>f_X\propto f</M>  and <M>f_Y\propto g.</M></EXR>

<EXR>If <M>(X,Y)</M>  are independent, then is it true that the joint CDF
is the product of the marginal CDFs?
</EXR>
<HEAD1>Conditional distribution</HEAD1>
So far distributions with densities  behave very similarly to the discrete distributions, with integration replacing summation.  
But we cannot follow the same path for conditional distribution. If <M>(X,Y)</M>  are jointly discrete then we defined the
 conditional PMF of <M>X</M>  given <M>Y=y</M>  as <M>x\mapsto P(X=x|Y=y) = [[P(x=x,Y=y][P(Y=y)]],</M>  
and we did this only  for those <M>y</M> for which <M>P(Y=y)>0.</M>

But if <M>(X,Y)</M>  has a joint density, then <M>P(Y=y)</M>  is always 0. So instead, we follow a slightly different path:

<DEFN name="Conditional density">
If <M>(X,Y)</M>  has joint density, <M>f(x,y),</M>  then we define a <TERM>conditional density</TERM>  of
 <M>X</M>  given <M>Y=y</M> 
 as 
<D>f_{X|Y}(x,y) =[[f(x,y)][f_Y(y)]]</D> 
where <M>f_Y(y)=\int_{-\infty}^\infty f(x,y)\, dx > 0.</M>
</DEFN>
It is obvious that this is a density, since it is non-negative, and 
<M>\int_{-\infty}^\infty f_{X|Y}(x,y)\, dx = [[\int_{-\infty}^\infty f(x,y)\, dx][f_Y(y)]]=1.</M>
The most glaring difference between conditional PDF and conditional PMF is that the conditional PDF is not a
 conditional probability,
 since <M>P(Y=y)=0.</M>  Due to the same reason,
<M>\int_a^bf_{X|Y}(x,y)\, dx</M>  does not give <M>P(X\in [a,b]|Y=y),</M>  as <M>P(Y=y)=0.</M>

However, the theorem of total probability is still valid:

<THM name="Total probability"><M>\int_c^d \int_a^bf_{X|Y}(x,y)f_Y(y)\, dxdy=P(X\in [a,b], Y\in[c,d]).</M></THM>
<PF>  This is obvious
 from the definition of <M>f_{Y|X}(x,y).</M></PF>
It is this theorem that justifies the definition of conditional PDF.

Other than this difference, the rest follows as in the discrete case. We have the concepts of
 conditional expectation, conditional variance etc as usual. 

<DEFN>
If <M>(X,Y)</M>  has a joint density <M>f(x,y),</M> then <M>E(X|Y=y) = \int_{-\infty}^\infty f_{X|Y}(x,y)\, dx</M>  and 
<D>V(X|Y=y) = E((X-E(X|Y=y))^2|Y=y).</D>
</DEFN> 
The tower property also works as before, as do the relation between conditional and unconditional variances.
<THM>
If <M>(X,Y)</M>  has a joint density, then
<OL>
<LI><M>E(X) = E(E(X|Y)).</M></LI>
<LI><M>V(X) = E(V(X|Y)) + V(E(X|Y))</M>.</LI>
</OL>
</THM> 
<PF>
Enough to show the first, since the other two follow from it (as we have already seen last semester). 

Let <M>f(x,y)</M>  be a joint density of <M>(X,Y).</M>  Then 
<D>E(X|Y=y) = \int_{-\infty}^\infty xf_{X|Y}(x,y)\, dx = [[\int_{-\infty}^\infty xf(x,y)\, dx][f_Y(y)]].</D>

So 
<D>E(E(X|Y)) = \int_{-\infty}^\infty[[\int_{-\infty}^\infty xf(x,y)\, dx][f_Y(y)]]f_Y(y)\, dy = \int_{-\infty}^\infty\int_{-\infty}^\infty xf(x,y)\, dx\, dy =E(X),</D>
as required. 
</PF>
<HEAD2>Problem set <PS/></HEAD2>

<EXR>If <M>(X,Y)</M>  is uniformly distributed over the triangle <M>\{(x,y)~:~0\leq x \leq y,\,
 0\leq y\leq 1\}.</M>  Guess a conditional density of <M>X</M>  given <M>Y=y?</M>  First try
 to guess, and then check it from the definition.</EXR>

<EXR>Let <M>X|Y=y</M>  have density <M>f_{X|Y}(x,y) = <CASES>c_y x^2<IF>x\in[0,y]</IF>
 0<ELSE/></CASES></M>, where <M>c_y</M>  is free of <M>x.</M> 
Let <M>Y</M>  be uniformly distributed over <M>[0,1]</M>.  Find <M>f_{Y|X=x}(y,x).</M></EXR>

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
<HEAD2>Problem set <PS/></HEAD2>
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
