@{<NOTE>
<M>\newcommand{\h}{\hat}</M>
<HEAD1>Partial correlation</HEAD1>
<HEAD2>Motivation</HEAD2>
We shall start with an example. 
<EXM>
Suppose that we collect data
about the age (<M>X</M>), years of experience (<M>Y</M>) and average amount of monthly
sales (<M>Z</M>) for 100 salesmen.  This results in
a <M>100\times3</M> data matrix. It will be seen that <M>X</M>
and <M>Z</M> are correlated. But we suspect that this correlation
is "only through <M>Y</M>", i.e., <M>X</M> and <M>Z</M> are both
correlated with <M>Y</M>, and that is why we see the correlation
between <M>X</M> and <M>Z.</M> So, conceptually, we have the
following picture, where <M>X</M> and <M>Z</M> are linked only
through <M>Y.</M> 
<CIMG web="diag1.png"></CIMG>
This is in contrast with the following scenario where <M>X</M>
and <M>Z</M> also have a direct link:
<CIMG web="diag2.png"></CIMG>
The question we want to address here is: how to identify the
strength of the red link based on the available data?
<P/>
You should understand that mere <M>cor(X,Z)</M> is not enough, as
it is the combined effect of the black and red links.
</EXM>
The most ideal way to see if a third variable has any bearing
upon the relation between two variables, is to control/block wrt
that third variable. For instance, in the palmistry example from
the last semester, we saw that the palm-ratio and lifespan were
actually related only through gender. We could see this by
considering two separate palm-ratio vs lifespan data, one for
the males and one for the females. 
<P/>
But in many cases the available data do not allow for
controlling/blocking. This is particularly true if the third
variable is a continuous one, as it is in the salesman
example. We can of course try to group the 100 salesmen into
experience slabs, and compute the correlation between <M>X</M>
and <M>Z</M> for each slab, but it is hard to decide anything
based on the correlations computed from the small subsets.
<P/>
Partial correlation is one way to deal with such a problem. 

<HEAD2>Set up</HEAD2>
We have two variables, say <M>X</M> and <M>Z</M>, and also a
bunch of other "nuisance" variables <M>Y_1,...,Y_p.</M> We want
to know if <M>X</M> and <M>Z</M> are correlated only
through <M>Y_i</M>'s or whether they have a direct link as
well. In other words, we are interested in assessing the strength
of the red link below:
<CIMG web="diag3.png"></CIMG> 
Since we are working with correlation, we are dealing exclusively with
<I>linear</I> relation.
<P/>
Our data matrix is of size <M>n\times (p+2).</M>  

<HEAD2>The idea</HEAD2>
The idea is to filter out the effects of the nuisance variables
from both <M>X</M> and <M>Z</M>, and then to compute the
correlation between the filterred variables. The filtering is
done by linear regression. 
<P/>
We first fit linear regressions 
<MULTILINE>
\h X & = & \h a_0 + \h a_1 Y_1 + \cdots + \h a_p Y_p\\
\h Z & = & \h b_0 + \h b_1 Y_1 + \cdots + \h b_p Y_p
</MULTILINE>
using least squares. Then the <B>partial correlation</B>
between <M>X</M> and <M>Z</M> given <M>Y_1,...,Y_n</M> is defined
as <M>cor(X-\h X,Z-\h Z).</M> 

<P/>
This may look like a rather complicated procedure. But it turns
out there is a rather simple algorithm to compute it without
actually performing any regression. We discuss this next.

<HEAD2>The basic algorithm</HEAD2>
Order the variables as <M>Y_1,...,Y_p,X,Z</M>, with the nuisance
variables first. Find the <M>(p+2)\times(p+2)</M> covariance
matrix, and partition it as:
<D>
<MAT>
A_{p\times p} & B\\ B' & C_{2\times2}
</MAT>.
</D>
Then compute the <M>2\times 2</M> Schur complement of <M>A:</M>
<D>
C - B'A ^{-1} B.
</D>
This is called the <B>partial covariance matrix</B> of <M>X</M>
and <M>Z</M> given the <M>Y_i</M>'s. The correlation computed
from this is  the required partial correlation.
<HEAD3>Why does it work?</HEAD3>
To see why this works, it will help to first centre all the
variables. Also, partition the data matrix as
<D>
<MAT>Y_{n\times p} X_{n\times 1} Z_{n\times 1}</MAT>.
</D> 
Then, thanks to the centring, 
<D>
A = Y'Y,\quad B = <MAT>X'\\Z'</MAT> Y,\quad C
= <MAT>X'\\Z'</MAT><MAT>X & Z</MAT>.
</D> 
We shall assume, wlg, that <M>Y</M> is full column rank (else
just throw out the dependent columns).
<P/>
Then from linear regression result (done last semester):
<D>
\h X = Y(Y'Y) ^{-1} Y' X 
\text{ and }
\h Z = Y(Y'Y) ^{-1} Y' Z. 
</D>
The residuals  <M>X-\h X</M> and <M>Z-\h Z</M>  
both have zero mean, and hence their covariance matrix is 
<D>
<MAT>X'-\h X'\\Z'-\h Z'</MAT><MAT>X-\h X & Z-\h Z</MAT>.
</D>
This might look scary, but there is a nice way to write things
down. Let <M>P = Y(Y'Y) ^{-1} Y'</M> be the orthogonal projection
operator onto the column space of <M>Y.</M> Then <M>I-P</M> is
the orthogonal projection operator onto its orthogonal
complement. Being an orthogonal projection operator, <M>I-P</M>
is symmetric and idemponent.

<P/>
Now <M>X-\h X = (I-P)X</M> and <M>Z-\h Z = (I-P)Z.</M> So the
above covariance matrix simplifies into the Schur complement
mentioned earlier (check!).
<HEAD3>Efficient algorithm</HEAD3>
We also have a more efficient version of the algorithm using
Gauss-Jordan elimination. We start applying the Gauss-Jordan
elimination to the <M>(p+2)\times(p+2)</M> covariance matrix, but
stop after the first <M>p</M> steps. The lower right
hand <M>2\times2</M> submatrix will then be the Schur complement!
The proof is easy, and left as an excercise.
<HEAD3>Pairwise partial correlations</HEAD3>
Sometimes we have a bunch of variables of
interest <M>X_1,...,X_q</M> and a bunch of nuisance
variables, <M>Y_1,...,Y_p</M>, and we want to find the partial
correlations between all the pairs of <M>X</M>'s given all
the <M>Y</M>'s. The algorithm can be adopted very easily for
this. Just compute the <M>(p+q)\times(p+q)</M> covariance matrix
with the nuisance variables listed first. Then apply the
first <M>p</M> steps of the Gauss-Jordan
elimination algorithm. The lower right hand <M>q\times q</M>
submatrix of the resulting matrix will be the partial covariance
matrix of the <M>X</M>'s given the <M>Y</M>'s. All the required
partial correlations may now be easily obtained from this matrix.

<HEAD2>Notation</HEAD2>
We often list all the available valriables as <M>X_1,...X_p.</M>
Then, for multiple correlation, we identify one variable as the
dependent variable, and a bunch of the others as the independent
ones. For instance, if <M>p=9</M>, then we may have <M>X_3</M> as
the dependent variable, and <M>X_1, X_2</M> and <M>X_6</M> as the
independent ones. The other variables are not considered. Then
the multiple correlation between <M>X_3</M>
and <M>\{X_1,X_2,X_6\}</M> is denoted by 
<D>
R_{3\bullet1,2,6}.
</D> 
Similarly, for partial correlation between <M>X_1</M>
and <M>X_5</M> given <M>X_2,X_3,X_7</M> is denoted by 
<D>
R_{1,5\bullet2,3,7}.
</D>

<HEAD2>Using R</HEAD2>
Let`s first load the library (you may need to install it first).
<R>
library(ppcor)
</R>
Next we create a data set using this diagram:
<CIMG web="diag1.png"/>
<R>
x = rnorm(100)
y = 1+2*x + rnorm(100)/3
z = -y + rnorm(100)/3
</R>
Here <M>X</M> and <M>Z</M> are highly correlated.
<R>
cor(x,z) #Pretty high
</R>
But once you take <M>Y</M> into account, the partial correlation
turns out to be quite low.
<R>
pcor(data.frame(x,y,z)) # The partial correlation is quite low.
</R>
Let`s try the linear regression technique to compute the partial correlation.
<R>
x.y = lm(x~y)$resid
z.y = lm(z~y)$resid
cor(x.y,z.y)
</R>
Same answer, as it should be!
</NOTE>@}
