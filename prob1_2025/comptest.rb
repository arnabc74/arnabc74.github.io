<NOTE>
@{<E>
<HEAD1>Comparison test</HEAD1>
It is a way to test if a given series of non-negative real
numbers converges or not. The technique is to compare it with
another series of non-negative real numbers whose behaviour is
known. 
<P/>
The basic idea is like this:
<P/>
Suppose that <M>\sum a_n</M> converges, where <M>\forall
n~~a_n\geq0.</M> So we are adding more and more and
more <M>a_n</M>'s (so the sum is growing and growing and
growing), but still the sum is not blowing up to infinity. Clearly,
this means that the <M>a_n</M>'s are getting smaller and smaller
and smaller pretty fast. Now suppose that I give you another
series <M>\sum b_n</M> where <M>\forall n~~0\leq b_n\leq a_n.</M> 
<P/>
It should be intuitively quite obvious that <M>\sum b_n</M> must
also converge. Well, that is indeed true. 
<P/>
This is called comparison test. 

<THM name="Comparison test">
Let <M>\sum a_n</M> and <M>\sum b_n</M> be two series of
non-negative real numbers such that <M>\forall
n~~b_n\leq a_n.</M> Then
<UL>
<LI>if <M>\sum a_n</M> converges so does <M>\sum b_n.</M></LI>
<LI>if <M>\sum b_n</M> diverges so does <M>\sum a_n.</M></LI>
</UL>
</THM>
<PF>
Consider the sequence of partial sums <M>(*(\sum_1^n
b_k)*)_n.</M> Clearly, this is a non-decreasing sequence
(since <M>b_n</M>' are all <M>\geq 0</M>). Also this is bouded
from above, since
<D>
\forall n~~(*( \sum_1^n b_k \leq \sum_1^n na_k \leq \sum_1^\infty a_k)*).
</D>
Hence the sequence must converge, as required.
<P/>
The second part is just the contrapositive of the first
(<M>A\implies B</M> is the same as <M>\neg B\implies \neg
A</M>). 
</PF>

In fact, you do not
even need <M>b_n\leq a_n</M> to hold for all <M>n</M>'s. It is
enough if the ineuqlity holds <M>\forall n\geq N</M> for
some <M>N.</M>
</E>@}
</NOTE>
