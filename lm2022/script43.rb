@{<NOTE>
<HEAD1>glm1: The probit problem</HEAD1>
We shall now start discussing Generalised Linear Models (GLM). In
linear model, as we have already seen, we had this box diagram. 

There were some inputs, categorical or continuous, a random error
input, which as continuous. The output was always asumed to be
continuous. However, in many situations we need the output to be
discrete, say a categorical or a count variable. That is where we
need a Generalised Linear Model.

<HEAD2>A little history</HEAD2>
Possibly, the very first use of generalised linear model was made
by D J Finney, who was a toxicologist, a scientist investigating
poison. He wanted to measure the strength of a poison
quantitatively. For this he used lethal dose for a poison, the minimum dose of
the poison needed to kill. Of course, the dose depended not only
on the poison, but also on what he was trying to kill, mice or
rabbits or human beings. So ideally we should talk about the
lethal dose of a poison for a particular population. Even within
a homogeneous population there are bound to be some random
variations among the minimum amounts needed for the different
members. Thus, lethal dose is a random variable, just as height
and blood pressure are random variables. So a meaningful way to
capture the strenght of a poison is the expected value of this
random variable. 

Finney worked with a population of mice, and took a random sample
out of that population. Let the lethal doses of the poison for
these mice be 
<D>
X_1,...,X_n.
</D>
He assumed that these are IID <M>N(\mu,\sigma^2)</M> (We shall 
 relax the Gaussianity assumption later.) Then <M>\mu </M>
 measures the <B>potency</B> of the poison (for that population),
 and <M>[[1][\sigma^2]]</M> measures the <B>reliability</B> of
 the poison.

This naturally leads to the apparently simple process: Grab a
sample of mice, find the lethal dodes for them to get a random
sample, then estimate <M>\mu </M> and <M>\sigma^2.</M> Pretty
simple, huh?

All that we haveto do is this: start applying the poison drop by
drop to the first mouse, and stop the moment it dies, and record
the dose administered. That is <M>X_1.</M> Now repeat with the
other mice. 

But this experiment, howsoever simple it may sound, is
nevertheless impossible to be carried out in practice. The
trouble is with the condition "stop the moment it dies". Death of
a mouse (or of any other living being under the continued
application of a poison) is not an easily discernible
event. After a stage the mouse goes into a coma state, and it is
difficult to judge if it is dead or alive. An objective decision
may be obtained only by a lengthy procedure, for which you have
to discontinue the poison injection. Say this death detection
takes 10 minutes, after which we see that the mouse is still
living. Still we cannot resume injecting further poison into the
poor creature, as during those 10 minutes the purgatory system of
the mouse has worked frantically and have removed part of the
poison from its blood stream. So the effective amounf of poison
still in its blood is unknown to the experimenter. 

This is a serious  problem   with <B>bio-assay</B>, i.e.,
assesing the effect of chemicals on a living being. Due to this
problem, all an experimenter can really do in practice with a
mouse is to administer a predetermined a dose of poison, and then
detect if the mouse is still living or not. 

Thus, Finney was set back by the problem of not being able to
observe the <M>X_i</M>'s, which he needed to estimate the
parameters. Such random quantities that cannot be measured
directly are called <B>latent variables</B>.

<HEAD1>glm2: The probit solution</HEAD1>
Finney devised a clever work-around, which was the first instance
of a generalised linear model. Here is his scheme.

He took a grid of values for the dose. Then for each dose he
took, say, <M>n</M> mice. To each of these he applied that dose, and
counted the number, <M>K</M>, of deaths. Then 
<M>[[Kn]]\approx P(X\leq d) = \Phi(*([[d-\mu][\sigma]])*),</M> where <M>d</M> is the dose,
and <M>X</M> is the random variable denoting the lethal
dose. 

He did this for each dose <M>d_i,</M> and got corresponding
values <M>K_i.</M> 

Thus, he had <M>\Phi ^{-1} (*([[K_i][n]])*)\approx
[[d_i-\mu][\sigma]],</M>  which is a linear graph. So he
plotted <M>\Phi ^{-1} (*([[K_i][n]])*)</M>'s
against <M>d_i</M>'s, fitted a least squares line, and estimated
the potency and reliability based on that.

Finney called the function <M>\Phi ^{-1} (\cdot)</M>
the <B>probit function</B> (actually he used the term for  <M>\Phi
^{-1} (\cdot)+5</M>, the 5 being added to avoid negative numbers, which were
difficult to handle in those pre-computer days). In modern
parlance, we call <M>\Phi ^{-1} (\cdot)</M> the probit function,
and the statistical method used by Finney came to be known as the
Probit method.  
  
<HEAD1>glm3: Social impact</HEAD1>
This technique has now been made more sophisticated, and is used
frequently for bio-assay to test safety of eye cosmetics. The
harmful cemicals are applied to the eyes of rabbits, and an
analysis like this is performed to assess the safe
level. Thousands of rabbits turn blind every year due to this
abominable practice. 

<EXR>
Consider the following data obtained by an experimental set up as
described above. 
<PRE>
| Dose | Number of mice | Number of deaths |
|------+----------------+------------------|
|  2.0 |            100 |                2 |
|  2.1 |            100 |                5 |
|  2.2 |            100 |               34 |
|  2.3 |            150 |               75 |
|  2.4 |            100 |               78 |
|  2.5 |             50 |               49 |
|------+----------------+------------------|
</PRE>
Estimate <M>\mu </M> and <M>\sigma^2</M> using Finney's method.  
</EXR>

<EXR>
Consider the same set up and data as above. But now use MLE. 
</EXR>

<HEAD1>glm4: R lab</HEAD1>
In this video we shall learn how to use R to fit a generalised
linear model.  
<PRE>
dose = 7:13                                   # The different doses
n = length(dose)                              # The no. of doses
propdeath = numeric(n)                        # Allocate memory
mat = c()
for(i in 1:n) {
    lethal = rnorm(100,mean=10)               # Simulate 100 lethal doses randomly
    dead = dose[i] >= lethal                  # Find which mice die
    mat = rbind(mat,cbind(dose[i],dead))      # Append 100 rows to the data matrix
    propdeath[i] = mean(dead)                 # Proportion of death for this dose.
}

plot(dose,propdeath)                          # A sigmoid plot
plot(dose,qnorm(propdeath))                   # Should be linear
lm(qnorm(propdeath)~dose)                     # Fitting a line
</PRE>


<HEAD1>glm5*: math formulation</HEAD1>
We start by casting the probit model in terms of our familiar
blackbox. Here each unit is a mouse. We have just one non-random input: dose, and one
binary output: death, which takes values "yes" and "no". We model
the input output relation as 
<Q>
death<M>\sim Bernoulli(\Phi (\alpha + \beta *</M>dose<M>)).</M>
</Q> 
This means "death" is a Bernoulli random variable (values 0 and
1, where 0 means, say, "no" and 1 means "yes"). Bernoulli
distribution has only one parameter, the probability of success,
which we take <M> \Phi (\alpha + \beta *  </M>dose<M>).</M>

<EXR>
Earlier we had used <M>\mu </M> and <M>\sigma^2 </M> as our
paramters. Now we are using <M>\alpha </M> and <M>\beta.</M> Can
you express <M>\alpha </M> and <M>\beta </M> in terms
of <M>\mu </M> and <M>\sigma^2?</M>
</EXR>

It is also quite possible to use some other CDF <M>F(\cdot)</M>
in place of <M>\Phi(\cdot),</M> if the latent <M>X_i</M>'s follow
that CDF. The most popular choice for <M>F(\cdot)</M> is
the <B>logistic</B> CDF:
<D>
F(x) = [[e^x][1+e^x]],~~x\in\rr.
</D>
The resulting method is called <B>logistic regression</B>, and 
is used a lot in the banking sector for credit risk
analysis. There the output is a binary variable indicating
whether a particular loan is a good loan or a bad one (i.e.,
whether it is going to be repaid or not), and the
inputs are all the prior information we have before giving the
loan.

<HEAD2>General form</HEAD2>

Here we shall learn about the general form of a generalised
linear model. As for a linear model, we have <M>n</M> cases, and
from each we have an output value and some input values. We
create an <M>n\times 1</M>  vector <M>\v y</M> from the outputs
and an <M>n\times p</M> matrix <M>X</M> from the inputs. 
 We need a way to link them up. For a linear model we said 
<D>
\v y = X \v \beta + \v \epsilon,
</D>
where <M>\epsilon_i</M>'s were <M>N(0,\sigma^2).</M> We may split
this specification into two parts:
<UL>
<LI><M>E(\v y) = X\v \beta  </M></LI>
<LI><M>\v y</M> has a normal distribution with dispersion <M>\sigma^2 I.</M></LI>
</UL>
For a generalised linear model we shall replace the first part
with <M>link(E(\v y)) = X\v \beta  </M>, where <M>link(\cdot)</M>
is some (possibly nonlinear) one-one function of our choice. It is called
the <B>link function</B>. In the probit model, the link function
was <M>\Phi ^{-1} (\cdot).</M> 

The second part of the model specifies the distribution of <M>\v
y.</M> In the probit model the distribution was Bernoulli. 

In the logistic regression model, the link was the inverse of the
logistic CDF, and the distribution was again Bernoulli. By the
inverse of the logistic CDF has a name. It is called
the <B>logit</B> function. 

<EXR>
Obtain a formula for the logit function by inverting <M>[[e^x][1+e^x]].</M>
</EXR>

If we use normal distribution and the identity function as the
link, then we get back the usual linear model.

<EXR>
Repeat the first exercise, but with logiic distribution instead of
normal distribution. That is, replace the standard normal CDF by
the logistic CDF 
<D>
F(x) = [[e^x][1+e^x]],~~x\in\rr.
</D> 
</EXR>

<EXR>
Repeat the second exercise using logistic distribution.
</EXR>


<HEAD1>glm6*: Using the glm function in R</HEAD1>
When we fit a linear model using R, we need to specify two
things: <M>\v y</M> and <M>X.</M> For a generalised linear model,
we need to specify two more things: the link function and the
distribution. These two are together  called the family in R. To
illustrate the usage let's simulate a probit data set as we had
done earlier:
<PRE>
dose = 7:13                                   # The different doses
n = length(dose)                              # The no. of doses
propdeath = numeric(n)                        # Allocate memory
mat = c()
for(i in 1:n) {
    lethal = rnorm(100,mean=10)               # Simulate 100 lethal doses randomly
    dead = dose[i] >= lethal                  # Find which mice die
    mat = rbind(mat,cbind(dose[i],dead))      # Append 100 rows to the data matrix
    propdeath[i] = mean(dead)                 # Proportion of death for this dose.
}
</PRE>
Next we convert "mat" into a dataframe:  
<PRE>
colnames(mat)=c('dose','death')
dat = data.frame(mat)
</PRE>
Finally we invoke the glm() function:
<PRE>
fit = glm(death ~ dose, dat, family = binomial(link='probit'))
abline(fit$coef)
</PRE>
</NOTE>@}
