<NOTE>
@{
<TITLE>Differential equations</TITLE>
<UPDT>SUN APR 12 IST 2020</UPDT>
<HEAD1>Differential equations (contd)</HEAD1>
In the first part we have dealt with differential equations 
of the form
<D>
y'(x) = f(x,y),
</D>
where <M>y(x_0) = y_0.</M> We were given the function
<M>f(x,y)</M> and the numbers <M>x_0,y_0.</M> And we started to
solve it. 
<P/>
We had side-stepped the important question: does such an equation
always possess a solution? And even if it does, is the solution unique?


<P/>


The following theorem makes this problem
meaningful.

<THM>
Let <M>(x_0, y_0)\in\rr^2.</M> Let <M>\alpha,\beta>0</M>  be any two numbers. Let <M>f(x,y)</M>  be a
 continuous function defined
 over <M>[x_0-\alpha,x_0+\alpha]\times[y_0-\beta,y_0+\beta].</M> We assume that <M>[[\partial f][\partial y]]</M>  is
also continuous.  We
 consider the differential equation 
<D>[[dy][dx]] = f(x,y),\quad\quad\quad y(x_0)=y_0.</D>
Then there exists <M>\delta>0</M>  such that this differential equation has unique solution <M>y(x)</M>  
defined over <M>[x_0-\delta,x_0+\delta].</M>
</THM>
We shall not prove this in this course.


<HEAD1>Runge-Kutta method</HEAD1>
In the first part, we have discussed Taylor's method (including its first order
version, Euler's method). To get a reasonable approximation with
Taylor's method in most real life problems, we need to use a high order (say 4-th order).
But then we  need to compute high order
derivatives, which may be quite complicated. Runge-Kutta method aims to approximate Taylor's method
without this complication. Instead, it needs to evaluate <M>f(x,y)</M> at
many points. 
<P/>
Just like Taylor's method, we have different Runge-Kutta methods for
 different orders. The general form is rather complicated. In this page we shall present only the
 2-nd and 4-th order methods. 
<P/>
We start from the given point <M>(x_0,y_0).</M>  We are given a step size <M>h,</M>  and we want to approximate 
<M>y(x)</M>  at the points <M>x_1,...,x_n,</M>  where <M>x_i = x_0+h\,i.</M>  Thus, the output of the Runge-Kutta methods
consists of <M>(x_i,y_i)</M>  for <M>i=0,...,n.</M>
<P/>
The 2-nd order
 Runge-Kutta method is given by
<MULTILINE>
k_1 &  = &  h\,f(x_i,y_i)\\
k_2 &  = &  h\,f(*(x_i+\frac{h}{2},y_i+\frac{k_1}{2})*)\\
y_{i+1} &  = &  y_i + k_2.
</MULTILINE>
This method has the same order of precision as 2-nd order Taylor method.
To see this use the <LINK to="multidiff.html">2-variable Taylor expansion</LINK>:
<D>
f(x+\delta x, y+\delta y) = f(x,y)+\delta x f_1(x,y)+ \delta y f_2(x,y) +\mbox{ 2-nd order terms}.
</D> 
where <M>f_1,f_2</M> are partial derivatives of <M>f</M>
w.r.t. its first and
second arguments, respectively.
<P/>
We shall apply this
to <M>f(*(x_i+\frac{h}{2},y_i+\frac{k_1}{2})*).</M> To simplify
notation, we shall write <M>f,</M> <M>f_1</M> etc to
mean <M>f(x_i,y_i),</M> <M>f_1(x_i, y_i)</M> etc,
respectively. Then we see that
<MULTILINE>
k_2 & =&  h\left[f + \frac{h}{2} f_1 + \frac{k_1}{2} f_2 +
h^2\mbox{-terms}\right]\\
& =&  hf + \frac{h^2}{2} f_1 + \frac{h\,k_1}{2}  f_2 + h^3\mbox{-terms}\\
& =&  hf + \frac{h^2}{2} f_1 + \frac{h^2}{2} f f_2 + h^3\mbox{-terms},
</MULTILINE>
since <M>k_1 = hf.</M>
<P/>
So the second order Runge-Kutta method is
<D>
y_{i+1}  =
y_i + hf + \frac{h^2}{2} f_1 + \frac{h^2}{2} f f_2 + h^3\mbox{-terms}
</D>

Let's compare this with the 2-nd order Taylor's method:
<MULTILINE>
y_{i+1} = y_i + y_i'h + \frac{y_i''}{2}h^2
& =&   y_i + hf + \frac{y_i''}{2}h^2.
</MULTILINE>
Now by the <LINK to="multidiff.html">multivariate chain rule</LINK>,
<D>
y_i'' = f_1 + f_2y_i' = f_1+ff_2.
</D>
So the 2nd order Taylor's method becomes
<D>
y_{i+1} = y_i + hf + \frac{h^2}{2}(f_1+ff_2),
</D>
which coincides with the 2nd order Runge-Kutta method (ignoring <M>h^3</M>-terms).
<P/>
The most popular Runge-Kutta method is
the 4-th order version:
<MULTILINE>
k_1 &  = &  hf(x_i,y_i)\\
k_2 &  = &  hf\left(x_i+\frac{h}{2},y_i+\frac{k_1}{2}\right)\\
k_3 &  = &  hf\left(x_i+\frac{h}{2},y_i+\frac{k_2}{2}\right)\\
k_4 &  = &  hf(x_i+h,y_i+k_3)\\
y_{i+1} &  = &  y_i + \frac{1}{6}(k_1 + 2k_2 + 2k_3 + k_4).
</MULTILINE>
This has the same order of precision as the fourth order Taylor method.
The proof of this fact follows the same argument as above, but is rather messy.
<J>
k1=:4 :'h* x f y'
k2=:4 :'h*(x+h%2) f y+(x k1 y)%2'
k3=:4 :'h*(x+h%2) f y+(x k2 y)%2'
k4=:4 :'h*(x+h) f y+(x k3 y)'
nx=:4 :'x+h'
ny=:]+%&6@(k1+(2:*k2+k3)+k4)
rk=:({. nx  {:), ({. ny {:)

f=:sin@+
h=0.01
rk^:(i.10) 4 5
</J>
<HEAD1>Applications</HEAD1>
<HEAD2>Simple pendulum (revisited)</HEAD2>
In the first part, we had already arrived at the following system for a simple pendulum:
<MULTILINE>
\theta ' &  = &  \omega ~~(\equiv f_1(t,\theta,\omega))\\
\omega' &  = &  -\frac{g}{L} \theta  ~~(\equiv f_2(t,\theta,\omega)).
</MULTILINE>
The 4-th order Runge-Kutta method for this becomes
<MULTILINE>
t_{i+1} & = t_i + h\\
\theta_{i+1} &  = \theta_i + \frac{1}{6}(k_1+2k_2+2k_3+k_4)\\
\omega_{i+1} &  = \omega_i + \frac{1}{6}(j_1+2j_2+2j_3+j_4),
</MULTILINE>
where
<MULTILINE>
k_1 &  = &  hf_1(t_i,\theta_i,\omega_i) = h\omega_i\\
j_1 &  = &  hf_2(t_i,\theta_i,\omega_i) = -\frac{gh}{L} \theta_i\\
k_2 &  = &  hf_1(t_i+\tfrac{h}{2},\theta_i+\tfrac{k_1}{2},\omega_i+\tfrac{j_1}{2}) = h[\omega_i+\tfrac{j_1}{2}]\\
j_2 &  = &  hf_2(t_i+\tfrac{h}{2},\theta_i+\tfrac{k_1}{2},\omega_i+\tfrac{j_1}{2}) = -\tfrac{gh}{L} [\theta_i+\tfrac{k_1}{2}]\\
k_3 &  = &  hf_1(t_i+\tfrac{h}{2},\theta_i+\tfrac{k_2}{2},\omega_i+\tfrac{j_2}{2}) = h[\omega_i+\tfrac{j_2}{2}]\\
j_3 &  = &  hf_2(t_i+\tfrac{h}{2},\theta_i+\tfrac{k_2}{2},\omega_i+\tfrac{j_2}{2}) = -\frac{gh}{L} [\theta_i+\tfrac{k_2}{2}]\\
k_4 &  = &  hf_1(t_i+h,\theta_i+k_3,\omega_i+j_3)=h[\omega_i+j_3]\\
j_4 &  = &  hf_2(t_i+h,\theta_i+k_3,\omega_i+j_3)=-\frac{gh}{L}[\theta_i+k_3].
</MULTILINE>

<EXR>
Also try with the extensible rod case discussed earlier.
</EXR>

<HEAD2>Gravity well</HEAD2>
<PROJ id="gw2">
Simulate the gravity well for the first part using 4-th order Runge-Kutta method.
</PROJ>
<DISQUSE id="diff2" url="https://www.isical.ac.in/~arnabc/numana/diff2.html"/>
@}
</NOTE>
