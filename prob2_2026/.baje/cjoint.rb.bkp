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
 continuity in terms of the <M>\epsilon</M>-<M>\delta</M>  definition, much as in real analysis. In real analysis we say
 that a function <M>f:\rr\to\rr</M>  is continuous at some <M>a\in\rr</M>  if 
<D>\forall \epsilon>0~~\exists \delta>0~~\forall x\in N_1(a,\delta)~~f(x)\in N_1(f(a),\epsilon).</D>
Here we have used the neighbourhood notation <M>N_1(a,r)</M>  to mean 
<D>N_1(c,r):=\{x\in\rr~:~|x-c|<r\}.</D>
Now the natural way to measure distance between two points <M>x,y\in\rr</M>  is <M>|x-y|.</M>  But if we want to find the
 distance between two points <M>\v x = (x_1,x_2), \v y = (y_1,y_2)\in\rr^2,</M>  then the natural way is 
<D>d(\v x, \v y) = \sqrt{(x_1-y_1)^2+(x_2-y_2)^2}.</D>
So we should update the definition of neighbourhood in <M>\rr^2</M>  accordingly:
<D>N_2(\v c,r):=\{\v x\in\rr^2~:~d(\v x,\v c)<r\}.</D>
Pictorially, this is the disc (without the circumference) of radius <M>r</M>  centred at <M>\v c.</M>  If we plug <M>N_2(\cdot, \cdot)</M> 
 in place of <M>N_1(\cdot, \cdot)</M>  approparitely in the definition of continuity from real analysis, we shall get the
 following definition:
