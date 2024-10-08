<NOTE>
@{<E>

<HEAD1>Finite existence of <M>E(X)</M></HEAD1>
We know from the definition of expectation that it may come in four varieties: it may be finite, or <M>\infty</M>  or <M>-\infty</M> 
 or undefined. 
The finite case is the most useful, and it 
sometimes helps to know some sufficient conditions for this.

<THM>
If <M>X</M> is simple, 
then <M>E(X)</M> must be finite. 
</THM>
<PF>
Goes without saying!
</PF>

Non-negative random variables have the advantage that their expectation is always defined (though may be <M>\infty</M>). Now,
 from any random variable <M>X</M>  we can easily manufacture a non-negative random variable, viz, <M>|X|.</M>  It is 
good to be able to relate <M>E(X)</M>  with <M>E(|X|).</M>

<THM>
<M>E(|X|)</M>  is finite if and only if <M>E(X)</M>  is finite. 
</THM> 
<PF>
We define <M>X_+, X_-</M>  as usual. 

Then <M>X = X_+-X_-</M>  and <M>|X| = X_++X_-</M>. 

Then finiteness of <M>E(|X|)</M>  is equivalent to finiteness of both  <M>E(X_+), E(X_-).</M>  

Again, finiteness of <M>E(X)</M>  is equivalent to finiteness of both  <M>E(X_+), E(X_-).</M>  

Hence the result.
</PF>

<EXR>If <M>E(|X|)=\infty,</M>  then what can you say about <M>E(X)?</M>
<ANS>May be <M>\infty</M>  or <M>-\infty</M>  or undefined.</ANS>
</EXR>
<THM>
Let <M>X,Y</M> be random variables defined on the same probability space. Let <M>|X|\leq|Y|.</M>
  If <M>E(Y)</M>  is finite, then <M>E(X)</M>  must also be finite. 
</THM>
<PF>
Since <M>E(Y)</M>  is finite, hence  <M>E(|Y|)</M>  is finite. So <M>E(|X|)\leq E(|Y|)</M> 
 is also finite. Hence <M>E(X)</M>  is finite. 
</PF>

<THM>
Let <M>X,Y</M>  be random variables defined on the same probability space. Let <M>E(X)</M>  and <M>E(Y)</M>  both be finite.
 Then <M>E(\max\{X,Y\})</M>  must also be finite.
</THM>
<PF>
 Do it yourself.
</PF>

<THM>
Let <M>m<n</M> be any two positive integers. If <M>E(X^n)</M>
exists finitely, then <M>E(X^m)</M> must also exist finitely.
</THM>
<PF>
Use the fact that <M>|X^m| \leq \max\{1,|X^n|\}.</M> Now use the
last theorem.
</PF>

The following theorem often proves very useful. 

<THM name="Markov inequality">
Let <M>X</M>  be any non-negative random variable. Let <M>\epsilon>0.</M>  Then 
<D>E(X)\geq \epsilon P(X\geq\epsilon).</D>
</THM>
<PF>
<CIMG web="exeps.png">Look at this diagram and see if you can prove the theorem.</CIMG>

</PF>

<HEAD1>Variance</HEAD1>
A random variable is, well,  random. So it may very well differ from
its expectation. By how much? A lot or a little? We can use
expectation to find that out. 

<DEFN name="Variance">
If <M>E|X|<\infty,</M> then we define <B>variance</B> of <M>X</M> as
<D>
V(X) = E[#[ (X-E(X))^2 ]#].
</D>
It is either finite or <M>\infty.</M>
</DEFN>

<THM>
<M>V(X)\geq 0.</M>
</THM>

<THM>
If <M>E(X^2)<\infty,</M> then <M>V(X)</M> exists finitely, and <M>V(X) = E(X^2)-(#( E(X) )#)^2.</M>
</THM>


<THM>
<M>V(aX+b) = a^2 V(X).</M>
</THM>

<THM>
<M>V(X)=0</M> if and only if <M>X</M> is a degenerate random variable.
</THM>

<FNOTE>Chebyshev is also credited with designing a <LINK to="https://www.youtube.com/watch?v=ISfVS4mDTKs">quadruped
robot-like linkage</LINK>.</FNOTE>
<THM name="Chebyshev inequality">
Let <M>V(X)<\infty.</M> Then 
<D>
\forall \epsilon>0~~P(|X-E(X)| \geq \epsilon) \leq [[V(X)][\epsilon^2]].
</D>
</THM>
<PF>
Take any <M>\epsilon>0.</M>
<P/>
Let <M>E(X)</M> be denoted by <M>\mu.</M>
<P/>
Define 
<D>
f(x) = <CASES>
\epsilon^2 <IF>|x-\mu|\geq \epsilon</IF>
0 <ELSE/>
</CASES>
</D>

Then <M>\forall x~~f(x)\leq (x-\mu)^2.</M>
<P/>

So
<MULTILINE>
V(X) 
& = & E(X-\mu)^2\\
& \geq & E(f(X))\\
& = & \epsilon^2 P(|X_i-\mu| \geq\epsilon) + 0\times P(|X_i-\mu| <\epsilon).
</MULTILINE>
Hence the result.
</PF>



<HEAD1>Moments</HEAD1>

<DEFN name="Raw and central moments">
The <M>k</M>-th raw moment of <M>X</M> is 
<D>
E(X^k)
</D>
and the <M>k</M>-th central moment of <M>X</M> is
<D>
E[#[ (X-E(X))^k ]#].
</D>
</DEFN>

<HEAD1>Moment generating function</HEAD1>

<DEFN name="Moment generating function (MGF)">
For any random variable <M>X</M> we define its <B>moment generating
function</B> as the function 
<D>
m_X(t) =  E(e^{tX}).
</D>
The domain of this function conists of all <M>t\in\rr</M> for
which the expectation exists.
</DEFN>

Clearly, <M>m_X(0)</M> always exists and equals <M>1.</M>

<THM>
If, for some <M>k\in\nn</M>, the moment <M>E(X^k)</M> exists
finitely, then the <M>k</M>-th derivative  of <M>m_X(t)</M>
exists at <M>t=0,</M> and equals <M>E(X^k).</M>
</THM>
<PF>
We shall not do the proof here. But here is the main idea: 
<D>
e^{tX} = 1 + [[tX][1!]] + [[t^2X^2][2!]] + [[t^3X^3][3!]] + \cdots.
</D>
From this we want to write 
<D>
E(e^{tX}) = 1 + [[tE(X)][1!]] + [[t^2E(X^2)][2!]] + [[t^3E(X^3)][3!]] + \cdots.
</D>
This is not a precise statement, because we do not know if all
raw moments of <M>X</M> exist finitely. Also, even if they do, is
it valid to "distribute" expectation over an <I>infinite</I> sum?
<P/>
Answers to these questions require deeper real analysis results
than we know at this point.
<P/>
However, assuming that this is valid, we may try to differentiate
both sides to get
<D>
[[d][dt]] E(e^{tX}) = E(X) + [[2tE(X^2)][2!]] + [[3t^2E(X^3)][3!]] + \cdots.
</D>
Again this step needs justification. Can we "distribute"
differentiation over an <I>infinite</I> sum?
<P/>
Assuming that we can, puting <M>t=0</M> indeed gives us <M>E(X).</M>
<P/>
SImilarly, differentiating once again, and putting <M>t=0</M>
gives us <M>E(X^2),</M> and so on.
</PF>

We shall not spend much time with MGFs, because there is a better
alternative called the <B>characteristic function (CF)</B>.

<DEFN name="Characteristic function (CF)">
For any (real-valued) random variable <M>X</M> we define its <B>characteristic
function</B> as the function 
<D>
\phi_X(t) =  E(e^{itX}),~~t\in\rr.
</D>
</DEFN>
Don't be nervous to see expectation of a complex random
variable. It is simply 
<D>
E(\cos tX) + i E(\sin tX).
</D>
CFs are better than MGFs because of two reasons, that we give as
theorems below.

<THM>
For any (real-valued) random variable, the CF is defined over
entire <M>\rr.</M>
</THM>
<PF>
This is obvious, since <M>\sin tX</M> and <M>\cos tX</M> are both
bounded random variables, and hence have finite expectations.
</PF>

<THM>
If <M>X,Y</M> are two random variables with the same CF, then
they must have the same distribution.
</THM>
<PF>
Not in this course. 
</PF>
Indeed, this property has earned characteristic functions their name.
<P/>
MGFs do not have this proprty. It is possible to get (rather
ugly) counter-examples of random variables <M>X</M> and <M>Y</M>
that both have the same MGF (in particluar both have the same
domain <M>D\seq\rr</M>), but still <M>X</M> and <M>Y</M> have
different distributions. However, if the domain includes a
neighbourhood of <M>0,</M> then <M>X,Y</M> must have the same
distribution. This is stated in the following theorem.

<THM>Let <M>m_X(t)</M> be defined for <M>t\in (-a,a)</M> for
some <M>a>0.</M> Let <M>Y</M> be a random variable with the same
MGF. Then <M>X</M> and <M>Y</M> must have the same
distribution.</THM>
<PF>
Too difficult for this course.
</PF>

<B>We shall not spend proving any result on MGF here. We shall
learn the proofs for CFs in the next semester.</B>

<HEAD1>Problems for practice</HEAD1>

<EXR>A box has 6 red balls an 4 black balls. An SRSWR of
size <M>n</M> is selected. If <M>X</M> is the number of red
balls selectrd, then find PMF and <M>E(X).</M> Also solve the
problem in the case of SRSWOR.</EXR>
<EXR>Let <M>N</M> be a positive integer. Let 
<D>
f(x) = <CASES>c 2^x <IF>x=1,2,...,N</IF>0<ELSE/></CASES>
</D>
be a PMF. Find <M>c.</M> Find <M>E(X)</M> and <M>V(X)</M> if <M>X</M> has this PMF.
</EXR>
<EXR>An SRSWR of size 2 is drawn from <M>\{1,2,...,12\}.</M>
Let <M>X</M> be the maximum of the two numbers
selected. Find <M>E(X).</M></EXR>
<EXR>An SRSWR of size <M>n</M> is selected
from <M>\{1,2,...,12\}.</M> Let <M>a_n </M> be the expected
value of the maximum of the sample. Show that <M>a_n \leq
a_{n+1}</M> without explicily finding <M>a_n</M> in terms of <M>n.</M></EXR>
<EXR><CIMG web="rossexp1.png"></CIMG></EXR>
<EXR><CIMG web="rossexp2.png"></CIMG></EXR>
<EXR><CIMG web="rossexp3.png"></CIMG></EXR>
<EXR><CIMG web="rossexp4.png"></CIMG></EXR>
</E>@}
</NOTE>
