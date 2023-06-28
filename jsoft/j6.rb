@{<NOTE>
<HEAD1>Utilities</HEAD1>
<BOX><NAME><C>/</C> (monad)</NAME>
If u is a verb, then u/ (monad) is "continued u".
</BOX>
<BOX><NAME><C>/</C> (dyad)</NAME>
If u is a verb, then u/ (dyad) is outer product. 
</BOX>

<BOX><NAME><C>&.</C> (dyad adverb)</NAME>
Conjugation: u&.v is <M>v ^{-1} u v</M> as monad. (As a dyad?)
</BOX>

<BOX><NAME><C>&</C> (dyad adverb)</NAME>
3&u (as a monad) means the function <M>y\mapsto u(3,y)</M>.
 Similarly, u&3 (as a monad) means the function <M>x\mapsto u(x,3)</M>.
</BOX>

<BOX><NAME><C>@</C> (dyad adverb)</NAME>
u@v (as a monad) means the function <M>y\mapsto u(3,y)</M>.
 Similarly, u&3 (as a monad) means the function <M>x\mapsto u(x,3)</M>.
</BOX>

<BOX><NAME><C>1!:2</C></NAME>
Writes into a file. fw =: 1!:2
and then 'string to write' fw <'filename'
Notice that this writes a string. The writing is a one-shot
activity including file open, write and file close. If you want
to write many things into a file, first accumulate them into a
single string (insert newlines appropriately), and then use this once. Overwrites any existing file
of the same name.
</BOX>


<BOX><NAME><C>/:</C> (dyad and monad)</NAME>
x /: y sort x according to increasing order of y (ie, finds the
permutation that sorts y in increasing order, and applies that
permutation to x).  It is also a nice way to permute a list. Just
supply the permutation as y. Also <C>x /: x</C> (or <C>/:~ x</C>)
up-sorts x. 

<P/>
A monad it gives the permutation that up-sorts x. 
</BOX>

<BOX><NAME><C>\:</C> (dyad and monad)</NAME>
Similar to <C>/:</C> but in the opposite direction.
</BOX>

<BOX><NAME><C>":</C> (dyad and monad)</NAME>
Converts numbers to strings.
</BOX>

<BOX><NAME><C> < </C> and <C> > </C>(monad)</NAME>
Boxing and unboxing.
</BOX>

<BOX><NAME><C>]</C> and <C>[</C>(monad and dyad)</NAME>
Identity, left, right.
</BOX>

<BOX><NAME>fork (monad and dyad)</NAME>
<CIMG web="forkdm.png"/>
</BOX>

<BOX><NAME>hook (monad and dyad)</NAME>
<CIMG web="hookdm.png"/>
</BOX>

<BOX><NAME>define</NAME>
<PRE>
id=. verb define

)
</PRE>
The word <C>verb</C> may be replaced by <C>monad</C>
or <C>dyad</C> or <C>adverb</C>
</BOX>

<BOX><NAME><C>\</C> and <C>\.</C>(monad adverb)</NAME>
<C>u\</C> will cumulate over prefixes. 
<C>u\.</C> will cumulate over suffixes. 
</BOX>

</NOTE>@}