<DEFN name="Continuity">
A function <M>f:\rr^2\to\rr</M>  is called <TERM>continuous</TERM>  at some <M>\v a\in\rr^2</M>  if
<D>\forall \epsilon>0~~\exists \delta>0 ~~\forall \v x\in N_2(\v a, \delta)~~f(\v x)\in N_1(f(\v a),\epsilon).</D>
</DEFN>
Since the codomain is still <M>\rr,</M>  we are using subscript 1 in  <M>N_1(f(\v a),\epsilon).</M>  
If our function was <M>f:\rr^2\to\rr^2,</M>  then we would have used <M>N_2(f(\v a),\epsilon).</M>  
By the way, we can similarly define continuity of any <M>f:\rr^m\to\rr^n.</M>  


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
<D>\forall a \leq b, c \leq d~~P(#( (X,Y)\in[a,b]\times[c,d] )#) = \int_a^b \int_c^d f(x,y)\, dydx.</D>
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
 is <M>\pi c.</M>  So we need <M>\pi c = 1,</M>  i.e., <M>c = [[1\pi]].</M>
</EXM>
<EXM>Find <M>c\in\rr</M>  such that <M>f(x,y) =<CASES>c(x+y)<IF>0\leq x,y,\leq 2</IF> 0<ELSE/></CASES> </M>  is a density.
<SOLN/>
We need <M>\int_{-\infty}^\infty\int_{-\infty}^\infty f(x,y)\, dx dy = 1,</M>  i.e., 
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
<COMMENT>
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
</COMMENT>
This may be computed as follows:
<D>\int_0^1 [*[\int_0^{x^2} (x+y)\, dy]*] dx = \int_0^1 [*[ xy+[[12]]y^2 ]*]_0^{x^2} \,
 dx=\int_0^1 x^3+[[12]]x^4\, dx = [[14]] + [[1][10]] = [[7][20]].</D>
We could have done it the other way around, too:
<D>\int_0^1 [*[\int_{\sqrt y}^1 (x+y)\, dx]*] dy = \cdots.</D>
This should also lead to the same answer (check!). 
</EXM>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>Let <M>(X,Y)</M>  have joint density <M>f(x,y)=<CASES>cxy<IF>x,y\in[0,1],\,x\leq y</IF>
 0<ELSE/></CASES>.</M>  Find <M>P(Y< \sqrt{X}).</M></EXR>

<EXR>Let <M>(X,Y)</M>  have joint density <M>f(x)=<CASES>c(x+y)<IF>x,y\in[0,1]</IF>
 0<ELSE/></CASES>.</M>  Find <M>P(*(Y< [[12]])*).</M></EXR>

<EXR>Let <M>X,Y</M>  be IID <M>Unif(0,1).</M>  Find <M>P(X^2\leq Y \leq X).</M></EXR>

<EXR>If <M>(X,Y)</M>  has joint density <M>e^{-(x+y)}</M>  for <M>x,y>0,</M>  (and 0 else), then find <M>P(X^2+Y^2<1).</M>
 Leave the answer in terms of a single-variable integral.
</EXR>

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
<D>F(x,y) = \int_0^x\int_0^y (u+v)\, dudv  = \int_0^x[[12]]y^2+yv\,dv = [[12]]xy^2+[[12]]x^2y.</D>
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
<HEAD1 u="https://youtu.be/uk4u5koiPr0">Univariate vs multivariate CDF</HEAD1>
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
 <M>P(X=a,\,Y=b)</M>  for any given <M>(a,b)?</M>
<ANS>
<CIMG web="contcex.png"/>
</ANS>
</EXR>

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

<HEAD1 u="https://youtu.be/SABBZjtYCE8">Marginals</HEAD1>
We can find the distribution of <M>X</M>  and <M>Y</M>  separately given the joint distribution of <M>(X,Y).</M>  
The distributions of <M>X</M>  and <M>Y</M>  separately are called their <TERM>marginal</TERM> 
 distributions. The term "marginal" is actually redundant. "Distribution of <M>X</M> " is the same
 as "marginal distribution of <M>X</M> ". The term is used just to contrast with "joint".  
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
</THM>
<PF>
Enough to show that <M>\forall a\leq b\in\rr~~P(a\leq X\leq b) = \int_a^b f_X(x)\, dx.</M>

Take any <M>a\leq b\in\rr.</M>  

Then 
<D>P(a\leq X\leq b) = P(a\leq X\leq b,\, -\infty < Y < \infty) = \int_a^b \int_{-\infty}^\infty f(x,y)\, dy\, dx = \int_a^b f_X(x)\, dx,</D>
as required. 

Similarly for <M>f_Y(y).</M>
</PF>
<HEAD2>Problem set <PS/></HEAD2>
::<EXR><EIMG web="hpsjoint4.png"/></EXR>
::<EXR><EIMG web="hpsjoint5.png"/></EXR>
::<EXR><EIMG web="hpsjoint6.png"/></EXR>

<HEAD1 u="https://youtu.be/srZbN5JKwDE">A subtle difference between joint PDF and PMF</HEAD1>
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
<CIMG web="nodens.png">Different parts of <M>F(x,y)</M></CIMG>
If you'd like to see it in 3D, then here it is:
<CIMG web="nodens3d.png">Surface of <M>F(x,y)</M></CIMG>

Now, if <M>(X,Y)</M>  indeed had a joint density, then a joint density would be given
 by <M>f(x,y)</M>, where 
<D>f(x,y) = [[\partial^2][\partial x\partial y]] F(x,y).</D>
But the above diagram shows that each part of <M>F(x,y)</M>  either does not involve <M>x</M>  or does not involve <M>y.</M> 
 So after partial differentiation wrt both the variables we must have <M>f(x,y)\equiv 0,</M>  which is not a PDF (since does
 not integrate to 1). 

This proves that <M>F(x,y)</M>  does not admit a density. 
  </EXM>
However, if <M>(X,Y)</M>  has a joint density, then both <M>X</M>  and <M>Y</M>  must also have (marginal) densities.

<HEAD2>Problem set <PS/></HEAD2>
<EXR>If <M>X</M>  has density as above, then does <M>(X,X^2)</M>  have a joint density?</EXR>

<EXR>Does there exist a CDF  such that if <M>X</M>  has that CDF, then <M>(X,X)</M>  has a joint density?</EXR>

<HEAD1 u="https://youtu.be/MYxgNQkhVhY">Independence</HEAD1>
We already know the following general definition of  jointly distributed random variables being independent:
<DEFN name="Independence">
Let <M>X_1,...,X_n</M>  be jointly distributed random variables. We say they are <TERM>(mutually) independent</TERM>  if
 for all <M>\{i_1,...,i_k\}\seq \{1,...,n\}</M>  and any <M>B_1,...,B_k\seq\rr</M>  we have
<D>P(X_{i_1}\in B_1, ..., X_{i_k}\in B_k) = P(X_{i_1}\in B_1)\times\cdots P( X_{i_k}\in B_k).</D>
</DEFN> 
Incidentally, it is not enough to have <M>P(X_i\in B_i, X_j\in B_j) = P(X_i\in B_i)P( X_j\in B_j)</M>  for all <M>i\neq j.</M> 
 If only this holds, then we call <M>X_1,...,X_n</M>  only <TERM>pairwise independent</TERM>, which is weaker than mutual
 independence.

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

<EXR>Let <M>(X,Y)</M>  have joint density <M>f(x,y) = g(x) h(y),</M>  where <M>g(\cdot)</M>  and
 <M>h(\cdot)</M>  are not necessarily density functions. Find margial densities of <M>X</M>  and
 <M>Y</M>, and show that <M>X</M>  and <M>Y</M>  must be independent.</EXR>

<HEAD1 u="https://youtu.be/udq0I74hJMs">Expectation using joint density</HEAD1>
Suppose <M>X,Y</M>  are jointly  distributed. We often need to find the expectation of <M>h(X,Y)</M>  for some given function
 <M>h(x,y).</M>  For this we can of course employ the definition by first defining a new random
 variable,  <M>Z=h(X,Y)</M>. This will take us back to the univariate set up, that we already know to handle. 
But a simpler alternative exists. 
<THM>
Let <M>(X,Y)</M>  have joint density <M>f(x,y).</M>  If <M>h(X,Y)</M>  is a non-negative random variable, then 
<D>E(h(X,Y)) = \int_{-\infty}^\infty\int_{-\infty}^\infty h(x,y)f(x,y)\, dx\,dy.</D>
This always exists (though may be <M>\infty</M>). 
</THM>
This theorem is the obvious generalisation of the univatiate density case, and like that will be proved once we learn about
 Lebesgue integral later in this course. If <M>h(X,Y)</M>  can take both positive and negative values, then we proceed in
 the usual way.
<THM>
Let <M>(X,Y)</M>  have joint density <M>f(x,y).</M>  Let <M>h(X,Y)</M>  be a random variable. Let 
<MULTILINE>
h(x,y)_+ & = & \max\{h(x,y),0\},\\
h(x,y)_- & = & \max\{-h(x,y),0\}.
</MULTILINE> 
Then
<D>E(h(X,Y)) = E(h(X,Y)_+)-E(h(X,Y)_-),</D>
unless both the expectation on the rhs are <M>\infty</M>, in which case <M>E(h(X,Y))</M>  is undefined.
</THM>
<PF>
This follows immediately from the general definition of expectation.
</PF>

Again, as in univriate density case, we have a simpler formula for the special case where <M>E(|h(X,Y)|) < \infty.</M>
<THM>
Let <M>(X,Y)</M>  have joint density <M>f(x,y).</M>  If <M>h(X,Y)</M>  is a  random variable with <M>E(|h(X,Y)|) < \infty</M>,, then 
<D>E(h(X,Y)) = \int_{-\infty}^\infty\int_{-\infty}^\infty h(x,y)f(x,y)\, dx\,dy.</D>
This must be finite.
</THM>

We have the definition of covariance and correlation as before:
<D>cov(X,Y) = E[(X-E(X))(Y-E(Y))] = E(XY)-E(X)E(Y),</D>
and
<D>cor(X,Y) = [[cov(X,Y)][\sqrt{V(X)V(Y)}]].</D>
 Cauchy-Schwartz inequality is also the same:
<D>cov(X,Y)^2\leq V(X) V(Y),</D>
where iequality hold if and only <M>V(aX+bY) = 0</M>  for some <M>a,b\in\rr.</M>
The
 proof that we showed in Probability I was general. An immediate coensequence is that <M>-1\leq cor(X,Y) \leq 1.</M>  Also
 <M>cor(X,Y)=1</M>  if and only if <M>V(Y-aX) = 0</M>  for some <M>a>0.</M>  SImilarly, <M>cor(X,Y)=-1</M>  holds if and
 only if <M>V(Y-aX) = 0</M>  for some <M>a < 0.</M>  Check if you remember the proofs. 
<HEAD2>Problem set <PS/></HEAD2>
<EXR>
Let <M>(X,Y)</M>  be uniformly distributed over <M>S=\{(x,y)~:~0\leq x\leq 1,~x\geq y\geq0\}.</M>
<OL><LI>Sketch the set <M>S</M>  as a shaded subset of <M>\rr^2.</M></LI>
<LI>Write down a joint density for <M>(X,Y).</M></LI>
<LI>Evaluate <M>cov(X,Y).</M></LI>
</OL>
</EXR>

<EXR>
Find <M>E(X^2Y)</M>  when <M>(X,Y)</M>  has joint density 
<D>f(x,y) = <CASES>x+y<IF>0< x,y < 1</IF> 0<ELSE/></CASES></D>
</EXR>

<HEAD1 u="https://youtu.be/BYH9b8FLE3I">Expectation of product of independent random variables</HEAD1>
Last semester we had worked with simple random variables, and had seen the result that if
 <M>X,Y</M>  are independent simple random variables, then <M>E(XY)=E(X)E(Y).</M>  This result is useful and can be generalised
 to other random variables, as well. However, for a general random variable  expectation may be infinite or undefined. In
 order to avoid <M>\infty\times 0</M>  situations, we restrict ourselves to only the random variables with finite
 expectations. Then we have the
 following theorem. 
<THM>If <M>X,Y</M>  are independent, and <M>E(X)</M>, <M>E(Y)</M>  both are finite, then
 <M>E(XY)</M>  must also be finite, and <M>E(XY)=E(X)E(Y).</M></THM>
<PF>
While the theorem holds for general random variables, we shall prove it here only for the case when <M>X,Y</M>  both have
densitities, <M>f_X(x)</M>  and <M>f_Y(y)</M>, say.

Since <M>X,Y</M>  are independent, hence <M>(X,Y)</M>  must have joint density <M>f(x,y) = f_X(x)f_Y(y).</M>

We have to work with expectation of <M>XY</M>, which may take both positive and negative values.
 So we cannot immediately apply the integration formula for expectation. 

Here this result will come to our help: for a random variable <M>Z</M>  we have <M>E(Z)</M> 
 finite if and only <M>E(|Z|)< \infty.</M>  We had seen its proof in Probability I (easy proof: <M>Z=Z_+-Z_-</M>  and <M>|Z|=Z_++Z_-</M>).
The advantage of working with <M>E(|Z|)</M>  instead of <M>E(Z)</M>  is that <M>|Z|</M>  is
 non-negative, and hence always has well-defined expectation (though possibly <M>\infty</M>). 
  
We shall first show that
 <M>E(|XY|)< \infty,</M>  which will show the <M>E(XY)</M>  is finite, and will let us apply the integration formula. 

Since <M>|XY|</M>  is non-negative, hence we can use the integration formula for it:
<MULTILINE>
E(|XY|) & = & \int_{-\infty}^\infty\int_{-\infty}^\infty |xy| f(x,y)\, dx\, dy\\
& = &  \int_{-\infty}^\infty\int_{-\infty}^\infty |xy| f_X(x)f_Y(y)\, dx\, dy\\
& = & \int_{-\infty}^\infty |x|f_X(x)\,dx\int_{-\infty}^\infty |y| f_Y(y)\, dy\\
& = & E(|X|)E(|Y|)<\infty.
</MULTILINE>

Now we are entitled to use the integration formula for <M>E(XY),</M>  and so the same logic as above gives
<MULTILINE>
E(XY) & = & \int_{-\infty}^\infty\int_{-\infty}^\infty xy f(x,y)\, dx\, dy\\
& = &  \int_{-\infty}^\infty\int_{-\infty}^\infty xyf_X(x)f_Y(y)\, dx\, dy\\
& = & \int_{-\infty}^\infty xf_X(x)\,dx\int_{-\infty}^\infty y f_Y(y)\, dy\\
& = & E(X)E(Y).
</MULTILINE>
</PF>
Two points to be noted about this theorem:
<OL><LI>The converse is not true. We have seen counterexamples even in the simple case.</LI>
<LI>If <M>X,Y</M>  are jointly distributed, and both <M>E(X)</M>  and <M>E(Y)</M>  are finite,
 even then <M>E(XY)</M>  may fail to be finite, or even exist. The exercises below will give some counterexamples.</LI>
</OL>

<HEAD2>Problem set <PS/></HEAD2>
<EXR>Real analysis tells us that <M>\sum [[1][n^3]] < \infty.</M>  Call this <M>c.</M>
 We can manufacture the following PMF from this:
<D>p(x) = <CASES>[[1][c x^3]]<IF>x\in\nn</IF> 0<ELSE/></CASES></D>
Let <M>X</M>  be a random variable with this PMF. Let <M>Y = X.</M>  Show that <M>E(X), E(Y)</M>  are both finite, though
 <M>E(XY)</M>  is not finite. 
</EXR>

<EXR>Play with the last exercise to come up with a counterexample where <M>E(X), E(Y)</M>  are
 both fnite, but <M>E(XY)</M>  does not exist.<ANS>
Let <M>X</M>  take value <M>(-1)^n n</M>  with probability <M>[[1][cn^3]]</M>  where <M>c = \sum [[1][n^3]] < \infty.</M> 
 Take <M>Y = |X|.</M>
</ANS></EXR>

<EXR>
Let <M>X</M>  have density <M>f(x) =<CASES>[[12]]<IF>|x| < 1</IF> 0<ELSE/></CASES> </M>
Let <M>Y = X^2.</M>  Are <M>X,Y</M>  independent? Show that <M>E(XY) = E(X)E(Y).</M>
</EXR>
<HEAD1 u="https://youtu.be/v25yBxM0laU">Expectation, variance of random vectors</HEAD1>
If <M>X_1,...,X_n</M>  are jointly distributed random variables, then <M>\v X=(X_1,...,X_n)'</M> 
 is called a <TERM>random vector</TERM>, and is usually considered as an <M>n\times 1</M>  column vector. We define 
<M>E(\v X)</M>  as
<D>E(\v X) = <MAT>E(X_1)\\\vdots\\E(X_n)</MAT>.</D>
The motivation is again from statistical regularity. If you take many IID replications of 
<M>\v X</M>  and average them, then (under very general conditions) the average will converge to <M>E(\v X).</M> 

The case of dispersion is slightly trickier. We shall start with the main definition and provide the motivation later. 
<DEFN name="Dispersion matrix">
Let <M>\v X</M>  be a random vector with components <M>X_1,...,X_n.</M>  Then its <TERM>dispersion matrix</TERM>  or <TERM>variance matrix</TERM> 
 or <TERM>variance-covariance matrix</TERM>  is defined as the <M>n\times n</M>  symmetric matrix with <M>(i,j)</M>-th entry
 <M>cov(X_i,X_j).</M>  In particular, its <M>i</M>-th diagonal entry is <M>V(X_i).</M>
</DEFN> 

<HEAD2>Problem set <PS/></HEAD2>
<EXR>If <M>X_1,...,X_n</M>  are IID with mean 2 and variance 5, and <M>\v X = (X_1,...,X_n)'</M>,
 then find <M>E(\v X)</M>  and <M>V(\v X).</M></EXR>

<EXR>If <M>X_1\sim Binom(*(10,[[13]])*)</M>  and <M>X_2=10-X_1</M>  and <M>\v X = (X_1,X_2)'</M> 
 then find <M>E(\v X)</M>  and <M>V(\v X).</M></EXR>


<EXR>Let <M>\v X = (X_1,X_2,X_3)'</M>  have 
<D>V(\v X) = <MAT>
3 & 2 & 1\\
2 & 4 & 2\\
1 & 2 & 5
</MAT>.</D>
Find <M>cor(X_1,X_3).</M>
</EXR>

<EXR>In the last problem, also find <M>V(X_1-3X_2)</M>  and <M>cov(X_1+X_2,X_3).</M></EXR>
<HEAD1 u="https://youtu.be/G5A8ZtFMy84">Motivation behind the definition of dispersion matrix</HEAD1>
To motivate the definition of dispersion matrixconsider the bivariate case. Let the two components of our random
 vector be <M>X</M>  and <M>Y.</M>  If we take
 many IID replications, we get points like <M>(X_1,Y_1),...,(X_n,Y_n).</M>  Think of these like a scatterplot. 
<CIMG web="scat1.png"></CIMG>
If you look at this cloud of points from position A, then the points appear more scatterred than when we look from B. This
 is an interesting feature of multivariate dispersion, it depends on how you look at it. A good  measure of dispersion
 should not depend on the direction you are looking from, rather it should capture the comprehensive picture,
from which we should be able to work out the dispersion from any desired direction. To achieve 
 this, imagine a ruler placed on the scatterplot with its 0 mark at the origin. Parallel rays of
 light are shining perpendicularly down on the ruler from both
 sides, casting shadows of the points on the ruler:
<CIMG web="scat2.png">Light rays (shown in red) are dropping perpendicularly on the ruler</CIMG>
Then each bivariate point reduces to a single number along the scale, and we may compute variance of the numbers to measure
 the dispersion when looking from that particular direction. To quantify the placement of the ruler, imagine a unit
 vector <M>\v u</M>  along the
 ruler from its 0 mark (at the origin) reaching up to its 1 mark.
<CIMG web="scat3.png">Projecting a typical point perpendicularly on the ruler</CIMG>
Then
 a point <M>\v v \equiv (X,Y)</M> 
 will project to the vector  
<D>[[\v v'\v u][\v u'\v u]] \v u,</D>
shown in blue. Measured in units of <M>\v u</M>,  this will show up at the mark <M>[[\v v'\v u][\v u'\v u]]</M>  of the ruler.

Now, <M>[[\v v'\v u][\v u'\v u]] = pX+qY</M> for some <M>p,q\in\rr.</M>  
Then the
 variance of <M>pX+qY</M> 
 will be <M>p^2 V(X)+q^2 V(Y) + 2pq\, cov(X,Y),</M>  which may be written as  (check!)
<D><MAT>p & q</MAT><MAT>V(X) & cov(X,Y)\\cov(X,Y) & V(Y)</MAT><MAT>p\\q</MAT>.</D>
Here <M>p,q</M>  are controlled by the ruler. Notice that the matrix in the middle does not
 involve <M>p,q.</M>  Thus, it contains
 information about dispersion for every
 possible way of placing the ruler.
 This matrix is indeed the dispersion matrix we  defined above.

Here we talked about 1-dim projection of 2-dim. In general, we do 1-dim projection of <M>n</M>-dim
 data. To see this visually on a computer screen you may like to consider 2-dim projection of
 3-dim data. Run <LINK to="3dcloud.r">this R code</LINK>  on <LINK to="3ddata.txt">this data
 set</LINK>  to get a 3D scatterplot that you can turn with your mouse. Depending on how you turn
 it, the points will appear to be closely/loosely clustered.  
<HEAD2>Problem set <PS/></HEAD2>
<EXR>Consider the toy bivariate data set <M>(1, 2), (3, 4), (2.1, 3.1), (4, 5).</M>  Draw the
 scatterplot. Imagine that we are looking down as shown. Guess the variance as seen from that
 direction. Check your guess by actual computation.
<CIMG web="lookex.png"></CIMG>
</EXR>

<EXR>Let the dispersion matrix of <M>(X,Y)</M>  be <M><MAT>1 & 0\\0 & 2</MAT></M>. Find
 <M>\theta\in [0,\pi)</M>  such that <M>V(\cos (\theta) X + \sin(\theta) Y)</M>  is maximum. When is the variance minimum?</EXR>

 <HEAD1 u="https://youtu.be/7hEYnZoKuJg">Properties of expectation, variance of random vectors</HEAD1>
The following facts are immediate from the definition.
<THM>
If <M>E(\v X)=\v\mu</M>  and <M>V(\v X) = \Sigma,</M>  then for any matrix <M>A_{m\times n}</M>  and any vector <M>\v b_{m\times 1}</M> 
 we have
<OL>
<LI><M>E(A\v X+\v b) = A\v\mu+\v b</M>,</LI>
<LI><M>V(A\v X+\v b) = A\Sigma A'</M></LI>
</OL>
</THM> 
<PF>
Let <M>\v Y = A\v X+\v b.</M>  Then <M>\v Y = (Y_1,...,Y_m)'</M>, where <M>Y_i = \sum_j a_{ij}X_j + b_i.</M>  Here I have
 denoted the <M>(i,j)</M>-th entry of <M>A</M>  by <M>a_{ij}.</M>  

Now compute <M>E(Y_i)</M>  and <M>cov(Y_i,Y_j)</M>  directly to get the result. 

By the way, the <M>(i,j)</M>-th entry of <M>A\Sigma A'</M>  is <M>\sum_r\sum_s a_{ir} \sigma_{rs} a_{js}.</M>  
</PF>

<THM>
Any dispersion matrix is NND. In other words, if <M>\Sigma_{n\times n}=V(\v X)</M>, then <M>\forall \v\ell\in\rr^n~~\v\ell'\Sigma\v\ell\geq 0.</M>
</THM>
<PF>
By the last theorem, <M>\v\ell'\Sigma\v\ell=V(\v\ell'\v X)\geq 0.</M>
</PF>

