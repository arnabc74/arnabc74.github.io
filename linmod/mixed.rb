<NOTE>
@{<E>
<M>\newcommand{\h}{\hat}</M>
<HEAD1>Mixed linear model</HEAD1>
<HEAD2>Motivation</HEAD2>
The main reason behind analysing <I>past</I> data is to be able to apply
our findings to similar <I>future</I> data. So any meaningful
analysis must depend on our idea about what the
typical <I>future</I> data are going to look like. The following
example will clarify this point.

<EXM>
We want to study the effect of smart class rooms on student
performances in Bengali medium schools in West Bengal. Five schools are asked to
participate in the study. Each school takes a random sample of 50
students, and assigns a random half of them to smart class rooms,
while the remaining half is taught using traditional class
rooms. After 3 months of study, the students are evaluated in a
common examination. The marks are the responses. So the
box-diagram is as follows.
<CIMG web="mixbox.png"/>
Here is a <LINK to="mix.txt">synthetic data set</LINK>.  The
following R session fits a 2-way ANOVA model without interaction
to it:
<R>
dat = read.table('mix.txt', head=T)
fit = lm(marks~., data = dat)
coef(fit)
</R>
The output looks like this:
<PRE>
(Intercept)    smartyes     schoolB     schoolC     schoolD     schoolE 
     58.984      10.672       9.680      20.580      -5.220       4.280 
</PRE>
How do you think we can use this report in the future? The
estimated <CODE>smartyes</CODE> may be used by other schools to
measure effectiveness of smart class rooms. But who will care
about the
estimated <CODE>schoolB</CODE>,..., <CODE>schoolE</CODE>? The
schools themselves may have some limited interest in comparing
themselves with <CODE>schoolA</CODE>, but nobody else will care
about that. The 5 schools are just <I>some</I> 5 schools. They
are like a sample of size 5 from the population of all similar
schools. Does this mean that we should drop the school effect
from our consideration (i.e., just merge that with random error)?
No, that is not good either, because the random error part is due
to all assignable causes. But the variation between schools is
definitely assignable. While we do not care about the performances
of these <I>specific</I> schools, we do care about the
variability among the schools.
</EXM>

To reflect this idea we make the school effect a <B>random
effect</B>. 

<D>
y_{ijk} = \mu + \alpha_i + b_j + \epsilon_{ijk},
</D>
where the school effect <M>b_j</M>'s are
IID <M>N(0,\sigma^2_b).</M> The <M>\epsilon_{ijk}</M>'s are
IID <M>N(0,\sigma^2_\epsilon),</M> and are independent of
the <M>b_j</M>'s. Notice that <M>b_j</M>'s are not parameters any
more. This model has a new parameter <M>\sigma^2_b,</M> which
measures the school-to-school variation. 
<P/>
Since our model has both a <B>fixed effect</B>
(the <M>\alpha_i</M>'s) as well as a <B>random effect</B>
(the <M>b_j</M>'s), we call it a <B>mixed effects model</B>.

<HEAD2>Using R</HEAD2>
There are two R packages that will allow you to fit a mixed
effects model: <CODE>nlme</CODE> (non-linear mixed effects)
and <CODE>lme4</CODE> (linear mixed effects, version 4). The
latter is the more modern of the two, while former is far more
general (it can handle even some non-linearity). We shall
exclusively use the <CODE>nlme</CODE> package, as it allows
certain extra features that are useful in practice. Neither of
the two packages are installed by default in R. You'll need to
install the <CODE>nlme</CODE> package via:
<R>
install.packages('nlme') #Don't forget the quotes!
</R>
Once it is installed, we shall load the library, and invoke
the <CODE>lme</CODE> (linear mixed effects) function:
<R>
library(nlme) 
lme(marks ~ smart, random = ~1|school, data=dat)
</R>
Let's understand the somewhat wierd syntax of this function. Our
familiar <CODE>lm</CODE> function required the first argument to
be a formula object (i.e, a specification of the
"box diagram"). The second argument (optional) was the name of the
data set. The <CODE>lme</CODE> function is similar, except that
it requires <I>two</I> formula objects, the first one for the fixed
effects, the second one for the random effects. The fixed effects
part is just as in the <CODE>lm</CODE> function. The wierdness is
in the random effects part. R likes to think of the <M>b_j</M> as
a school-specific intercept term. For example, if you focus on
only the data from school 1, then model is 
<D>
y_{i1k} = \mu + \alpha_i + b_1 + \epsilon_{i1k},
</D>
where <M>b_1</M> is free of the running subscripts <M>i</M>
and <M>k.</M> This school-specific intercept term is denoted
by <CODE>1|school</CODE>. We have already specified the output
variable to the left of the <CODE>~</CODE> in the fixed effects
part. So we do not specify it any more. Thus, the random effects
part is just <CODE>~ 1|school</CODE>. The random effects part
must <I>always</I> start with a <CODE>~</CODE>. 
<P/>

Now, let's look at the output:
<PRE>
Linear mixed-effects model fit by REML
  Data: dat 
  Log-restricted-likelihood: -759.8349
  Fixed: marks ~ smart 
(Intercept)    smartyes 
     <RED>64.848</RED>      <BLUE>10.672</BLUE> 

Random effects:
 Formula: ~1 | school
        (Intercept) Residual
StdDev:    <GREEN>9.861265</GREEN> <MAGENTA>4.866941</MAGENTA>

Number of Observations: 250
 Number of Groups: 5 
</PRE>
Using our mathematical notation, this means:
<M>
\h \mu = </M><RED>64.848</RED>, <M>\h \alpha_1 = 0, \h \alpha_2
=</M> <BLUE>10.672</BLUE>,
and 
<M>
\h \sigma_e =</M> <MAGENTA>4.866941</MAGENTA>, <M>\h \sigma_b = </M><GREEN>9.861265</GREEN>.

<P/>

Note the rather ugly and counter-intuitive way <M>\h \sigma_b</M>
is presented in the output. 

<P/>
The output also mentions an estimation method
called <B>REML</B>. We have already learned
REML <LINK to="gls.html">earlier</LINK>. 

Essentially the same method may be adapted to the mixed effects
model:
<D>
y = X \beta + Z \gamma + \epsilon,
</D>
where dispersion matrices for <M>\gamma </M> and <M>\epsilon </M>
are, respectively, <M>D(\theta)</M> and <M>R(\theta).</M>
<P/>
REML still uses ML on <M>e = (I-P_X)y</M> (no role of <M>Z</M> here).
We again get 
<D>
\ell(\theta) = \log |\Sigma(\theta)| + w' \Sigma(\theta) ^{-1} w,
</D>
where <M>\Sigma (\theta) = Z D(\theta) Z' + R(\theta).</M> It is
numerical computation after that.
<HEAD1>Exercises</HEAD1>
<OL>
<LI>In a study related to poultry farming, we are interested in
seeing if playing soothing music has an effect on the size of
eggs laid by hens and ducks. A random sample of hens and ducks
are classified into two groups (one with and the other without
music). The following data are also collected about each bird: 
<UL>
<LI>hen or duck?</LI>
<LI>age</LI>
<LI>originating farm</LI>
<LI>number of eggs laid</LI>
</UL>
Which of these should be considered as mixed effects?
</LI>
<LI>Consider the mixed effect model
<MULTILINE>
y_{11} & = & \mu + a_1 + \epsilon_{11}\\
y_{12} & = & \mu + a_1 + \epsilon_{12}\\
y_{21} & = & \mu + a_2 + \epsilon_{21},
</MULTILINE>
where <M>a_1,a_2</M> are iid <M>N(0,\sigma^2_a)</M>
and <M>\epsilon_{ij}</M>'s are iid <M>N(0,\sigma^2_\epsilon).</M>
The <M>a</M>'s are independent of the <M>\epsilon </M>'s. Find
REML estimate of <M>\sigma^2_\epsilon </M> and <M>\sigma^2_a</M>
based on the data <M>y_{11} = 2.3,</M> <M>y_{12} = 2.5,</M> and <M>y_{21} = 3.0.</M>
</LI>
<LI>Write down the R syntax for <CODE>lme</CODE> to implement
the following mixed effects model:
<D>
y_{ijk} = \mu + a_i + \beta_j + g_{ij} + \epsilon_{ijk},
</D>
where <M>a_i</M>'s and <M>g_{ij}</M>'s are random effect
coeeficients and <M>\epsilon_{ijk}</M>'s are the error
terms. Let <M>i</M> denote the "row" effect and <M>j</M> denote
the "column" effect (i.e., you may use "row" and "column" as
variable names).
</LI>

<LI>Write the following LME model in mathematical notation:
<R>
lme(y ~ x:gender, ~1|college) 
</R>
Here <CODE>x</CODE> is a covariate, while <CODE>gender</CODE>
and <CODE>college</CODE> are factors.
</LI>

<LI>Consider the model 
<D>
y_{ij} = \mu + \alpha_i + \epsilon_{ij},
</D>
where <M>\epsilon_{ij}\sim N(0,\sigma^2)</M> for some
unknown <M>\sigma^2.</M> Will the ML estimator of <M>\sigma^2</M>
increase or decrease if the <M>\alpha_i</M>'s considered to be
random effects (iid <M>N(0,\sigma^2_a)</M> for some unknown <M>\sigma^2_a</M>)?
</LI>
</OL>
<DISQUSE id="lmmixed" url="http://www.isical.ac.in/~arnabc/linmod/mixed.html"/>
</E>@}
</NOTE>
