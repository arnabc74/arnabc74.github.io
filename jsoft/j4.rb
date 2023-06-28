@{<NOTE>
<HEAD1>Delving deeper</HEAD1>
In the last two pages I have said that J allows the prgrammer to
construct required functions easily by combining some basic
building blocks. Naturally, you need to be familiar with the
building blocks in order to take advantage of this.
<P/>
In this page we shall learn about a few such functions. But
before we start, let me point you to master resource for these
building
blocks: <LINK to="https://code.jsoftware.com/wiki/NuVoc">NuVoc</LINK>. 
<P/>
Visit this site. It is as informative and indispensible as a
dictionary, and about as appetizing. 

<P/>
The first thing that you should notice is that all the basic
functions have names consisting of at most two characters. If it
has two characters, then the second character is either a period
or a colon. This introduces a natural grouping: a single
character, the character followed by a period, and the character
followed by a colon. Each resulting symbol has two possible
interpretations: monad and dyad. So you get at most 6 different
functions in a group. These 6 functions are usually related, so
that it is easy to remember their names. The NuVoc lists them
according to this natural grouping.
<P/>
But trying to remember the basic functions by groups is as boring
and inefficient as trying to build vocabulary by reading a
dictionary. Instead, we shall group them here by usefulness and
familiarity.

<HEAD2>Familiar function, familiar symbol</HEAD2>
Here are the basic functions that you expect to be present in any
language, and J uses the same symbols as most other languages:

<BOX><NAME><C>+</C>, <C>-</C>, <C>*</C>, <C>^</C> (dyads)</NAME>
These all behave exactly as you'd expect, except that evaluation
is always from right to left.
</BOX>

<BOX><NAME><C>< </C>, <C>> </C> (dyads)</NAME>
These are the familiar comparisons. They return 0 or 1.  J does
not have any separate boolean data type.
</BOX>

<BOX><NAME><C>'</C>, <C>(</C> and <C>)</C></NAME>
These are delimiters, not functions. They work as usual. Strings
in J are always delimited by single quotes. If you need to have a
single quote inside a string just repeat the single quote, e.g.,
to create the string "Don't do this." you need to
write <C>'Don''t do this.'</C>
</BOX>

<HEAD2>Familiar functions, unfamiliar symbols</HEAD2>

<BOX><NAME><C>i.</C>, <C>i:</C> (monad)</NAME>
Sequences.
</BOX>

<BOX><NAME><C>i.</C>, <C>i:</C> (dyad)</NAME>
Index of first occurence: list i. elt.
Index of last occurence: list i: elt.
</BOX>

<BOX><NAME><C>j.</C> (monad and dyad)</NAME>
Imaginary. Complex.
</BOX>

<BOX><NAME><C>p.</C> (monad and dyad)</NAME>
Find roots: p. coeffs in increasing order
Eval poly: coeffs p. where
</BOX>


<BOX><NAME><C>%</C> (dyad)</NAME>
This is division.
</BOX>

<BOX><NAME><C>#.</C> and <C>#:</C>(monad and dyad)</NAME>
From/To some base to/from decimal.
</BOX>

<BOX><NAME><C>=</C>, <C><:</C>, <C>>:</C>, <C>~:</C> (dyads)</NAME>
These are all conditions testing for equality, <M>\leq</M>,
<M>\geq</M> and <M>\neq.</M> A common mistake is to use <C>=</C> for assignment.
</BOX>


<BOX><NAME><C>=.</C>, <C>=:</C> (dyad) </NAME>
These are for assignments. The first is for local assignment, the
second for global. Unless  used inside a script file or function
these behave similarly. But, if used inside a file, the effect of
local assignment is confined within the file or function, while
the global assignment has effect visible everywhere.
</BOX>

<BOX><NAME><C><.</C>, <C>>.</C> (monads and dyads)</NAME>
As monads, these are floor and ceiling functions,
respectively. As dyads, these compute minimum and maximum of two numbers.
</BOX>

<BOX><NAME><C>+.</C>, <C>*.</C> (dyads) , <C>-.</C>
(monad)</NAME>
These are boolean operators, or, and, not.
</BOX>

<BOX><NAME><C>^</C>, <C>^.</C>, <C>%:</C> (monads)</NAME>
These are <M>e^x</M> and <M>\log x</M> and <M>\sqrt x</M>.
</BOX>

<BOX><NAME><C>%.</C> (monad and dyad)</NAME>
Matrix inversion and least squares solution. 
</BOX>


<BOX><NAME><C>i.</C> (monad)</NAME>
Creates a lis 0 1 2 3 ... up to one less than the argument.
</BOX> 

<BOX><NAME><C>]</C> (monad)</NAME> identity funtion.</BOX>

<BOX><NAME><C>|:</C> (monad)</NAME> transpose. Actually more
general than that.</BOX>

<BOX><NAME><C>NB.</C></NAME> Comment. Not a function.</BOX>


<BOX><NAME><C>-.</C> (dyad)</NAME>
Set minus
</BOX>

<BOX><NAME><C>!</C> (monad and dyad)</NAME>
Factorial when monad, choose when dyad. You write <C>! 3</C>  to
mean <M>3!</M> and <C>3 ! 4</C> to mean <M>^4C_3.</M>
</BOX>

<BOX><NAME><C>?</C>, <C>?.</C> (monad and dyad)</NAME>
<C>? 10</C> generates a random number from <M>\{0,1,...,9\}.</M>
<C>? 0</C> generates a random number from <M>Unif(0,1).</M>
<C>3 ? 10</C> generates an SRSWOR of size 3 from <M>\{0,1,...,9\}.</M>
The dotted version is similar, but uses fixed seed. Produces
different results for 64 bit and 32 bit machines.
</BOX> 

<BOX><NAME><C>|</C>(monad and dyad)</NAME>
Absolute value as monad. Remainder as dyad, e.g., <C>3 | 4</C>
returns 1.</BOX>

<HEAD2>Less familiar functions</HEAD2>

<BOX><NAME><C>~.</C> (monad)</NAME> unique values</BOX>

<BOX><NAME><C>~:</C> (monad)</NAME> positions of first occurences
of unique values</BOX>

<BOX><NAME><C>q:</C> (monad)</NAME> prime factors.</BOX>

<BOX><NAME><C>q:</C> (dyad)</NAME> prime factor exponents.</BOX>




<HEAD2>Strange functions</HEAD2>
 <C>e.</C>,
</NOTE>@}
