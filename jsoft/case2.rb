@{<NOTE>

<HEAD2>A closer look: Euler's method</HEAD2>
Our differential equation was of the form
<D>y'(t) = f(y),</D>
where <M>y(t_0) = y_0.</M> In our pendulum example we had <M>y
= (\theta,\omega).</M> Also 
<D>
f(y) \equiv f(\theta, \omega) = (*(\omega, -[[gL]]\sin \theta)*).
</D>
The crude approximation that we used is called <B>Euler's
method</B>. It works with the more general form:
<D>
y'(t) = f(t,y),\quad y(t_0) = y_0.
</D>
We shall be given the function
<M>f(\cdot,\cdot)</M> and the initial values <M>t_0,y_0.</M> We are also  given a
positive integer <M>n</M> and a step size <M>\delta t.</M> We have to find out the
function <M>y(t)</M> at the points <M>t_1,...,t_n,</M> where
<D>
t_i = t_0+i \delta t.
</D>
Euler's method works by making local linear
approximations to the unknown <M>y(t).</M> 
<P/>
For this we need to know the derivative of <M>y(t).</M>  If
at some instant <M>t</M>  we can guess the value of <M>y(t),</M>  then the value of <M>y'(t)</M>  may be obtained from 
differential equation: <M>y'(t)=f(t,y(t)).</M>
<P/>
 Here we are starting from  <M>y_0 =
y(t_0).</M> So we know that <M>y'(t_0) = f(t_0,y_0).</M> This is the slope
of the tangent to <M>y(t)</M> at <M>t=t_0.</M> Follow this tangent for
a little time <M>\delta t</M> to arrive at <M>y_1 =
y_0+f(t_0,y_0)\delta t.</M> The point
<M>(t_1,y_1)</M> may not lie exactly on the curve of <M>y(t).</M> But if <M>\delta t</M>
is small, then this should lie close to it. So we take <M>y_1</M> as an
approximation to <M>y(t_1).</M> Now we repeat the process again to get 
<M>y_2 = y_1+\delta t\,f(t_1,y_1).</M> In general, we  define 
<D>
y_k = y_{k-1}+\delta t\, f(t_{k-1},y_{k-1}) \quad\mbox{ for } k=1,...,n.
</D>
This is <B>Euler's method</B>. 
<P/>
How good is this method? To explore this we shall try out a simple example, where
the solution is known. 

<EXM>
Suppose we are working with <M>f(t,y) = -\sin(t+y).</M> In other
words, we are solving <M>[[dy][dt]] = -\sin(t+y).</M> We shall
start from the point <M>(*(0,-[[\pi2]])*),</M> i.e., <M>y = -[[\pi2]]</M>
when <M>t=0.</M> 
<P/>
Of course,
we can solve it analytically, by taking <M>v = t+y.</M>
Then <M>[[dv][dt]]  = 1+[[dy][dt]]= 1-\sin(v),</M> which may be solved by direct integration. The
answer is (check!)
<D>
y = -\sin ^{-1} (*( [[1-t^2][1+t^2]] )*) - t.
</D>
We
shall compare our approximation with this to 
see how Euler's method performs. We shall take <M>n</M> steps
in <M>[0,2].</M> Then the Euler iterations are
<D>
y_i = y_{i-1} - [[2n]]\times \sin(t_{i-1}+y_{i-1}) 
</D>
for <M>i=1,...,n</M> starting with <M>t_0 = 0</M> and <M>y_0 =-[[\pi2]].</M>

<P/>
The result (with <M>n=10</M>) is shown in the following graph. The continuous curve is the true solution. The dashed 
polyline (with 10 segments) is Euler's approximation:
<CIMG web="eul10.png">Euler with 10 steps</CIMG>
If we increase the number of steps to 20 then the approximation
is somewhat better:
<CIMG web="eul20.png">Euler with 20 steps</CIMG>
If you use 100 steps the accuracy is pretty good:
<CIMG web="eul100.png">Euler with 100 steps</CIMG>
We may explore these using the following J code.
<J>
d1=:-@sin@+/
eu=:] + 0.1, 0.1  *  d1
eu^:(i.5) 0 _0.5p1
xct=: --arcsin@ (1 (-%+) *~)
tr=: xct t=: (i.200) % 100
pd'reset'
pd t; tr 
pd ;/ |: eu^:(i.20) 0 _0.5p1
pd'show'
</J>

<HIDE lab="j2"><MSG>J help</MSG><HIDDEN>
<UL>
<LI><CODE>+/</CODE> means summation. e.g. <CODE>+/ 1 2 3</CODE>
will give 6.</LI>
<LI><CODE>,</CODE> joins two lists end to end. e.g. if <M>x=1, 2,
3</M> then <CODE>5, x</CODE> means 5,1,2,3.</LI>
<LI><CODE>_0.5p1</CODE> means <M>-[[\pi2]].</M></LI>
<LI><CODE>(f g h)</CODE> means the function <M>y\mapsto
g(f(y), h(y)),</M> or <M>(x,y)\mapsto g(f(x,y), h(x,y)).</M> Just as <M>(\sin+\cos)(x) = \sin x + \cos
x.</M> In particular, <CODE>1 (-%+) x</CODE> means <M>[[1-x][1+x]].</M></LI>
</UL>
</HIDDEN></HIDE>
</EXM>



</NOTE>@}
