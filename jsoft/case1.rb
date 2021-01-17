<NOTE>
@{
<M>
\newcommand{\v}{\vec}
</M>
<TITLE>Simple pendulum with J</TITLE>
<HEAD1>An example: simple pendulum</HEAD1>

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
Let's explore this numerically using the following J code:
<J>
r=: {:, (_9.8 *  sin @ {.)  
e=:] + 0.1 *  r 
e^:(i.100) 1 0 
plot {. |: e^:(i.100) 1 0 
</J>
<HIDE lab="j1"><MSG>J help</MSG><HIDDEN>
<UL>
<LI><CODE>=:</CODE> defining a new variable or function.</LI>
<LI><CODE>{.</CODE> (head): extracts the first element of a list.</LI>
<LI><CODE>{:</CODE> (tail): extracts the last element of a
list.</LI>
<LI><CODE>@</CODE> function composition.</LI>
<LI><CODE>]</CODE> Identity function <M>f(y)=y</M></LI>
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

Here we are making 100 steps with <M>\delta t = 0.1.</M>   Try with <M>\delta t = 0.01</M>  also, and see how the plot changes.
@}
</NOTE>