The converse is also true:
<THM>
If <M>\Sigma_{n\times n}</M>  is any NND matrix, then it <M>V(\v X)</M>  for some random vector <M>\v X_{n\times 1}.</M> 
</THM>
<PF>
Let <M>U_1,...,U_n</M>  be independent with <M>\forall i~~V(U_i)=1.</M>    Then <M>\v U=
 (U_1,...,U_n)'</M>  has <M>V(\v U) = I_n.</M>  

Since <M>\Sigma</M>  is NND, hence <M>\Sigma = AA'</M>  for some <M>A_{n\times n}.</M>  

Let <M>\v X = A\v U.</M>  Then <M>V(\v X) = A I_n A' = AA' = \Sigma.</M> 
</PF>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>Show that for <M><MAT>a & b\\b & c</MAT></M>  to be a dispersion matrix, a necessary
 condition is that <M>b^2\leq ac.</M>  Is it a sufficient condition?</EXR>

<EXR>Show that <M>V(\v X)</M>  is singular if and only if <M>P(a_1X_1+\cdots+a_n X_n=c)=1</M>  for
 some constants <M>a_i</M>'s and <M>c</M>  such that not all <M>a_i</M>'s are zero.</EXR>


<EXR>If <M>\v X=(X,Y)'</M>  and <M>V(\v X)</M>  is a singular, then how will a scatterplot of
 replications from <M>\v X</M>  look like? Here we are running the random experiment underlying <M>\v
 X</M>  repeatedly, and getting <M>(X_1,Y_1), (X_2,Y_2),...,(X_n,Y_n),</M>  and plotting these
 <M>n</M>  points as a scatterplot. Your job is a to identify some geometric pattern in the plot. </EXR>

