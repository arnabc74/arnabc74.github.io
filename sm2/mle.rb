@{<NOTE>
<M>
\renewcommand{\v}{\vec}
\newcommand{\do}[1]{\frac{\partial}{\partial #1}}
\newcommand{\dt}[1]{\frac{\partial^2}{\partial #1^2}}
\newcommand{\doo}[2]{\frac{\partial^2}{\partial #1\partial #2}}
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
equation <M>\ell_1`(\alpha) = 0</M> may not be solved analytically.
</EXM>

<EXM>
<B>(Probit model)</B> We have <M>n</M> mice (random sample from a
cohort bred under uniform condition). The <M>i</M>-th mouse is
given a dose <M>x_i</M>  of a poison. <M>Y_i = 1</M> if
the <M>i</M>-th mouse was killed by the dose, and <M>0</M>
otherwise. Our data consist of the <M>n</M>
pairs <M>(x_1,Y_1),...,(x_n,Y_n).</M> 
<P/>
Want to fit the model
<D>
Y_i\sim Bern(*(\Phi(*(\alpha+\beta x_i)*))*), 
</D>
and <M>Y_i</M>`s independent, where <M>\alpha\in\rr</M>
and <M>\beta >0</M> are the unknown parameters. 
<P/>
Estimate <M>\alpha, \beta </M> using MLE.
<SOLN/>
Here the likelihood function is 
<D>
L(\alpha,\beta) = \prod_1^n [*[\Phi(\alpha+\beta x_i) ]*]^{Y_i}[*[1-\Phi(\alpha+\beta x_i) ]*]^{1- Y_i}.
</D>
So the log-likelihood function is
<D>
\ell(\alpha,\beta) = \sum [Y_i \log\Phi(\alpha+\beta x_i)]+ \sum[(1- Y_i)\log (1-\Phi(\alpha+\beta x_i))].
</D>
We need to solve <M>\nabla\ell(\alpha,\beta)=(0,0).</M>

<P/>
I hope you will agree with me that the expressions are not
particularly apetising! 
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
<EXM><B>(Newton-Raphson for probit)</B>
We had already seen that the log-likelihood equation was pretty
nasty looking. But we can notationally simplify things
by introducing two functions: 
<M>f(x) = \phi(x)/\Phi(x)</M> and <M>g(x) =
\phi(x)/(1-\Phi(x)).</M>
  
<P/>

It is easy to see that <M>f'(x) = -f(x)(x+f(x))</M> and <M>g'(x) = -g(x)(x-g(x)).</M>
<P/>
With these definitions, we can now write
<MULTILINE>
\do \alpha \ell & = & \sum h_i(\alpha,\beta)\\
\do \beta  \ell & = & \sum x_i h_i(\alpha,\beta),
</MULTILINE> 
where 
<D>
h_i(\alpha,\beta) = Y_i f(\alpha + \beta x_i) - (1-Y_i) g(\alpha + \beta x_i),
</D>
and hence
<MULTILINE>
\do \alpha h_i(\alpha,\beta) & = & Y_i f'(\alpha + \beta x_i) - (1-Y_i) g'(\alpha + \beta x_i),\\
\do \beta h_i(\alpha,\beta) & = & x_i \do \alpha h_i(\alpha,\beta).
</MULTILINE>


So 
<MULTILINE>
\dt \alpha \ell & = & \sum \do \alpha h_i(\alpha,\beta)\\
\dt \beta \ell & = & \sum x_i^2\do \alpha  h_i(\alpha,\beta)\\
\doo \alpha \beta  \ell & = & \sum x_i \do \alpha h_i(\alpha,\beta).
</MULTILINE> 
Then the Newton-Raphson iteration is
<D>
<MAT>\alpha_{k+1} \\ \beta_{k+1} </MAT> = <MAT>\alpha_k \\ \beta_k </MAT>
- <MAT>\dt \alpha \ell & \doo \alpha \beta \ell\\ \doo \alpha
\beta \ell & \dt \beta \ell</MAT>^{-1} <MAT>\do \alpha \ell\\\do \beta \ell</MAT>.
</D>
Here the RHS is evaluated at <M>(\alpha_k,\beta_k).</M>
</EXM>
<HEAD2>Technique 2: Fisher`s scoring method</HEAD2>
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

Notice that <M>\nabla\ell(\v \theta)</M> is a <I>row</I>
vector. So the quantity inside the expectation is a <M>k\times
k</M> matrix, where <M>k</M> is the number of components in <M>\theta.</M>

<HEAD3>Advantages of Fisher`s scoring method over
Newton-Raphson</HEAD3>
There are three advantages:
<OL>
<LI>The expressions involved in the iterative scheme is analytically more tractable. So it is easier to write
the code.</LI>
<LI>As we are averaging out over all possible samples, the
undulations specific to the given random sample are ironed out
to some extent (they are still there in the score function,
though). So possibly less chance of the iterative method getting stuck at
a local max. Never seen any demonstration of this.</LI>
<LI>Under fairly general conditions, the negative of the inverse
of the information matrix is
the limiting covariance matrix of the MLE. This is automatically
computed as a byproduct.</LI>
</OL>

<EXM><B>(Fisher's scoring method for probit)</B>
For Fisher's scoring method we need the expectation of the Hessian
matrix. This involves 
<D>
E(*(\do \alpha h_i(\alpha,\beta) )*)  =  E(Y_i) f'(\alpha + \beta x_i)
- (1-E(Y_i)) g'(\alpha + \beta x_i).
</D>
Since <M>E(Y_i) = \Phi(\alpha + \beta x_i),</M> we get some
simplification:
<D>
E(Y_i) f'(\alpha + \beta x_i) = -\phi(\alpha + \beta x_i) (x + f(x))
</D>
and 
<D>
(1-E(Y_i)) g'(\alpha + \beta x_i) = -\phi(\alpha + \beta x_i) (x - g(x))
</D>

</EXM>
</NOTE>@}
