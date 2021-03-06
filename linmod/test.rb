
<NOTE>
@{<E>
<M>\newcommand{\k}[1]{\chi^2_{(#1)}}
\newcommand{\v}{\vec}
\newcommand{\h}{\hat}
\newcommand{\hv}[1]{\hat{\vec#1}}</M>
<HEAD1>Testing</HEAD1>
There are two types of testing that we want to do in the context
of linear models:
<UL>
<LI> Given a model we want to know if it is a good
fit or not.</LI>
<LI>Given a model that we already know to be a good fit, we want
to know if we can have a submodel that is also a good
fit. The type of submodel that we have in mind here is
where <M>E(\v y)</M> lies in some given <M>W\le \col(X).</M></LI>
</UL>

We address the latter question here. To understand what we are
going to do, here are a few examples. 

<COMMENT>
x = rnorm(50)
y = 1+x + rnorm(50)/4
png('image/quad.png')
plot(x,y)
(fit = lm(y~x+I(x^2)))
xgrid = seq(-3,3,len=100)
ygrid = cbind(1,xgrid,xgrid*xgrid)%*% fit$coef
lines(xgrid,ygrid)
dev.off()
</COMMENT>
<EXM>
Suppose that we have fitted a model <M>y_i = \beta_0 + \beta_1
x_i + \beta_2 x_i^2 + \epsilon_i.</M> The plot looks this:
<CIMG web="quad.png"/>
Then we wonder if the quadratic term is really needed or not. In
other words, we are trying to understand if the submodel <M>y_i =
\beta_0 + \beta_1 x_i + \epsilon_i</M> would do just as
well. Here <M>X</M> has three columns:
<D>
X = <MAT>
1 & x_1 & x_1^2\\
\vdots & \vdots & \vdots\\
1 & x_n & x_n^2\\
</MAT>,
</D>
and <M>W</M> is the span of the first two columns of <M>X.</M>
</EXM>

Here is another example.

<EXM>
In the 1-way ANOVA model <M>y_{ij} = \mu + \alpha_1 +
\epsilon_{ij}</M> we want to test <M>H_0:\alpha_2=2 \alpha_1.</M>
If we write 
<D>
\v \beta = <MAT>\mu\\ \alpha_1\\\alpha_2\\\vdots\\\alpha_p</MAT>,
</D>
then under <M>H_0</M> the vector becomes 
<D>
<MAT>\mu\\ \alpha_1\\2 \alpha_1\\\vdots\\\alpha_p</MAT> = 
B \v \beta,
</D>
where the <M>B</M> is just the identity matrix with the 3rd row
(the one corresponding to <M>\alpha_2</M>) replaced by <M>(0,2,0,...,0).</M>
<P/>
Hence the model under <M>H_0</M> is <M>\v y = XB\v \beta + \v \epsilon.</M>
<P/>
So here <M>W = \col(XB).</M>
</EXM>


The test procedure is intuitive:
<OL>
<LI>Fit the larger model (already known to be a good fit). The
<M>RSS</M> for this model gives us an yardstick about how much
error is accepable.</LI>
<LI>Next we fit the submodel, and find the <M>RSS</M> for
that. Of course, this must be <M>\ge</M> the <M>RSS</M> for the
full model.</LI>
<LI>We compare the increase in <M>RSS</M> to the acceptable
amount of <M>RSS</M> from step 1.</LI>
</OL>
This common sense procedure turns out to be also the LRT, as may
be seen quite easily as follows.

<P/>
The LRT rejects <M>H_0</M> for large values of 
<D>
[[\sup_{\Theta} L(\theta)][\sup_{\Theta_0} L(\theta)]].
</D>
In our case, <M>\theta = (\v\beta,\sigma^2)</M> and 
<D>
L(\theta) = (\sigma^2)^{-n/2} \exp[*[ -[[\|y-X \v\beta\|^2][2 \sigma^2]] ]*].
</D>
So 
<D>
\sup_{\Theta} L(\theta) = (*([[n][RSS]] )*)^{n/2}e^{-n/2},
</D>
and 
<D>
\sup_{\Theta_0} L(\theta) = (*([[n][RSS_0]] )*)^{n/2}e^{-n/2},
</D>
Hence
<D>
LR = (*([[RSS_0][RSS]] )*)^{n/2}.
</D>
So we reject <M>H_0</M> for large values
of <M>[[RSS_0][RSS]],</M> or, equivalently, large values
of <M>[[RSS_0][RSS]]- = [[RSS_0-RSS][RSS]].</M>

<HEAD2>Null distribution</HEAD2>
 In
order to carry this out in practice we need the null distribution
of the test statistic. We derive this below.

<HEAD3><M>\chi^2 </M> distribution</HEAD3>

Let <M>\v y\sim N_n(0,  I).</M> Then <M>\|\v y\|^2\sim \chi^2_{(n)}.</M>

<P/>
We shall take this as the definition of <M>\chi^2 </M>
distribution. We shall also use the notation <M>U \sim \sigma^2
\k{n}</M> to mean <M>[[U][\sigma^2]]\sim\k{n}.</M>



<P/>
Here is a basic fact that e shall use repeatedly:
<THM>
 If <M>\v y\sim
N_n(\mu,\Sigma),</M> then for any <M>A_{m\times n}</M> we
have <M>A\v y\sim N_m(A \mu , A \Sigma A').</M>
</THM>
In particular, if <M>A</M> is an orthogonal matrix,
and <M>\v y\sim N_n(\v 0, \sigma^2 I),</M> then <M>A\v y\sim
N_n(\v 0, \sigma^2 I),</M> as well. Thus, rotation does not
change the distribution of the components of a random vector with
 IID Gaussian components.
<THM>
If <M>\v y\sim N_n(0, \sigma^2 I)</M> and <M>V\le\rr^n,</M> then
<D>\|P_{V}(\v y)\|^2\sim \sigma^2 \k{r},</D>
where <M>r = dim(V).</M>
</THM>
<PF>Start with an ONB of <M>V.</M> Extend to an ONB
of <M>\rr^n.</M> Express <M>\v y</M> in this new basis. 
<P/>
In terms of matrices, this means creating an orthogonal
matrix <M>P</M> by stacking the ONB vectors as rows, and then
computing <M>P\v y.</M>
The first <M>r</M> components of this vector gives <M>P_V(\v y).</M>
<P/>
So <M>\|P_V(\v y)\|^2</M> is just the sum of squares of the
first <M>r</M> entries. Hence the result.
</PF>
<THM>
If <M>\v y\sim N_n(\mu, \sigma^2  I)</M> and <M>V\le\rr^n,</M>
and <M>\mu\in V^\perp,</M> then 
<D>\|P_{V}(y)\|^2\sim \sigma^2 \k{r},</D>
  where <M>r = dim(V).</M>
</THM>
<PF>Take <M>\v z = \v y-\v \mu.</M> Then <M>P_V(\v z) = P_V(\v
y-\v \mu) =
P_V(\v y)-P_V(\v \mu) = P_V(\v y).</M> Now apply the last theorem
to <M>\v z.</M></PF>


<THM>
If <M>\v y\sim N_n(0, \sigma^2 I)</M> and <M>U,V \le\rr^n</M> are
 mutually orthogonal,
 then <M>P_U(y)</M> and <M>P_V(y)</M> are
 independent.
</THM>

<THM>
If <M>y\sim N_n(\mu, \sigma^2 I)</M> and <M>V,W \le\rr^n</M> are
 mutually orthogonal, and <M>\mu\in V^\perp\cap W^\perp,</M>
 then <M>P_V(y)</M> and <M>P_W(y)</M> are
 independent.
</THM>
<PF>
Let <M>\v z = \v y-\v \mu.</M> Then <M>P_V(\v z) = P_V(\v y)</M>
and <M>P_W(\v z) = P_W(\v y).</M> Now apply the last theorem
with <M>\v z</M> in place of <M>\v y</M> there. 
</PF>

<HEAD3>Deriving the null distribution</HEAD3>
We shall consider the linear model 
<D>
\v y =X \v\beta + \v\epsilon,
</D>
where <M>\v \epsilon\sim N_n(0, \sigma^2 I).</M>

<THM>
<M>RSS\sim \sigma^2 \k{n-r(X)}.</M>
</THM>
<PF>
Here <M>\v y\sim N_n(X \v\beta, \sigma^2 I),</M> and <M>X \v\beta\in
\col(X).</M> Hence the result.
</PF>

<THM>If  <M>W\le\col(X),</M>
then <M>RSS_0-RSS = \|P_U(y)\|^2,</M>
where <M>U=W^\perp\cap \col(X).</M></THM>
<PF><I>(Simplification thanks to Sayak)</I>
<P/>

We can split <M>\col(X)</M> into two mutually orthogonal
subspaces: <M>W</M> and <M>U=W^\perp\cap
\col(X).</M><HIDE lab="sayak"><MSG>(Care!)</MSG><HIDDEN>
Start with any ONB of <M>W.</M> Extend to ONB of <M>\col(X).</M>
Then the span of the added vectors is <M>W^\perp\cap \col(X).</M>
<P/>
Beware the wrong argument: Since <M>W\oplus W^\perp = \rr^n,</M>
hence <M>\col(X) = \rr^n\cap \col(X) = (W\oplus W^\perp)\cap
\col(X) = (W\cap \col(X)) \oplus (W^\perp\cap \col(X)) = W\oplus
(W^\perp\cap \col(X)).</M> 
<P/>
This is wrong because <M>\cap</M> does distribute in general over <M>\oplus.</M>
</HIDDEN></HIDE>
<P/>
Thus, 
<D>
P_{\col(X)}(\v y) = P_U(\v y) + P_W(\v y),
</D>
and
<D>
\|P_{\col(X)}(\v y)\|^2 = \|P_U(\v y)\|^2 + \|P_W(\v y)\|^2,
</D>
i.e.,
<D>
\|\v y\|^2-RSS = \|P_U(\v y)\|^2+(\|\v y\|^2-RSS_0).
</D>
Hence the result.
</PF>

<THM>If  <M>W\le\col(X),</M> and <M>X \v\beta\in W,</M>
then <M>RSS_0-RSS \sim \sigma^2\k{r-s},</M>
where <M>r = r(X)</M> and <M>s = dim(W).</M></THM>
<PF>
From the last theorem, <M>RSS_0-RSS = \|P_U(\v y)\|^2.</M> Also <M>X \v\beta\in W\le U^\perp.</M>
<P/>
Hence the result.
</PF>

<THM>If  <M>W\le\col(X),</M>
then <M>RSS_0-RSS</M> is independent of <M>RSS.</M>
</THM>
<PF>
<M>RSS_0-RSS = \|P_U(\v y)\|^2</M> and <M>RSS =
\|P_{\col(X)^\perp}(\v y)\|^2.</M> 
<P/>
Now <M>U</M> and <M>\col(X)^\perp</M> are mutually orthogonal.
<P/>
Hence the result.
</PF>

<THM>If  <M>W\le\col(X),</M> and <M>X \v\beta\in W,</M>
then 
<D>[[(RSS_0-RSS)/(r-s)][RSS/(n-r)]]\sim F_{r-s,n-r},</D>
where <M>s = dim(W).</M></THM>
<PF>Follows from the theorems above.</PF>

<HEAD3>Finding dimension of <M>W</M></HEAD3>
In order to apply the theorem above we need to know two numbers,
the rank of <M>X</M> and the dimension of <M>W.</M>
We have already discussed how to guess the rank of <M>X</M>
intuitively. Here we shall discuss how to guess the dimension
of <M>W</M> when <M>H_0</M> is given in a special form. The most
common form of <M>H_0</M> is where we set some estimable
parametric functions equal to 0. For example, in the 1-way ANOVA
model <M>y_{ij} = \mu + \alpha_i + \epsilon_{ij},</M> we may
test <M>\alpha_1=2\alpha_2</M> or "all <M>\alpha_i</M>'s
equal". Such hypothese are of the general form <M>L \v \beta = \v 0,</M>
where <M>\row(L)\le\row(X).</M> 
Each row of <M>L</M> imposes a restriction on the parameter
space, and hence makes <M>W</M> smaller and smaller
inside <M>\col(X).</M> So intuitively we can hope that 
<D>
dim(W) = r(X) - r(L).
</D>
Indeed, this is the case. We shall now prove this formally. 

<THM>
Let <M>X_{n\times p}</M> and <M>L_{k\times p}</M> be any two
matrices such that <M>\row(L)\le\row(X).</M>  Consider <M>W\le\rr^n</M> defined as
<D>
W=\{X \v\beta ~:~ L \b \beta = \v 0\}.
</D>
Then <M>dim(W)=r(X)-r(L).</M>
</THM>
<PF>
<U>Case I: <M>X</M> full column rank</U>: 
<P/>
Think of <M>W</M>
as the image of <M>\nul(L)</M> under the linear
transformation <M>\v v\mapsto X\v v.</M> 
<P/>
Since <M>X</M> is full column rank, this linear transformation is
one-one. So the image has the same dimention as <M>\nul(L) =
p-r(L).</M> Since <M>r(X)=p,</M> hence the result follows.
<P/>
<U>Case II: <M>r(X) = r < p</M></U>:
<P/>
We shall reduce this case to the earlier one. The idea is to pick a
basis of <M>\col(X)</M> and work with that. 
<P/>
More precisely, we
take any rank factorisation <M>X =
BC.</M><HIDE lab="rf"><MSG>(What's that?)</MSG><HIDDEN>
By a rank factorisation <M>X=BC</M> we mean: taking any basis
of <M>\col(X)</M> and stacking them side by side to form a
matrix <M>B.</M> If <M>X</M> is <M>n\times p</M>
with <M>r(X)=r,</M> then <M>B</M> must be <M>n\times r.</M>
<P/>
Now, each column of <M>X</M> is a linear combination of the
columns of <M>B.</M> Collecting the coefficients of these linear
combinations to form a matrix <M>C,</M> we get <M>X_{n\times p} =
B_{n\times r}C_{r\times p}.</M>
<P/>
By construction <M>r(B)=r(X)=r,</M> and hence <M>B</M> is full
column rank. 
Interestingly,  <M>C</M> must be full row rank,
with <M>r(C)=r.</M> Also the rows of <M>C</M> form a basis of <M>\row(X).</M>
</HIDDEN></HIDE> Then <M>C</M> is a
full row rank matrix, whose rows form a basis of <M>\row(X).</M>
<P/>
Since <M>\row(L)\le\row(X),</M> hence <M> L = DC</M> for some
matrix <M>D.</M> Hence
<D>
W=\{BC \v\beta ~:~ DC \b \beta = \v 0\}.
</D>
Notice that <M>\col(C)=\rr^r.</M> So <M>\v \gamma\equiv C\v \beta </M> may be any
vector in <M>\rr^r.</M> Thus 
<D>
W=\{B \v \gamma  ~:~ D \b \gamma  = \v 0\}.
</D>
Case I applies here, since <M>B</M> is full column
rank. So we have 
<D>
dim(W) = r(B)-r(D) = r(X)-r(L),
</D>
as required.
</PF>

<HEAD1>Exercises</HEAD1>
<OL>
<LI>Consider the 1-way ANOVA model <M>y_{ij} = \mu_i +
\epsilon_{ij}</M>, where <M>i=1,...,I</M> and <M>j=1,...,J.</M> 
We are testing <M>H_0: \mu_1=0.</M> Show
that <M>RSS_0-RSS = J(\b y_{1.})^2.</M> Hence show that the LRT
test statistic is 
<D>
[[J(\b y_{1.})^2][\h \sigma^2]].
</D>
This is intuitive, as this is actually
<D>
(*([[\h \mu_1][\h SE(\h \mu_1)]])*)^2,
</D>
where <M>SE(\h \mu_1)</M> is the standard error of <M>\h
\mu_1,</M> and its estimator <M>\h SE(\h \mu_1)</M> is obtained
by plugging the unbiased estimator <M>\h \sigma^2</M> in place of <M>\sigma^2.</M>
Thus, we do not need to fit the submodel at
all.</LI>

<LI>We are working with <M>\v y = X \v \beta + \v \epsilon.</M>
Let <M>\v \ell\in\row(X).</M> Want to test <M>H_0: \v \ell' \v \beta =
0.</M> Show that the LRT test statistic is actually 
<D>
(*([[\v\ell'\h \beta][\h SE(\v\ell'\h \beta)]])*)^2,</D>
where 
<M>
\h SE(\v\ell'\h \beta)
</M>
is obtained by plugging the unbiased estimator <M>\h \sigma^2</M>
in place of <M>\sigma^2 </M> in the expression for <M>SE(\v\ell'\h \beta).</M>
</LI>

<LI>Same model as in the first problem. But now we want to test <M>H_0: \mu_1=
\mu_2.</M> Apply the last problem to perform the LRT without
having to fit a submodel.
</LI>


<LI>Consider the 1-way ANOVA model: <M>y_{ij} = \mu_i +
\epsilon_{ij}</M> where <M>i=1,...,5.</M> Is the LRT test
for <M>H0:\mu_1 = \mu_2</M> equivalent to the <M>t</M>-test
based on only the subset of the data belonging to the first two
groups? [Hint: Think intuitively before proceeding with
algebra.]</LI>

<LI>In each of the following cases you are given a linear model
and an <M>H_0.</M> You have to find the LRT test statistic.
<TABLE>
<TR>
<TH></TH><TH>Linear model</TH><TH><M>H_0</M></TH>
</TR>
<TR><TD>(a)</TD>
<TD><M>y_{ij} = \mu_i + \epsilon_{ij}</M></TD>
<TD>All <M>\mu_i</M>'s equal</TD>
</TR>

<TR><TD>(b)</TD>
<TD><M>y_{ij} = \mu +\alpha_i + \beta_j + \epsilon_{ij}</M></TD>
<TD>All <M>\alpha_i</M>'s equal</TD>
</TR>

<TR><TD>(c)</TD>
<TD><M>y_{ijk} = \mu +\alpha_i + \beta_j + \gamma_{ij}+\epsilon_{ij}</M></TD>
<TD>All <M>\gamma_{ij}</M>'s free of <M>i,j</M></TD>
</TR>

<TR><TD>(d)</TD>
<TD><M>y_{ijk} = \mu +\alpha_i + \beta_j + \gamma_{ij}+\epsilon_{ij}</M></TD>
<TD>All <M>\gamma_{ij}</M>'s free of <M>j</M></TD>
</TR>

</TABLE>

</LI>

<LI>Consider the 2-way ANOVA model <M>y_{ij} = \mu +\alpha_i +
\beta_j + \gamma_{ij}+\epsilon_{ij}.</M>
Someone asks you to test <M>\v\ell'\v \beta = 0</M> for some <M>\v\ell\in\row(X).</M>
Explain why this is impossible to do using LRT.
</LI>


<LI>Consider the linear model <M>\v y = X \v \beta + \v
\epsilon,</M> where <M>X</M> is <M>n\times p.</M>
Let <M>W\le\rr^n</M> and <M>\v c\in\rr^n</M> be such that <M>W+\v
c\seq\col(X).</M> Then show that
under <M>H_0: X\v \beta \in W+\v c,</M> we have <M>RSS_0-RSS\sim \sigma^2
\k{s-r},</M> where <M>s = dim(W).</M> [Here <M>RSS_0</M> is the
squared distance from <M>\v y</M> to <M>W+\v c.</M>
See <LINK to="image/affineprojmod.png">this picture</LINK> to
understand. Mathematically, it is the squared norm of the
residual when <M>\v y-\v c</M> is projected onto <M>W.</M>]</LI>

<LI>Use the result of the above exercise to explicitly derive a
test for <M>H_0: \alpha_1 = \alpha_2+1</M> in the linear
model <M>y_{ij}=\mu+\alpha_i+\epsilon_{ij}.</M>
Show that the test statistic may be conveniently written as 
<D>
(*([[\h \alpha_1-\h \alpha_2-1][\h SE(\h \alpha_1-\h \alpha_2)]])*)^2.
</D>
</LI>
</OL>
<DISQUSE id="lmtest"
url="http://www.isical.ac.in/~arnabc/linmod/test.html"/>
</E>@}
</NOTE>