<HEAD1 u="https://youtu.be/ThHaLNSDZKI">Conditional density (intuition)</HEAD1>
So far distributions with densities  behave very similarly to the discrete distributions, with integration replacing summation.  
But we cannot follow the same path for conditional distribution. If <M>(X,Y)</M>  are jointly discrete then we defined the
 conditional PMF of <M>X</M>  given <M>Y=y</M>  as <M>x\mapsto P(X=x|Y=y) = [[P(X=x,Y=y)][P(Y=y)]],</M>  
and we did this only  for those <M>y</M> for which <M>P(Y=y)>0.</M>

But if <M>(X,Y)</M>  has a joint density, then <M>P(Y=y)</M>  is always 0. So we employ a little trick. For a discrete random variable
 <M>X</M>  with PMF <M>f(x)</M>  we have <M>\forall a\in\rr~~f(a) = P(X=a).</M>  But had <M>f(x)</M>  been a
 density, then we could not write this anymore,
since <M>\forall a\in\rr~~P(X=a)=0.</M>  However, if <M>f</M>  is
 continuous at <M>a</M>, then  we could think 
<D lab="(*)">P(X\approx a) = P(*(X\in(*(a-[[\epsilon2]],a+[[\epsilon2]])*) )*) \approx f(a) \epsilon.</D>
Similarly, if <M>(X,Y)</M>  has joint density <M>f(x,y)</M>, which is continuous at <M>(a,b)</M>  we can say 
<MULTILINE>
P(X\approx a,\, Y\approx b) 
& = & P(*(X\in (*(a-[[\epsilon2]], a+[[\epsilon2]])*) ,\,  Y\in (*(b-[[\epsilon2]],b+[[\epsilon2]])*) )*)\\
& \approx & f(a,b)\epsilon^2.
</MULTILINE>
So instead of working with <M>P(X=a | Y=b)</M>  we shall instead work with
<D>P(X\approx a | Y\approx b) = [[P(X\approx a,\, Y\approx b)][P(Y \approx b)]] \approx [[f(a,b) \epsilon^2][f_Y(b) \epsilon]] = [[f(a,b)][f_Y(b)]] \epsilon.</D>
The similarity between this and (*) immediately leads us to define <TERM>conditional density</TERM>  of <M>X</M>  given <M>Y=y</M> 
 as 
