@{<NOTE>
<HEAD1>Tree handling functions</HEAD1>
The most important and frequently used functions in J are the
ones that manipulate the tree structure. As these are unique to
J, these are also the ones that will take more time to
digest. 

<HEAD2>Structure of trees</HEAD2>

A tree in J is always balanced. This allows an easy way to store
it. Just store the leaf nodes, and also the shape. So if you want
to reshape the tree, just change the shape. This is done
using <C>$</C> dyad. It considers the tree as a list (not the
inderlying list). If the list has a length different from the
product of the shape values, then the list is replicated
(possibly partially). The same symbol <C>$</C> used as a monad
will extract the shape of a tree. The monad <C>#</C> returns the
number of items in a tree. If we want to see the
underlying list, then you can use the monad <C>,</C>
(mysteriously called ravel). To really change the shape you need
to use <C>m n $ , x</C>

<HEAD2>Accessing items</HEAD2>

To access items we use the <C>{</C> family.
 get the first
item use the monad <C>{.</C>. To get the last item use the
monad <C>{:</C>.  To get an item at a specific
position (0-based) use the dyad <C>{</C>.
<P/>
Most often a tree is best considered as a list of items. Such
 lists are sometimes mere packets of a small number of
 items. There is a quick way to unpack such a tree:
<J>
'a b c' =: x
</J>
This command expects <C>x</C> to be a list of 3 items. These
 get stored in the variables <C>a</C>, <C>b</C> and <C>c</C>.
<P/>

 To get a new tree consisting of all the items
except the first use <C>}.</C>. If you want to remove the last
item then use the monad <C>}:</C>.

<HEAD2>Modifying a tree</HEAD2>
The dyad <C>|:</C> will transpose the tree, i.e., reverse the
shape (and the underlying list accordingly). Used as a dyad it
will allow more diverse way to permute the shape (and the
underlying list accordingly). Basically, <C>|:</C>
applies <C>|.</C> to the shape.

<HEAD2>Combining trees</HEAD2>
Next we shall discuss three important ways to combine two trees
to produce a bigger tree.
Keeping an analogy in mind might prove helpful here:
<Q> When
we work with fractions we often prefer to express them in their
reduced forms. However, when we perform an operation on two
fractions in reduced forms, the immediate result may not be in
reduced form, e.g., 
<D>
[[18]]+[[38]] = [[48]].
</D>
So we need to do a bit of post-processing (cancellation in this
example) to achieve the reduced form.
</Q>
Similarly, J likes to keep its trees balanced (all branches have
same length, and all siblings have same number of children). When
we combine two such trees, the immediate result may not be
balanced. So J performs some post-processing to balance the
tree. It helps to have an idea of what this involves. Basically,
there is only one guiding principle: always pad shorter things to
match longer counterparts. An example will help. Here is an
unbalanced tree:
<CIMG web="unbal.png"/>
The last branch is shorter than the rest, and the second branch
has one less leaf node. To make it balanced J first grows the
short branch until it is as long as the longest branch:
<CIMG web="bal1.png"/>
Now at each level we shall find the maximum number of children,
and pad smaller numbers to the right. We start doing this bottom
up. After the bottom most layer is done, the tree looks like this:
<CIMG web="bal2.png"/>
Next we attack the layer above:
<CIMG web="bal3.png"/>
This process is always done internally.

<HEAD2>The comma family (dyad)</HEAD2> 
<HEAD3>Appending</HEAD3>
The <C>,</C> dyad appends two trees "side by side":
 
<CIMG web="app.png">The new tree may need to be balanced</CIMG>

<P/>
Here is a complete example with balancing.

<CIMG web="append1.png">Step 0: The two trees to be appended</CIMG>
First the trees are combined by merging their root nodes:
<CIMG web="append2.png">Step 1: The result of direct appending</CIMG>
Then the resulting  tree is balanced:
<CIMG web="append3.png">Step 2: The final result</CIMG>
 The simplest case is
of course, where the tree in step 1 is already
balanced. This is what you'll need most of the time (though
often you'll find yourself in the unbalanced situation by
mistake!). There is one situation however, which is not covered
by this: when one of the two trees is just the root node:
<CIMG web="append4.png">Step 0: The blue atom to be appended</CIMG>
 Then
"merging the root nodes" would not produce a tree at all. In
this case, we create a new item of the same shape as the other,
where the atom is <I>replicated in all its leaf nodes</I>:
<CIMG web="append5.png">Step 1: The final result</CIMG>
Intuitively, appending is a way to grow a longer list.

<HEAD3>Laminate </HEAD3>
<C>,:</C>
Another natural way to combine two trees is by creating a new
tree with these two trees as items (and then balancing if
needed). This is called lamination, and effected
by <C>,:</C>. 

<CIMG web="lam.png">The new tree needs to be balanced.</CIMG>
Here's one complete example with balancing.
<CIMG web="laminate1.png">Step 0: the two trees to be
laminated</CIMG>
The two trees are hung from a common root node.
<CIMG web="laminate2.png">Step 1: after combining</CIMG>
Then we balance the tree:
<CIMG web="laminate3.png">Step 2: the final result</CIMG>
As usual, the most frequently encountered situation is where the
tree in step 1 is already balanced. Intuitively, lamination is
the way to grow a list of lists. 

<HEAD3>Stitch</HEAD3>
<C>,.</C>
This is yet another way to combine two trees which is not very
intuitive. If we have a list of <M>x</M>-values and a
corresponding list of <M>y</M>-values, then stitching will
produce a list of <M>(x,y)</M> pairs. More precisely, given two
trees with equal number of items, the corresponding items pairs
are appended. 
<CIMG web="stitch1.png">Step 1: two trees to be stitched together</CIMG>
<CIMG web="stitch2.png">Step 2: the final result</CIMG>
If the numbers of items are not equal, then J
reports a length error.

<HEAD2>The comma family (monad)</HEAD2>
<HEAD3>Ravel </HEAD3>
<C>,</C>
Sometimes you need to see the underlying list. This is
called <B>ravel</B>ling, and is effected by the
monad <C>,</C>. In terms of trees, it creates a new tree with the
same leaf nodes in the same order, but immediately under the
root. If the original tree is just the root node, then ravel
creates a new root node above it.
<CIMG web="ravel.png">Ravelling</CIMG>

<HEAD3>Itemize </HEAD3>
<C>,:</C>
This creates a new tree, with the old tree as its single item. In
other words, it adds a parent to the root node, and that parent
becomes the new root node. A leading 1 is added to the shape. In
terms of sets it is like converting <M>x</M> to a singleton
set <M>\{x\}</M>.

<HEAD3>Ravel items </HEAD3>
<C>,.</C>
This applies ravel to each item separately. Indeed this is the
same as ravelling with rank <M>-1.</M>

<HEAD2>The semicolon family</HEAD2>
<HEAD3>Box-append (link)</HEAD3>
The dyad <C>;</C> effectively does the same thing as the dyad <C>,</C>, but after
boxing. The result is a tree with two leaf nodes under a root,
the  leaf nodes being boxes containing the original
trees. Simple!

<HEAD3>Raze</HEAD3>
This is the monad <C>;</C>. It performs unboxing and then tries
to append the box contents together. As the box contents may be
wildly different, this may entail a massive amount of recasting
and balancing.   Remember that unboxing keeps unboxed things unaltered.
 
<C>|.</C>, <C>|:</C>,
<C>'a b'=: x</C>
</NOTE>@}
