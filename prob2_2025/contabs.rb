 @{<NOTE>
<HEAD1>Absolutely continuous distribution</HEAD1>
We already know this definition:
<DEFN>A random variable <M>X</M>  is said to be  <TERM>continuous</TERM>  or to have a
 <TERM>continuous distribution</TERM>  if its CDF is continuous.</DEFN>
A special class of such random variables is given in the following definition:
<DEFN>A random variable <M>X</M>  is said to be <TERM>absolutely continuous</TERM>  or to have an
 <TERM>absolutely continuous distribution</TERM>  if there is some <M>f:\rr\to[0,\infty)</M>  such
 that for every <M>a\leq b\in\rr</M>  we have 
<D>P(X\in(a,b]) = \int_a^b f(x)\, dx.</D>
Any such <M>f</M>  is called a <TERM>probability density function (PDF)</TERM>  of <M>X.</M>  
</DEFN>

The following facts all come from continuity of probability. 
<THM>
Let <M>X</M>  have a density <M>f(x).</M>  Then 
<OL>
<LI><M>\forall a\in\rr~~P(X=a) = 0.</M></LI>
<LI><M>\forall a<b\in\rr~~P(a < X < b) =P(a < X \leq b) =P(a \leq X < b) =P(a \leq X \leq b) = \int_a^b f(x)\, dx.</M></LI>
<LI><M>\forall a\in\rr~~P(a < X )  = P(a\leq X)=\int_a^\infty f(x)\, dx.</M></LI>
<LI><M>\forall a\in\rr~~P(X < a)  = P(X\leq a)=\int_ \infty^a f(x)\, dx.</M></LI>
<LI><M>\int_ \infty^ \infty f(x)\, dx = 1.</M></LI>
</OL>
</THM>

This last condition is particularly useful. 

<THM>
If we have some <M>f:\rr\to[0,\infty)</M>  with <M>\int_ {-\infty} ^\infty f(x)\, dx = 1,</M> 
 then the function <M>F:\rr\to\rr</M>  defined as 
<D>F(x) =\int_{-\infty}^x f(t)\, dt</D>
is a CDF.
</THM>

Hence by the fundamental theorem of probability we have the following corollary:
<THM>
A function <M>f:\rr\to[0,\infty)</M>  is a density of some random variable if and only if with <M>\int_ {-\infty}
 ^\infty f(x)\, dx = 1.</M> 
</THM>
It is  a somewhat disconcerting fact that density of an absolutely continuous distribution is not unique. For intance, if
 changing at any countable numbr of points would still keep it a density (assuming non-negativity). So there cannot be any
 way to recover <I>the</I>  density given the CDF. However, the following result provides some relief.

<THM>
If <M>f(x)</M>  and <M>g(x)</M>  are both densities for the same distribution and both are continuous at some <M>a\in\rr,</M> 
 then <M>f(a)=g(a).</M>
</THM>
<PF>
Let, if possible, <M>f(a)\neq g(a).</M>  Say <M>f(a)> g(a).</M>  

Let <M>h(x) = f(x)-g(x).</M>  Then <M>h(x)</M>  is continuous at <M>x=a</M>  and <M>h(a)>0.</M>  

So <M>\exists\delta>0~~\forall x\in (a-\delta,a+\delta)~~h(x)>[[h(a)][2]].</M>

Hence <M>\int_{a-\delta}^{a+\delta} h(x)\, dx \geq \delta h(a) > 0.</M>

But this is impossible, since <M>\int_{a-\delta}^{a+\delta} f(x)\, dx =\int_{a-\delta}^{a+\delta} g(x)\, dx, </M>  since
 both are equal to <M>P(a-\delta< X < a + \delta).</M>
</PF>

It is possible to recover a density from the CDF as follows. Let <M>F</M>  be the CDF. Then define <M>f</M>  as folllows;
<D>f(x) = <CASES>F'(x)<IF>\mbox{it exists}</IF> 0<ELSE/></CASES> </D>
Of course, if the distribution is not absolutely continuous, then this may lead to meaningless reult. For example, for a
 discrete distribution, the CDF is a step function, and so the above prescription would lead to <M>f(x)\equiv 0.</M>
It is possible to characterise CDFs arising out of densities. 


We had already defined expectation of a random variable in general. That definition reduces to the following:
<THM>
Let <M>X</M>  be a random variable with density <M>f.</M>  Let <M>h:\rr\to[0,\infty)</M>  be a any function such that <M>h(X)</M> 
 is  a random variable. Then <M>E(h(X))=\int_{-\infty}^\infty h(x) f(x)\, dx.</M>  This may be <M>\infty.</M>
</THM>

If <M>h:\rr\to\rr</M>, then <M>E(h(X)) = E((h(X))_+) - E((h(X))_-)</M>, as dictated by the general definition of expectation.
 This may be finite, <M>\infty</M>, <M>-\infty</M>  or may not exist.

Since this is a special case of the general definition, all the properties (like linearity, monotonicity) are intact. 

We define <M>V(X)</M>  and the other moments as usual. Their properties (e.g., Chebyshev inequality) are intact.
</NOTE>@}
