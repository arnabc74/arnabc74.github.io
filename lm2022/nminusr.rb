@{<NOTE>
<M>\newcommand{\h}[1]{{\hat #1}}</M>
<M>\newcommand{\v}[1]{{\mathbf #1}}</M>
<M>\newcommand{\hv}[1]{{\hat{\mathbf #1}}}</M>
<M>\newcommand{\col}{{\mathcal C}}</M>
<HEAD1>Further explanation for Video 38</HEAD1>
The video says that in the Gauss-Markov model 
<D>\v y = X\v \beta + \v \epsilon
\text{ with } \v \epsilon \sim N_n(\v 0, \sigma^2 I),</D> 
an unbiased estimator for <M>\sigma^2 </M> is 
<D>
\h \sigma^2 = [[\|\v y-X \hv \beta \|^2][n-r(X)]]. 
</D>

<HEAD2>Why is there <M>n-r(X)</M> in the denominator of <M>\h
\sigma^2</M>?</HEAD2>
Of course, we may just provide a straightforward proof
that <M>E\h (\sigma^2) = \sigma^2.</M> But that won't provide
much motivation as to why <M>n-r(X)</M> is a "natural"
choice. So, instead, we shall proceed step by step.

<HEAD3>Step 1</HEAD3>
If I give you <M>Y\sim N(0,\sigma^2),</M> and ask you to come up
with an unbiased estimator for <M>\sigma^2,</M> you will readily
come up with <M>Y^2.</M>
<P/>
Now let's take it to higher dimensions: <M>\v Y\sim N_d(\v 0,
\sigma^2 I).</M> What will be an unbiased estimator
for <M>\sigma^2 </M> here?
<P/>
Again, applying the same idea to each of the components of <M>\v
Y</M>, you will get <M>d</M> unbiased
estimators, <M>Y_1^2,...,Y_d^2.</M> Of course, you will combine
them in the natural way to utilise the entire vector and get 
<D>
[[1d]]\sum Y_i^2
</D>
as an unbiased estimator of <M>\sigma^2.</M> This is just 
<D>
[[\|\v Y\|^2][d]].
</D>
Thus, you see dividing the squared norm by the dimension gives
you an unbiased estimator of <M>\sigma^2.</M>

<HEAD3>Step 2</HEAD3>
Again consider <M>\v Y\sim N_d(\v 0, \sigma^2 I).</M> Now I also
give you a subspace <M>V</M> of <M>\rr^d.</M> Let <M>dim(V) =
k.</M> Let the (orthogonal) projection of <M>\v Y</M> on <M>V</M>
be <M>\v Y_1</M>. Can you come up with an unbiased estimator
of <M>\sigma^2 </M> based on <M>\v Y_1</M> alone?
<P/>
Possibly you have guessed the answer:
<D>
[[\|\v Y_1\|^2][k]].
</D>
Yes, you're are right, but let's understand why it works. For this a little linear
algebra recap would help. Take an ONB <M>\{\v v_1,...,\v
v_k\}</M> of <M>P.</M> Then do you see that 
<M>\|v Y_1\|^2 = \sum_1^k(\v v_i\bullet \v Y)^2?</M> 
This is because each <M>\v v_i\bullet \v Y</M> gives the length
of the component of <M>\v Y</M> along <M>\v v_i.</M> 
<P/>
If you find it hard to visualise, consider this example:
<Q> <M>\v Y
= (x,y,z)\in\rr^3</M> and <M>P</M> is the <M>xy</M>-plane with
ONB <M>\{(1,0,0), (0,1,0)\}.</M> Then <M>\v Y_1 = (x,y,0).</M> So 
<D>
\|\v Y_1\|^2 = x^2 + y^2 + 0^2 = x^2 + y^2 =
((1,0,0)\bullet(x,y,z))^2 + ((0,1,0)\bullet(x,y,z))^2.
</D>
</Q>
In other words, <M>\|\v Y_1\|^2 = \|\hv Y\|^2</M>, where <M>\hv Y
= (\v v_1\bullet \v Y,...,\v v_k\bullet \v Y).</M> Just a word of
warning here: <M>\v Y_1</M> is not the same as <M>\hv Y</M> (as
their lengths differ). But their norms are equal. Just
as <M>(x,y,0)</M> and <M>(x,y).</M>
<P/>
We may write <M>\hv Y</M> as <M>P\v Y,</M> where <M>P</M> is
a <M>k\times d</M> matrix with <M>\v v_i</M>'s as its
rows. Since <M>\{\v v_1,...,\v v_k\}</M> is an ONB, hence <M>P P'
= I.</M> (But <M>P' P </M> need not be <M>I</M>!)
So <D>\hv Y \sim N_k(\v 0, \sigma^2 P P') =  N_k(\v 0, \sigma^2
I).</D>
Thus, we are again in our familiar setting with <M>[[\|\hv
Y\|^2][k]]</M> as an unbiased estimator of <M>\sigma^2.</M>

<HEAD3>Step 3</HEAD3>
So far we were working with mean <M>\v 0.</M> Now let's allow a
general mean vector:
<D>
\v Y\sim N_d(\v \mu, \sigma^2 I).
</D>
Now unfortunately, even the one dimensional case breaks down,
because if <M>Y\sim N(\mu, \sigma^2),</M> then <M>E(Y^2) =
\mu^2+ \sigma^2,</M> which is not <M>\sigma^2</M> if <M>\mu\neq 0.</M>
<P/>
But just suppose that we take a subspace <M>V</M> of <M>\rr^d</M>
as before. And <M>\v \mu</M> is orthogonal to <M>V.</M> Then if
we construct <M>P</M> as before (using ONB of <M>V</M>),
then <M>P\v \mu = \v 0.</M> So 
<D>
\hv Y \sim N_k(P \v \mu, \sigma^2 P P') = N_k(\v 0, \sigma^2 I).
</D>
Aha! So we are back to the original case again! So
again <M>[[1k]]\|\v Y_1\|^2\equiv [[1k]]\|\hv Y\|^2</M>
estimates <M>\sigma^2 </M> unbiasedly!

<HEAD3>Step 4</HEAD3>
Now just observe that we are in the set up of step 3 in the
original linear model problem. We have <M>X \v \beta </M> in
place of <M>\v \mu.</M> Also the role of <M>V</M> is played
by <M>(\col(X))^\perp,</M> whose dimension is <M>k = n-r(X).</M>
Now <M>\v \mu = X \v \beta \in \col(X)</M> and so is indeed
orthogonal to <M>V.</M> 

 
</NOTE>@}
