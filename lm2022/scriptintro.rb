@{<NOTE>
<HEAD1>intro1 (basic)</HEAD1>
Intro to the course. To be recorded.

<HEAD1>intro2 (basic)</HEAD1>
We shall start our exposition with one example. The scenario we
shall discuss is faced by all applied scientists, who need to
make real life measurements. We have two different types of atom that we shall call Red and
Blue. We want to measure their masses. Unfortunately,
we cannot separate a single atom.  So we consider three molecules, each of
which consist of just these two atoms. 
<CIMG web="approx/mol1.png">Three molecules</CIMG>
Suppose that I carry out an experiment and measure the masses of
these three molecules to be 9.8, 9.1 and 7.0 in some suitable
unit. From these we get these  equations:
<D>
<MULTILINE>
3A+4B & = & 9.8\\
4A + B & = & 9.1\\
2A + 3B & = & 7.0
</MULTILINE>
</D>
So we have three equations in two unknowns. If you try to solve
these you will find that the system in inconsistent. The reason
is that all these three equations are approximate. These are
outcomes of measurements, and all measurements are inherently
prone to errors. So the question we now face is: How to solve such an
approximate system?

One naive approach is to ignore any one of three equations. Then
we have two (approximate) equations in two unknowns. Just treat
them as exact equations, and solve. This is not entirely
satisfactory, because:
<UL><LI> the answer will depend on which equation
you chose to ignore.</LI>
<LI> All the equations here give some partial
information about the unknowns. Since they are not exact, no two
(or even all the three together) give you complete
information. So when you pick only two equations, you are
utilising only part of the available information, while
consciously throwing away some further information (the other
equation).</LI></UL>
Instead, we want a method which takes all the three equations
into account, and makes the fullest possible utilisation of the
available information. 

This is a common requirement of all scientists involved in
practical measurements. They have a theory involving some unknown
quantities, they make (approximate) measurements, and end up into
some inconsistent (or rather approximately consistent)
system. They still want to solve the equations. 

And this leads to linear statistical model, which is a
fascinating application of linear algebra.

<HEAD1>intro3 (basic)</HEAD1>
We start with the same approximate system as above. We shall
first recast them into a form that may be handled with linear
algebra:
<D>
A<MAT>
3\\4\\2
</MAT>
+B<MAT>4\\1\\3</MAT>
\approx
<MAT>9.8\\9.1\\7.0</MAT>.
</D>
Thus, our interest lies in expressing the RHS vector as a linear
combination of the two vectors in the LHS. I said that the system
is inconsistent, i.e., the RHS vector does not lie in the span
of the LHS vectors. I said "approximately consistent" meaning
that the RHS vector is "close" to that span. 

Think of these pictorially:
<CIMG src="col3.png">The "most important"picture of this
course!</CIMG>
 The two short red arrows denote the LHS vectors, the long green
one denotes the RHS one. The plane is the span of the LHS
vectors. Clearly, the green vector is not in this plane. To
assess how "close" it is to the plane, you
may drop a perpendicular from the tip of the green arrow onto the
plane (you will get the tip of the long purple arrow). 

Solving an approximately consistent system means: 
<Q>even if you
cannot express the RHS as a linear combination of the LHS
vectors, at least find a linear combination that comes as close
as possible to the RHS vector.</Q>
This means finding the vector in the plane that is closest to the
green vector. Clearly, that is the long purple vector. So our aim
will be to get <M>A</M> and <M>B</M> such that the LHS equals
this purple vector.

This you can recognise as the least squares technique. When we
are talking about the distance between the green and purple tip,
it is Euclidean distance which is just the square root of the sum
of squares of the coordinate-wise differences.

<HEAD1>intro4 (basic)</HEAD1>
In general we shall work with an approximate system like 
<D>
\v y_{n\times 1}\approx X_{n\times p}\v \beta_{p\times 1}.
</D> 
<P/>
For example, in our weighing example, we have 
<D>
\v y = <MAT>9.8\\9.1\\7.0</MAT>,\quad X = <MAT>3 & 4\\4 & 1\\2 & 3</MAT>\text{ and } \beta = <MAT>a\\b</MAT>.
</D>
<P/>
Such an approximate system of linear equations is called
a <B>linear model</B>. The traditional notation is 
<D>
\v y = X \v \beta + \v \epsilon.
</D>
Here <M>\v y</M> is the measurement vector, <M>X</M> is the fixed
known matrix, <M>\v \beta </M> is the vector of unknowns
and <M>\v \epsilon </M> is the random error vector. 

A linear model becomes a linear statistical model when we put
some distributional assumptions on the error vector <M>\v
\epsilon.</M>

Our aim is to find the <M>\v \beta</M> such that <M>X\v
\beta </M> is the orithogonal projection of <M>\v y</M>
onto <M>\col(X).</M>

The technique is like this:
You have <M>X\v \beta \approx \v y.</M> Premultiply both sides
by <M>X'</M> to get <M>X'X\v \beta \approx X'\v y.</M> Change
the <M>a\pprox</M> to an exact equality to get this system
(called the normal equations):
<D>
X'X\v \beta = X'\v y.
</D>
Mysteriously, this system is always consistent, and its solution
will give you the  required least squares solution! Why this works
is something we shall get into later. 

The normal equations constitute a square system, i.e., as many
equations as there are unknowns. If the coefficient matrix <M>X'X</M> happens 
to be nonsingular, we can write down the unique least squares
estimator of <M>\v \beta </M>  as
<D>
\h\v \beta = (X'X)^{-1} X'\v y.
</D> 
If <M>X'X</M> is singular, then the solution is not unique
(though at least one solution must exist). We shall get into
those details later.

<HEAD1>intro5 (basic)</HEAD1>
Using R lm.

<HEAD1>intro6 (basic)</HEAD1>
Using R normal equations.

<HEAD1>intro7 (basic)</HEAD1>
R workflow. No stat.

<HEAD1>intro8 (basic)</HEAD1>
installing and loading the faraway package.

<HEAD1>intro9 (basic)</HEAD1>
Basic exploration commands: dim, head, tail, attach, detach etc.

<HEAD1>intro10 (basic)</HEAD1>
plot

<HEAD1>intro11 (basic)</HEAD1>
factor







</NOTE>@}
