 @{<NOTE>
<HEAD1>Joint distribution</HEAD1>
Just as we had encountered joint distribution while learning about discrete random variables, we have the
concept of joint distribution for absolutely continuous distributions as well. 

<DEFN>
Let <M>X,Y</M>  be jointly distributed random variables. We say that they are <TERM>jointly absolutely continuous</TERM> if 
 there is some <M>f:\rr^2\to[0,\infty)</M>  such that 
<D>\forall a \leq b, c \leq d~~P(#( (X,Y)\in[a,b]\times[c,d] )#) = \int_a^b \int_c^d f(x,y)\, dxdy.</D>
Any such <M>f</M>  is called a <TERM>joint PDF</TERM>  of <M>(X,Y).</M> 
</DEFN>
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

<HEAD2>Computing probabilities of non-rectangular regions</HEAD2>
<HEAD2>Marginals</HEAD2>

<HEAD2>Conditional distribution</HEAD2>
So far the absolutely continuous case closely mimics the discrete case, with integration replacing summation.  
But we cannot follow the same path for conditional distribution. If <M>(X,Y)</M>  are jointly discrete then we defined the
 conditional PMF of <M>X</M>  given <M>Y=y</M>  as <M>x\mapsto P(X=x|Y=y) = [[P(x=x,Y=y][P(Y=y)]].</M>  

So for the jointly absolutely continuous case, we define the <TERM>conditional PDF</TERM>  of <M>X</M>  given <M>Y=y</M> 
 as <M>f(x,y)/f_Y(y).</M>  There are, however, a couple of points here:
<OL>
<LI>It is possible to have <M>f_Y(y)=0.</M>  Then we define the conditional density as 0.</LI>
<LI>Unlike conditional PMF, the conditional PDF is not a conditional probability, since <M>P(Y=y)=0.</M>
</LI>
<LI><M>\int_a^bf_{X|Y}(x,y)\, dx</M>  does not give <M>P(X\in [a,b]|Y=y),</M>  as <M>P(Y=y)=0.</M></LI>
<LI>However, <M>\int_c^d \int_a^bf_{X|Y}(x,y)\, dxdy</M>  does indeed give <M>P(X\in [a,b], Y\in[c,d]).</M>
</LI>
</OL>
It is this last step (which is the analog of total probability) that justifies the definition of conditional PDF.

Other than this difference, the rest follows as in the discrete case. We have the concepts of
 conditional expectation, conditional variance etc as usual. 

<DEFN>
If <M>(X,Y)</M>  is jointly absolutely continuous, then <M>E(X|Y=y) = \int_{-\infty}^\infty f_{X|Y}(x,y)\, dx</M>  and 
<D>V(X|Y=y) = E((X-E(X|Y=y))^2|Y=y).</D>
</DEFN> 
The tower property also works as before. 

<HEAD1>Problems for practice</HEAD1>
::<EXR><EIMG web="hpsjoint1.png"/></EXR>
::<EXR><EIMG web="hpsjoint2.png"/></EXR>
::<EXR><EIMG web="hpsjoint3.png"/></EXR>
::<EXR><EIMG web="hpsjoint4.png"/></EXR>
::<EXR><EIMG web="hpsjoint5.png"/></EXR>
::<EXR><EIMG web="hpsjoint6.png"/></EXR>
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
::<EXR><EIMG web="rossipmjoint7.png"/></EXR>
::<EXR><EIMG web="rossipmjoint8.png"/></EXR>
::<EXR><EIMG web="rossipmjoint9.png"/></EXR>
::<EXR><EIMG web="rossipmjoint10.png"/></EXR>
::<EXR><EIMG web="rossipmjoint11.png"/></EXR>
::<EXR><EIMG web="rossipmjoint12.png"/></EXR>
::<EXR><EIMG web="rossipmjoint13.png"/></EXR>
</NOTE>@}
