@{<NOTE>
<HEAD1>More on EM</HEAD1>
<HEAD2>A toy example</HEAD2>
We had seen one real life application of the EM algorithm in
genetics. The set up was rather complicated, which is only
natural, because simpler set ups can usually be dealt with
directly without resorting to the EM algorithm. Here we shall
discuss a toy example, where EM is not called for, but still can
be demonstrated. 

<HEAD3>The problem</HEAD3>
We have a random variable <M>Y</M> with <M>Binom(2,\theta)</M>
distribution, where <M>\theta\in[0,1].</M> This random variable is not directly observed. We
only observe <M>X,</M> where
<D>
X = <CASES>1<IF>Y=0</IF>0<ELSE/>.</CASES>
</D> 
The observed value of <M>X</M> is 0. We want to find the MLE
of <M>\theta</M> based on this data set.

<HEAD3>Direct solution</HEAD3>
Here <M>X\sim Bern(P(Y=0))\equiv Bern((1-\theta)^2).</M> Since we
have observed <M>X=0</M>, the likelihood function is
just <M>P(X=0),</M> i.e., 
<D>
L(\theta) = 1-(1-\theta)^2 =  \theta(2 - \theta). 
</D>
The MLE is <M>\hat \theta  = 1.</M>

<HEAD3>Solution using EM</HEAD3>
We consider <M>Y</M> as the complete data, and <M>X</M> as the
incomplete data. If we could observe <M>Y</M> then the likelihood
would have been 
<D>
L_Y(\theta) = \binom{2}{Y} \theta^Y (1-\theta)^{2-Y}
</D>
with log-likelihood 
<D>
\ell_Y(\theta) = \langle\text{terms free of }\theta\rangle +
Y\log \theta + (2-Y)\log (1-\theta). 
</D> 
This is a function, where <M>\theta</M> plays the role of the
dummy argument. To avoid confusing it with the true (unknown)
value of the parameter, we shall change the dummy argument
to <M>t,</M> say:
<D>
\ell_Y(t) = \langle\text{terms free of }t\rangle +
Y\log t + (2-Y)\log (1-t). 
</D> 
Notice that we cannot compute this function, since <M>Y</M> is
not known. We shall try to approximate it as best as we can in
light of the information that we do have (viz., <M>X</M>). For
this we shall compute the conditional expectation
of <M>\ell_Y(t)</M> given <M>X:</M>
<D>
E(\ell_Y(t)|X=0) = \langle\text{terms free of }t\rangle +
E(Y|X=0)\log t + (2-E(Y|X=0))\log (1-t). 
</D> 
Now it should not be difficult to check that 
<D>
E(Y|X=0) = E(Y|Y=1\text{ or }2) = 1\cdot P(Y=1|Y=1\text{ or }2) +
2\cdot P(Y=2|Y=1\text{ or }2) = [[P(Y=1)][1-P(Y=0)]] +
[[2P(Y=2)][1-P(Y=0)]]
  = [[2 \theta (1-\theta) + 2 \theta^2][1-(1-\theta)^2]] = [[2
\theta ][2 \theta - \theta^2]] = [[2][2-\theta]]. 
</D>
Hence 
<D>
E(\ell_Y(t)|X=0) = \langle\text{terms free of }t\rangle +
[[2\log t + 2(1-\theta)\log (1-t)][2-\theta]].
</D> 
Notice that it is a function of both <M>t</M> (the dummy
argument) and <M>\theta</M> (the true unknown value). We call
this <M>Q(t|\theta).</M> This was the E-step.
<P/>
Next we shall differentiate this  partially wrt <M>t</M> and
equate it to zero to get
<D>
[[1t]] = [[(1- \theta)][1-t]].
</D>
Solving 
<D>
t = [[1][2 -\theta]].
</D>
This is the M-step. 
<P/>
Now the EM algorithm consists of starting with
some <M>\theta_0</M> and repeatedly applying the iteration
<D>
\theta_{k+1} = [[1][2- \theta_k]].
</D> 
The sequence <M>(\theta_n)</M> converges to <M>1,</M>
which we already know to be the correct MLE.

<HEAD2>How EM algorithm was born</HEAD2>
The EM algorithm was born out of the need to handle missing
data. Most statistical methods are designed to deal with
rectangular data tables, where the rows are cases and columns are
variables. Sometimes certain entries of the table are missing,
destroying the rectangular structure. Here are different things
that people have tried to rectify the situation:
<OL>
<LI>Ignore the missing cases separately for each step in a
computation. For instance, suppose that you have 100 cases and two
variables <M>X</M> and <M>Y</M>. The cases <M>1,5</M> and 45 are
missing for <M>X,</M> while the cases 4 and 56 are missing
for <M>Y.</M> Now suppose that we want to compute the covariance
matrix. For this we shall need <M>\sum X</M>, <M>\sum
Y</M>, <M>\sum X^2</M>, <M>\sum Y^2</M> and <M>\sum XY.</M>
For <M>\sum X</M> and <M>\sum X^2</M> we shall skip cases 1, 5
and 45. For <M>\sum Y</M> and <M>\sum Y^2</M> we shall skip
cases 4, 56. For <M>\sum XY</M> we shall skip all the five
cases. This naive approach is very bad, as the computed matrix
may not even be nnd!</LI>
<LI>Skip all cases with even a single missing value. This is
better than the naive approach, but still very wasteful. Often
we have many variables in a data set that are of less
importance. These variables usually abound in missing values. It
would be a pity to throw away available values of the important
variables just because some less important variable is
missing.</LI>
<LI>A more meaningful idea is to impute the missing values,
i.e., somehow fill up the missing places with reasonable
values. If we have a model for the data, then one possible way
for this imputation is to replace the missing value by its
conditional expectation given the available data. While, this is
a nice idea, it calls for a large number of conditional
expectation computation, once for each missing value. If no
model is available, then imputation may be done using mean,
median or interpolation.</LI>
<LI>The EM algorithm is a direct descendant of the imputation
approach. Imagine a set up where you are to find MLE of some
parameter based on a rectangular data matrix. If the data matrix
has missing values, then the imputation approach fills those
places with imputed values, and puts the data into the
log-likelihood function, and proceeds with the maximisation. So
the steps are basically: compute lots of conditional
expectation, compute the log-likelihood, maximise. The EM
algorithm just reverses the first two steps: compute the
log-likelihood (with placeholder variables in the gaps), then
compute the conditional expectation of this log-likelihood, and
finally proceed with maximisation as before. The data
matrix with placeholder variables in the gaps was
called <I>complete data</I>, while the same matrix without the
placeholders was called the <I>incomplete</I> data.
</LI>
<LI>As the EM idea became popular, people noticed that the
idea is more generally applicable. All that we need is a
"complete data" such that the available data  is a function
of it. This is the form that we have studied.</LI>
</OL> 

</NOTE>@}
