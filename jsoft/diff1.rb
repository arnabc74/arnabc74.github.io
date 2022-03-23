<NOTE>
@{
<M>
\newcommand{\v}{\vec}
</M>
<TITLE>Differential equations</TITLE>
<UPDT>SUN JAN 24 IST 2021</UPDT>
<HEAD1>Simple pendulum</HEAD1>

During our high school days we are taught that a simple pendulum executes an
approximately simple harmonic motion <I>if the angle of swing is small.</I> However, high
school textbooks avoid discussing the general case: the motion of a
pendulum that may swing to larger angles. The main reason is that this leads
to an unmanageable differential equation that cannot be solved without a computer.
<P/>
Consider the following diagram. 
<CIMG web="pendu.png">Simple pendulum</CIMG>
Taking <M>O</M> as the origin and positive
<M>x</M>- <M>y</M>- and <M>\theta</M>-directions as shown, the position of
the bob is
<MULTILINE>
x &  = &  L\sin(\theta)\\
y &  = &  -L\cos(\theta).
</MULTILINE>
Remember that <M>\theta </M> is a function of time <M>t.</M> So the above
equations actually mean 
<MULTILINE>
x(t) &  = &  L\sin(\theta(t))\\
y(t) &  = &  -L\cos(\theta(t)).
</MULTILINE>

The forces on the bob along the positive <M>x</M>- and <M>y</M>-directions
are, respectively,
<MULTILINE>
F_x &  = &  -T\sin(\theta)\\
F_y &  = &  T\cos(\theta)-mg.
</MULTILINE>
Here <M>T</M> is the tension in the rod. It is also a function of
<M>t.</M>

<P/>

To derive the equations of motion we shall use Newton's second law of
motion, which says
<MULTILINE>
F_x &  = &  m x''\\
F_y &  = &  m y'',
</MULTILINE>
where <M>x''</M>, <M>y''</M>   denote the second derivatives of <M>x(t)</M>, <M>y(t)</M> with respect
to <M>t.</M>

<P/>

Differentiating <M>x(t)</M> and <M>y(t)</M> twice we get
<MULTILINE>
x'' &  = &  -L  \sin(\theta)(\theta')^2 + L \cos(\theta)\theta ''\\
y'' &  = &  L  \cos(\theta)(\theta')^2 + L  \sin(\theta)\theta ''.
</MULTILINE>

Putting these in Newton's second law, and simplifying, we get
<D>
\theta '' = -[[gL]] \sin(\theta).
</D>
At this point most  textbooks use
the ``<M>\sin(\theta)\approx \theta </M>'' approximation for "small"
<M>\theta</M> to reduce the above differential equation to 
<D>
\theta '' = -[[gL]] \theta,
</D>
which can be solved easily by hand to produce simple harmonic
motion. The approximation is pretty good if the pendulum swings
within <M>4^\circ</M>. But not all pendulums swing within that
range. What if you have a pendulum that swings <M>30^\circ?</M>
That's what we are going to explore now.
<P/>
We first reduce the second
order differential equation <M>\theta '' = -[[gL]]\theta</M> 
to a <I>system</I> of first order equations.
<MULTILINE>
\theta ' &  = &  \omega\\
\omega' &  = &  -[[gL]] \theta.
</MULTILINE>
Notice that <M>(\theta',\omega')</M> is given as a function
of <M>(\theta,\omega).</M> The entire motion of the pendulum is
determined if we know <M>(\theta,\omega)</M> at some instant. So
we call <M>(\theta,\omega)</M> the <I>phase</I> of the system. We
are given the initial phase of the system, i.e., we know from which initial angle we have released the
pendulum, and with what angular velocity. Our aim is to know the phase at
all time points during the swing.

<P/>
Thus, at <M>t=t_0</M> (specified number), we know 
<MULTILINE>
\theta & = & \theta_0\mbox{ (specified number)},\\
\omega & = & \omega_0\mbox{ (specified number)}.
</MULTILINE> 
We want to know the values <M>\theta(t)</M>  and <M>\omega(t)</M>  at any given <M>t > t_0.</M>
<P/>
Thanks to the differential equations, we also know 
the rate at which they are increasing at <M>t=t_0:</M>
<MULTILINE>
\theta'(t_0) & = & \omega_0,\\
\omega'(t_0) & = & -[[gL]]\sin \theta_0.
</MULTILINE> 
Now advance time a little  to <M>t_1=t_0+\delta t</M>, say. By this
time <M>\theta</M> and <M>\omega</M> will roughly change to
<MULTILINE>
\theta_1 & = & \theta_0 + \theta'(t_0)\delta t = \theta_0+\omega_0\delta t\\
\omega_1 & = & \omega_0 +\omega'(t_0)\delta t =
\omega_0-[[gL]]\sin \theta_0 \delta t.
</MULTILINE> 

So we get the phase (approximately) at  <M>t_1= t_0+\delta t.</M>
<P/>
Now we keep on advancing time by  <M>\delta t</M> increments. The same 
logic may be used repeatedly to give, at <M>t_k = t_0+k\cdot\delta t,</M>
<MULTILINE>
\theta_k & = & \theta_{k-1} + \omega_{k-1}\delta t\\
\omega_k & = & \omega_{k-1} -[[gL]]\sin \theta_{k-1} \delta t.
</MULTILINE> 

Admittedly, this is a rather crude approximation. However, if <M>\delta t</M>  is pretty small, the accuracy increases. 
Let us explore this numerically using J. For this, consider the
iteration as a single function that maps one <M>(\theta,
\omega)</M> pair to the next:
<D>
(\theta,\omega)\mapsto (\theta,\omega) + \delta t
\underbrace{(*(\omega,-[t[gL]]\sin \theta)*)}_{r(\theta,\omega),\mbox{ say}}.
</D>
<J>
r=: {:, (_9.8 *  sin @ {.) 
</J>
Rememebr that this function is expeced to work as a monad on a
pair <M>(\theta,\omega).</M> Notice that the J code is
essentially the same as the following description
of <M>r(\theta,\omega)=(*(\omega,-[t[gL]]\sin \theta)*)</M> in plain English:
<Q>
the last entry (i.e., <M>\omega</M>) followed
by <M>-9.8\times</M> the first entry (i.e., <M>\theta </M>).
</Q>
Next, have to move from the current <M>r(\theta,\omega)</M> pair
to the next.
English description:
<Q>
Add <M>\delta t\times r</M> (to the current value).
</Q>
Its J translation gives a function <C>u</C>:
<J>
u=: + 0.1 *  r 
</J>
Try out <C>r</C> and <C>u</C> like this with initial <M>(\theta,\omega)=(1,0)</M>:
<J>
r 1 0
u 1 0
</J>
Since J codes are minimalistic, it is easy to lose your
bearing while programming. To avoid this, keep a firm hold on
the layout of the data as they  get transformed by
different functions. For instance, the updating function
produces the next <M>(\theta,\omega)</M> pair from the current one:
this:
<CIMG web="p1.png"></CIMG>
It will help to visualize the updation as a syntax tree:
<CIMG web="ftree1.png"></CIMG>
It should not be very difficult to draw (mentally, after some
practice) this tree based on the algebraic description. The only
hitch may be with the "append" function which is something we are
not as familiar as the mathematical operations. This is more like
a book-keeping operation, but thanks to J's infix notation we can
show this in the same syntax tree as the more mathematical
ones.
<P/>
 In a syntax tree, the data enter through the leaves. There
are two types of data here: those involving the current value
(shown in red) and those involving various constants
(shown in blue). Our plan is to express this as a function
of <M>(\theta,\omega)</M>. So we need two book keeping functions
to extract <M>\theta </M> and <M>\omega</M>
from <M>(\theta,\omega),</M> resulting in the following tree:
<CIMG web="ftree2.png"></CIMG>
This syntax tree may be written down directly in J:
<J>
u=: + 0.1 * {: , _9.8 * sin @ {.
</J>
This may look like a magic spell (it is one!), but if you wish,
you may resort to a more verbose version:
<J>
r=: {: , _9.8 * sin @ {.
u=: + 0.1 * r
</J>
Let us compare this with a similar thing from, say, Python:
<J>
r = [ y[1], -9.8 * sin(y[0]) ]
y = y + 0.1 * r
</J>
If you want to start with some <C>y</C> and apply this 10 times,
then you will need to replay <I>both</I> the lines as many
times. But in J, <C>r</C> is a function, and it is already
inside <C>u</C>. So merely applying <C>u</C> 10 times will be
enough. Let us see this in action.
We shall start with initial <M>(\theta,\omega)=(1,0)</M> and
apply the function updating function 100 times, say. 
<J>
u^:(i.100) 1 0 
</J>
Here we are using the function power operator. If <C>u</C> is a
function then <C>u ^: 2</C> will apply it twice
(i.e., <M>y\mapsto u(u(y))</M>). If we write <C>u ^: 1 2 3</C>,
then you will get a function (<M>f</M>, say) such
that <M>f(y)</M> is a tree with items <M>u(y)</M>, <M>u(u(y))</M>
and <M>u(u(u(y))).</M>
<P/>
Here <C>i.100</C> is the list <M>0,1,2,...,99.</M> So we are
getting 99 iterations of the function <C>u</C> starting with <M>(\theta,\omega)=(1,0)</M>.
This is what you get:
<CIMG web="p2.png"></CIMG>

It will be a lot more fun to make a plot of the <M>\theta</M>
values. To isolate just the <M>\theta</M> values, you need to
pick up only the first entry (i.e. apply <C>{.</C>) to each of
the red subtrees (i.e., at rank 1):
<J>
plot {."1 u^:(i.100) 1 0 
</J>
<HIDE lab="j1"><MSG>J help</MSG><HIDDEN>
<UL>
<LI><CODE>=:</CODE> defining a new variable or function.</LI>
<LI><CODE>{.</CODE> (head): extracts the first element of a list.</LI>
<LI><CODE>{:</CODE> (tail): extracts the last element of a
list.</LI>
<LI><CODE>@</CODE> function composition.</LI>
<LI><CODE>^:</CODE> (composition power): e.g. <CODE>f^:3</CODE>
means <M>f(f(f(\cdots))).</M> Also, <CODE>f^:(1 2 3)</CODE>
means a list of functions, <M>f, f\circ f, f\circ f\circ f.</M></LI>
<LI><CODE>i.</CODE> creates a list of integers. In particular,
<CODE>i. 5</CODE> is 0,1,2,3,4.</LI>
<LI><CODE>|:</CODE> (transpose): matrix transposition.</LI>
<LI><CODE>plot</CODE> when used as <CODE>plot y</CODE> makes a
line plot of <M>(0,y_0),...,(n-1,y_{n-1})</M> if <M>n</M> is the
length of <M>y.</M></LI>
</UL>
</HIDDEN></HIDE>
<P/>

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

Now try your hand at the following problem.

<EXR>
<M>[[dy][dx]] = e^{-xy^2}</M> starting from <M>(0,0).</M>
</EXR>


<HEAD2>Taylor's method</HEAD2>
One problem with Euler's method is that unless <M>\delta t</M> is very small the
<M>y_i</M>'s may move away from the curve of <M>y(t).</M> Taylor's
method generalises Euler's method to improve the accuracy. In Euler's
method we used local linear approximations (tangents)
to <M>y(t)</M> at each <M>t_i:</M>
<D>
y(t) \approx y(t_i) + y'(t_i)(t-t_i).
</D>
These are just the first two terms of the Taylor expansion
of <M>y(t):</M>
<D>
y(t_i) + y'(t_i)(t-t_i) + [[y''(t_i)][2]](t-t_i)^2
+\cdots [[y^{(k)}(t_i)][k!]] (t-t_i)^k + \cdots 
</D>
In Taylor's method we take more terms from this series. Thus,
1-st order Taylor's method is the same as Euler's method, while
the <M>k</M>-th order Taylor's method uses
<D>
y(t)\approx y(t_i) + y'(t_i)(t-t_i) + [[y''(t_i)][2]](t-t_i)^2
+\cdots [[y^{(k)}(t_i)][k!]] (t-t_i)^k.
</D>
<EXR>Check that it is the unique <M>\leq k</M> degree polynomial that has the same
derivatives as <M>y(t)</M> up to order <M>k</M>  at <M>t_i.</M></EXR>


<EXM>Solve the same differential equation
 <M>y'(t) = -\sin(t+y)</M> with <M>y(0) = -[[\pi2]]</M>
over <M>[0,2]</M>
using 2-nd order Taylor method.
<SOLN/>
The 2-nd degree Taylor polynomial for <M>y(t)</M> at
any <M>t_{k-1}</M> is 
<D>
y(t_{k-1}) + y'(t_{k-1})(t-t_{k-1}) + [[y''(t_{k-1})][2]] (t-t_{k-1})^2.
</D>
For this we need <M>y'(t_{k-1})</M>  and <M>y''(t_{k-1}).</M>  These may be obtained approximately as follows.
<P/>
We can write the differential equation as
<D>
y'(t) = -\sin(t+y(t)).
</D>
Differentiating w.r.t. <M>t,</M>
<D>
y''(t) = -\cos(t+y(t))(1+y'(t)).
</D>
Hence
<MULTILINE>
y'(t_{k-1}) & = & -\sin(t_{k-1}+y(t_{k-1}))\\
y''(t_{k-1}) & = & -\cos(t_{k-1}+y(t_{k-1}))(1+y'(t_{k-1})).
</MULTILINE>
<P/>
As before we take a grid of values in <M>[0,2],</M> say <M>10</M> steps. So
there are 11 points starting with <M>t_0=1</M> and ending
with <M>t_{10}=2.</M> The general formula for <M>t_k</M> is 
<D>
t_k = 1+k\cdot\delta t,
</D>
where <M>\delta t = [[2n]].</M>
<P/>
So the 2nd order Taylor iterations are
<D>y_{k} = y_{k-1} +[[2n]]y'(t_{k-1}) + [[2][n^2]]y''(t_{k-1}).</D>

The result is shown below. The red curve is the 2nd order Taylor approximation with <M>n=10.</M>  The dashed polyline is
 the Euler's approximation (i.e., 1st order Taylor) with the same <M>n.</M>
<CIMG web="et2_10.png">Euler and 2nd order Taylor
(<M>n=10</M>)</CIMG>
<J>
d1=:-@sin@+/
d2=:(-@cos@+/)*(1+d1)
tay2=:]+0.1, (0.1 * d1) + (0.005 * d2)
tay2^:(i.5) 0 _0.5p1
tr=: xct t=: (i.200) % 100 
xct=: --arcsin@ (1 (-%+) *~)
pd'reset'
pd t; tr
pd ;/ |: tay2^:(i.20) 0 _0.5p1
pd'show'
</J>

<HIDE lab="j3"><MSG>J help</MSG><HIDDEN>
<UL>
<LI><CODE>;</CODE> makes boxes, e.g. <CODE> 1; 'str' ; 3.9</CODE>
will give a list of boxes.</LI>
<LI><CODE>;/</CODE> inserts a <CODE>;</CODE> between consecutuve
elements of a list, e.g., <CODE>;/ 1 2 3</CODE> is the same as <CODE>1;2;3</CODE>.
</LI>
<LI><CODE>pd</CODE> makes plots in a versatile way. Start
with <CODE>pd 'reset'</CODE> and end with <CODE>pd
'show'</CODE>. To plot <M>(x_i,y_i)</M>'s and join the points
with line segments use <CODE>pd x; y</CODE></LI>
</UL>
</HIDDEN></HIDE>
</EXM>
@}
</NOTE>