<D>f_{X|Y}(x,y) =[[f(x,y)][f_Y(y)]].</D> 
Since we are dividing by <M>f_Y(y)</M>, we naturally want <M>f_Y(y)>0.</M>  But <M>f_Y</M>  being a density can be given
 arbitrary non-negative
 value at any fixed <M>y.</M>  To uniquely specify <M>f_Y(y)</M>  we naturally assume continuity of <M>f_Y</M>  at that point.
 So we arrive at thefollowing definition.
<DEFN name="Conditional density">
Let <M>(X,Y)</M>  have joint density, <M>f(x,y).</M>  
Then we define <TERM>conditional density</TERM>  of
 <M>X</M>  given <M>Y=y</M> 
 as 
<D>f_{X|Y}(x,y) =[[f(x,y)][f_Y(y)]].</D> 
Here we are assuming that  <M>y</M>  is such that  <M>f_Y</M>
is continuous and positive at  <M>y.</M>
</DEFN>
It is obvious that this is a density, since it is non-negative, and 
<M>\int_{-\infty}^\infty f_{X|Y}(x,y)\, dx = [[\int_{-\infty}^\infty f(x,y)\, dx][f_Y(y)]]=1.</M>
The most glaring difference between conditional PDF and conditional PMF is that 
<M>\int_a^bf_{X|Y}(x,y)\, dx</M>  does not give <M>P(X\in [a,b]|Y=y),</M>  as this latter quantity
 isundefined since <M>P(Y=y)=0.</M>

