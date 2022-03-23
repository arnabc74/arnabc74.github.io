<NOTE>@{
<UPDT>FRI AUG 28 IST 2020</UPDT>
<HEAD1>Linear Algebra</HEAD1>
<M>
\newcommand{\v}{\vec}
\newcommand{\b}{\overline}
\newcommand{\hv}[1]{\hat{\vec#1}}
\newcommand{\col}{\mathcal{C}}
\newcommand{\argmin}{\mathrm{argmin}}
\newcommand{\o}{{\mathbb 1}}
</M>
<HEAD1>For later</HEAD1>
 Pictorially, this means
projecting <M>\v y</M> on <M>\col(X)</M> and expressing the
projection (<M>\hv y,</M> the foot of the perpendicular) in
terms of the columns of <M>X.</M>
<P/>
For example, in the weighing case, we are looking for <M>a,b</M>
such that <M>X \beta </M> is as close as possible to <M>y.</M>
Now 
<D>
X \beta  = <MAT>3 & 4\\4 & 1\\2 & 3</MAT><MAT>a\\b</MAT> =
a <MAT>3\\4\\2</MAT> + b <MAT>4\\1\\3</MAT>,
</D>
a linear combination of the two columns of <M>X.</M> So our
interest lies in finding the linear combination of the columns of
X that is closest to <M>\v y.</M> We shall proceed step by step
here. 

<P/>
Start by thinking of the first column of <M>X</M> as an arrow in <M>\rr^3:</M>
<CIMG web="plot1.png"/>
Similarly for the second column:
<CIMG web="plot2.png"/>
The <M>\v y</M> vector is also an arrow in <M>\rr^3:</M>
<CIMG web="plot3.png"/>
Our job is to drop a perpendicular from the tip of <M>\v y</M>
on the plane <M>\col(X).</M> That is,
we want to find some <M>\hv \beta </M> such that <M>X\hv
\beta </M> is the projection of <M>\v y</M> onto <M>\col(X):</M>
<CIMG web="plot4.png"/>

This may be done by the following  mathematical trick: Just 
solve the so called <B>normal equation</B>:
<D>
(X'X)\hv \beta = X'\v y.
</D>
We shall not worry about why this trick works right now. We shall
prove this later.  Then we shall also prove the useful fact that this system is
always consistent. 

<COMMENT>
<HIDE lab="norm"><MSG>(Why?)</MSG><HIDDEN>We want<M> (\v y-X\hv \beta)</M> to be perpendicular
to <M>\col(X).</M> So we need <M>X' (\v y-X\hv \beta) =
0.</M></HIDDEN></HIDE>

<HIDE lab="cons"><MSG>(Why?)</MSG>
<HIDDEN>We know from linear algebra that <M>\col(X') =
\col(X'X)</M> for any real matrix <M>X.</M> So <M>X'\v y\in\col(X')=\col(X'X).</M></HIDDEN>
</HIDE>
</COMMENT>

<P/>

The foot of the perpendicular (from <M>\v y</M>
to <M>\col(X)</M>) is <M>\hv y</M>, and is unique. Since this is
in <M>\col(X),</M> so it can be expressed as a linear combination
of the columns of <M>X.</M> However, there may be many ways to do
so. It will be unique if and only if the columns of <M>X</M> are
all independent.

<THM>
Least square solution of <M>\v y = X \v\beta + \v \epsilon</M> is
unique if and only if <M>X</M> is full column rank. In this case,
<M>X'X</M> is invertible, and the unique solution is given by 
<D>
\hv \beta = (X'X) ^{-1} X'\v y.
</D>
</THM>
Thus, the projection of <M>\v y</M> onto <M>\col(X)</M> is
 <D>\hv y = X\hv \beta = \underbrace{X(X'X)^{-1} X'}_{P_X} \v y.</D>
So <M>P_X = X(X'X)^{-1} X' </M> is the (orthogonal) projection
matrix for <M>\col(X).</M>
<P/>
Recall from linear algebra that a real matrix is an orthogonal
projection matrix if and only if it is symmetric and idempotent.

<EXR>Quickly check that <M>P_X</M> is indeed symmetric and
orthogonal.</EXR>

<HEAD1>Linear algebra</HEAD1>
Here the design matrix is like
<D>
X = <MAT>
\o & \o & 0 & 0\\
\o & 0 & \o & 0\\
\o & 0 & 0 & \o\\
</MAT>,
</D>
where <M>\o = (1,1,1,1,1)'.</M> The sum of the last three columns
equals the first, and so <M>\col(X)</M> has dimension <M>3.</M>
We split <M>\col(X)</M> into two orthogonal parts. To understand
this let <M>V_1</M>
and <M>V_2,</M> where <M>V_1</M> is just the span of the first
column, and <M>V_2</M> is the span of the last
three. Clearly, <M>\col(X) = V_1+V_2.</M> However, there is an
overlap. So we replace <M>V_2</M> by <M>W = V_2\cap
V_1^\perp.</M> Now consider <M>y\in\rr^{15}.</M> We have
effectively split <M>\rr^{15}</M> into three orthogonal parts:
<D>
\rr^{15} = V_1 + W_2 + \col(X)^\perp.
</D>
Accordinly <M>y</M> gets split as 
<D>
y = y_{V_1} + y_{W_2} + y_{\col(X)^\perp}.
</D>
Here <M>y_{S}</M> means orthogonal projection of <M>y</M> onto <M>S.</M>
<P/>
A little computation would show that the squared norms of these
are the <M>SS</M>'s in our ANOVA table. The degrees of freedom
are just the dimension of the subspace we are projecting into. 

<P/>
The situation is as depicted below:
<CIMG web="proj.png"/>
<HEAD2>Generalising</HEAD2>
This idea is very tempting. Just split <M>\col(X)</M> into
mutually orthogonal subspaces corresponding to the inputs. The
subspace <M>\col(X)^\perp</M> will correspond to the random error
input. 
<P/>
However tempting this idea may sound, it is not achievable in
many situations. We shall illustrate both the cases, where it is
possible, and where it is not.

<EXM>
Consider the 2-way ANOVA model without interaction:
<D>
y_{ij} = \mu + \alpha_i + \beta_j + \epsilon_{ij},
</D>
where <M>i=1,2,3</M> and <M>j=1,...,4.</M> The design matrix
is <M>X</M> given by
<CIMG web="des1.png"/>
We have grouped the columns according to effects. The cyan
column in the overall mean effect, the pink ones are
the <M>\alpha</M> columns, and the orange ones are due to
the <M>\beta</M>'s. If we denote the spans of the cyan, pink and
orange columns by <M>V_1, V_2</M> and <M>V_3,</M> respectively,
then 
<D>
\col(X) = V_1 + V_2 + V_3.
</D>
However, they are not mutually orthogonal. Indeed, <M>V_2\cap V_3
= V_1.</M> However, something nice is true: once you
"remove" this intersection, the remaining parts of <M>V_2</M>
and <M>V_3</M> are mutually
orthogonal. <HIDE lab="det"><MSG>(Details)</MSG>
<HIDDEN>
Recall that if <M>\v u</M> and <M>\v v\neq\v0</M> are two
vectors, then the residual of <M>\v u</M> after "removing the
effect of"
<M>\v v</M> is 
<D>
\v u-P_{span\{\v v\}} (\v u) = \v u - [[\v v'\v u][\|\v v\|^2]]\v v.
</D>
If we remove the effect of the cyan column from the rest, then we
get the matrix:
<CIMG web="des2.png"/>
Basically, each pink vector <M>\v u</M> in the original design
matrix now becomes <M>\v u - [[13]]\o,</M> and each orange
vector <M>\v v</M> in the original design matrix has become <M>\v v - [[14]]\o.</M>
<P/>
It is easily checked that the new pink vectors are orthogonal lto
the new orange vectors. 
</HIDDEN>
</HIDE> The situation is much
like <M>xy</M> and <M>xz</M> planes in <M>\rr^3:</M>
<CIMG web="planes.png"/>
So we may define 
<D>
W_1 = V_1,\quad W_2 = V_2\cap V_1^\perp,\quad W_3 = V_3\cap V_1^\perp.
</D>
Then <M>\col(X) = W_1+W_2+W_3</M> is an orthogonal
partition. This produces the following ANOVA table:

<TABLE>
<TR>
<TH>Source</TH>
<TH>d.f.</TH>
<TH>SS</TH>
<TH>MSS</TH>
<TH>F</TH>
</TR>
<TR>
<TD>Mean</TD>
<TD>1</TD>
<TD><M>3\times4\times \b y_{...}^2</M></TD>
</TR>

<TR>
<TD>Rows</TD>
<TD>3-1</TD>
<TD><M>4\times(\sum_i \b y_{i..}^2 - 3\b y_{...}^2)</M></TD>
</TR>
<TR>
<TD>Columns</TD>
<TD>4-1</TD>
<TD><M>3\times(\sum_j \b y_{.j.}^2 - 4\b y_{...}^2)</M></TD>
</TR>
<TR>
<TD>Error</TD>
<TD><M>3\times4 - 1 - (3-1) - (4-1)</M></TD>
<TD><M>\langle</M>by subtraction<M>\rangle</M></TD>
</TR>
<TR><TD colspan="5"></TD></TR>
<TR>
<TD>Total</TD> 
<TD><M>3\times4</M></TD>
<TD><M>\sum_{ijk} y_{ijk}^2</M></TD>
</TR>
</TABLE>
Usually the first row is "absorbed" into the last row to produce:
<TABLE>
<TR>
<TH>Source</TH>
<TH>d.f.</TH>
<TH>SS</TH>
<TH>MSS</TH>
<TH>F</TH>
</TR>

<TR>
<TD>Rows</TD>
<TD>3-1</TD>
<TD><M>4\times(\sum_i \b y_{i..}^2 - 3\b y_{...}^2)</M></TD>
</TR>
<TR>
<TD>Columns</TD>
<TD>4-1</TD>
<TD><M>3\times(\sum_j \b y_{.j.}^2 - 4\b y_{...}^2)</M></TD>
</TR>
<TR>
<TD>Error</TD>
<TD><M>3\times4 - 1 - (3-1) - (4-1)</M></TD>
<TD><M>\langle</M>by subtraction<M>\rangle</M></TD>
</TR>
<TR><TD colspan="5"></TD></TR>
<TR>
<TD>Adjusted total</TD> 
<TD><M>3\times4-1</M></TD>
<TD><M>\sum_{ijk} y_{ijk}^2-3\times4 \b y_{...}^2</M></TD>
</TR>
</TABLE>
</EXM>

Next we see an example where no satisfactory orthogonal partition
exists.

<EXM>
Same model as above, but now each row of design matrix is
repeated twice, except the last, which is present only once. Now
the orthogonality structure collapses. 
</EXM>
Note that statistically there
is not much difference between this example and the last. We just
repeated each combination on two plots. Due to some accident one
of the plots aigned to the last combination was lost. Thus the
beauty of the
linear algebraic structure is not very "robust". Hence ANOVA
tables are not much popular nowadays. 


<M>\newcommand{\v}{\vec}</M>
<HEAD1>Intuitive understanding of rank of design matrix</HEAD1>
We have seen that the rank of the design matrix plays an
important role in determining uniqueness of the least squares
solution. The solution is unique if and only if <M>X</M> is full
column rank, i.e., rank equals number of columns. In practice,
however, this condition may not be met. We can of course apply
some linear algebra algorithm (like Gaussian elimination) to find
the rank and/or find a subset of columns that
span <M>\col(X).</M> However, it is often possible to avoid these
numerical algorithms and resolve the problem intuitively. That is
what we are going to learn now.

<HEAD2>Guessing if rank <M><</M> number of columns</HEAD2>

Since we know that this is equivalent to nonuniqueness of least
squares solution, hence we try to tweak one least squares
solution into another. If we succeed then the rank must be less
than number of columns. 

<EXM>
Consider the 1-way ANOVA model: <M>y_{ij} = \mu + \alpha_i +
\epsilon_{ij}.</M>

<P/>
Suppose that I give you some least squares solution <M>\h \mu</M>
and <M>\h \alpha_i</M>'s. Now the intuitive thinking goes like
this:
<Q>
Since <M>y_{ij}\approx \mu + \alpha_i,</M> we may think as
if <M>\mu + \alpha_i</M>'s are being "watched"
by <M>y_{ij}</M>'s.
If any of the <M>\mu + \alpha_i</M>'s change, then it would ring
an alarm bell.
</Q>
But it is quite possible that we can tweak <M>\mu </M> and <M>\alpha_i</M>'s so
that <M>\mu + \alpha_i</M>'s never change, then that would give us
a new least squares solution. For instance, add 5 to <M>\mu,</M>
and adjust by subtracting 5 from all the <M>\alpha_i</M>'s. 
<P/>
This shows that <M>X</M> is not full column rank. 
</EXM>

Here is another example.

<EXM>
Again we consider a 1-way ANOVA model: <M>y_{ij} = \mu_i +
\epsilon_{ij}.</M> Here the <M>\mu_i</M>'s are "watched". So
can't do any tweaking without getting detected. Hence the design
matrix is full column rank here.
</EXM>

<HEAD2>Guessing <M>r(X)</M></HEAD2>
The same intuitive way of thinking can often allow us to guess
the <M>r(X)</M>.

<EXM>
Again consider the model: <M>y_{ij} = \mu + \alpha_i +
\epsilon_{ij}</M> for <M>i=1,...,p,</M> say. The range
of <M>j</M> does not really matter for finding <M>r(X)</M>.
<HIDE><MSG>(Why?)</MSG><HIDDEN>It only controls how many times
each row of <M>X</M> is repeated. Repeating the same row
multiple times does not affect the rank.</HIDDEN></HIDE> 
<P/>
There are <M>p+1</M> columns in <M>X.</M> We have already seen
that <M>X</M> is not full column rank. Hence <M>r(X) < p+1.</M>
To guess <M>r(X)</M> we shall again play the "tweak parameters
without setting off the alarm" game. But this time we shall
impose an extra constraint: pick any parameter (just any!),
say <M>\mu,</M> and never tweak it. Now you'll see that no
tweaking is possible. Since you can tweak
neither <M>\mu+\alpha_i</M> nor <M>\mu </M>, hence you cannot
tweak <M>\alpha_i</M> either. Thus, just <I>one</I> constraint is
enough to prevent tweaking. The conclusion is: <M>r(X)</M> is
exactly <I>one</I> less than the number of columns.
</EXM>

Here is a more complicated example.

<EXM>
The 2-way ANOVA model without interaction:<M>y_{ij} = \mu+\alpha_i+\beta_j+\epsilon_{ij}.</M>
<P/>
Here the "watched" quantities are <M>\mu+\alpha_i+\beta_j.</M>
Clearly, we can add something to <M>\mu</M> and adjust by
subtracting that amount from all the <M>\alpha_i</M>'s (or all
the the <M>\beta_j</M>'s). So not full column rank.
<P/>
To guess the exact rank, let's impose an additional
constraint: "Thou shalt not tweak <M>\mu</M>."
<P/>
Still we can manage to tweak the <M>\alpha_i</M>'s
and <M>\beta_j</M>'s without letting off the alarm bell. For
instance, add 5 to all the <M>\alpha_i</M>'s and subtract the
same amount from all the <M>\beta_j</M>'s.
<P/>
OK, pick any other parameter <I>that is not already fixed by earlier
constraints</I> (say <M>\alpha_1</M>) and impose
a new constraint: "Thou shalt not tweak <M>\alpha_1</M> either."
<P/>
Now, <M>\mu </M> and <M>\alpha_1</M> both being fixed,
and <M>\mu+\alpha_1+\beta_j</M>'s being watched, we cannot tweak
any of the <M>\beta_j</M>'s. So none of the
other <M>\alpha_i</M>'s can be tweaked either. Hence no tweaking
at all! And we needed just <I>two</I> constraints.
<P/>
Conclusion: <M>r(X)</M> is <I>two</I> less than the number of columns.
</EXM>

<HEAD2>Reducing <M>X</M> to a full column rank matrix</HEAD2>

"Reducing <M>X</M> to a full column rank matrix" means, linear algebraically,  picking a subset of columns
of <M>X</M> that constitute a basis for <M>\col(X).</M> Finding a
column-echelon form for <M>X</M> is one possible sledge hammer to
break this peanut. However, our "tweak without letting off the
alarm" game again comes to help. Indeed, it is preferable to the
sledge hammer method, because the particular least squares
solution that we shall get by the intuitive method also has
better interpretability. 

<EXM>Consider the 1-way ANOVA model once again: <M>y_{ij} =
\mu+\alpha_i+\epsilon_{ij}.</M>

<P/>
Here is one possible scenario where it could be used. We have
three different fertilisers <I>None</I>, <I>Compost</I> and <I>NPK</I>. We want to see
their effect on the yield of paddy. Here the
constraint <M>\alpha_1 = 0</M> is a suitable one, since <I>None</I> is
like a reference case. With this constraint the remaining
parameters have the following interpretation:
<UL>
<LI><M>\mu</M> is the effect of no fertiliser.</LI>
<LI><M>\alpha_2</M> is the extra effect due to <I>Compost</I>,</LI>
<LI><M>\alpha_3</M> is the extra effect due to <I>NPK</I>.</LI>
</UL>
However, if the three fertilisers were <I>Mg</I>, <I>Compost</I> and <I>NPK</I>, then
a more natural constraint would be <M>\sum \alpha_i = 0,</M>
leading to the following interpretation:
<UL>
<LI><M>\mu</M> is the overall mean effect.</LI>
<LI><M>\alpha_i</M> is the extra effect due to the <M>i</M>-th fertiliser.</LI>
</UL>
Another natural constraint would be: <M>\mu = 0.</M> Here the
interpretation is even simpler:
<UL>
<LI><M>\alpha_i</M> is the effect of the <M>i</M>-th fertiliser.</LI>
</UL>
However, most people will prefer the constraint <M>\sum \alpha_i =
0</M> to the constraint <M>\mu = 0,</M> because under the former
the signs of the <M>\h \alpha_i</M>'s immediately gives a clue to
which fertiliser is a good and which is bad. 
</EXM>
Each such constraint is effectively choosing a basis
of <M>\col(X)</M> leading to a unique least squares
solution. Each software has its favourite constraint, which
may not be the natural one for a given context. But it is easy to
convert one least squares solution to another that satisfies a
natural set of constraints. The next example illustrates this.

<EXM>
Consider the 1-way ANOVA model <M>y_{ij} = \mu + \alpha_i +
\epsilon_{ij}.</M> for <M>i=1,2,3</M> and <M>j=1,...,10.</M>
<P/>
R uses the constraint <M>\alpha_1 = 0.</M>
<P/>
However, we want the constraint <M>\sum \alpha_i = 0.</M> 
<P/>
If the estimates produced by R are
<D>
\h \mu = 23.4, \quad \h \alpha_1 = 0,\quad \h \alpha_2 =
45.9,\quad \h \alpha_3 = -3.4,
</D>
then find the estimates that satisfies our constraint.
<SOLN/>
Just average the <M>\h \alpha_i</M>'s and subtract this from all
the <M>\h \alpha_i</M>'s. Adjust by adding the same quantity to <M>\h \mu.</M>

<P/>
Notice that you really do not need to know what constraint(s) R
uses internally in order to impose your set of constraints.</EXM>

<HEAD1>Linear algebra</HEAD1>
Here the design matrix is like
<D>
X = <MAT>
\o & \o & 0 & 0\\
\o & 0 & \o & 0\\
\o & 0 & 0 & \o\\
</MAT>,
</D>
where <M>\o = (1,1,1,1,1)'.</M> The sum of the last three columns
equals the first, and so <M>\col(X)</M> has dimension <M>3.</M>
We split <M>\col(X)</M> into two orthogonal parts. To understand
this let <M>V_1</M>
and <M>V_2,</M> where <M>V_1</M> is just the span of the first
column, and <M>V_2</M> is the span of the last
three. Clearly, <M>\col(X) = V_1+V_2.</M> However, there is an
overlap. So we replace <M>V_2</M> by <M>W = V_2\cap
V_1^\perp.</M> Now consider <M>y\in\rr^{15}.</M> We have
effectively split <M>\rr^{15}</M> into three orthogonal parts:
<D>
\rr^{15} = V_1 + W_2 + \col(X)^\perp.
</D>
Accordinly <M>y</M> gets split as 
<D>
y = y_{V_1} + y_{W_2} + y_{\col(X)^\perp}.
</D>
Here <M>y_{S}</M> means orthogonal projection of <M>y</M> onto <M>S.</M>
<P/>
A little computation would show that the squared norms of these
are the <M>SS</M>'s in our ANOVA table. The degrees of freedom
are just the dimension of the subspace we are projecting into. 

<P/>
The situation is as depicted below:
<CIMG web="proj.png"/>
<HEAD2>Generalising</HEAD2>
This idea is very tempting. Just split <M>\col(X)</M> into
mutually orthogonal subspaces corresponding to the inputs. The
subspace <M>\col(X)^\perp</M> will correspond to the random error
input. 
<P/>
However tempting this idea may sound, it is not achievable in
many situations. We shall illustrate both the cases, where it is
possible, and where it is not.

<EXM>
Consider the 2-way ANOVA model without interaction:
<D>
y_{ij} = \mu + \alpha_i + \beta_j + \epsilon_{ij},
</D>
where <M>i=1,2,3</M> and <M>j=1,...,4.</M> The design matrix
is <M>X</M> given by
<CIMG web="des1.png"/>
We have grouped the columns according to effects. The cyan
column in the overall mean effect, the pink ones are
the <M>\alpha</M> columns, and the orange ones are due to
the <M>\beta</M>'s. If we denote the spans of the cyan, pink and
orange columns by <M>V_1, V_2</M> and <M>V_3,</M> respectively,
then 
<D>
\col(X) = V_1 + V_2 + V_3.
</D>
However, they are not mutually orthogonal. Indeed, <M>V_2\cap V_3
= V_1.</M> However, something nice is true: once you
"remove" this intersection, the remaining parts of <M>V_2</M>
and <M>V_3</M> are mutually
orthogonal. <HIDE lab="det"><MSG>(Details)</MSG>
<HIDDEN>
Recall that if <M>\v u</M> and <M>\v v\neq\v0</M> are two
vectors, then the residual of <M>\v u</M> after "removing the
effect of"
<M>\v v</M> is 
<D>
\v u-P_{span\{\v v\}} (\v u) = \v u - [[\v v'\v u][\|\v v\|^2]]\v v.
</D>
If we remove the effect of the cyan column from the rest, then we
get the matrix:
<CIMG web="des2.png"/>
Basically, each pink vector <M>\v u</M> in the original design
matrix now becomes <M>\v u - [[13]]\o,</M> and each orange
vector <M>\v v</M> in the original design matrix has become <M>\v v - [[14]]\o.</M>
<P/>
It is easily checked that the new pink vectors are orthogonal lto
the new orange vectors. 
</HIDDEN>
</HIDE> The situation is much
like <M>xy</M> and <M>xz</M> planes in <M>\rr^3:</M>
<CIMG web="planes.png"/>
So we may define 
<D>
W_1 = V_1,\quad W_2 = V_2\cap V_1^\perp,\quad W_3 = V_3\cap V_1^\perp.
</D>
Then <M>\col(X) = W_1+W_2+W_3</M> is an orthogonal
partition. This produces the following ANOVA table:

<TABLE>
<TR>
<TH>Source</TH>
<TH>d.f.</TH>
<TH>SS</TH>
<TH>MSS</TH>
<TH>F</TH>
</TR>
<TR>
<TD>Mean</TD>
<TD>1</TD>
<TD><M>3\times4\times \b y_{...}^2</M></TD>
</TR>

<TR>
<TD>Rows</TD>
<TD>3-1</TD>
<TD><M>4\times(\sum_i \b y_{i..}^2 - 3\b y_{...}^2)</M></TD>
</TR>
<TR>
<TD>Columns</TD>
<TD>4-1</TD>
<TD><M>3\times(\sum_j \b y_{.j.}^2 - 4\b y_{...}^2)</M></TD>
</TR>
<TR>
<TD>Error</TD>
<TD><M>3\times4 - 1 - (3-1) - (4-1)</M></TD>
<TD><M>\langle</M>by subtraction<M>\rangle</M></TD>
</TR>
<TR><TD colspan="5"></TD></TR>
<TR>
<TD>Total</TD> 
<TD><M>3\times4</M></TD>
<TD><M>\sum_{ijk} y_{ijk}^2</M></TD>
</TR>
</TABLE>
Usually the first row is "absorbed" into the last row to produce:
<TABLE>
<TR>
<TH>Source</TH>
<TH>d.f.</TH>
<TH>SS</TH>
<TH>MSS</TH>
<TH>F</TH>
</TR>

<TR>
<TD>Rows</TD>
<TD>3-1</TD>
<TD><M>4\times(\sum_i \b y_{i..}^2 - 3\b y_{...}^2)</M></TD>
</TR>
<TR>
<TD>Columns</TD>
<TD>4-1</TD>
<TD><M>3\times(\sum_j \b y_{.j.}^2 - 4\b y_{...}^2)</M></TD>
</TR>
<TR>
<TD>Error</TD>
<TD><M>3\times4 - 1 - (3-1) - (4-1)</M></TD>
<TD><M>\langle</M>by subtraction<M>\rangle</M></TD>
</TR>
<TR><TD colspan="5"></TD></TR>
<TR>
<TD>Adjusted total</TD> 
<TD><M>3\times4-1</M></TD>
<TD><M>\sum_{ijk} y_{ijk}^2-3\times4 \b y_{...}^2</M></TD>
</TR>
</TABLE>
</EXM>

Next we see an example where no satisfactory orthogonal partition
exists.

<EXM>
Same model as above, but now each row of design matrix is
repeated twice, except the last, which is present only once. Now
the orthogonality structure collapses. 
</EXM>
Note that statistically there
is not much difference between this example and the last. We just
repeated each combination on two plots. Due to some accident one
of the plots aigned to the last combination was lost. Thus the
beauty of the
linear algebraic structure is not very "robust". Hence ANOVA
tables are not much popular nowadays. 

<HEAD1>Exercises</HEAD1>
<OL>
<LI>For the model <M>y_{ij} = \mu + \alpha_i +
\epsilon_{ij},</M> a software produces the estimates
<D>
\h \mu = 23.4, \quad \h \alpha_1 = 2.0,\quad \h \alpha_2 =
45.9,\quad \h \alpha_3 = -3.4.
</D>
Find the estimates under the constraint <M>\mu = 0.</M>
</LI>

<LI>Consider the model: <M>y_{ijk} = \mu + \alpha_i + \beta_j +
\gamma_{ij} + \epsilon_{ijk},</M> for <M>i=1,2,3</M>
and <M>j=1,2</M> and <M>k=1,...,5.</M> Is the design matrix full
column rank? Find its rank. Find two possible sets of
constraints to make the solution unique.</LI>

<LI>This exercises will give you an idea why the "tweak without
letting off the alarm" game always detects whether <M>X</M> is
not full column rank. Consider a linear
model <M>\v y = X \v \beta + \v \epsilon,</M> where <M>\v \beta =
(\beta_1,...,\beta_4).</M>
It is seen that if we tweak by adding 5 to <M>\beta_1</M> and
subtracting 3 from <M>\beta_2</M> and adding 1 to <M>\beta_3</M>
(leaving <M>\beta_4</M> unaltered), then the alarm does not go
off. In other words, we added the vector <M>(5,-3,1,0)'</M>
to <M>\v \beta</M> without firing the alarm. We shall call such a 
vector  a <I>tweak vector</I> (not a standard term).
<OL type="a">
<LI> Show that the
set of all tweak vectors is a subspace.</LI>
<LI>How is this subspace related to <M>X?</M></LI>
<LI>Prove that the
existence of a nonnull tweak vector implies <M>X</M> is not full column rank.</LI>
</OL>
</LI>

<LI>This exercise is a continuation of the last. Here you'll see
why the "tweak without letting off the alarm" game always
guesses the rank correctly. Again consider the same linear model
as in the last problem.  Suppose that the only tweak
vector of the form <M>(0,0,a,b)'</M> is the zero vector. What
can you conclude about <M>r(X)?</M> </LI>


<LI>Consider the linear model <M>y_{i_1\cdots i_t} = \mu +
\alpha_{1i_1}+\cdots + \alpha_{ti_t}+\epsilon_{i_1\cdots
i_t}.</M> What is the rank of the design matrix here?</LI>

</OL>

<DISQUSE id="lmlinalg1" url="https://arnabc74.github.io/linmod/linalg.html"/>

@}</NOTE>
