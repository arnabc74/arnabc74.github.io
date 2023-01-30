@{<NOTE>
<M>
\newcommand{\v}[1]{\boldsymbol{#1}}
\newcommand{\Xbar}{\overline{\boldsymbol{X}}}
</M>
<HEAD1>Multivariate Normal Distribution</HEAD1>
This is a short note containing some facts about the multivariate
normal distribution that we are relevant for our course. These
are based on the book <B>An Introduction to Multivariate
Statistical Analysis</B> by <I>T W Anderson.</I>

<HEAD2>Basic facts</HEAD2>

<DEFN name="Multivariate normal distribution">
Let <M>\v\mu\in\rr^p</M> and <M>\Sigma_{p\times p}</M> be any NND
matrix. Then a <M>p</M>-dimensional random vector <M>\v X</M> is
said to have a <B>multivariate normal distribution</B> with
parameters <M>\v \mu </M> and <M>\Sigma</M> if 
<D>
\forall \v\ell \in \rr^p~~\v \ell'\v X \sim N(\v \ell'\v \mu, \v
\ell' \Sigma \v\ell).
</D>
In this case we write <M>\v X\sim N_p(\v \mu,\Sigma).</M>
</DEFN>

The following facts are easy to check. If <M>\v X\sim N_p(\v
\mu,\Sigma),</M> then <M>E(\v X)=\v \mu </M> and <M>V(\v
X)=\Sigma. </M>
<P/>
Also, <M>N_p(\v \mu,\Sigma)</M> has a PDF if and only
if <M>\Sigma </M> is PD. In this case the PDF is
<D>
f(\v x; \v \mu,\Sigma) = (2\pi)^{-p/2}|\Sigma|)^{-1/2}\exp(*(-[[12]](\v
x-\v \mu)'\Sigma ^{-1} (\v x-\v \mu))*)\text{ for } \v x\in\rr^p.
</D>
Similarly, one may check directly from the definition that the
characteristic function of <M>N_p(\v \mu,\Sigma)</M> is 
<D>
E(\exp(i\v t'\v X) = \exp(*(i\v t'\v \mu - [[12]] \v t' \Sigma\v t)*).
</D>

<HEAD2>Estimation</HEAD2>
We shall estimate <M>\v \mu </M> and <M>\Sigma </M> from <M>\v
X_1,...,\v X_n</M> IID <M>N_p(\v \mu,\Sigma)</M>
assuming <M>\Sigma </M> to be PD. For this we have to maximise
the likelihood function, or equivalently, minimise
<D>
f(\v \mu,\Sigma) = n\log|\Sigma| + \sum_1^n(\v
X_i-\v \mu)'\Sigma ^{-1} (\v X_i-\v \mu).
</D>
We may apply the standard differentiation technique here. But
differentiating the log of determinant wrt a matrix may not be
familiar to you. So instead, we shall take a more down-to-earth
(albeit longer) way.

<MULTILINE>
\sum_1^n(\v X_i-\v \mu)'\Sigma ^{-1} (\v X_i-\v \mu)
& = & tr(*(\sum_1^n(\v X_i-\v \mu)'\Sigma ^{-1} (\v X_i-\v \mu) )*)\\
& = & \sum_1^n tr(*((\v X_i-\v \mu)'\Sigma ^{-1} (\v X_i-\v \mu) )*)\\
& = & \sum_1^n tr(*(\Sigma ^{-1} (\v X_i-\v \mu)(\v X_i-\v \mu)' )*)\\
& = &  tr(*(\Sigma ^{-1} \sum_1^n (\v X_i-\v \mu)(\v X_i-\v \mu)' )*)\\
& = & tr(*(\Sigma ^{-1} \sum_1^n(\v X_i-\Xbar +\Xbar-\v \mu) (\v X_i-\Xbar +\Xbar-\v \mu)')*)\\
& = & \cdots\\
& = & n(\v \mu-\Xbar)' \Sigma ^{-1} (\v \mu - \Xbar) +
\text{something free of }
\v \mu.
</MULTILINE>
So immediately we see that MLE of <M>\v \mu</M> must
be <M>\Xbar.</M> Plugging this in <M>f(\v \mu , \Sigma)</M> we
get the function that we have to minimise wrt PD <M>\Sigma</M>: 
<MULTILINE>
f(\Xbar,\Sigma) 
& = & n\log|\Sigma| + \sum_1^n(\v X_i-\Xbar)'\Sigma ^{-1} (\v X_i-\Xbar)\\
& = & n\log|\Sigma| + tr(*(\sum_1^n(\v X_i-\Xbar)'\Sigma ^{-1} (\v X_i-\Xbar))*)\\
& = & n\log|\Sigma| + \sum_1^ntr(*((\v X_i-\Xbar)'\Sigma ^{-1} (\v X_i-\Xbar))*)\\
& = & n\log|\Sigma| + \sum_1^ntr(*(\Sigma ^{-1}(\v X_i-\Xbar) (\v X_i-\Xbar)')*)\\
& = & n\log|\Sigma| + tr(*(\Sigma ^{-1}\underbrace{\sum_1^n(\v X_i-\Xbar) (\v X_i-\Xbar)'}_S)*).
</MULTILINE>
 Now <M>S</M> is a sum of NND matrices, and NND. Actually PD. So <M>S =
 E E'</M> for some (nonsingular) <M>E.</M> Hence our function becomes
<MULTILINE>
& & n\log|\Sigma| + tr(*(\Sigma ^{-1}E E')*)\\
& = & n\log|\Sigma| + tr(*(E'\Sigma ^{-1}E)*).
</MULTILINE>  
We pln to write everything in terms of <M>E'\Sigma ^{-1}E =
H,</M> say. Then <M>\Sigma = E H ^{-1} E'.</M>
<P/>
Hence <M>|\Sigma| = |E E'|/|H| = |S|/|H|.</M> So our function becomes
<D>
n(\log|S|-\log|H|) + tr(H).
</D>
We plan to minimise this wrt <M>H.</M> 
<P/>
Let the eigenvalues of <M>H</M>
be <M>\lambda_1,...,\lambda_p.</M> These are all positive reals
since <M>H</M> is PD. Dropping parts free of <M>H,</M> our
function becomes
<D>
\sum_1^p (\lambda_i-n\log\lambda_i)
</D>
Now we can differentiate wrt <M>\lambda_i</M>'s, and see that for
a minimum we need <M>\lambda_i = n.</M> So <M>H =
nI.</M>
<P/>
This implies that MLE of <M>\Sigma </M> is <M>[[1n]]S,</M> the
sample covariance matrix.

<HEAD2>Transforming MLE</HEAD2>
What is the definition of an MLE? This might seem a bit too late
to ask this question after all the mathematical jugglery
above. But surprisingly, people seem to have confustio about this
basic question. Ideally MLE is that value of the
parameter <M>\theta</M> or which the likelihood is
maximised. This naive description assumes that <M>\theta </M> is
the <I>only</I> parameter (or, equivalently, all the parameters
are concatenated into a vector <M>\theta</M>). In our case, for
example, <M>\theta = (\v \mu, \Sigma).</M>
<P/>
But according to this naive defintion of MLE, we cannot indeed
talk about MLE of <M>\v \mu </M> or MLE of <M>\Sigma</M>
separately. S here we generalise the definition a bit:
If <M>\theta \equiv (\theta_1,\theta_2)</M>, then by MLE
of <M>\theta_1</M> we mean an estimator such that there exists
an estimator for <M>\theta_2</M> such that they maximise the
likelihood together. 
<P/>
Generalising this further we define MLE for any <M>h(\theta)</M>
for (some given <M>h,</M> which may not be one-one), an
estimator <M>\widehat{h(\theta)}</M> such that there exists MLE <M>\hat \theta</M>
for <M>\theta</M> with <M>h(\hat
\theta)=\widehat{h(\theta)}. </M>  
<P/>
This immediately provides a way to obtain MLE of <M>h(\theta)</M>
for any given <M>h:</M> Just use <M>h( \hat \theta),</M>
where <M>\hat \theta</M> is an MLE of <M>\theta.</M> Please note
that if we follow the naive (stricter) definition of MLE, then we
need <M>h</M> to be one-one for this to hold. 

<HEAD2>MLE of correlation coefficient</HEAD2>
Since all the correlation coefficients are functions
of <M>\Sigma</M>, we can apply the same functions on the sample
covariance matrix (with <M>n</M> in the denominator) to obtain
their MLEs. In other words, the sample correlation coefficients
are MLEs of the theoretical correlation coefficients.

<HEAD2>Sampling distributions</HEAD2>

<HEAD3>For <M>\Xbar</M></HEAD3>
The sampling distribution of <M>\Xbar</M> is clearly <M>N_p(*(\v \mu,[[1n]] \Sigma)*).</M>

It is unbiased for <M>\v \mu.</M> Also, by WLLN applied to its
components separately, we see that it is consisitent for <M>\v \mu.</M>

<HEAD3>For <M>S</M></HEAD3>
We had  <M>S= \sum_1^n(\v X_i-\Xbar) (\v X_i-\Xbar)'.</M> 
It is
like the sum of <M>n</M> terms of the form <M>\v U_i\v U_i'</M>,
where <M>\sum \v U_i = \v 0.</M> So we suspect that <M>S</M> can
be expressed as the sum of <M>n-1</M> terms of the form <M>\v
Z_i\v Z_i'</M>, where the <M>\v Z_i</M>'s are IID <M>N_p(\v 0, \Sigma). </M>
<P/>
Indeed that is the case. First notice that we can
alternatively write <M>S</M> as 
<D>
S = \sum_1^n \v X_i\v X_i' - n \Xbar\Xbar'.
</D>
Let's  pack our data into a data
matix <M>X_{n\times p}.</M> Then notice that 
<D>X'X = \sum_1^n \v X_i\v X_i'.</D> 
Also
<M>\Xbar = [[1n]]X'\v
1.</M> Here <M>\v 1</M> is of size <M>n\times1.</M> 
We normalise <M>\v 1</M> to get <M>\v p_1 = [[1][\sqrt n]]\v 1.</M>
Extend this to an ONB <M>\{\v p_1,...,\v p_n\}</M>
of <M>\rr^n.</M> Pack these as a columns to construct an orthogonal 
matrix <M>P_{n\times n}.</M>
<P/>
Let <M>Z_{n\times p} = P'X.</M> Then notice that <M>Z'Z = X'P P'X
= X'X.</M>
<P/>
So, writing <M>\v Z_i</M> (a <M>p\times 1</M> vector) for the <M>i</M>-th row of <M>Z,</M>  we have
<D>
S = \sum_1^n \v X_i\v X_i' - n \Xbar\Xbar' =
 \sum_1^n \v Z_i\v Z_i' - \v Z_1\v Z_1' = \sum_2^n \v Z_i\v Z_i'.
</D>
Now it is easy to see that <M>\v Z_i</M>'s are IID <M>N_p(\v 0, \Sigma).</M>
      
<P/>
Such a distribution is called the (central) <B>Wishart</B>
distribution with parameter <M>\Sigma</M> and <M>n-1</M> degrees
of freedom. It is a straightforward generalisation of <M>\sigma^2
\chi^2_{(n-1)}</M> distribution.

<HEAD3>Joint distribution of <M>\Xbar</M> and <M>S</M></HEAD3>

As in the univariate situation, <M>\Xbar</M> and <M>S</M> are
independent. This follows easily since the <M>\v Z_i</M>'s are
all independent. Here <M>\Xbar</M> is a function of <M>\v Z_1</M>
alone, while <M>S</M> is a function <M>\v Z_2,...,\v Z_n.</M>

<HEAD2>Confidence region for <M>\v \mu</M> (when <M>\Sigma</M>
is known PD)</HEAD2>
It is easy to see that <M>\Xbar-\v \mu\sim N_p(*(\v 0, [[1n]]\Sigma)*).</M>
Let <M>A = \Sigma^{-1/2}</M> (not unique), i.e., 
<M>\Sigma ^{-1} = (A ^{-1})'A ^{-1}.</M> 
Then <M>A(\Xbar-\v \mu) \sim N_p(\v 0, I).</M>

<P/>
So  <M>(\Xbar-\v \mu)'\Sigma ^{-1} (\Xbar-\v \mu)\sim \chi^2_{(p)}.</M>
<P/>
We may use this to construct an <M>\alpha</M>-level confidence
region for <M>\v \mu </M> as:
<D>
\{\v x\in \rr^p~:~ (\v x-\Xbar)'\Sigma ^{-1} (\v x-\Xbar) \leq k\},
</D>
where <M>k</M> is the appropriate cut-off computed from
the <M>\chi^2_{(p)}</M> distribution.

<HEAD2>Testing  <M>H_0:\v \mu=\v \mu_0</M> (when <M>\Sigma</M>
is known PD)</HEAD2>
We may use the same idea as above to perform a test. Just use the
acceptance region 
<D>
\{\v x\in \rr^p~:~ (\v x-\v \mu_0)'\Sigma ^{-1} (\v x-\v \mu_0) \leq k\},
</D>
where <M>k</M> is the appropriate cut-off computed from
the <M>\chi^2_{(p)}</M> distribution.

<HEAD2>When <M>\Sigma </M> is unknown PD</HEAD2>
Here we have to generalise the idea of
univariate <M>t</M>-distribution.

<HEAD3>Hotelling's <M>T^2</M></HEAD3>
<DEFN name="Hotelling's $T^2$">Let <M>\v Z\sim N_p(0,I)</M> and <M>M\sim</M>Wishart distribution
with parameter <M>I</M> and degrees of freedom <M>m.</M>
Let <M>\v Z</M> and <M>M</M> be independent. Then the
distribution of <M>m\v Z' M ^{-1} \v Z</M> is
called <B>Hotelling's <M>T^2</M> distribution with numerator
df <M>p</M> and denominator df <M>m.</M></B>
</DEFN>
We may use it for testing <M>H_0:\v \mu = \v \mu_0</M> by
defining the test statistic
<D>
T^2 = n(\Xbar-\v \mu_0)' S ^{-1} (\Xbar - \v \mu_0).
</D>
This clearly reduces to the square of the
usual <M>t</M>-statistic in the univariate case. It has a
 Hotelling's <M>t^2</M> with num df <M>p</M> and denom
df <M>n-1</M> distribution under <M>H_0.</M>
So we may compute <M>p</M>-value based on this distribution.

<P/>
Fortunately, the <M>T^2</M>-distribution is closely related to
the <M>F</M>-distribution:
<THM>
If <M>T^2</M> has Hotelling's <M>T^2</M>-distribution with
df's <M>p</M> and <M>m</M>, then 
<D>
[[m-p+1][pm]] T^2\sim F_{(p,m-p+1)}.
</D> 
</THM>
You may compute the <M>F</M> df's to use for the test based on this.

<HEAD2>Testing independence</HEAD2>
Suppose that we have a multivariate normal data set, and we are
interested in testing that the two given variables are
independent. In presence of normality, this amounts to testing if
the correlation between them is zero. It is
natural to consider the sample correlation coefficient as a test
statistic for this. The null distribution is given by the
following theorem.

<THM>
Let <M>\v X_1,...,\v X_n</M> be IID <M>N_p(\v \mu, \Sigma).</M>
Let <M>\rho_{ij}</M> be the population correlation coefficient
and let <M>r_{ij}</M> be te sample correlation coefficient 
between the <M>i</M>-th and <M>j</M>-th variables (<M>i\neq j\in \{1,...,p\}.</M> 
If <M>\rho_{ij} = 0,</M> then <M>r_{ij}</M> has PDF given by
<D>
f(r) = [[\Gamma(*( [[n-1][2]] )*) ][\Gamma(*( [[n-2][2]] )*)\sqrt\pi ]]
(1-r^2)^{[[n-4][2]]},\quad r\in(-1,1). 
</D>
</THM> 
<PF>See the proof of theorem 4.2.1 in Anderson's book.</PF>

The exact distribution of the sample correlation coefficient when the
population correlation is nonzero. However, there are useful
asymptotic approximations. 

<THM>
Same set up as in the last theorem. But
now <M>\rho_{ij}</M> need not be 0. Then 
<D>
[[\sqrt{n}(r_{ij}-\rho_{ij})][1-\rho_{ij}^2]] \to N(0,1)
</D>
in distribution.
</THM>
<PF>See the proof of theorem 4.2.4 in Anderson's book.</PF>
<P/>

Owing to the presence of the parameter in the denominator, this is
somewhat unwieldy to use. Here is a smarter version with constant
variance.

<THM>
Same set up as above. Then 
<D>
\sqrt{n}(\tanh ^{-1} r_{ij} - \tanh ^{-1} \rho_{ij}) \to N(0,1) 
</D>
in distribution.
</THM>
<PF>See the proof of theorem 4.2.5 in Anderson's book.</PF>
</NOTE>@}
