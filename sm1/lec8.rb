@{<NOTE>
<M>\newcommand{\argmax}{\mathrm{argmax}}</M>
<HEAD1>Maximum Likelihood Estimation (MLE)</HEAD1>
<HEAD2>Set up </HEAD2>
 You have some data:
<D>
X_1,...,X_n.
</D>
You know that this is a random sample (i.e., IID) from some
distribution with PMF or continuous PDF <M>f(x,\theta),</M> where <M>\theta\in
\Theta </M> is some unknown parameter, and <M>\Theta </M> is the
<B>parameter space</B>, the set of all possible values
that <M>\theta </M> can take. We assume that <M>\Theta </M> is
known. 

<P/>
How would one "know" such a thing in real life? In one of two ways:
<UL>
<LI>by looking at the bar chart (for discrete case) or histogram
(for continuous case), and recognising the shape</LI>
<LI>by domain knowledge (e.g., some expert in that field tells
you that typically this variable follows that distribution).</LI>
</UL>
<EXM><M>X_1,...,X_n</M> are the outcomes (Head=1, Tail=0) of <M>n</M> tosses of a
coin with unknown probability of head <M>\theta.</M> Then the
PMF is
<D>
f(x,\theta) = \theta^x(1-\theta)^{1-x},\quad x=0,1.
</D>
Here we do not know <M>\theta,</M> but we know
that <M>\theta\in[0,1].</M> So <M>\Theta = [0,1].</M> To make
sense of the PMF when <M>\theta=0</M> or 1, we take <M>0^0=1.</M>
</EXM>

Our aim is to estimate (i.e., approximately guess) the value
of <M>\theta.</M> MLE is the most popular technique to do so. 
<P/>
<B>A minor point:</B> The estimate (i.e., the approximate guess) is obtained based on
the data. Thus, the outcome of MLE is a <I>function</I> of the
data, say <M>\hat \theta(x_1,...,x_n).</M> This function is
called an <B>estimator</B>. When you evaluate it at the actual
data you get <M>\hat \theta(X_1,...,X_n)</M>, which is a number
called an <B>estimate</B>. The difference between an estimator
and an estimate is that between a function and its value. The
distinction is often blurred in casual usage. The abbreviation
MLE is used to denote Maximum Likelihood Estimate or Maximum
Likelihood Estimator or Maximum Likelihood Estimation 
(the entire process of arriving at the guess).   

<HEAD2>The procedure</HEAD2>
First compute the <B>likelihood function</B>
<D>
L(\theta) = \prod_{i=1}^n f(X_i,\theta).
</D>
Note that the likelihood is actually a function of <M>\theta</M>
as well as the <M>X_i</M>'s, though I have suppressed
the <M>X_i</M>'s in the left hand side.
<P/>
The process of MLE now consists of finding <M>\hat \theta\in
\Theta </M> that maximises <M>L(\theta).</M> Mathematically, we
write this as 
<D>
\hat \theta = \argmax \{L(\theta)~:~\theta\in \Theta\}.
</D>
How the maximisation is carried out in a given problem is not
dictated by MLE. But, as you might have guessed, differentiation
is a popular technique. Now, differentiating a product of
functions may not be easy. So if you are planning to
differentiate, it is generally wiser to work with
the <B>log-likelihood function</B>:
<D>
\ell(\theta) = \log L(\theta)=\sum_{i=1}^n \log f(X_i,\theta),
</D> 
which is a <I>sum</I> instead of a <I>product</I> of identical functions.
<P/>

Of course, you must ensure that <M>L(\theta)>0</M> before taking
log. Since <M>\log x</M> is a differentiable, strictly increasing
function, we have
<D>
\argmax \{\ell(\theta)~:~\theta\in \Theta\} = \argmax \{L(\theta)~:~\theta\in \Theta\}.
</D> 

<HEAD2>Example</HEAD2>
<EXM>
<M>X_1,...,X_n</M> random sample from Poisson(<M>\lambda</M>)
with PMF:
<D>
f(x,\lambda) = e^{-\lambda}[[\lambda^x][x!]] \text{ for } x=0,1,2,...
</D>
for <M>\lambda>0.</M> Find MLE of <M>\lambda.</M>
<SOLN/>
Here the parameter space is <M>(0,\infty).</M> The likelihood
function is
<D>
L(\lambda) = \prod_{i=1]}^n e^{-\lambda}[[\lambda^{X_i}][X_i!]] =
e^{-n \lambda} [[ \lambda^{\sum X_i}][ \prod X_i!]].
</D>
This might look alarming, especially the product in the
denominator. But remember that you are to maximise it as a function
of <M>\lambda.</M> Anything that does not involve <M>\lambda </M>
is just a constant. So it is basically like
<D>
L(\lambda) = A e^{-n \lambda} \lambda ^ B,
</D>
where <M>A</M> and <M>B</M> are constants. Differentiating and
equating it to zero, is not tough. But we can make life easier by
first taking log:
<D>
\ell(\lambda) = \log A -n \lambda + B \log \lambda. 
</D>
So
<D>
\ell'(\lambda) = -n + [[B][\lambda]].
</D>
Solving <M>\ell'(\hat \lambda) = 0</M> we get <M>\hat \lambda =
\bar X.</M> 

