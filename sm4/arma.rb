@{<NOTE>
<M>
\newcommand{\h}{\hat}
\newcommand{\b}{\mathbf}
</M>
<B>Ref: Introduction to Time Series and Forecasting by Brockwell
and Davis</B>
<HEAD1>Moving average process</HEAD1>
The <M>MA(q)</M> is 
<D>
X_t = \beta_0 \epsilon_t + \beta_1  \epsilon_{t-1} +
\cdots + \beta_q \epsilon_{t-q},
</D>
where the <M>\beta_i</M>'s are (unknown) fixed parameters
and <M>(\epsilon_t)\sim WN(0,\sigma_\epsilon^2).</M> 

<P/>
Using <M>B</M>-notation, this may be written as <M>X_t =
\theta(B) \epsilon_t,</M> where 
<D>
\theta(z) = \beta_0 + \beta_1 z + \cdots + \beta_q z^q.
</D>

<P/>
We may assume, w.l.g., <M>\beta_0 = 1.</M> This is what is done
in most applications, though the notation <M>\beta_0</M> helps
while writing formulae. 
<P/>
Clearly <M>(X_t)</M> is (weakly/strongly) stationary according
as <M>(\epsilon_t)</M> is (weakly/strongly) stationary.
<P/>
Here 
<UL>
<LI><M>E(X_t) = 0.</M></LI>
<LI><M>V(X_t) = \sigma^2_\epsilon\sum_0^q \beta_i^2.</M></LI>
<LI>ACVF: <M>\gamma(h) = <CASES>\sigma^2_\epsilon
\sum_0^{q-h}\beta_i \beta_{i+h} <IF>h=0,...,q</IF>0<IF>h>q</IF>\gamma(-h)<IF>h<0</IF></CASES>.</M> </LI>
<LI>ACF: <M>\rho(h) = <CASES>[[\sum_0^{q-h}\beta_i \beta_{i+h}][\sum_0^q\beta_i^2]] <IF>h=0,...,q</IF>0<IF>h>q</IF>\rho(-h)<IF>h<0</IF></CASES>.</M> </LI>
</UL>
It is interesting to note that the ACF cuts off after
lag <M>q.</M> This gives us a way to guess <M>q</M> just by
looking at ACF. Plot of <M>\rho(h)</M> or rather of <M>\h
\rho(h)</M> against <M>h</M> is a form of <B>correlogram</B>.
<COMMENT>
Is it possible to estimate the <M>\beta_i</M>'s
as well, just by looking at ACF? Unfortunately, no. The
map <M>(1,\beta_1...,\beta_q)\to</M>ACF is not 1-1. However,
something interesting happens here: this map is 2-1, i.e., given
the ACF, there are exactly <I>two</I> sets
of <M>(1,\beta_1...,\beta_q)</M> that lead to that ACF.  
</COMMENT>
<HEAD1>Autoregressive process</HEAD1>
The model is 
<D>
X_t = \alpha_1 X_{t-1}+\cdots+\alpha_p X_{t-p}+\epsilon_t,\quad t\in\zz,
</D>
where the <M>\alpha_i</M>`s are (unknown) fixed parameters,
and <M>(\epsilon_t)\sim WN(0,\sigma^2_\epsilon).</M>

<P/>
Using <M>B</M>-notation this may be written as <M>\phi (B)X_t =
\epsilon_t,</M> where 
<D>
\phi(z) = 1-\alpha_1z-\cdots-\alpha_pz^p.
</D>
<P/>
This looks like a recursive definition, but unlike a usual
recursive definition, we are not given any initial values to
start the recursion from. Instead, <M>t</M> is allowed to take
all integer values! So how we start the recursion? Does it even
make sense?
<P/>
Well, it does. In fact, we can show (some non-trivial probablity
arguement required) that given any white
noise, <M>(\epsilon_t)</M>, there is a unique weakly stationary
process <M>(X_t)</M> that satisfies the above recursive
relation. We define our <M>(X_t)</M> to be that unique time
series. Now, intuitively, we like to think of <M>X_t</M> as being
caused partly by its recent past values and some fresh
error. But, for certain choices of <M>\alpha_i</M>`s, the unique
stationary  <M>(X_t)</M> satisfying the above recursion has the
property that <M>X_t</M> is correlated
with <M>\epsilon_{t+h}</M>`s for <M>h>0.</M> In other words, the
value observed today is correlated with fresh errors that will be
born in the future! Naturally, we want to avoid such choices
of <M>\alpha_i</M>`s. The resulting <M>AR(p)</M> model is called
a <B>causal</B> <M>AR(p)</M> model. Generally, we always
assume a causal model, even when we drop the adjective before <M>AR(p).</M>
<P/>
The causality condition on the <M>\alpha_i</M>`s turns out to be
rather nice mathematically: all the complex zeroes
of <M>\phi(z)</M> must lie outside the closed unit disc!    

<P/>
In this case, one can express <M>(#(\phi(z) )#) ^{-1} </M> as an
absolutely convergent power series for <M>|z|\leq 1.</M> It is
interesting to note that then <M>X_t = \phi(B) ^{-1}
\epsilon_t.</M> 

<P/>
It is easy to see that <M>E(X_t) = 0.</M> But finding ACVF is
somewhat more tricky. we start with the defining recursion 
<D>
X_t = \alpha_1 X_{t-1}+\cdots+\alpha_p X_{t-p}+\epsilon_t,
</D> 
and multiply both sides with <M>X_{t-h}</M> (for <M>h>0</M>) and take expecation
to get
<D>
\gamma(h) = \alpha_1 \gamma(h-1)+\cdots+\alpha_p \gamma(h-p),
</D>
since <M>cov(X_{t-h},\epsilon_t)=0</M>. Dividing
by <M>V(X_t),</M> which is free of <M>t,</M> we get
<D>
\forall h>0 ~~\rho(h) = \alpha_1 \rho(h-1)+\cdots+\alpha_p \rho(h-p)
</D>
Here <M>\rho(0)=1</M> and the first <M>p-1</M> equations are all
in terms of <M>\rho(1),...,\rho(p-1),</M>
since <M>\rho(-h)=\rho(h).</M>

<P/>
Unlike <M>MA(q),</M> here the ACF does not cut off. Rather they
typically continue to decay geometrically. 
<P/>
However, here we may consider PACF, which indeed cuts off after
lag <M>p.</M> Thus, PACF is a good way to identify <M>p.</M>

<HEAD1>Invertibility of <M>MA(q)</M></HEAD1>

We saw just now that an <M>AR(p)</M> may be non-causal, but
generally we avoid them by putting a condition on the
coeefficients. Surprisingly, the same condition allows us to
express a causal <M>AR(p)</M> as an <M>MA(\infty)</M> process. 
<P/>
We can obviosly put an analogous condition on the coeffcients of
an <M>MA(q)</M> and express it as an <M>AR(\infty)</M>
process. Such an <M>MA(q)</M> is called <B>invertible</B>.

<P/>
Unlike the cusality condtion on <M>AR(p)</M>, the invertibility
condition is more of technical interest than of a statistical
one. 

<HEAD1>Autoregressive moving average process</HEAD1>
Next we shall consider a mixture of <M>AR(p)</M> and <M>MA(q)</M>
which is called <M>ARMA(p,q):</M>
<D>
\phi(B)X_t = \theta(B) \epsilon_t,~~t\in\zz,
</D>
where <M>\phi(z) = 1-\alpha_1z-\cdots-\alpha_p z^p</M>
and <M>\theta(z) = 1+ \beta_1 z+\cdots + \beta_q z^q</M>
both have their complex zeroes outside the closed unit disc.

<P/>
This condition allows us to express the <M>ARMA(p,q)</M> process
as an <M>MA(\infty)</M> as well as an <M>AR(\infty)</M>
process. This duality is technically advantageous during various
proofs. 

<P/>
The mean of the <M>ARMA(p,q)</M> process is <M>0,</M> but the ACF
or PACF is not very easy to compute analytically. Also, these do
not cut off after lags <M>q</M> or <M>p,</M> respectively. 

<HEAD1>Estimation</HEAD1>
SUppose that we have  observed a weakly stationary time series
for <M>n</M> time points to get <M>X_1,...,X_n.</M> The first
thing we do is to make a plot. Let`s say there is no obvious
trend or seasonal component (neither from the plot, nor from the
domain knowledge). We want to
fit an <M>ARMA(p,q)</M> model to it. This means choosing
appropriate <M>p,q</M>, then estimating the coefficients, and the
wihite noise variance. The overall procedure is to search over
different choices of <M>p,q</M>. For each choice we use MLE to
fit the other parameters. Typically, the fits for the different
candidate <M>p,q</M>`s are compared using Akaike`s Information
Criterion (AIC) or its bias-corrected version (AICC). These are
functions of the maxmimum likelhood obtained and the
candidate <M>p,q.</M> The value of <M>p,q</M> minimising AIC or
AICC is chosen.
<P/>
The MLE procedure is far from simple, and involves many steps
like initialisation, iteration, dealing with singular situations
etc. However, all these are neatly covered by standard
statistical softwares, and we shall not delve deeper
inside. However, the procedure generally starts with  some basic
estimation that we shall briefly touch upon next.
<P/>
The mean of the process is obviously estimated by 
<D>
\h \mu = \bar X.
</D>  
Estimating ACVF is somewhat less intuitive:
<D>
\h \gamma(h) = [[1n]]\sum_{t=1}^{n-h} (X_{t+h}-\bar X)(X_t-\bar
X)\text{ for }h=0,1,...,n-1.
</D> 
Notice that we are subtracting the overall mean. Also we are
dividing by <M>n</M> and not <M>n-h.</M> This ensures the sample
covariance matrix constructed out of these is NND. 
<P/>
Then we estimate ACF as
<D>
\h \rho(h) = \h \gamma(h)/\h \gamma(0).
</D> 

<HEAD1>Prediction</HEAD1>
Given a time series model (not
necessarily stationary, but second order moments exist), some observed
values: <M>X_1,...,X_n,</M> we want to predict <M>X_{n+h}</M> for
some <M>h>0.</M>
<P/>
For this purpose we employ an (affine) linear predictor of the
form 
<D>
\h X_{n+h} = a_0 + a_1X_1 + \cdots a_n X_n.
</D>
We choose <M>a_i</M>`s so that <M>E(\h X_{n+h}-X_{n+h})^2</M> is
minimum. Here we assume that the model is completely given to us
(all parameters are known). So the best choice of <M>a_i</M>`s
are in terms of those parameters. In practice we plug-in the
estimators in place of the actual values. There are a couple of
algorithims to obtain the best <M>a_i</M>`s. We shall describe
one of them 
 called the <B>innovations algorithm</B>.

<P/>
We shall assume a zero mean process. We shall use the following
notation:
 <OL>
<LI> <M>\kappa(i,j)=E(X_iX_j)</M></LI>
<LI><M>\h X_n</M> will denote the best prediction of <M>X_n</M>
based on <M>X_1,...,X_{n-1}</M> for <M>n\geq 2.</M> Also we
define <M>\h X_1=0.</M></LI>
<LI><M>U_n = X_n-\h X_n.</M></LI>
</OL>
Then 
<D>
<MAT>U_1\\\vdots\\ U_n</MAT> = A<MAT>X_1\\\vdots\\ X_n</MAT> 
</D>
for some lower triangular matrix with 1`s in the diagonal
entries. It is this <M>A</M> that we want to find out. 

<P/>
Let`s call the two vectors <M>\b U_n</M> and <M>\b X_n.</M>
Similarly we define <M>\h{\b X}_n.</M>
Then
<D>
\h{\b X}_n = \b X_n - \b U_n = A ^{-1} \b U_n - \b U_n = (A ^{-1} -
I) \b U_n.
</D> 
Notice that <M>A ^{-1} - I</M> is a strict lower triangular
matrix. Let`s write it as
<D>
A ^{-1} - I = <MAT>
0 \\
\theta_{1,1} & 0  \\
\theta_{2,2} & \theta_{2,1} & 0 \\
\vdots & \vdots \\
\theta_{n-1,n-1} & \theta_{n-1,n-2} & \cdots & \theta_{n-1,1} & 0
</MAT>
</D>
Then we can write
<D>
\h X_{n+1} = <CASES>
0<IF>n=0</IF>
\sum_1^n \theta_{n.j}(X_{n+1-j}-\h X_{n+1-j})<IF>n\in\nn</IF>
</CASES>.
</D>
Then all one-step predictors <M>\h X_1,\h X_2,...</M> can be
computed if the <M>\theta_{i,j}</M>`s are known. The following
algorithm finds precisely these:
<IMG web="../inno.png"/>
Here <M>v_n = E(X_{n+1}-\h X_{n+1})^2.</M>

<P/>

For an <M>ARMA(p,q)</M> we first estimated <M>\rho(h)</M> (which
supplies the <M>\kappa(i,j)</M>`s and then apply the above
algorithm, which simplifies considerably for the <M>ARMA(p,q)</M> case.
</NOTE>@}
