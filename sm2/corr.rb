@{<NOTE>
<M>\newcommand{\v}{\vec}</M>
<HEAD1>Multiple correlation</HEAD1>
<B>Set up:</B> We have <M>p+1</M> variables,
<Q>
<M>X_1,...,X_p</M> and <M>Y,</M>
</Q>
and <M>n</M> observations on each. Multiple correlation is a way
to express mathematically the "strength of linear relation
between <M>Y</M> and <M>\{X_1,...,X_p\}.</M>"
We shall present the idea in two equivalent ways.

<HEAD2>First formulation</HEAD2>
We regress (linearly using least squares) <M>Y</M>
on <M>X_1,...,X_p.</M> In other words, we
find <M>a_0,a_1,...,a_p</M> such that 
<M>\|Y-a_0-a_1 X_1-\cdots - a_p X_p\|^2</M> is minimised. 
If the minimum is attained at <M>\hat a_i</M>'s, then we define
the best fit as 
<D>
\hat Y = \hat a_0 + \hat a_1 X_1+\cdots\hat a_p X_p.
</D>
Then multiple correlation between <M>Y</M>
and <M>\{X_1,...,X_p\}</M> is defined as <M>cor(Y,\hat Y),</M>
the product-moment correlation between <M>Y</M> and <M>\hat
Y.</M>

<HEAD2>Second formulation</HEAD2>
We
find <M>a_0,a_1,...,a_p</M> such that 
<M>cor(Y,a_0+a_1 X_1+\cdots + a_p X_p)</M> is maximised. 
This maximum correlation is the multiple correlation.
<HEAD2>A little simplification</HEAD2>
Since both the formulations work with product-moment correlation,
which is invariant under translation (i.e., does not change if
some constants are added to the variables), we might as well
centre each variable first, and drop the intercept
terms. Henceforth, we shall assume that all the variables,
the <M>X_i</M>'s as well as <M>Y</M>, are centred (i.e., have
zero mean).  

<P/>
Then in the first formulation we shall fit 
<D>
\hat Y =  \hat a_1 X_1+\cdots\hat a_p X_p,
</D>
while, in the second, we shall maximise 
<M>cor(Y,a_1 X_1+\cdots + a_p X_p)</M>.
<P/>
There is one conceptual advantage of working with the centred
variables. The correlation between two centred variables <M>X</M>
and <M>Y</M> with values <M>\v x = (x_1,...,x_n)</M> and <M>\v y
= (y_1,...,y_n)</M> is 
<D>
[[\sum x_i y_i][\sqrt{\sum x_i^2\sum y_i^2}]] = [[\langle \v x,\v
y\rangle][\|\v x\|\cdot\|\v y\|]],
</D> 
 which is <M>\cos \theta,</M> where <M>\theta </M> is the "angle"
 between <M>\v x</M> and <M>\v y.</M>

<HEAD2>Equivalence between the two formulations</HEAD2>
We shall see this pictorially. 
<CIMG web="corrpic.png"/>
Maximising <M>\cos \theta </M> is equivalent to
minimising <M>\sin \theta </M>, which is equivalent to minimising
the height (since the hypotenuse is fixed). 

<HEAD2>Simple properties of multiple correlation</HEAD2>
<THM>
Multiple correlation must lie in <M>[0,1].</M> 
</THM>
<PF>
Clearly, must be in <M>[-1,1],</M> since it is a product-moment
correlation. The second formulation shows that it cannot be
negative, because if the maximum correlation is 
<D>
cor(Y,a_1 X_1+\cdots +a_p X_p) < 0,
</D>
then 
<D>
cor(Y,-a_1 X_1-\cdots -a_p X_p) > 0 
</D>
So we have 
<D>
cor(Y,-a_1 X_1-\cdots -a_p X_p) > cor(Y,a_1 X_1+\cdots +a_p X_p), 
</D>
contradicting the claim that <M>cor(Y,a_1 X_1+\cdots +a_p
X_p)</M> is the maximum correlation.
</PF>

<HEAD2>Coefficient of determination</HEAD2>

The square of the multiple correlation is called the coefficient
of determination. As the above diagram shows this
is <M>1-[[\|Y-\hat Y\|^2][\|Y\|^2]]</M> in the centred case. So
in terms of the uncentred variables, the coefficient of
determination is 
<D>
R^2 = 1-[[\sum (y_i-\hat y_i)^2][\sum(y_i-\bar y)^2]].
</D>
It is basically the <M>\cos^2 \theta = 1-\sin^2 \theta </M> identity.
 
<P/>
As the multiple correlation is always non-negative, <M>R^2</M>
contains as much information as the multiple
correlation. Somehow, <M>R^2</M> is used more popularly than
multiple correlation.

<HEAD2>Beware using <M>R^2</M> for model selection</HEAD2>
A common misuse of <M>R^2</M> is to compare between different
models for the same data. We shall illustrate this with an
example of polynomial regression.

<R>
set.seed(1254235)
x = (-3):3
y = x*x + rnorm(7,sd=2)
plot(x,y)
fit1=lm(y~x)
fit2=lm(y~x+I(x^2))
fit3=lm(y~x+I(x^2)+I(x^3))
fit4=lm(y~x+I(x^2)+I(x^3)+I(x^4))
fit5=lm(y~x+I(x^2)+I(x^3)+I(x^4)+I(x^5))
fit6=lm(y~x+I(x^2)+I(x^3)+I(x^4)+I(x^5)+I(x^6))
</R>
Then we have
<R>
> summary(fit1)$r.sq
[1] 0.007768352
> summary(fit2)$r.sq
[1] 0.9692956
> summary(fit3)$r.sq
[1] 0.9732164
> summary(fit4)$r.sq
[1] 0.9835701
> summary(fit5)$r.sq
[1] 0.9902857
> summary(fit6)$r.sq
[1] 1
</R>
Clearly, picking the degree corresponding to the
maximum <M>R^2</M> is a bad idea, since <M>R^2</M> can only
increase as the degree increases (think of the second
formulation). So it will always hit 1 when the degree is one less
than the sample size (the best polynomial of that degree is just
the polynomial that passes <I>exactly</I> through all the points).
 
</NOTE>@}
