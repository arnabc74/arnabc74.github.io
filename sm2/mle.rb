@{<NOTE>
<M>
\renewcommand{\v}{\vec}
\newcommand{\do}[1]{\frac{\partial}{\partial #1}}
</M>
<HEAD1>Advanced MLE techniques</HEAD1>
Our textbook covers the basic idea behind the maximum likelihood
estimation technique. In some simple cases, you can find the
maximum just by inspection, while in others you have to use
differentiation. In most cases direct differentiation of the
likelihood function leads to unwieldy expressions (as the
likelihood is often the product of <M>n</M> functions, and the
"differentiate-one-at-a-time" rule for differentiating a product is
not fun when <M>n</M> is large). So a common technique is to
first take logarithm of the likelihood (converting the product to
a sum) and then to differentiate the log-likelihood. As log is a
strictly increasing differentiable function, the argmax does not
change upon taking log. So if <M>\ell(\v \theta)</M> is the
log-likelihood, then we want to solve the equation:
<D>
\nabla \ell(\v \theta) = \v0.
</D> 
By the way, <M>\nabla \ell(\cdot)</M> is called the <B>score function</B>.
<P/>

All methods to solve it analytically will be called basic MLE
techniques. Often the equation is too complicated for such basic
techniques to exist. Then we need what we shall call the advanced
MLE techniques.

<EXM>
We have a random sample <M>X_1,...,X_n</M> from the Gamma(<M>\alpha,p</M>) with
pdf
<D>
f(x) = <CASES>[[p^\alpha][\Gamma(\alpha)]] x^{\alpha-1} e^{-px}<IF>x>0</IF>0<ELSE/></CASES>.
</D>
Here the parameter space for <M>(\alpha,p)</M> is <M>(0,\infty)^2.</M>
Obtain MLE of the parameters.
<SOLN/>
The log-likelihood function is
<D>
\ell(\alpha,p) = n(\alpha \log p - \log \Gamma(\alpha))
+(\alpha-1)\sum_i \log x_i -p\sum_i x_i. 
</D>
It is quite easy to differentiate partially wrt <M>p</M> and
equate it to zero: 
 <D>
\do p \ell(\alpha,p) = [[n \alpha][p]]-\sum_i x_i. 
</D>
So for each given value of  <M>\alpha</M> we must have 
 <D>
\hat p = [[n \alpha][\sum_i x_i]]. 
</D>
Putting this 
in <M>\ell(\alpha,p)</M> we get a function of <M>\alpha </M> alone:
<D>
\ell_1(\alpha) = \ell(\alpha,\hat p).
</D>
Since this involves the <M>\Gamma </M> function, the
equation <M>\ell_1'(\alpha) = 0</M> may not be solved analytically.
</EXM>

<HEAD2>Technique 1: Newton-Raphson method</HEAD2>
The Newton-Raphson method is a numerical approach to solving any
equation of the form <M>g(\v x) = \v0</M>, where <M>g:\rr^n\to\rr^n</M> is
differentiable. It uses the iterative scheme
<D>
\v x_{n+1} = \v x_n - J(\v x_n) ^{-1} g(\v x_n)
</D>
starting from some <M>\v x_0.</M> Here <M>J(\v x)</M> is the
Jacobian matrix of <M>f</M> at <M>\v x.</M> 
<P/>
There is no guaranty that it will converge. But for a large class
of problems it does converge quite fast if <M>\v x_0</M> is pretty close to the
actual answer. 
<P/>
On the face of it, it may seem that only first order derivatives
are involved. But when we are using the Newton-Raphson method for
MLE, our <M>g(\cdot)</M> is actually the derivative of the
log-likelihood function. So the Jacobian of <M>g</M> is actually
the second derivative matrix (called the Hessian) of the
log-likelihood. The iterative scheme is:
<D>
\v \theta_{n+1} = \v \theta_n - H(\v \theta_n) ^{-1}  \nabla \ell (\v \theta_n),
</D>
where <M>H_{k\times k}</M> is the Hessian matrix with <M>(i,j)</M>-th entry 
<D>
[[\partial^2][\partial \theta_i\partial \theta_j]] \ell(\v \theta).
</D>
Here <M>k</M> is the number of parameter (i.e., the number of
 components in <M>\v \theta</M>).
<P/>
 As you might guess, the expressions often turn
out to be quite hairy, limiting the effectiveness of the
technique. 

<HEAD2>Technique 2: Fisher's scoring method</HEAD2>
This is actually a variant of the Newton-Raphson method, but
tailored to finding MLE. Here we replace <M>-H(\v \theta)</M> by
its expectation 
<D>
I(\v \theta) = -E(H(v \theta)).
</D> 
While this might appear even hairier, usually the expectation
often simplifies things by averaging over all possible
data. Note that <M>I(\v \theta)</M>, unlike <M>H(\v \theta)</M>
is <I>not</I> a function of the random sample.
<P/>
Under fairly general conditions
<D>
I(\v \theta) = E[(\nabla\ell(\v \theta))'\nabla\ell(\v \theta)].
</D> 
This formula, being in terms first derivatives only, may be
computationally easier.
<HEAD3>Advantages of Fisher's scoring method over
Newton-Raphson</HEAD3>
There are three advantages:
<OL>
<LI>There expressions involved in the iterative scheme is analytically more tractable. So it is easier to write
the code.</LI>
<LI>As we are averaging out over all possible samples, the
undulations specific to the given random sample are ironed out
to some extent (they are still there in the score function,
though). So less chance of the iterative method getting stuck at
a local max.</LI>
<LI>Under fairly general conditions, the information matrix is
the limiting covariance matrix of the MLE. This is automatically
computed as a byproduct.</LI>
</OL>
</NOTE>@}