<P/>
Second derivative test: <M>\ell''(\lambda) =
-[[B][\lambda^2]].</M> 
Since <M>B>0</M> (unless all the <M>X_i</M>`s are zero),  <M>\ell''(\hat \lambda) <
0</M>, ensuring a maximum. 
</EXM>

<HEAD2>Will this always work well?</HEAD2>

There is no guaranty <I>in general</I> that this procedure will
work well, or even work at all. It could be that <M>L(\theta)</M>
is unbounded above for <M>\theta\in \Theta</M>, or even if it is
bounded above, it may not attain its supremum (like the
function <M>g(x)=x</M> over <M>x\in(0,1)</M>).
<P/>
In the example above we already had a problem: MLE did not exist
if all the <M>X_i</M>`s were 0, since <M>e^{-n \lambda}</M>
for <M>\lambda>0</M> has no maximum!
<P/>
However, in an overwhelming majority of cases, such problems do
not arise. There are many theorems providing sufficient
conditions under which the MLE works well. We shall not go into
those theorems in this basic course.
<P/>
But let us understand intuitively what is meant by "works well"
here. Let <M>\theta_*\in \Theta</M>   be the true (unknown) value
of <M>\theta.</M> Then one desirable property is that <M>\hat \theta
(X_1,...,X_n)\to \theta_* </M> as <M>n\to \infty.</M> This
property is called <B>consistency</B>. In a wide variety of
situations (again there are theorems giving sufficient
conditions), MLE is consistent. 
<P/>
Another desirable property is that it should be precise. This may
be measured by its <B>standard error (SE)</B> (which is just a fancy
name for the standard deviation in case of an estimator). How
small can you make it? Well, you cannot make it negative! Can you
make it zero? Well, errr...yes, if we take our estimator to be
just a constant (like for a coin toss case, we always
report <M>\hat \theta  = [[12]]</M> without looking at the
data). Now that is of course a stupid estimator! So low standard
error by itself may lead to nonsense. But once we put more
reasonable conditions (like consistency), the standard error is
forced to be positive. There are theorems that give us some lower
bound for standard error under those conditions (e.g., Cramer-Rao bound). Any estimator
attaining that lower bound is called <B>efficient</B>.  Is MLE always
efficient? Well, not necessarily. But it is often <B>asymptotically
efficient</B>, meaning that 
<D>
[[SE(MLE)][\text{lower bound}]]\to 1
</D>
as <M>n\to \infty.</M>
<P/>
We still do not have enough mathematical tools under our disposal to make
these ideas any more precise. However, it is not difficult to see
intuitively why MLE is a reasonable thing to do. Indeed, this is
what a common man would anyway do, as the following
example shows.

<EXM>
Suppose that you have a coin, and you know that its probability
of head is either 0.9 or 0.1. You have tossed it 100 times, and
have obtained 87 heads and 13 tails. What will be your estimate
of the probability of head based on this?
<P/>
Clearly, your estimate will be 0.9. Because, it is highly
unlikely that a coin with probability of head 0.1 would produce
87 heads out of 100 tosses.
<P/>
Well, that is exactly the reasoning behind MLE. Here the parameter
space is <M>\Theta=\{0.1,0.9\}.</M> The likelihood function is
<D>
L(\theta) = \theta ^{87} (1-\theta)^{13}.
</D>
Clearly, <M>L(0.9) > L(0.1),</M> and so we go for <M>\hat \theta  = 0.9.</M>
</EXM>

<HEAD2>What does the likelihood function denote?</HEAD2>
For discrete data it denotes the probability of observing the
data for a given value of <M>\theta.</M> So here the likelihood
is always between 0 and 1. 
<P/>
The interpretation is sightly more involved for the PDF
case. Recall that we are assuming the PDF to be continuous. Under
the continuity assumption we have this result (from the
fundamental theorem of calculus):
<D>
\lim_{\delta\to 0+}[[P(X\in(x-\delta,x+\delta))][2 \delta]] = f(x).
</D>
 Now, when we measure a continuous variable, we do so only with a
 finite precision. Suppose that this precision level is measured
 by <M>\delta>0.</M> That is, when we say that the measured value
 of <M>X</M> is <M>x</M> we actually
 mean <M>X\in(x-\delta,x+\delta).</M> Now,
 typically, <M>\delta</M> is pretty small allowing us to assume
 <D>
P(X\in(x-\delta,x+\delta)) \approx 2 \delta f(x).
</D>
In other words, the probability of the measured value
being <M>x</M> is proportional to <M>f(x).</M> Hence, in the
continuous PDF case also,  the likelihood function gives the
probability of observing the data <I>up to a constant of
proportionality</I>.  
<DISQUSE id="mle" url="https://arnabc74.github.io/sm1/lec8.html"/>

</NOTE>@}
