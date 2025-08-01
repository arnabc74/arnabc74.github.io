<NOTE>
@{<E>



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

::<EXR>A box has 6 red balls an 4 black balls. An SRSWR of
size <M>n</M> is selected. If <M>X</M> is the number of red
balls selected, then find PMF of <M>X</M>  and <M>E(X).</M> Also solve the
problem in the case of SRSWOR.
<ANS>
<U>For SRSWR:</U>  <M>P(X=x) = \binom{n}{x} (*([[6][10]])*)^x(*([[4][10]])*)^{n-x}</M>  for <M>x=0,1,...,n.</M>

<U>For SRSWOR:</U>  
<M>P(X=x) = [[\binom{6}{x} \binom{4}{n-x}][\binom{10}{n}]]</M> 
 for <M>x=0,1,...,n.</M>

By the way, this does not mean that <M>X</M>  can indeed take all the values from 0 to <M>n.</M>  For some of these values
 the probability is zero.
</ANS>
</EXR>
::<EXR>Let <M>N</M> be a positive integer. Let 
<D>
f(x) = <CASES>c 2^x <IF>x=1,2,...,N</IF>0<ELSE/></CASES>
</D>
be a PMF. Find <M>c.</M> Find <M>E(X)</M> and <M>V(X)</M> if <M>X</M> has this PMF.
<ANS>
For <M>f(x)</M>  to be a PMF we need 
<D>f(1)+\cdots+f(N)=1.</D>
Hence 
<D>c = [[1][2^{N+1}-2]].</D>
So
<D>E(X) = \sum_1^N x f(x) = c\sum_1^N x 2^x = ...</D>
Similarly, you can find <M>V(X).</M>
</ANS></EXR>
::<EXR>An SRSWR of size 2 is drawn from <M>\{1,2,...,12\}.</M>
Let <M>X</M> be the maximum of the two numbers
selected. Find <M>E(X).</M>
<ANS>
Here <M>X</M>  can take only the values <M>1,2,...,12.</M>  

For <M>k\in\{1,2,...,12\}</M>  we have
<D>P(X\leq k) = P(X_1, X_2 \leq k) = (*([[k][12]])*)^2.</D>
So <M>P(X=k) = [[k^2-(k-1)^2][144]] = [[2k-1][144]].</M>

Hence <M>E(X) = \sum_1^{12} [[2k^2-k][144]]=....</M>
</ANS>
</EXR>
::<EXR>An SRSWR of size <M>n</M> is selected
from <M>\{1,2,...,12\}.</M> Let <M>a_n </M> be the expected
value of the maximum of the sample. Show that <M>a_n \leq
a_{n+1}</M> without explicily finding <M>a_n</M> in terms of <M>n.</M>
<ANS>
Let <M>X_1,...,X_{n+1}</M>  be an SRSWR of size <M>n+1</M>  from <M>\{1,...,12\}.</M>

Then <M>X_1,...,X_n</M>  is an SRSWR of size <M>n</M>  from <M>\{1,...,12\}.</M>

Let <M>U = \max\{X_1,...,x_{n+1}\}</M>  and <M>V = \max\{X_1,...,x_n\}.</M>

Then <M>U = \max\{V,X_{n+1}\} \geq V.</M>

So <M>E(U)\geq E(V).</M>

Hence <M>a_{n+1}\geq a_n,</M>  as required. 
</ANS>
</EXR>
::<EXR><CIMG web="rossexp1.png"></CIMG>
<ANS>
<M>P(0\leq X\leq 40) = 1-P(|X-\mu|>20)</M>  where <M>\mu=E(X)=20.</M>

By Chebyshev inequality <M>P(|X-\mu|> 20)\leq [[V(X)][400]] = [[1][20]].</M>

Hence <M>P(0\leq X\leq 40)\geq 1-[[1][20]] = [[19][20]].</M>
</ANS>
</EXR>
::<EXR><CIMG web="rossexp2.png"></CIMG>
<ANS>
(a) By Markov inequality, <M>E(X)\geq 85 P(X> 85).</M>  

So <M>P(X> 85) \leq [[75][85]].</M>

(b) <M>P(65\leq X \leq 85) = 
P(|X-75|\leq 10) = 1- P(|X-75|> 10)\geq 1-[[V(X)][100]] = [[34]]</M>  by Chebyshev.

(c) Let the answer be <M>n</M>, and class average be <M>\bar X.</M>  

Then <M>E(\bar X) = 75</M>  and <M>V(\bar X) = [[25][n]].</M>  

So, by the Chebyshev inequality, <M>P(|\bar X-75|\geq 5) \leq [[25][5^2n]] = [[1n]].  </M>

So we need <M>1-[[1n]] \geq 0.9</M>  or <M>n\geq 10.</M>  
</ANS>
</EXR>
::<EXR><CIMG web="rossexp3.png"></CIMG>
<ANS>
Here <M>P(X\leq x) = F_X(x) = F_Y(*([[x-a][b]])*) = P(*(Y\leq [[x-a][b]])*) = P(a+bY\leq x).</M>

Since this holds for all <M>x\in\rr,</M>  hence <M>X</M>  and <M>a+bY</M>  have the same CDF.

Since <M>CDF</M>  is unique for a distribution, hence <M>X</M>  and <M>a+bY</M>  have the same distribution.

(a) <M>E(X) = E(a+bY) = a+bE(Y).</M>

(b) <M>V(X) = V(a+bY) = b^2 V(Y).</M> 
</ANS>
</EXR>
</E>@}
</NOTE>
