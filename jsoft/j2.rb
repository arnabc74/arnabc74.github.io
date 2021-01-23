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

<HEAD2>Forks and compositions</HEAD2>
We have learned about forks and compositions in the last page. These are
ways to combine existing functions to create new functions. At
first glance they may appear to be merely some convenient
shortcuts. But actually they play an important role in J. We
shall discuss this now.

<HEAD3>Monadic case</HEAD3>
Here
is a quick reminder for the monadic case (<C>y</C> denotes the argument):
<UL>
<LI>If <C>r</C> is the fork  <C>r=:f g h</C> then <C>r y</C> means:
<CIMG web="fork.png"></CIMG>
</LI>
<LI>If <C>s</C> is the  composition  <C>s=:f @ g</C> then <C>s
y</C> means:
<CIMG web="comp.png"></CIMG>
</LI>
</UL>
The power of these  abbreviations comes from the fact that
since all J functions are either mondas or dyads, hence the inner
nodes of any
syntax trees must have degree either 1 or 2:
<CIMG web="ex1.png">0, 2, 4, 7 are dyads, rest are monads</CIMG>
So the tree may be
constructed by just piecing together forks and
compositions. For each dyad, we need a fork, and for each monad a
composition.  For the example shown above we have (using the
right-to-left compuation order of J):
<J>
1 0 3 2  5@(8 7 9) 4 6
</J>
It might look like magic. It is! But just like all magics in real
life, there is a way to practice them. The tree technique is one
such. 
<P/> 
This  example, however, represents the situation where 
all the leaf nodes 
correspond to monads, e.g., in <M>\sin y + \cos y</M> the leaf
nodes are <M>\sin</M> and <M>\cos</M>, both monads.
<P/>

Now, that may not always be the case, because
<OL><LI>a leaf node may be just some constant, as
in <M>5 + \sin y</M> the leaf node for 5 is holding a constant.</LI>
<LI> A leaf node may be <M>y</M> itself, as in <M>y -\sin y.</M></LI></OL>
 J provides convenient
techniques to cover these in the case where the troublesome leaf
node is the left child of its parent:
<OL><LI>
If the leaf node contains a
constant, then just write it, and J will accept it as a constant
function. For example, <C>(5+sin)</C> is a valid fork.</LI>
<LI>
In the second case, where the a  leaf node contains <M>y</M>,
there are two possible solutions. You may imagine <M>y</M>
as <M>id(y)</M> where <M>id</M> is the identity function. For
instance, <M>y-\sin y</M>  becomes <M>id(y)-\sin y,</M> which
is a fork. This works irrespective of whether the <M>y</M> occurs
in the left or the right child. However, if it occurs in the left
child, then there is a shortcut:  just omit the <M>y</M>, and 
J will understand. With this,  <M>y-\sin y</M> becomes
 <C>(-sin)</C>. Such lop-sided forks are
called <RED>hook</RED>s in J.
</LI></OL>

In the above solutions,  J shows a bias in favor of the left child.
This may bother you. If the parent is a commutative operation, then
the children may be swapped (e.g., <M>\sin(y) + 3</M> may be written as
<M>3+ \sin(y)</M>), but what if it is not? Don't worry. J has got
you covered there too! J can swap
the children of any dyad by using a <C>~</C>. Thus, <C>4 -~ 5</C>
is the same as <C>5 - 4</C>. If you want to
express <M>\sin(y)-5</M> using a fork, then <C>sin - 5</C> won't
work, but <C>5-~sin</C> will. Similarly, <M>\sin(y)-y</M> may be
abbreviated to the hook <C>-~sin</C>.
<P/>
This discussion was about the monadic behaviour of forks. Similar
ideas hold for dyads as well. 
<HEAD3>Dyadic case</HEAD3>
<UL>
<LI>If <C>r</C> is the fork  <C>r=:f g h</C> then <C>x r y</C> means:
<CIMG web="fork2.png"></CIMG>
</LI>
<LI>If <C>s</C> is the  composition  <C>s=:f @ g</C> then <C>x s y</C> means:
<CIMG web="comp2.png"></CIMG>
</LI>
</UL>
As in the monadic case, any syntax tree may be built out of
these. If the leaf nodes are all dyadic, and expect the same
arguments, then everything is fine. However, that need not always
be the case. Some of them may be monadic, or need a constant
argument, or only <M>x</M> or only <M>y.</M>  These are tackled
as follows.
<UL>
<LI>J provides two convenience functions <C>]</C>
and <C>[</C>. Used as dyads, they return, respectively, the
right and left arguments.</LI>
<LI>Any constant leaf node may be handled as in the monadic
case, as long as it is the left child.</LI>
<LI>We can use a hook here as well. The hook <C>h=: f g</C> when
used dyadically as <C>x h y</C> will mean:
<CIMG web="hook2.png"></CIMG>
</LI>
</UL>

<HEAD3>Tacit programming</HEAD3>
It is possible to build any syntax tree of dyads and monads using
forks (hooks) and compositions. This is an example of what is called <RED>tacit
programming</RED> in J: creating new functions by combining
existing functions via operators without explicitly mentioning
the arguments. 
<P/>
A powerful feature of J as it is, one must not go overboard with
it. 
Creating a huge syntax tree by repeated
use of forks (hooks) and compositions is not desirable from
the viewpoint of
readability. But tacit programming helps a lot for
smaller trees.

</NOTE>@}
