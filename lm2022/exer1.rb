<NOTE>
@{<M>
\newcommand{\v}{\vec}
\newcommand{\hv}[1]{\hat{\vec #1}}

</M>
<HEAD1>Exercise set 1</HEAD1>
<OL>
<LI>Solve the following approximate system using R:
<MULTILINE>
3a + 4b + c & \approx & 3.4\\
3a + 4b + c & \approx & 3.5\\
4a + 3b + 2c & \approx & 10.1\\
4a + 3b + 2c & \approx & 9.8\\
6a + 5b + 2c & \approx & 5.6
</MULTILINE>
</LI>
<LI>Let's see how R tackles a linear model where the design matrix that is not full
column rank:
<D>
X = <MAT>
1 & 1 & 0\\
1 & 1 & 0\\
1 & 0 & 1\\
1 & 0 & 1\\
</MAT>,\quad 
\v y = <MAT>3.4\\3.5\\10.5\\10.3</MAT>.
</D>
Here the first column of <M>X</M> is a column of <M>1</M>'s. So
you may just type the last two columns in R, and omit the <CODE>-1</CODE>.
</LI>
<LI>
In the problem above R produced <I>one</I> least squares
solution. But we know that there are infinitely many. Write down
two more solutions. Can you write a general form for all least
squares solutions here?
</LI>
<LI>Consider a linear model with design matrix 
<D>
X = <MAT>
1 & 1 & 0\\
1 & 1 & 0\\
1 & 0 & 1\\
1 & 0 & 1\\
</MAT>.
</D>
If <M>\v \beta = (\beta_1, \beta_2, \beta_3)',</M> then show that
whatever least squares solution <M>\hv \beta </M> you take, <M>\h
\beta_2-\h \beta_3</M> is always the same. Characterise all
vectors <M>\v \ell\in\rr^3</M> such that <M>\v \ell' \hv \beta</M>
does not depend on the choice of the least squares solution.
</LI>
<LI>Generalise the characterisation from the last problem to
arbitrary design matrix.</LI>
<LI><IMG web="basicex1.png"/></LI>
<LI>Redo the above problem with the extra condition: <M>\beta_0-\alpha_0 = (\beta_1-a_1) x_0.</M></LI>
</OL>

<P/>

<DISQUSE id="lmex1" url="http://arnabc74@github.io/linmod/ex1.html"/>
@}
</NOTE>
