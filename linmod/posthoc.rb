<NOTE>
@{<E>
<M>\newcommand{\k}[1]{\chi^2_{(#1)}}
\newcommand{\v}{\vec}
\newcommand{\h}{\hat}
\newcommand{\hv}[1]{\hat{\vec#1}}</M>
<HEAD1>Multiple comparisons</HEAD1>
Let's start with an example.

<EXM>We are testing performance of 4 different fertilisers using
a 1-way layout. We have 20 more-or-less similar plots. We have
randomly partitioned them into 4 groups consisting of 5 plots each.
The plots have been numbered as <M>(i,j)</M>
with <M>i=1,...,4</M> and <M>j=1,...,5.</M>, where <M>i</M>
denotes the fertiliser used. The model is 
<D>
y_{ij} = \mu_i + \epsilon_{ij},
</D>
where  <M>\epsilon_{ij}\sim N(0,\sigma^2).</M>
<P/>

The first question that we ask is here is: do the fertilisers
make any difference to the yield? This corresponds to the hypothesis:
<Q>
<M>H_0: \mu_1=\cdots =\mu_4.</M> 
</Q>
This is basically asking if there
is at least one pair <M>i_1\neq i_2</M> such that <M>\mu_{i_1}\neq \mu_{i_2}.</M>
But the ultimate  question for the farmer will be to 
identify all such pairs. So now we are
trying to test all the following hypotheses:
<Q>
<M>H_{0i_1i_2}: \mu_{i_1}=\mu_{i_2}</M> for <M>i_1\neq i_2\in\{1,2,3,4\}.</M>
</Q>
So we have to perform <M>{4\choose2} = 6</M> tests. 
</EXM>

This is one example of multiple comparisons. In the general set
up we have <M>p</M> null hypotheses, <M>H_{0i},</M> for <M>i=1,...,p.</M>
<P/>
We want to design a statistical procedure that will come up with
decisions to accept or reject these <M>p</M> null hypotheses.
<P/>
We shall be given a number <M>\alpha\in(0,1).</M> We must
guarantee that our statistical procedure is such that if all
the <M>H_{0i}</M>'s are true, then the chance of rejecting at
least one of them is <M>\leq \alpha.</M> This probability is
called the <B>experimentwise error rate</B>, and is the analog
of <M>P(</M>type I error<M>)</M> in case of usual hypothesis testing.
Different procedures have been suggested in the literature. We
discuss a few of them here.

<HEAD2>Fisher's Least Significant Difference</HEAD2>
Fisher suggested a two stage procedure: In the  first stage we test at level <M>\alpha</M>
<Q><M>H_0: </M> all
the <M>H_{0i}</M>'s are true.</Q>
If this test accepts <M>H_0,</M> then accept all the
individual <M>H_{0i}</M>'s, and there is no need for the second stage.

<P/>
If this test rejects <M>H_0,</M> then in the second stage we test each
individual <M>H_{0i}</M> separately  at level <M>\alpha,</M> and
report the decisions. In the linear models context,
each <M>H_{0i}</M> is typically about equality of
two coefficients. These pairwise comparisons are done using
2-sample <M>t</M>-test  under the homoscedastic
set up (same <M>\sigma^2</M>). This <M>\sigma^2</M> is
estimated using the <I>entire</I> data.
<P/>
It is easy to see that this procedures indeed keeps the
experimentwise error rate <M>\leq \alpha.</M>
Consider the event that at least one <M>H_{0i}</M> has been
rejected. This means <M>H_0</M> was rejected in the first
stage. This itself has probability <M>\leq \alpha.</M> 

<P/>
This procedure occasionally produces counterintuitive result: it
is possible that <M>H_0</M> is rejected in the first stage, but
then in the second stage <I>all</I> the <M>H_{0i}</M>'s get
accepted! 

<HEAD2>Bonferroni method</HEAD2>
Test each <M>H_{0i}</M> at level <M>[[\alpha][p]],</M> and report
the decisions. 

<P/>
To see that the experimentwise error rate is <M>\leq \alpha</M>
in this procedure, let <M>A_i</M> be the event that <M>H_{0i}</M>
is rejected. 
<P/>
Now the event that at least one <M>H_{0i}</M> has been rejected
is <M>\cup_i A_i.</M>
<P/>
By Bonferroni inequality <M>P(\cup_i A_i) \leq \sum_i P(A_i).</M>
<P/>
If all the <M>H_{0i}</M>'s are true, then each <M>P(A_i)\leq [[\alpha][p]].</M>
<P/>
Hence the result.

<HEAD2>Tukey's Honest Significant Difference procedure</HEAD2>
<I>This procedure is only for a special type of multiple
comparisons.</I> Here we have <M>k</M> independent random
variables <M>y_i\sim N(\mu_i,\sigma^2)</M> for <M>i=1,...,k.</M>
Also, we have some estimator <M>S^2</M> of <M>\sigma^2,</M> that
is independent of the <M>y_i</M>'s, and 
<D>
[[r S^2][\sigma^2]]\sim\k{r},
</D>
for some <M>r.</M>
<P/>
Our aim is to compare all pairs of <M>\mu_i</M>'s, i.e.,
testing <M>H_{0ij}:\mu_i = \mu_j</M> for all <M>i\neq j\in\{1,...,k\}.</M> 
<P/>
Tukey's method uses the <B>Studentised range</B>
<D>
Q = [[\max y_i-\min_i y_i][S]].
</D>
The method crucially depends on the fact that under <M>H_0: \mu_1
= \cdots = \mu_k,</M> the 
distribution of <M>Q</M> is free of <M>\sigma^2</M> and the (unknown) common value of
the <M>\mu_i</M>'s. This distribution is denoted
by <M>Q(k,r),</M> and its quantiles have been tabulated.
We reject <M>H_{0ij}</M> if 
<D>
[[|y_i-y_j|][S]] > Q(1-\alpha,k,r).
</D>
To see why this procedure keeps the experimentwise error
rate <M>\leq \alpha,</M> we reason as follows.
<P/>
Suppose that all the <M>H_{0ij}</M>'s are true. Then <M>H_0</M>
must be true. If some <M>H_{0ij}</M> is rejected, then we must be
having <M>[[|y_i-y_j|][S]] > Q(1-\alpha,k,r).</M>
<P/>
But clearly 
<D>
Q \geq [[|y_i-y_j|][S]].
</D>
Hence we must also have <M>Q > Q(1-\alpha,k,r).</M> This event
has probability <M>\alpha</M> under <M>H_0.</M>

<P/>
The set up under which Tukey's method works may seem a contrived
one. However, that's what we need for multiple comparisons in
linear models. The following example illustrates this in case of
2-way ANOVA model.

<EXM>
Our model is
<D>
y_{ijk} = \mu+\alpha_i+\beta_j + \epsilon_{ijk},
</D>
where  <M>\epsilon_{ijk}\sim N(0,\sigma^2)</M>
for <M>i=1,...,I</M> and <M>j=1,...,J</M> and <M>k=1,...,K.</M>
We make the estimability assumptions <M>\sum \alpha_i = 0</M> and <M>\sum \beta_j = 0.</M>
<P/>

We are trying to test <M>H_{0j_1j_2}: \beta_{j_1}=\beta{j_2}</M>
for all pairs <M>j_1,j_2.</M>
<P/>
To apply Tukey's procedure here we notice that 
<D>
\b y_{.j.}\sim N(*(\mu+\beta_j, [t[\sigma^2][IK]] )*).
</D>
Then <M>\b y_{.j.}</M>'s are all independent. Also <M>MSE</M> is
an estimator of <M>\sigma^2,</M> which is independent of
the <M>\b y_{.j.}</M>'s.

<P/>
Hence we can use Tukey's procedure.

</EXM>

<HEAD2>Scheffe's procedure</HEAD2>
This procedure is very specific for linear models. Here we assume
that all the component null hypotheses are linear. Together, they
determine a subspace of the parameter space. For instance, the
parameters are <M>\mu_1,\mu_2,\mu_3,</M> and the two component
null hypotheses are <M>H_{01}:\mu_1=\mu_2</M>
and <M>H_{02}:\mu_2=\mu_3,</M> then the subspace determined by
them is <M>\{(\mu_1,\mu_2,\mu_3)~:~\mu_1=\mu_2=\mu_3\}.</M>
<P/>
If we add the additional null
hypothesis <M>H_{03}:\mu_1=\mu_3,</M> the subspace will remain
the same. In fact, you may add any number of additional null
hypotheses of the form <M>H_{0k}:\v\ell'\v \mu =0</M>
where <M>\vec{\mathbb1}'\v\ell = 0,</M> and still not change the subspace. 
<P/>
In general, the set up for Scheffe's procedure starts with a
subspace, <M>V,</M> of the parameter space. Then the component
hypotheses are all the null hypotheses of the form <M>H_{0\v\ell}:\v\ell'\v \beta = 0</M> such that <M>\v \beta\in V\implies
\v\ell'\v \beta = 0,</M> and <M>\v\ell' \v\beta </M> is estimable.
<P/>
We reject <M>H_{0\v \ell}</M> if 
<D>
[[SS(\v \ell' \v\beta)/dim(V)][MSE]] \ge F(1-\alpha,dim(V),
\text{error df}).
</D>
Here the <M>SS(\v\ell' \v \beta)</M> denotes the sum of squares
(i.e., <M>RSS_0-RSS</M>) for testing <M>H_{0\v\ell}.</M> 
<P/>

The proof of why this keeps the experimentwise error rate <M>\le
\alpha</M> is somewhat lengthy, and may be found in Christensen
(Theorem 5.1.1 and the discussion following it).

<EXM>
Suppose that we are in the 1-way ANOVA model:
<D>
y_{ij} = \mu_i + \epsilon_{ij},
</D>
for <M>i=1,...,k</M> and <M>j=1,...,t.</M>
<P/>
We are intereseted in the subspace <M>\mu_i</M>'s all same. If we
call this <M>V,</M> then <M>dim(V) = 1.</M> Here is a
typical component hypothesis: <M>\mu_1=\mu_2.</M> 
<P/>
To test this we use the test statistic
<D>
F = [[SS(\mu_1-\mu_2)/1][MSE]],
</D>
where <M>SS(\mu_1-\mu_2)</M> is obtained as <M>RSS_0-RSS.</M>
The <M>RSS_0</M> is computed by maerging the first two classes.
<P/>
 
We reject the null hypothesis if <M>F>F(1-\alpha,1,</M>error df<M>).</M>
</EXM>
<HEAD2>Using R</HEAD2>
R is not particularly strong about multiple comparison. It does
provide some of these tests in 3rd party packages. The only
multiple comparison provided in base R is  Tukey's
procedure. Unfortunately, it does not work with
the <CODE>lm</CODE> function. Instead it requires the model to be
fit using the <CODE>aov</CODE> function (which actually
uses <CODE>lm</CODE> behind the scene, but packages and prints
the output in a different form).

<P/>
The <CODE>qtukey</CODE> function finds the quantiles for
the <M>Q</M> distribution:
<R>
qtukey(0.90,4,3)
</R>
Possible a CDF plot would help to visualise the distribution
better:
<R>
x = seq(0,10,len=100)
y = ptukey(x,4,3)
plot(x,y,ty='l')
</R>
The function <CODE>TukeyHSD</CODE> performs the test (or rather
finds the confidence intervals):
<R>
 summary(fm1 <- aov(breaks ~ wool + tension, data = warpbreaks))
     TukeyHSD(fm1, "tension", ordered = TRUE)
     plot(TukeyHSD(fm1, "tension"))
</R>
The above example has been taken from the online R help. 
<DISQUSE id="lmposthoc"
url="http://www.isical.ac.in/~arnabc/linmod/posthoc.html"/>
</E>@}
</NOTE>
