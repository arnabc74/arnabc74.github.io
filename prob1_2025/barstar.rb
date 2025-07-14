@{
<NOTE>
<HEAD1>Bar-star argument</HEAD1>
"Bar-star argument" is a fancy name given to a commonly used
technique in combinatorics. The problem is to find out the total
number of ways you can distribute <M>n</M> <I>identical</I> objects among <M>k</M>
boys (of course <I>distinct</I>) such that each boy gets at least
one object.

Let's warm up with an example. Suppose that we have 10 objects
and three boys. We can show one possible way of distributing the
apples like this:
<PRE>
***|*|******
</PRE>
Here each <CODE>*</CODE> (star) is one object and
the <CODE>|</CODE>'s (bars) show the boundaries. Thus here the
first boy gets 3 objects, the second gets 1, the third gets the
remaining 6.

The answer may now be obtained like this:
<UL>
<LI>First, write down 10 stars in a row: can be done
in only 1 way.</LI>
<LI>Then pick any 2 of the 9 gaps between them, and insert bars
in them: <M>{9\choose 2}</M> ways.</LI>
</UL>
So, by the multiplication principle, the answer
is <M>1\times{9\choose 2} = {9\choose 2}.</M>

<HEAD2>First version</HEAD2>
Generalising the above argument for <M>n</M> objects and <M>k</M>
boys, the answer is 
<D>
{n-1\choose k-1}.
</D>

<HEAD2>Second version</HEAD2>
Here we allow one or more boys to go empty-handed. Thus the
following is allowed:
<PRE>
|***|*******
</PRE>
where the first boy gets nothing. Another possibility is 
<PRE>
***||*******
</PRE>
where the second boy has nothing.

Here it is just like arranging 10 identical starts and 2
identical bars in a row. Notice that the bars are identical,
though the boys are not! Imagine that there are a total
of <M>10+2=12</M> places, of which you can pick any 2 for the
bars. So the answer is 
<M>{12 choose 2}.</M>

In general, for <M>n</M> objects and <M>k</M> apples, the answer
is
<D>
{n+k-1\choose k-1}.
</D>

</NOTE>
@}
