<NOTE>
@{<E>

<M>\newcommand{\ddr}{\frac{d}{dr}}</M>
<HEAD1>Mathematical background</HEAD1>
<HEAD3>Result 1</HEAD3>
<P/>
The following results are easy to prove.
<BOX>
<MULTILINE>
r{n\choose r}&=& n{n-1\choose r-1}\\
r(r-1){n\choose r}&=& n(n-1){n-2\choose r-2}
</MULTILINE>
</BOX>

<HEAD3>Result 2</HEAD3>
<P/>
Many useful results follow from the
 <B>binomial theorem</B> which is given below.
<BOX>
<M>(a+b)^n = \sum_{r=0}^n {n\choose r} a^r b^{n-r}.</M>
</BOX>
<P/>
<EXM> Learn the following argument carefully.
<MULTILINE>\sum_{r=0}^n r{n\choose r}a^rb^{n-r}
                  &=& n\sum_{r=1}^n {n-1 \choose r-1}a^rb^{n-r}\\
                  &=& na\sum_{r=1}^n {n-1 \choose r-1}a^{r-1}b^{(n-1)-(r-1)}\\
                  &=& na\sum_{s=0}^{n-1} {n-1 \choose s}a^{s}b^{(n-1)-s}\\
                  &=& na(a+b)^{n-1}.
</MULTILINE>
Here we have put <M>s=r-1.</M>
</EXM>
<P/>
<EXR ref="math2">
Show that
<D>
\sum_{r=0}^n r(r-1){n\choose r}a^rb^{n-r} = n(n-1)a(a-1)(a+b)^{n-2}.
</D>
</EXR>
<P/>
<HEAD3>Result 3</HEAD3>
<P/>
Here is another useful result
<BOX>
<D>
\sum_{i=0}^r {m\choose i}{n\choose r-i} = {m+n\choose r}.
</D>
</BOX>
<P/>
To prove this consider the obvious identity
<D>
(x+1)^m (x+1)^n = (x+1)^{m+n}.
</D>
By the binomial theorem
<MULTILINE>
(x+1)^m &=& \sum_{r=0}^m {m\choose r} x^r\\
(x+1)^n &=& \sum_{r=0}^n {n\choose r} x^r\\
(x+1)^{m+n} &=& \sum_{r=0}^{m+n} {m+n\choose r} x^r\\
</MULTILINE>
Notice that the coefficient of <M>x^r</M> in the product 
<M>(x+1)^m (x+1)^n</M> is 
<D>
\sum_{i=0}^r {m\choose i}{n\choose r-i},
</D>
and the  coefficient of <M>x^r</M> in <M>(x+1)^{m+n}</M> is 
<D>
{m+n\choose r}.
</D>
Equating these two coefficients we get the required result.
<P/>
<HEAD3>Result 4</HEAD3>
There is a technique to interchange the top and bottom quantities in a
binomial coefficent. This is given below.
<P/>
<BOX>
<D>
{x-1\choose r-1} = (-1)^{x-r} {r\choose x-r}.
</D>
</BOX>
This proved as follows.
<MULTILINE>
{x-1\choose r-1} 
&=& {x-1\choose x-r}\\
&=&\frac{(x-1)(x-2)\cdots(\not x-\not 1-\not x+r+\not1)}{(x-r)!}\\
&=&\frac{(x-1)(x-2)\cdots(r)}{(x-r)!}\\
&=&(-1)^{x-r}\frac{(-r)(-r-1)\cdots(-r-(x-r)+1)}{(x-r)!}\\
&=&(-1)^{x-r}{ r \choose x-r}.
</MULTILINE>
<P/>
<HEAD2>Infinite series</HEAD2>
We know how to add finitely many numbers. For example, in the sum 
<M>(2+4+6.7)</M> we adding three numbers, while <M>\sum_{n=1}^5 n^5</M>
is a sum of 5 numbers. Sometimes, however, we may need to add {\em
infinitely many} numbers, as in
<D>
\sum_{n=0}^\infty \left(\frac12\right)^n = 
1+\frac12+\left(\frac12\right)^2+\left(\frac12\right)^3+\cdots
</D>
Such sums are called <B>infinite series</B> and we need special techniques
to add an infinite series. However, 
not all infinite series can be added. For example, if you are
to add <M>1+2+3+4+\cdots</M> then the sum will get bigger and bigger
and blow up to infinity. 
<P/>
<BOX>
\centerline{<B>Geometric series</B>}
<D>
1+r+r^2+r^3+\cdots = \frac1{1-r}.
</D>
where <M>-1<r<1.</M> If <M>r\leq-1</M> or <M>r\geq1</M> then the
series cannot be added. 
</BOX>
<P/>
The geometric series can be
differentiated  term by term to produce new infinite series if
<M>-1<r<1.</M> 

Thus,
<D>
 \ddr1 + \ddr r + \ddr r^2 + \ddr r^3 + \cdots= \ddr\frac{1}{1-r}
</D>
Hence,
<BOX>
If <M>-1<r<1,</M>
<D>
 1+2r+3r^2+\cdots=\sum_{i=1}^\infty ir^{i-1}=\frac{1}{(1-r)^2}.
</D>
</BOX>
<P/>
You can again differentiate term by term to get the following.
<BOX>
If <M>-1<r<1,</M>
<D>
 \sum_{i=2}^\infty i(i-1)r^{i-2}=\frac{2}{(1-r)^3}.
</D>
</BOX>
<P/>
Here is another useful series.
<BOX>
\centerline{<B>Exponential series</B>}
<D>
e^x = 1+x+\frac{x^2}{2!}+\frac{x^3}{3!}+\cdots,
</D>
where <M>x</M> is any number. 
</BOX></E>@}
</NOTE>
