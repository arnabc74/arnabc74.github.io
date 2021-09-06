<NOTE>
@{<E>
<TITLE>J tutorial</TITLE>
<HEAD1>Spirograph</HEAD1>
Have you seen spirographs? They are mathmatical toys to produce
intricate, pleasing curves. A common incarnation consists of a
gear rotating inside a toothed ring. A pen passes through  a hole
in the gear and touches the paper underneath. On rotating the
gear two circular motions are superposed, and a spiral curve
results. 
<P/>
It is easy to work out a parametric form of the curve. Each
curcular motion is like 
<D>
(R\cos (\omega t + \phi), R\sin(\omega t+\phi)).
</D>
So if are superposing two such we should get 
<D>
(R_1\cos (\omega_1 t+\phi_1), R_1\sin(\omega_1 t+\phi_1)) + (R_2\cos (\omega_2 t+\phi_2), R_2\sin(\omega_2 t+\phi_2)).
</D>
It is not very difficult to code this up in any language that
allows graphical output. We shall use J for this. 
<P/>
J is a strange language that achieves everything by combining
some simple functions. The simple functions accept either one or
two arguments. While this may sound like too much restriction, it
isn't. Each argument is allowed to be a list (so you may pack as
much info in a single argument, as you like. The advantage is
that we can use the functions like operators like +, -
etc in other languages. For example, let us write a function
<CODE>g</CODE> that will take <M>\omega</M> and <M>\phi</M> and a
list of <M>t</M>-values as input and produce <M>\sin(\omega t+
\phi)</M> and <M>\cos(\omega t+ \phi).</M> 
We shall package <M>\omega</M> and <M>\phi </M> into a single
list, and the <M>t</M>-values into another. So we shall write
<PRE>
3 1 g t 
</PRE>
to mean <M>\sin(3 t+ 1)</M> and <M>\cos(3 t+ 1).</M>
<P/>
Since we are packaging <M>\omega</M> and <M>\phi </M> into a
single list, we should better be able to take them out, as well,
when needed. The syntax is <CODE>0{x</CODE>
and <CODE>1{x</CODE>. So the following code snippet hardly comes
as a surprise
<PRE>
val=.(1{x) + (0{x) * y
</PRE>
Next you want to take <M>\sin</M> and <M>\cos</M> of these. J has
a single function to compute both. It is called <J>o.</J>. Thus
we want to do <J>2 o. val</J> and <J>1 o. val</J> and then to
make a matrix with threse two as rows. J is great at factoring
out code. since the <J>o. val</J> part is common to both, J will
allow to factor that out. As a first effort, we may try
<J>2 1 o. val</J>. This produces an error. J is confused to see
two lists on both sides. By default it tried to match the first
element of the left hand list with the first element of the right
hand list, and so on. This leads to an error as the two lists
differ in length. Actually, we wanted to say: for each number in
the left hand list, process the entire right hand side. J has a way
of saying this: a number is of rank 0 and the entire right hand side has
rank _. So we write <J>2 1 o."0 _ val</J>. 
<PRE>
g=.4 : '(2{x) * (2 1) o."(0 _)  (1{x) + (0{x) * y '
plot;/(3 1 1 g t) + (1 0 2g t)
plot;/((3 1 1)& g + (1 0 2) & g) t
</PRE>
</E>@}
</NOTE>