<HEAD2>Problem set <PS/></HEAD2>
<EXR>Find conditional density of <M>X</M>  given <M>Y=[[12]]</M>  if the joint density of <M>(X,Y)</M>  is </EXR>
<D>f(x,y) = <CASES>x+y<IF>0< x,y < 1</IF> 0<ELSE/></CASES></D>
<HEAD1 u="https://youtu.be/-7x_sra_fyg">Conditional density (rigour)</HEAD1>
We defined conditional density in a heuristic way. However, the theorem of total probability is still valid perfectly rigourously:

<THM name="Total probability"><M>\int_c^d \int_a^bf_{X|Y}(x,y)f_Y(y)\, dxdy=P(X\in [a,b], Y\in[c,d]).</M></THM>
<PF>  This is obvious
 from the definition of <M>f_{Y|X}(x,y):</M>
<MULTILINE>
\int_c^d \int_a^bf_{X|Y}(x,y)f_Y(y)\, dx\,dy & = & \int_c^d \int_a^b[[f(x,y)][f_Y(y)]]f_Y(y)\, dx\,dy\\
& = & \int_c^d \int_a^b f(x,y)\,dx\,dy\\
& = & P(X\in [a,b], Y\in[c,d]).</MULTILINE>
</PF>
It is this theorem that justifies the definition of conditional PDF.

