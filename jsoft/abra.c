</CIMG>
</LI>
</UL>
As in the monadic case, any syntax tree may be built out of
these. If the leaf nodes are all dyadic, and expect the same
arguments, then everything is fine. However, that need not always
be the case. Some of them may be monadic, or need a constant
argument, or only <M>x</M> or only <M>y.</M>  These are tackled
as follows.

<HEAD3>A warning</HEAD3>
Of course, creating a huge syntax tree by repeated
use of forks (hooks) and compositions may not be desirable, but for
smaller trees they help a lot.

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
called <C>#