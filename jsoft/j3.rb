@{<NOTE>
<HEAD1>Learning J</HEAD1>

<HEAD2>First taste of J</HEAD2>
Now let us look at a simple example in the light of what we have
learnt so far. In this example we shall give a taste of all the
features we have talked about so far. We start with an array of
numbers 1,3,4,5,10. J will consider this as a tree of depth 1. 
<CIMG web="tree1.png"></CIMG>
<J>
x=: 1 3 4 5 10
</J>
To find the number of highest level branches J provides a monad
called <C>#</C>. Let's put it to use:
<J>
# x
</J>
J responds with 5. Notice how I described <C>#</C> in terms of
the input tree, and not as "a function to find the length of a
list".
<P/>
Next, we shall see the arithmetic operations in J. The operations
for addition, subtraction and multiplication are usual. But J
uses <C>%</C> for division. All operations are done using floating
points (more on this later).

<P/>
The expression
<J>
3 * 4 - 10 % 5
</J>
is interpreted as 
<D>
3\times (4 - (10 \div 5)).
</D>
Amuse yourself by trying to guess the result of 
<J>
5 - 1 - 1 - 1 - 1 - 1
</J>
I have talked about a symbol having a monad and dyad
interpretation. Here is one example. Used as a dyad <C>^</C>
means raising to a power, as in:
<J>
3 ^ 2
</J>
But used as a monad, it means <M>e^x</M>: 
<J>
^ 2
</J>
Next, let us take a look at some functional operators. We shall
use the trigonometric functions, which we load as
<J>
load'trig'
</J>
Then we can create 
<J>
f=: sin + cos
g=: ^ * sin
h=: sin @ cos
i=: ^ @ cos
</J>
Here <M>f(x) = \sin x+\cos x</M>, <M>g(x) = e^x\sin
x</M>, <M>h(x) = \sin(\cos x)</M> and <M>i(x)=e^{\cos x}.</M>
The first two are examples of forks. 
<P/>
Next let us see insertion in action. Suppose we want to compute 
<D>
1 + 3 + 4 + 5 + 10.
</D>
This means inserting the dyad <C>+</C> between each successive
pair. So we can write
<J>
+ / 1 3 4 5 10
</J>
Guess the outcome of 
<J>
- / 1 1 1 1 1 
</J>
Most often the <C>/</C> operator is used to accumulate some result
recursively (e.g., summing). You can use this to find minimum or
maximum as well, .e.g, 
<J>
<./ 1 4 3 8 4
</J>
Another important class of operators take slices of dyads to
produce monads. The slice could be along the <M>y</M>-axis (i.e.,
fixing some value of <M>x</M>) like <M>y\mapsto f(a,y).</M> Or it
could be aong the <M>x</M>-axis, like <M>x\mapsto f(x,b).</M> Or
t could be along the diagonal <M>t\mapsto f(t,t).</M> These are,
respectively, 
<C>a & f</C>, <C>f & b</C> and <C>f~</C>. 
</NOTE>@}
