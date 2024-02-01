@{<NOTE>
<M>
\newcommand{\v}{\vec}
\newcommand{\cov}{\mathrm{cov}}
\newcommand{\span}{\mathrm{span}}
</M>
<HEAD1>Sampling distribution of mean and variance of a Gaussian
random sample</HEAD1>
<COMMENT>
We shall need a few preliminary concepts. 

<P/>

Let <M>U_1,...,U_k</M> be some random variables, all defined over
the same probbaility space. For every (measurable)
subset <M>A\seq \rr^k</M>, we can talk
about <M>P((U_1,...,U_k)\in A).</M> This map <M>A\mapsto
P((U_1,...,U_k)\in A)</M> is called the <B>joint distribution</B>
of <M>U_1,...,U_k.</M>

<P/>
This description, while conceptually simple, is not easy to work
with. So we try to express it in terms of functions
from <M>\rr^k</M> to <M>\rr</M> or <M>\cc.</M> 


<P/>
If <M>\vec U</M> can take only a countable number of values
in <M>\rr^k,</M> then we call <M>\v U</M> discrete, and use
its <B>probability mass function (PMF).</B>

Sometimes there is a function <M>f:\rr^k\to [0,\infty)</M> such
that for all (measurable) <M>A\seq\rr^k</M> we have 
<D>
P(\v U\in A) = \iint_A f(\v u)d\v u.
</D>
Any such <M>f</M> is called a <B>probability density function
(PDF)</B> of <M>\v U.</M>
<P/>
The <B>cumulative distribution function (CDF)</B> of <M>\v U</M>
is defined as 
<D>
F(u_1,...,u_k) = P(U_1\leq u_1,...,U_k\leq u_k).
</D>

<P/>
The <B>characteristic function (CF)</B> of <M>\v U</M> is 
<D>
\phi (\v t) = E(\exp(i \v t'\v U)).
</D>

The last two are general.

<HEAD2>Independence</HEAD2>
All the four functions mentioned get factored into individual
components in the case of
independence. This is immediate for PMF and CDF. The other two
also follow easily. 
</COMMENT> 
<HEAD2>Two distributions</HEAD2>
<HEAD3>Multivariate Gaussian distribution</HEAD3>
<DEFN>
Let <M>\v \mu\in\rr^k</M> and <M>\Sigma_{k\times k}</M> be any PD
matrix. We say <M>\v U\sim N_k(\v \mu , \Sigma)</M> if it has PDF
<D>
f(\v u) = (2\pi)^{-k/2}|\Sigma|^{-1/2} \exp(*(-[[12]](\v u-\v
\mu)' \Sigma ^{-1} (\v u-\v \mu) )*),\quad \v u\in\rr^k.
</D> 
</DEFN>
The simplest (and also the most frequent case) of a multivariate
Gaussian distribution is when <M>\Sigma = I.</M>

<THM>
The following are equivalent:
<OL>
<LI><M>U_1,...,U_k</M> are iid <M>N(\mu,\sigma^2)</M></LI>
<LI><M>(U_1,...,U_k)\sim N(\mu\v1 ,\sigma^2I)</M></LI>
</OL>
</THM>
<PF>Immediate.</PF>

<HEAD3>The <M>\chi^2 </M> distribution</HEAD3>
<DEFN>
If <M>U_1,...,U_k</M> are iid <M>N(0,1),</M> then the
distribution of <M>\sum_1^k U_i^2</M> is called the <B>chi square
distribution with degrees of freedom</B> <M>k</M>, written as 
<D>
\sum_1^k U_i^2 \sim \chi^2_{(k)}.
</D>
</DEFN>

<THM>
If <M>\v U\sim N_k(\v0,I)</M> then <M>\|\v U\|^2\sim \chi^2_{(k)}.</M>
</THM>
<PF>
Just a restatement of the definition above.
</PF>


<HEAD2>Some intuitive results that we shall not prove</HEAD2>
 
Next we state some basic useful factos about the multivariate
Gaussian distribution. These are all  intuitively pleasing. But
rigourous proof needs multivariate integration (which you may not
know yet).
 
<THM>Let <M>\v U\sim N_k(\v \mu, \Sigma).</M> Take
any <M>\{i_1,...,i_p\}\seq\{1,...,n\}.</M>
Then 
<D>
(U_{i_1},...,U_{i_p})\sim N_p(\v \nu, T),
</D>
where <M>\v \nu</M> is the subsector of <M>\v \mu </M> using only
the <M>i_1,...,i_p</M>-th entries. Similarly, <M>T</M> is
the <M>p\times p</M> submatrix of <M>\Sigma </M> consisting of
only the <M>i_1,...,i_p</M>-th rows and columns.
</THM>
 
In particular, all the marginals of a multivariate Gaussian
distribution are the appropriate univariate Gaussian
distributions. 

<THM>
If <M>\v U\sim N_k(\v \mu , \Sigma)</M>, then 
<M>\cov(U_i,U_j) = \sigma_{ij}.</M>
</THM>
<PF>
Enough to prove for <M>k=2.</M>
</PF>



<THM>
If <M>\v U\sim N_k(\v \mu , \Sigma)</M>, then <M>U_i</M>'s are
independent if and only if <M>\Sigma</M> is a diagonal matrix.
</THM>
<PF>
If independent, then <M>\forall i\neq j~~\cov(U_i,U_j) = 0,</M> and so <M>\Sigma </M>
is diagonal. 
<P/>
Conversely, if <M>\Sigma </M> is diagonal, the PDF factorises.
</PF>
We know that independence implies zero covariance (assuming
covariance exists). The converse does not hold in general. The
above theorem gives one spaecial case where the converse is
indeed true.

<THM>
If <M>\v U\sim N_k(\v \mu, \Sigma)</M> and <M>A_{p\times k}</M>
and <M>\v b\in\rr^p</M> are such that <M>A \Sigma A'</M> is PD,
then 
<D>
A\v U + \v b \sim N_p(A\v \mu+\v b, A \Sigma A').
</D>
</THM>

<THM>
If <M>\v U\sim N_k(\v \mu, \Sigma)</M> and <M>\v a,\v
b\in\rr^k,</M> then <M>\v a' \v U</M> and <M>\v b' \v U</M> are
independent if and only if <M>\v a'\v b = 0</M> (i.e., <M>\v
a</M> and <M>\v b</M> are orthogonal to each other).
</THM>
<PF>Directly from the above results.</PF>


This theorem is particularly appealing as it links the linear
algebraic concept of orthogonality with the probabilistic concept
of independence. 



<HEAD2>Relation with orthogonal projection</HEAD2>

<THM>
Let <M>X_1,...,X_n</M> be a random sample from <M>N(0,1).</M>
Let <M>V \leq \rr^n</M> be any subspace.
Let <M>\v Y</M>  be the projection of <M>\v X</M>
on <M>V</M>. Then 
<D>\|\v Y\|^2\sim \chi^2_{(\dim(V))}.</D>
</THM>
<PF>
Let <M>\v v_1,...,\v v_p</M> be an ONB of <M>V.</M>

<P/>

Then <M>\v Y = (\v v_1'\v X)\v v_1 + \cdots + (\v v_p'\v X)\v v_p.</M>
<P/>
Also, <M>\|\v Y\|^2 = \sum_i (\v v_i\v X)^2 = \|\v U\|^2,</M>
where 
<D>
\v U = <MAT>\v v_1'\v X\\\vdots\\\v v_p'\v X</MAT> = A\v X,
</D>
where <M>A_{p\times n}</M> is the matrix with the <M>\v v_i'</M>'s
as its rows.

<P/>
<ALERT/>Careful! I am not saying that <M>\v Y</M> equals <M>\v
U.</M> They may have different lengths!
<P/>
So <M>\v U\sim N_p(\v 0, I).</M> Hence the result.
</PF>

<THM>
Let <M>X_1,...,X_n</M> be a random sample from <M>N(0,1).</M>
Let <M>V, W\leq \rr^n</M> be any two mutually orthogonal subspaces.
Let <M>\v Y,\v Z</M>  be the projections of <M>\v X</M>
on <M>V,W</M>. Then <M>\v Y</M> and <M>\v Z</M> are
(stochastically) independent. 
</THM>
<PF>
Let <M>\v v_1,...,\v v_p</M> be an ONB of <M>V.</M>

<P/>
Let <M>\v w_1,...,\v w_q</M> be an ONB of <M>W.</M>
<P/>
Construct <M>\v U</M> using <M>V</M> as in the last proof. Also
similarly construct <M>\v Z</M> using <M>W.</M>

<P/>
Notice that <M>\v U</M> and <M>\v V</M> are (stochastically)
independent, completing the proof.
</PF>

<HEAD2>Sampling distribution of sample mean and variance of Gaussian sample</HEAD2>
<THM>
Let <M>X_1,...,X_n</M> be a random sample from <M>N(0,1)</M>
distribution. Let 
<D>
\bar X = [[1n]]\sum X_i\text{ and } S^2 = \sum_i(X_i-\bar X)^2.
</D>
Then 
<OL>
<LI><M>\bar X\sim N(*(0,[[1n]])*).</M></LI>
<LI><M>S^2\sim \chi^2_{(n-1)}.</M></LI>
<LI><M>\bar X</M> and <M>S^2</M> are (stochastically) independent.</LI>
</OL> 
</THM>
<PF>

We had <LINK to="cf.html">already proved</LINK> the first statement using CF. Here we
shall prove it again using linear algebra. 
<P/>
Here <M>\v X\sim N_n(\v 0,I).</M> 

<P/>
Hence <M>\bar X = [[1n]]\v1'\v X\sim N(*([[1n]]\v1'\v 0,
[[1n]]\v1'I[[1n]]\v1)*) = N(*(0,[[1n]])*),</M> completing the
proof of the first statement.
<P/>
For the other two statements, define <M>V = \span\{\v1\}</M>,
and <M>W = V^\perp.</M>
<P/>
Then check that the projection of <M>\v X</M> on <M>V</M>
is <M>\bar X\v1,</M>

and, hence, the projection of <M>\v X</M> on <M>W</M> is <M>\v X-\bar X\v1.</M>
<P/>
So <M>\|\v X-\bar X\v1\|^2\sim \chi^2_{(n-1)},</M> since <M>\dim(W) = n-1.</M>
<P/>
Now <M>\|\v X-\bar X\v1\|^2 = \|\v X\|^2- \|\bar X\v1\|^2 =
\cdots = S^2,</M> completing the proof.
</PF>


</NOTE>@}
