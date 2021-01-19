@{<NOTE>
<HEAD1>Learning J</HEAD1>
<HEAD2>Monads and dyads</HEAD2>
In the last page we learned about some nice things to expect from
J. Now, nothing comes without a price. A language needs to
restrict the freedom of a programmer in various ways to make the
good things possible. The astute reader may have already
discerned that the idea of applying a function to specific level
of  a tree is meaningful only if the tree is balanced (i.e., the
number of children of a node equals the number of chidren for its
siblings. This is the first restriction J puts. To ensure this
restriction for the outcome of application of a function we need
yet another restriction: the output shape of a function must depend on
only the input shape (and not on the input values). 
<CIMG web="tree2.5.png">The shape of the green triangle
determines the 
shape of purple triangle</CIMG>

Here is the next one: a function can have
either one or two arguments. In operation parlance, these are
called unary and binary operators. But J call them,
respectively, <RED>monad</RED>s and <RED>dyad</RED>s. We have
already learned about how monads behave. Dyads add a second level
of complication.

<HEAD2>Dyads</HEAD2>
Recall that a single application of <M>f</M> to <M>x</M> may
involve implicit loops to be launched causing multiple
invocations. For example, if <M>x</M> is a 1-dimensional array of
length 10, then <M>sin(x)</M> is a single application, but
actually consists of 10 invocations. The specified rank
determines how an application is split up into invocations.
<P/>
The situation is similar for dyads. We have two ranks, one for
each argument. So the two trees may be split up like these:
<CIMG web="d1.png"/>
Notice that the top parts (i.e. the frames) of the two trees are different. So we
cannot proceed to combine the gren and purple parts with <M>f</M>
immediately. However,
the frame of the second tree starts out like that the first
tree (i.e., the red parts are the same). So the second tree may
"sprout" to match the shape of the first:
<CIMG web="d2.png">Each leaf node "sprouts" by replicating</CIMG>
Now we may apply <M>f.</M> If a purple tree and a green tree are
combined by <M>f</M> into a blue tree:
<CIMG web="d3.png"/>
then the final result will be:
<CIMG web="d4.png"/>

<HEAD2>Right-to-left</HEAD2>

Since functions are either monads or dyads, so they are much like
unary and binary operations that we learn in school. Indeed, J
uses exactly the same syntax. Thus, instead of
writing <M>f(x,y)</M> we write <CODE>x f
y</CODE>. Similarly, <M>f(x)</M> is <CODE>f x</CODE>. In
arithmetic, we have two types of minuses, unary and binary, much
to the confusion of kids. J
keeps up the tradition (both of arithmetic and of confusion) by allowing a same symbol to denote a
monad as well as dyad. Usually, the monad and the dyad denoted by
the same symbol are related, though this is not a requirement. 


<P/>


With all functions being written as binary and unary operators,
it is no waonder that J has large number of these. So to keep the
order of evaluation unambiguous we need to either put lots of
parentheses or we need to have some convention like precedence
and associativity. Even with as few operations as just +, -, *
and /, untrained kids find it difficult to remember rules of
precedence.  You can imagine
how much more confusing it is going to be with many more
operators. Well, J has solved the problem by doing away with
precedence altogether (and thus confusing  trained adults). The J dictum is "always proceed from right
to left". Before you  and wonder about why we should proceed in
this "reverse" way, and suspect some Arabic influence, 
let me point out that this is how we do it in math most of the
time: <M>(f\circ g)(x) = f(g(x))</M> means apply <M>g</M> first,
and then <M>f.</M> 

<HEAD2>Cryptic symbols</HEAD2>
J justly prides itself on smart ways of combining existing
operation to produce new ones. This is much like the way modern
man writes numbers as opposed to ancient Romans. Ancient Romans
assigned symbols more or less arbitrily to whatever number they
needed, like I, V, X and C. But modern man has a systematic
approach using a radix and expressing everything by combining
powers of 10. If you want to express a hundred, the ancient Roman
just used a letter C, while modern man would first express the
number as square of 10, and notice that it is 
<Q>
<BLUE>1</BLUE><M>\times 10^2+</M> <BLUE>0</BLUE><M> \times 10^1 + </M><BLUE>0</BLUE><M>\times 10^0.</M>
</Q>
The ancient Roman must have thought us crazy that we need so much
math to just express a number. But of course we know the
advantage. However, even we would be driven crazy if we have to
write the above expression in full everyime we need to express
a hundred. So we need an abbreviation: we have (arbitrary)
symbols for all the possible coefficients (0,1,2,...,9) and then
simply list the coefficients side by side. Is it really simple?
Yes, when you see that even a kid can do it. No, when we remember
that it took centuries for this system to evolve. 

<P/>
Well, that is basically what happens for J also. J has a clever way of
expressing many things by combining some basic objects. Arbitrary
names of assigned to only the basic entities, and all other
derived entities are expressed in their terms.  Without
abbreviations, however, this would not be of much practical
value. So J uses very short names for its basic functions (at
most two characters).

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
