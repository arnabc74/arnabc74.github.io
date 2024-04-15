@{<NOTE>
<M>\renewcommand{\v}{\vec}</M>
<HEAD1>Expectation-Maximisation algorithm</HEAD1>
The EM algorithm is an iterative method to compute MLE in certain
cases. 
<P/>
To find MLE we have to maximise the likelihood function, or
equivalently, the log-likelihood function, <M>\ell(\theta).</M> Depending on the
problem, 
 the log-likelihood may be easy or  complicated for
maximisation. The EM algorithm is useful for those situations
where the log-likelihood is complicated, but the data is a
many-to-one function of some data for which the log-likelihood is
easy. The EM maximises the easy  log-likelihood repeatedly to
indirectly maximise the complicated log-likelihood.

<P/>
There are many scenarios where this is applicable. We shall
discuss only one.
<COMMENT>
<EXM><B>Gaussian mixture</B>
Consider this random experiment: a coin with <M>P(H)=[[13]]</M>
is tossed. If a head is obtained, we generate <M>X\sim
N(\mu_1,1^2)</M> else we generate <M>X\sim N(\mu_2,2^2).</M> This
experiment is performed in IID fashion  <M>n</M> times, resulting
in the data <M>X_1,...,X_n.</M> We want to find MLEs
for <M>\mu_1,\mu_2.</M>

Here the <M>X_i</M>'s are IID with pdf 
<D>
[[13]] \phi(*([[x-\mu_1][1]])*)+[[23]] \phi(*([[x-\mu_2][2]])*).
</D>
So the log-likelihood is 
<D>
\ell(\mu_1,\mu_2) = \sum\log [*[ [[13]]
\phi(*([[x-\mu_1][1]])*)+[[23]] \phi(*([[x-\mu_2][2]])*) ]*].
</D>
This hardly simplifies. 
<P/>
But let us consider the following more elaborate version of the
same experiment: we again do the same thing, but now we output
not only <M>X</M>, but also the outcome of the toss, and <M>Y= <CASES>1<IF>head</IF>0<ELSE/></CASES>.</M>
<P/>

Now the estimation becomes very easy, as we know
which <M>X_i</M>'s come from which Gaussian. It should be easy to
see that the MLEs are
<D>
\hat \mu_1 = [[\sum X_iY_i][\sum Y_i]]\text{ and }\hat \mu_1 = [[\sum X_i(1-Y_i)][n-\sum Y_i]].
</D>
Here the actual data consisted of only the <M>X_i</M>'s. The more
elaborate data consist of <M>(X_i,Y_i)</M>'s. The many-to-one map
is <M>(X_i,Y_i)\mapsto X_i.</M>
</EXM>
</COMMENT>

<EXM>
We shall consider the four blood
groups <M>A</M>, <M>B</M>, <M>AB</M> and <M>O.</M> They occur in
a certain proportion in a population. Since there are just 4
categories, their proportions must add up to 1 in any
population. So enough to consider any three of them,
say <M>A</M>, <M>B</M> and <M>AB.</M> If find these proportions
for different populations we get different points
in <M>\rr^3.</M> Naturally, they all lie in the tetrahedron 
<D>
\{(x,y,z)~:~0\leq x,y,z,~~x+y+z\leq 1\}.
</D>
But, quite surprisingly, they are always seen to lie in a surface
inside that tetrahedron. The surface is shown in  green below.

<CIMG web="blood.png">The green surface</CIMG>
 To explain this strange behaviour
here is a statistical model: there are two things (call them
<I>allele</I>s) inside each individual. The alleles can be of 3
types: <M>a</M>, <M>b</M> and <M>o.</M> 
The (unordered) pair determines the blood group as follows:
<TABLE>
<TR><TH>Pair (genotype)</TH><TH>Blood group (phenotype)</TH></TR>
<TR><TD>aa, ao</TD><TD>A</TD></TR>
<TR><TD>bb, bo</TD><TD>B</TD></TR>
<TR><TD>ab</TD><TD>AB</TD></TR>
<TR><TD>oo</TD><TD>O</TD></TR>
</TABLE> 

The two alleles in an individual are independent, and each can
take the values <M>a</M>, <M>b</M> and <M>o</M> with
probablilities <M>p</M>, <M>q</M> and <M>r</M>, respectively,
where <M>p+q+r=1.</M>
<P/>
Thus the blood group distribution is 
<TABLE>
<TR><TH>Blood group</TH><TH>Probablility</TH></TR>
<TR><TD>A</TD><TD><M>p^2+2pr</M></TD></TR>
<TR><TD>B</TD><TD><M>q^2+2qr</M></TD></TR>
<TR><TD>AB</TD><TD><M>2pq</M></TD></TR>
<TR><TD>O</TD><TD><M>r^2</M></TD></TR>
</TABLE> 
In order to estimate <M>p</M>, <M>q</M> and <M>r</M> we have
collected a data set. Since the alleles cannot be observed directly
(they are basically imaginary components of our model), we can
only have data about the actual blood group:
<TABLE>
<TR><TH>Blood group</TH><TH>Frequency</TH></TR>
<TR><TD>A</TD><TD><M>n_A=</M>182</TD></TR>
<TR><TD>B</TD><TD><M>n_B=</M>60</TD></TR>
<TR><TD>AB</TD><TD><M>n_{AB}=</M>17</TD></TR>
<TR><TD>O</TD><TD><M>n_O=</M>176</TD></TR>
</TABLE> 
We want find MLEs of <M>p</M>, <M>q</M> and <M>r</M> based on
this.
<SOLN/>
Since <M>r=1-p-q,</M> we can consider <M>(p,q)</M> as our
parameter. The likelihood is 
<D>
L(p,q) = (p^2+2p(1-p-q))^{n_A}(q^2+2q(1-p-q))^{n_B}(2pq)^{n_{AB}}(1-p-q)^{2n_O}.
</D>
The log-likelihood is
<D>
\ell(p,q) = 182\log(2p-p^2-2pq)+60\log(2q-2pq-q^2)+17\log(2pq)+352\log(1-p-q).
</D>
The equation <M>\nabla \ell(p,q) = (0,0)</M> is not analytically tractable.
<P/>
However, if we could observe the allele pairs themselves, then
our data set would have been like:
<TABLE>
<TR><TH>Pair</TH><TH>Frequency</TH></TR>
<TR><TD>aa</TD><TD><M>n_{a a}</M></TD></TR>
<TR><TD>ao</TD><TD><M>n_{a o}</M></TD></TR>
<TR><TD>bb</TD><TD><M>n_{b b}</M></TD></TR>
<TR><TD>bo</TD><TD><M>n_{b o}</M></TD></TR>
<TR><TD>ab</TD><TD><M>n_{a b}</M></TD></TR>
<TR><TD>oo</TD><TD><M>n_{o o}</M></TD></TR>
</TABLE> 
Then the log-likelihood would have been
<MULTILINE>
& & 2n_{a a}\log p + 2n_{b b}\log q +  2n_{o o}\log (1-p-q)+
n_{a o}(\log 2+\log p+\log (1-p-q)) + 
n_{b o}(\log 2+\log q+\log (1-p-q)) + 
n_{a b}(\log 2+\log p+\log q)\\
& = & \text{terms free of parameters} + A\log p + B\log q + C\log (1-p-q),
</MULTILINE>
where 
<D>
A = 2n_{a a}+n_{a o}+n_{a b},\quad B = 2n_{b b}+n_{b o}+n_{a
b},\quad C = 2n_{o o}+n_{a o}+n_{b o}.
</D>
This is one is far more tractable, and here MLE may be found
analytically. 
<P/>
Notice that this original data is a many-to-one function of this
more elaborate data, because 
<D>
n_A = n_{a a}+n_{ao},\quad n_B = n_{b b}+n_{bo},\quad n_{AB} =
n_{ab},\quad n_O = n_{oo}.  
</D>
</EXM>
In general the actual data will be called the <B>incomplete</B>
data, while the more elaborate data will be called
the <B>complete</B> data. The log-likelihood for the complete
data will be denoted by <M>\ell_{com}(\cdot).</M> This cannot be
computed in practice, as the complete data is not really
available. We shall compute the conditional expectation
of <M>\ell_{com}(\cdot)</M> given the incomplete data. This is
the Expectation step of the EM algorithm.

<P/>

Here we have to be careful. We are finding expectation of
a <I>random function</I>. This is done pointwise, i.e., for each
possible value of the argument we compute the expectation of the
value of the function. We have to remember that the argument is
a dummy variable. Its name does not matter, and should better be
chosen to avoid clash with any other symbol. The following
example illustrates this.

<EXM>
Consider the random function <M>G(\mu) = X- \mu,</M>
where <M>X\sim N(\mu,1).</M> Find the expectation of the
function. 
<SOLN/>
You might be tempted to say that the answer is <M>E(X-\mu) = \mu
- \mu = 0.</M> Here <M>\mu</M> was doing double duty, first as
a dummy variable in defining the function <M>G(\cdot),</M> and
then as a constant in the distribution of <M>X.</M> We should
have first changed the dummy variable to something else,
e.g., <M>G(t) = X-t.</M> Then the expectation is <M>\mu-t,</M>
which is indeed a function of <M>t.</M>  
</EXM> 

The next example is to remind you about computation of
conditional expectation. 
<EXM>
Suppose that I have a die with <M>P(i)=p_i</M>
for <M>i=1,...,6.</M> It is rolled 100 times. What is the
conditional expectation of the number of 1's given that total
number of odd outputs is 62?
<SOLN/>
<M>62\times [[p_1][p_1+p_3+p_5]].</M>
</EXM>
<EXM>
First we rename the dummy variables <M>p</M> and <M>q</M> to
<M>\alpha </M> and <M>\beta,</M> say:
<D>
\ell_{com}(\alpha ,\beta) =  \text{terms free of }\alpha ,\beta
+ A\log \alpha  + B\log \beta  + C\log (1-\alpha -\beta),
</D>
where 
<D>
A = 2n_{a a}+n_{a o}+n_{a b},\quad B = 2n_{b b}+n_{b o}+n_{a
b},\quad C = 2n_{o o} + n_{a o} + n_{b o}.
</D>
We shall reserve the symbols <M>p</M> and <M>q</M> for the true
(unknown) values of the parameters.
Then 
<D>
E(\ell_{com}(\alpha ,\beta )|\text{data}) = \text{terms free of
\alpha ,\beta } + E(A|\text{data})\log \alpha  +
E(B|\text{data})\log \beta  + E(C|\text{data})\log (1-\alpha
-\beta ).
</D>
Now 
<MULTILINE>
E(A|\text{data}) & = & E(n_{a a}|\text{data})+n_A+n_{AB} = n_A\times[[p^2][p^2+2p(1-p-q)]]+n_A+n_{AB}=A_1\\ 
E(B|\text{data}) & = & E(n_{b b}|\text{data})+n_B+n_{AB} = n_B\times[[q^2][q^2+2q(1-p-q)]]+n_B+n_{AB}=B_1\\ 
E(C|\text{data}) & = & E(2n_{o o}+n_{a o} + n_{b o}|\text{data})
= 2n_O+ [[2(1-p-q)][2-p-2q]]n_A+[[2(1-p-q)][2-q-2p]]n_B =C_1.
</MULTILINE>
Note that the conditional expectation is a function of the dummy
variables <M>\alpha ,\beta </M> as well as the constants <M>p,q.</M> So we
denote it by <M>Q(\alpha ,\beta |p,q).</M> As <M>(\alpha, \beta )</M> and <M>(p,q)</M> both  take values
in the parameter space, this notation might confuse you at
first. 
Now we shall find the maximum of <M>Q(\alpha ,\beta |p,q)</M>
wrt <M>(\alpha ,\beta )</M>. Remember that <M>p,q</M> are constants, and
play no role in the maximisation. This is the M-step. The output
of this step consists of the maximising <M>(\alpha ,\beta ),</M> which may
involve <M>p,q.</M> 

<P/>
In our example, the partial derivatives of <M>Q(\alpha ,\beta |p,q)</M>
wrt <M>\alpha </M> and <M>\beta </M> are:
<MULTILINE>
[[A_1][\alpha]] & = & [[C_1][1-\alpha -\beta ]],\\
[[B_1][\beta]] & = & [[C_1][1-\alpha-\beta ]].
</MULTILINE>
Solving, we get
<MULTILINE>
\alpha & = & [[A_1][A_1+B_1+C_1]],\\
\beta  & = & [[B_1][A_1+B_1+C_1]].
</MULTILINE>
Notice that the RHSs are functions of <M>p</M> and <M>q.</M>
</EXM>
We put the E-step and the M-step together to construct the EM
algorithm as follows:

<THM name="EM algorithm">
We have some random <I>complete</I> data (unobserved), a
known (many-to-one) function <M>h(\cdot),</M>
where <M>h(</M>complete data<M>)</M>
is the <I>incomplete</I> data (observed). We start with some <M>\v \theta_0.</M>
<UL>
<LI><B>E step:</B> <M>Q(\cdot|\v \theta)  = E_{\v\theta}(\ell_{com}(\cdot)|h(Y)).</M>
</LI>
<LI><B>M step:</B> <M>\v \theta_{k+1} = \text{argmax}_{\v t \in \Theta}~~
Q(\v t | \v \theta_{k}).
</M>
</LI>
</UL> 
We continue until convergence (or until some prespecified maximum
number of iterarions is reached).
</THM>

<EXM>
In our example we use
<MULTILINE>
p_{k+1} & = &  [[A_1][A_1+B_1+C_1]],\\
q_{k+1}  & = & [[B_1][A_1+B_1+C_1]],
</MULTILINE>
where the RHSs are computed at <M>p_{k}</M> and <M>q_{k}.</M>
</EXM>

<R>
nA = 182; nB = 60; nAB = 17; nO = 176
em = function(param) {
  p = param[1]; q = param[2]; r = 1-p-q
  A1 = nA*p/(p+2*r)+nA+nAB
  B1 = nB*q/(q+2*r)+nB+nAB
  C1 = 2*nO + nA*2*r/(2-p-2*q) + nB*2*r/(2-q-2*p)
  newval = c(A1,B1)/(A1+B1+C1)
  cat(newval,'\n')
  newval
}
param=c(1,1)/3
</R>

<EXR>
Here we could also have used Newton-Raphson iteration and
Fisher's scoring method. Try them and see if you are getting the
same MLE or not.
</EXR>

<EXR>
We have worked with a given model here, <I>assuming</I> that it
is the correct model. Carry out a <M>\chi^2</M>-test of
goodness-of-fit at 5% level of significance. 
</EXR>
</NOTE>@}