As in the discrete case, here also  we have  concepts of
 conditional expectation, conditional variance etc.

<DEFN>
If <M>(X,Y)</M>  has a joint density <M>f(x,y),</M> then <M>E(X|Y=y) = \int_{-\infty}^\infty x\,f_{X|Y}(x,y)\, dx</M>  and 
<D>V(X|Y=y) = E((X-E(X|Y=y))^2|Y=y).</D>
</DEFN> 
The tower property also works as before, as do the relation between conditional and unconditional variances:
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

<HEAD1>Joint distribution of mixed type</HEAD1>
So far we have been considering joint distributions of <M>(X,Y)</M>  where either both <M>X</M>  and <M>Y</M>  were discrete,
 or both had densities. It is possible to work with joint (and conditional) distributions when one is discrete and the other
 has density. Let us start with an example.

<EXM>
I pick a random coin. So its probability of head is also a random variable (just as the height of
 a randomly selected person is considered random). Let <M>\Pi</M>  denote this random variable. Now I toss this coin 5 times.
 Let <M>X</M>  be the number of heads. Then what is the joint distribution of <M>(\Pi,X)?</M>  Also find the conditional
 distribution of <M>\Pi</M>  given <M>X=x.</M>
<SOLN/>
If I tell you the value of <M>\Pi</M>  (say <M>\Pi=0.5</M>), then clearly <M>X\sim Binom(5,0.5).</M>  

