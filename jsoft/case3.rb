@{<NOTE>

<HEAD1>Taylor's method</HEAD1>
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

</NOTE>@}
