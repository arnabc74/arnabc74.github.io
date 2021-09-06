@{<NOTE>
<M>
\newcommand{\v}{\vec}
\newcommand{\hv}[1]{\hat{\vec #1}}
</M>
<HEAD1>Equivalence of the different formulations of ridge
regression</HEAD1>

We have presented 4 different formulations of ridge regression:
<OL>
<LI><B>ad hoc:</B>
<M>\hv \beta (\lambda) = (X'X+\lambda I) ^{-1} X'\v y</M> for
some <M>\lambda \geq 0.</M>
</LI>
<LI><B>Bayesian:</B>
Posterior mean under prior <M>\v b\sim N_p(\v 0, \tau^2 I)</M>
and model <M>\v y | \v \beta \sim N_n(X\v \beta , \sigma^2 I)</M>
for some <M>\tau\geq 0.</M>
</LI>
<LI><B>Soft bound:</B>
Minimizer for 
<D>
\| \v y - X\v \beta \|^2 + \kappa \|\v \beta \|^2
</D>
for some <M>\kappa \geq 0.</M>
</LI>
<LI><B>Hard bound:</B>
Minimizer for 
<D>
\| \v y - X\v \beta \|^2 \text{ subject to }  \|\v \beta \|^2\leq \delta
</D>
for some <M>\delta \geq 0.</M>
</LI>
</OL>
We shall now point out why these are all equivalent.

<HEAD2>Ad hoc and Bayesian</HEAD2>
The posterior density of <M>\v \beta </M> is proportional to the
product of the prior density and model density. Direct
computation shows that the posterior is again a normal density
with mean of the same form as the ad hoc form of ridge
regression. This establishes equivalence between the ad hoc and
Bayesian formulations. 

<HEAD2>Ad hoc and soft bound</HEAD2>
The target function in the soft bound formulation is 
<D>
\| \v y - X\v \beta \|^2 + \kappa \|\v \beta \|^2 = \v \beta '
(X'X + \kappa I) \v \beta - 2(X'y)'\v \beta + \text{ constant}.
</D>
Differentiate w.r.t. <M>\v \beta </M> and equate to <M>\v0</M> to
arrive the ad hoc formulation.

<HEAD2>Soft bound and hard bound</HEAD2>
The hard bound formulation is the same as least squares method
except for an additional constraint. If the least squares
estimate already satisfies the constraint, then the hard bound
formulation will return the least squares estimator itself, which
is a special case of the ad hoc formulation (with <M>\lambda = 0</M>).
<P/>
If the least squares estimator lies outside the hard bound
constraint disc, then the constrained minimizer must lie on the
circumference of the disc (since the target function if
convex). So we might change the constraint from <M>\|\v \\beta
\|^2\leq \delta</M> to <M>\|\v \\beta \|^2= \delta.</M> Now we
can use Lagrange multiplier technique, which works with the
modified target funciion:
<D>
\| \v y - X\v \beta \|^2 + \lambda  (\|\v \beta \|^2 - \delta).
</D>
This differs from the soft bound target function by just a
constant. This establishes the equivalence between the soft bound
and the hard bound formulations.

<P/>
<DISQUSE id="ridge" url="https://arnabc74.github.io/linmod/ridge.html"/>
</NOTE>@}