So, in general, <M>Y|\Pi=p\sim Binom(5,p).</M>

Hence the joint distribution has a probability density-cum-mass function (which is often called just a <I>density</I>  with
 some abuse of notation): 
<D>g(p,x) = <CASES>f(p)\binom{5}{x} p^x(1-p)^{5-x}<IF>p\in(0,1),~~x\in\{0,1,...,5\}</IF> 0<ELSE/></CASES></D>
To find <M>P(\Pi\in A,\, X\in B)</M>  just sum this over <M>p\in A</M>  and integrate over <M>x\in B.</M>

Conditional density of <M>\Pi</M>  given <M>X=x</M>  is <M>g(p, x) / P(X=x),</M>  where <M>P(X=x) = \int_{-\infty}^\infty g(p,x)\, dp.</M>
</EXM>



<HEAD1>Miscellaneous problems</HEAD1>
::<EXR><EIMG web="hpsjoint3.png"/></EXR>
::<EXR><EIMG web="hpsjoint7.png"/></EXR>
::<EXR><EIMG web="hpsjoint8.png"/></EXR>
::<EXR><EIMG web="hpsjoint9.png"/></EXR>
::<EXR><EIMG web="hpsjoint10.png"/></EXR>
::<EXR><EIMG web="hpsjoint11.png"/>

Here <M>X_i = U_{(i)}</M>  in our notation, and  <M>R=U_{(n)}-U_{(1)}</M>  is the range of the <M>U_i</M>'s.

I think this problem should better be attacked after learning about order statistics <LINK to="trans.html">in the next chapter</LINK>.
</EXR>
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
