@{<NOTE>
<M>\newcommand{\v}[1]{\boldsymbol{#1}}</M>
<TITLE>Multinomial and Dirichlet distributions</TITLE>
<HEAD1>Multinomial distribution</HEAD1>
The multinomial distribution is a direct generalisation of the binomial distribution. We often think of the <M>Binom(n,p)</M> 
 distribution as the distribution of the number, <M>X</M>, of heads obtained in <M>n</M> 
 independent tosses of a coin with
 <M>P(head)=p.</M>  If we replace the coin with a die with probabilities <M>p_1,...,p_6</M>  for the
 different faces, and let
 <M>X_i</M>  denote the frequency of the <M>i</M>-th face  in <M>n</M>  independent rolls of the die, then
 the joint distribution of
 <M>(X_1,...,X_6)</M>  is called <TERM>multinomial</TERM>  with parameters <M>n,\v p</M>, where <M>\v p=(p_1,...,p_6)'.</M>

In general, we have the following definition.
<DEFN name="Multinomial distribution">
Let <M>n\in\nn</M>  and let <M>\v p=(p_1,...,p_k)'</M>  be a probability vector. Then <M>Multinom(n,\v p)</M>  is the discrete
 distribution with PMF
<D>f(x_1,...,x_k) =<CASES>[[n!][x_1!\cdots x_k!]] p_1^{x_1}\cdots p_k^{x_k}<IF>\sum x_i=n \mbox{
 and } \forall i~~x_i\in\{0,1,2,...,n\}</IF> 0<ELSE/></CASES> </D>
</DEFN>

Just as <M>Bernoulli(p)\equiv Binom(1,p)</M>  is an important special case, and deals with a single toss of the coin, similarly
 <M>Multinom(1,\v p)</M>  deals with a single roll of the die. 

The following facts are simple generalisations of corresponding facts from the binomial distribution.

<THM>
If <M>\v X\sim Multinom(m,\v p)</M>  and <M>\v Y\sim Multinom(n,\v p)</M>  are independent, then 
<D>\v X + \v Y\sim Multinom(m+n,\v p).</D>
</THM>
In particular, we can think of <M>Multinom(n,\v p)</M>  as the distribution of the sum of <M>n</M>  independent <M>Multinom(1,\v p)</M> 
 random vectors. 

Suppose we roll the same die twice independently. Accordingly we get 
<M>\v X,\v Y</M>  both having <M> Multinom(1,\v p)</M>  distribution.  Let <M>\v
 X=(X_1,...,X_k)</M>, <M>\v Y=(Y_1,...,Y_n)</M>    and <M>\v
 p=(p_1,...,p_k)</M>, then 
<UL><LI><M>\forall i~~E(X_i) = E(X_i^2)=p_i.</M>  
</LI>
<LI><M>\forall i\neq j~~E(X_iX_j) = 0</M>
</LI>
<LI>
<M>\forall i,j~~E(X_iY_j) = p_ip_j</M> 
</LI></UL> 
An immediate consequence of this is the following theorem.
<THM>
If <M>\v X\sim Multinom(n,\v p)</M>  where <M>\v X=(X_1,...,X_k)</M>  and <M>\v p=(p_1,...,p_k)</M>, then 
<UL>
<LI><M>\forall i~~E(X_i) = np_i</M></LI>
<LI><M>\forall i~~V(X_i) = np_i(1-p_i)</M></LI>
<LI><M>\forall i\neq j~~cov(X_i,X_j) = -np_ip_j.</M></LI>
</UL>
</THM>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>If <M>(X_1,...,X_k)\sim Multinom(n,(p_1,...,p_k))</M>  for <M>k\geq 3,</M>  then find the
 distribution of <M>X_1+X_3.</M></EXR>

<HEAD1>Dirichlet distribution</HEAD1>
Now we are going to work with a multivariate distribution called the <TERM>Dirichlet distribution</TERM>, which has is a multivariate generalisation of the Beta distribution. 

<DEFN name="Dirichlet distribution">
We say that <M>(X_1,...,X_p)</M>  has <TERM>Dirichlet distribution</TERM>  with parameters
 <M>a_1,...,a_p,a_{p+1}>0</M>  and write <M>(X_1,...,X_p)\sim Dir(a_1,...,a_p,a_{p+1}),</M>  if the joint
density is 
<D>f(x_1,...,x_p) = <CASES>c x_1^{a_1-1}x_2^{a_2-1}\cdots x_p^{a_p-1}(1-x_1-\cdots-x_p)^{a_{p+1}-1}<IF>(x_1,...,x_p)\in D_p</IF> 0<ELSE/></CASES>
 </D>
where 
<D>D_p = \{(x_1,...,x_p)~:~\forall i~~x_i\geq 0,~~\sum_1^p x_i\leq1\},</D>
and 
<D>c = [[\Gamma(a_1+\cdots+a_{p+1})][\Gamma(a_1)\cdots \Gamma(a_{p+1})]].</D>
</DEFN>
Look at this density carefully and get comfortable with the fact that there are only <M>p</M>  of the <M>x_i</M>'s, while
 we have <M>p+1</M>  of the <M>a_i</M>'s. 

When <M>p=1</M>  we have <M>X_1\sim Beta(a_1,a_2).</M>  This is supported on <M>D_1 = [0,1].</M>  

For <M>p=2</M>  and <M>p=3</M>  the supports are shown below. 
<CIMG web="dirsupp.png">Supports of Dirichlet distribution</CIMG>  
In general, shapes like <M>D_p</M>  are called <TERM>simplices</TERM>  (singular <TERM>simplex</TERM>) in <M>\rr^p.</M>
 
It is not immediately obvious that the total integral of this function is indeed 1. However, it is easy for <M>p=2,</M> because
 if <M>(X_1,X_2)\sim Dir(a_1,a_2)</M>  then <M>X_1\sim Beta(a_1,a_2)</M>  and <M>X_2 = 1-X_1.</M>
Starting with this as the basis, we can use induction over <M>p</M>  to establish the general case (easy, try it!).

The following properties are all obvious from the definition.
<THM>
If <M>(X_1,X_2,...,X_p)\sim Dir(a_1,a_2,...,a_p,a_{p+1})</M>, then 
<OL>
<LI>for any <M>k\geq 2</M>  and distinct <M>i_1,...,i_k\in\{1,...,p\}</M>  we have
 <M>(X_{i_1},...,X_{i_k})\sim Dir(a_{i_1},...,a_{i_k},a-(a_{i_1}+\cdots+a_{i_k})),</M>
where <M>a = a_1+\cdots+a_{p+1}</M>.
</LI>
<LI>each <M>X_i\sim Beta(*(a_i,\sum_{j\neq i} a_j)*).</M></LI>
</OL>
</THM>
 
We can immediately write down the mean (i.e., expectation) and variance of each <M>X_i</M>  from results of Beta distribution.

<HEAD2>Problem set <PS/></HEAD2>
<EXR>If <M>(X_1,...,X_p)\sim Dir(a_1,...,a_p,a_{p+1}),</M>  then find the joint distribution of <M>(X_1+X_2,X_3,...,X_p).</M></EXR>

<EXR>Let <M>\v \Pi</M>  be a random vector <M>(\Pi_1,...,\Pi_k,1-\Pi_1-\cdots\Pi_k),</M>  where
 <M>(\Pi_1,...,\Pi_k)\sim Dir(a_1,...,a_{k+1}).</M>  Let the conditional distribution of <M>\v
 X</M>  given <M>(\Pi_1,...,\Pi_k)</M>  be <M>Multinom(n,\v \Pi).</M> 
Then show that  the conditional distribution
 of <M>\v \Pi</M>  given <M>\v X</M>  is <M>Dir(a_1+X_1,...,a_{k+1}+X_{k+1}).</M>

This is the multivariate analogue of beta-binomial distribution used in Bayesian machine learning that we had discussed earlier.
 
</EXR>
<HEAD1>Miscellaneous problems</HEAD1>
::<EXR><EIMG web="wilks1.png"/>

The abbreviation "p.f." means PMF.  Equation  (6.3.3) referred to in the problem is as follows. 
<IMG web="wilks2.png">Equation 6.3.3</IMG></EXR>
::<EXR><EIMG web="wilks3.png"/></EXR>
::<EXR><EIMG web="wilks4.png"/></EXR>
::<EXR><EIMG web="wilks5.png"/></EXR>
::<EXR><EIMG web="wilks6.png"/></EXR>
::<EXR><EIMG web="wilks8.png"/></EXR>
</NOTE>@}
