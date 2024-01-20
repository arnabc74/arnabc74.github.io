@{<NOTE>
<HEAD1>Characteristic function</HEAD1>
Characteristic function (CF) is a useful tool from probability
theory to deal with distributions. 

<DEFN>
For any distribution on <M>\rr</M>, its <B>characteristic
function</B> is defined as
<D>
\phi(t) = E(e^{it X}), t\in\rr,
</D>
where <M>X</M> is any random variable with that distribution.
</DEFN>
Notice that the CF of a distribution is a complex valued function
defined over entire <M>\rr.</M>
<P/>
The two most important facts that we shall use here are the
following.

<THM>
<UL>
<LI>Every distribution over <M>\rr</M> has a CF (i.e., the
expectation in the above definition exists finitely).</LI>
<LI>The CF characterises the distribution, i.e., two
distributions are the same if and only if their CFs are the same.</LI>
</UL>
</THM>
It is the latter result that earns characteristic function its
name.

<HEAD2>Why CF is "good"</HEAD2>
CF is a function associated with a distribution. We already know of other
functions associated with distributions: 
<OL>
<LI>probability mass function (PMF)</LI>
<LI>probability density function (PDF)</LI>
<LI>(cumulative) distribution function (CDF)</LI>
</OL>
However, CF is "better" than these in the following two senses:
<UL>
<LI>CF exists for all distributions, while PMF and PDF do
not.</LI>
<LI>CDF does exist for all distributions, but if <M>X</M> and Y
 are independent with known CDFs, there is no simple formula to
 express the CDF of <M>X+Y</M> in terms of them. But it is quite
 simple to express the CF of <M>X+Y</M> in terms of those
 of <M>X</M> and <M>Y.</M> (how?)</LI>
</UL>

<HEAD2>Moment generating function (MGF)</HEAD2>
It is something very similar to CF.

<DEFN>
For any distribution on <M>\rr</M>, its <B>moment generating
function</B> is defined as
<D>
M(t) = E(e^{t X}), \text{when its exists,}
</D>
where <M>X</M> is any random variable with that distribution.
</DEFN>

Despite the superficial similarity of this with CFs, the MGF is
much more ill-behaved (owing to the fact that <M>e^{tx}</M> is an
unbounded function though <M>e^{itx}</M> is bounded. In
particular, it may not exist for all <M>t\in\rr</M> for all
distributions. Also, two distinct distributions may have the same
MGF (though such examples are rather hard to find). Our textbook
disregards this point, and (wrongly) uses MGFs to characterise
distributions. We shall rectify the mistake by replacing MGFs
with CFs. The math will remain almost the same. 

<HEAD2>Using CF</HEAD2>
The first step to use CF, is to remember the CFs of the standard
distributons. This <LINK to="https://en.wikipedia.org/wiki/Characteristic_function_(probability_theory)">wikipedia
page</LINK> privides a such a list. Eventually, you will need to
memorise at least pasrt of this list. For now, we shall need only
the CF of the <M>N(\mu,\sigma^2)</M> distributon:
<D>
\phi(t) = e^{it \mu-[[12]]\sigma^2 t^2}.
</D> 
Remember the form well: inside the exponent you have a quadratic
in <M>t</M> where the constant is zero, the linear term is purely
imaginary, anf the quadratic terms has negative coefficient. Any
such CF must correspond to a Gaussian distributon, the parameters
of which may be read off from the coefficients.

<THM>
If <M>X\sim N(\mu,\sigma^2)</M> and <M>a,b\in\rr</M>
with <M>a\neq 0,</M> then <M>aX+b\sim N(a \mu+b,a^2 \sigma^2).</M>
</THM>
<PF>
The CF of <M>aX+b</M> is 
<D>
e^{it(aX+b)} = e^{itb}E(e^{itaX} = e^{itb} \phi(at) = e^{itb}
e^{ita \mu-[[12]] \sigma^2 (at)^2} = e^{it(a \mu+b) -[[12]] a^2\sigma^2 t^2}, 
</D>
which we immediately recognise as the CF of <M>N(a \mu+b, a^2 \sigma^2).</M>
<P/>
The characterising property of CFs now completes the proof.
</PF>

<THM>
If <M>X_1,...,X_n</M> are independent and <M>X_i\sim N(\mu_i,\sigma_i^2)</M>,
and <M>a_1,...,a_n\in\rr,</M> then 
<D>
\sum_1^n a_i X_i\sim N(*(\sum a_i \mu_i, \sum a_i^2 \sigma^2_i)*).
</D>
</THM>
<PF>
Direct, using CF.
</PF>

<THM>
If <M>X_1,...,X_n\sim N(\mu,\sigma^2)</M>, then <M>\bar X\sim N(*(\mu,[[\sigma^2][n]])*).</M>
</THM>
<PF>Special case of the last theorem.</PF>
</NOTE>@}
