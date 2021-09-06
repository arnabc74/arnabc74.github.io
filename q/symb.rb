@{<NOTE>
<HEAD1>A primer of symbolic computation</HEAD1>
When we think of computation, we think of two basic things:
numbers and operations. We shall focus on the basic
operations: addition, subtraction, multiplication and
division. In symbolic computation we want the numbers that we
work with to be <I>exactly</I> representable in the computer. The
immediate choice is the integers. Unfortunately, we cannot do
many interesting operations with them, e.g., division, taking
roots, infinite series etc. These will take us to numbers which
cannot be represented exactly in a computer. More precisely, these
cannot be represented exactly <I>using the default data types
provided in most languages</I> namely floating point. Symbolic
computation is all about creating new data types where more of
these numbers may be stored and operated upon exactly. 

<HEAD2>Three types of numbers that defy floating points</HEAD2>
Here are three types of numbers that cannot be represented
exactly in a computer: 
<UL>
<LI>fractions with recurring binary expansion
form (e.g., <M>[[13]]</M> or <M>[[15]]</M>), </LI>
<LI>irrational numbers like <M>\sqrt2</M>
or <M>\sqrt[4]{2-\sqrt3}</M>, which are described in terms of
their relation with the rationals.</LI>
<LI>Special numbers like <M>\pi</M> or <M>e.</M>, that have no
obvious relation with rationals except possibly through infinite series.</LI>
</UL>
We shall learn how to create data types to cope with these. 

<HEAD2>Rationals</HEAD2>
To represent a rational, just consider it as an ordered pair. For
instance, in R, the number <M>[[13]]</M> may be represented as
<R>
x = list(num=1,den=3)
</R>
It is easy to create functions to perform the basic operations on
them. For instance, addition:
<R>
add = function(x,y) {
  list(num=x$num*y$den + x$den*y$num,den=x$den * y$den)
}
</R>

<HEAD2>Numbers like <M>\pi</M>, <M>e</M></HEAD2>
Surprisingly, these are are easier to handle than <M>\sqrt2</M>
or <M>\sqrt3</M>. This is because these are not related to
rationals using any finite number of basic operations, and so
even after any number of steps, they remain isolated (i.e.,
cannot be simplified). After all, multiplying <M>x</M>
and <M>y</M> is easier than multiplying <M>234</M>
with <M>376.</M> In the latter case, you have to do the
multiplication, but in the former you merely write <M>xy</M> and
there's an end to it!. 
<P/>
Suppose that in a computation we shall need only the rationals
and <M>e.</M> It is not difficult to see that by applying
finitely many basic operations the outcome must be something like 
<D>
[[a_0+a_1e+\cdots+a_m e^m][b_0+b_1e+\cdots+b_n e^n]].
</D>
where all the <M>a_i</M>'s and <M>b_j</M>'s are rationals. So we
can store them as 
<R>
list(numCoef = c(a0,a1,...,am), denCoef = c(b0,b1,...,bn))
</R>
Again we need to write four functions for the basic operations
with these things. Difficult, but not too difficult. 

<P/>
The set of all these numbers is denoted by <M>\qq(e).</M> We say
that this is the field extension obtained by adjoining <M>e</M>
to <M>\qq.</M> The construction is perfectly general, and may be
repeatedly any finite number of times. For instance, if we want
to work with <M>e</M> as well as <M>\pi</M> simultaneously (along
with the rationals), the general form is 
<D>
[[a_0+a_1\pi+\cdots+a_m \pi^m][b_0+b_1\pi+\cdots+b_n \pi^n]].
</D>
where all the <M>a_i</M>'s and <M>b_j</M>'s are in <M>\qq(e).</M>
<P/>
The set of all these is naturally denoted by <M>\qq(e)(\pi).</M>
It is not diff cult to see that this is the same
as <M>\qq(\pi)(e)</M>, and is often written as <M>\qq(e,\pi)</M>
or <M>\qq(\pi,e).</M>
<P/>
The fun fact is that we do not really need to write four fresh
functions to deal with these. The same four functions would serve
our turn, if we employ a little programming trick. When operating
elements of <M>\qq(e)</M> we need operations
of <M>\qq</M>. Similarly, when working with <M>\qq(\pi,e).</M> we
need operations of <M>\qq(e).</M> So we can write the functions
recursively, where the lowest case will be the familiar rational
operations. 

<HEAD2>Numbers like <M>\sqrt2</M> etc</HEAD2>
Here again we can proceed as above. But this will not lead to
complete simplification. For example, if we want to compute 
<D>
e\times e\times e\times e - e
</D>
then the answer is just <M>e^3-e.</M>, as no further
simplification is possible. But if we take <M>x = \sqrt2</M> then 
leaving the answer as just <M>(\sqrt2)^3-\sqrt2</M> is not
enough. We can simplify it further to 
<D>
(\sqrt2)^3-\sqrt2 = 2\sqrt2-\sqrt2 = \sqrt2.
</D>

<HEAD2>Algebraic vs transcendental</HEAD2>

This simplification could be effected because <M>\sqrt2</M>
yielded a rational answer after certain finite number of basic
operations. In particular, here multiplying <M>\sqrt2</M> with
itself produced <M>2,</M> a rational number.
<P/>
It is not hard to see that 
<Q>"the numbers that yield rational answers after certain finite
number of basic operations"</Q>
are precisely
<Q>
"the Numbers that satisfy some polynomial equation with rational
coefficients."</Q>
These numbers are called <B>algebraic</B>, while numbers
like <M>\pi</M> and <M>e</M> are called <B>transcendental</B>. 

<P/>
In symbolic computation, it is easier to work with
transcendentals, because we do not have to simplify the result
(no simplification is possible). If we do not know if a number if
transcendental or algebraic, then we may just treat it as
transcendental. We shall still arrive at a valid answer. May be
we would miss a little simplification at the end, but nothing
else. 

<HEAD1>From basic operations to integration</HEAD1>
A quick summary of the above discussion is that rationals are easy
to handle because of their general form. Every other exotic
objects occur only in finite numbers, and so as long as we have a
list of the exotic objects to be used in a particular
computation, we can use the field extension technique repeatedly
to arrive at a field which may be represented exactly in a computer.
<P/>
Well, Risch (or may be Lagrange before him) noticed that a
similar thing applies for integration. In an elementary calculus
course we learn about lots of heuristics to find an
integral. We do not have a sure algorithm that will always
work. However, there was just one class of functions for which
such an algorithm indeed exists: rational functions
can <I>always</I> be integrated by the method of partial
fractions (assuming that you can exactly factorise
polynomials). Thus rational functions are "good". All other
"exotic" things occur only in finite number in any given
problem. So can't we use the field extension idea here as well? 

<P/>
Yes, we can. And that is the Risch algorithm.
<P/>
The role of integers is now played by the polynomials. The role
of rationals is played by the rational functions. These indeed
constitute a field (i.e., basic operations on rational functions
again produce rational functions). We plan to introduce exotic
functions. Again, these are of two types: algebraic (i.e., the ones
that can produce rational functions after a finite amount of
torture), and transcendentals (the others). An example of the
first type is <M>\sqrt{1-x^2}.</M> An example of the second
is <M>e^x</M> (the proof is not simple). As before working with
transcendentals is easier, and that is what we shall concern
ourselves with in this project. 
</NOTE>@}
