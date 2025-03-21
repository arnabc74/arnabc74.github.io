<NOTE>
@{<E>
<HEAD1>Infinite series</HEAD1>
<HEAD2>What it is</HEAD2>
A (real) infinite series is an expression of the form 
<D>
a_1+a_2+a_3+\cdots,
</D>
where <M>a_i</M>'s are all real numbers. Of course, we cannot
really add up infinitely many numbers (we shall die before it is
over). So what we mean by this sum is 
<D>
\lim_{n\to\infty} (a_1+\cdots + a_n).
</D>
The sum <M>a_1+\cdots+a_n</M> is called
the <M>n</M>-th <B>partial sum</B>.
<P/>

If this limit exists, then we say that the series converges to
that value. If the limit is <M>\infty </M> or <M>-\infty </M>
then we say that the series diverges to <M>\infty </M>
or <M>-\infty.</M> It is possible that the series nether
converges nor diverges. We call such a
series <B>oscillating</B>. An example is 
<D>
1-1+1-1+1-1+-+-\cdots.
</D>
Here the partial sum are
<D>
1,0,1,0,1,0,...,
</D>
which clearly oscillates.
<P/>
The definition of an infinite series as the limit of its partial sums
is a natural extension of the concept of usual addition. However,
an infinite series may show certain counterintuitive behaviours,
as we shall see next.

<HEAD2>Strange things</HEAD2>
<HEAD3>Not associative</HEAD3>
Ordinary addition is associative, i.e. you group the numbers as
you please without affecting the sum. For instance, <M>(a+b)+(c+d) = (((a+b)+c)+d).</M>
<P/>
Not so for an infinite series. For example, the oscillating series
<D>
1-1+1-1+1-+-+\cdots,
</D>
when grouped like this
<D>
(1-1)+(1-1)+(1-1)+(-)+(-)+\cdots,
</D>
actually becomes
<D>
0+0+0+\cdots,
</D>
which converges to <M>0.</M> (Don't think of <M>0\times
\infty=</M> undefined). Here the partial sums are all <M>0,</M>
and so the limit of partial sums is <M>0.</M> If you group the
terms like 
<D>
1+(-1+1)+(-1+1)+()+()\cdots,
</D>
then you'll a get a series converging to <M>1.</M>

<HEAD3>Not commutative</HEAD3>
Changinf the order of the summands does not change a sum. This is
called commutativity of addition. Unfortunately, this may fail
for an infinite series.

<P/>
Consider again our old friend
<D>
1-1+1-1+1-+-+\cdots.
</D>
All the even terms are <M>1</M> and all the odd terms
are <M>-1,</M> right? We shall rearrange these a bit to get
<D>
1+1-1+1+1-1++-++-\cdots.
</D>
Don't think that we have increased the number of <M>1's.</M> We
still have countably infinitely many <M>1</M>'s and just as
many <M>-1</M>'s. 
<P/>
This rearranged series has partial sums
<D>
1,2,1,2,3,2,...
</D>
The pattern is simple it goes up 2 steps then comes down by 1. So
effectively it is increasing, and increasing without bounds. In
short, the rearranged series diverges to <M>\infty.</M> 

<HEAD2>Nice series</HEAD2>
Absence of the helpful and familiar properties like associativity
and commutativity makes it a bit difficult to work with infinite
series. Thankfully, there are certain types of infinite series
that behave nicely (i.e., regrouping and rearranging them do not change
the sums). One type is mentioned in the next theorem.


<THM>
AN infinite series consisting of only nonnegative terms will
never change the sum howsoever your regroup or rearrange the terms.
</THM>


</E>@}

</NOTE>
