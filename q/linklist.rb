@{<NOTE>
<HEAD1>Linked lists</HEAD1>
Suppose that I have a list of my friends on a piece of paper:
<PRE>
Samprit
Atanu
Jonaki
Krishanu
Saikat
</PRE>
The order is important, the first friend is the closest, the
next one the second closest, and so on. After writing the list up
to this, I suddenly recall that I have missed a name: Anvit. He
should be third in the list. Unfortunately, as I am writing on a
piece of paper, inserting a name between two names is difficult
(unless I use ugly scribbling). However, if my list were in a
computer, then it is very easy: I would just take my cursor after
Atanu, hit enter to create a black line (causing the everything
below to shift downwards by a line), and then type Anvit in the
blank line. In this way I can insert as many names as I wish in
any position. No scribbling, no squeezing. I might even remove
any number of names from the list, without leaving any ugly
gap. The list just grows,
stretches and shrinks as needed.
<P/>
How does the computer manage this? Does it reserve lots of empty
spaces between every pair of names, to allow for future
insertions, and somehoow hide the spaces while displaying the
list? Not really. It uses a clever trick called a <B>linked
list</B>, which we shall discuss now.

<HEAD2>Insertion</HEAD2>

When we make a list on paper, adding a new name is easy, as long
as you are adding it at the end. Well, internally the computer is
also writing the names on just such a piece of paper. This paper
has lines drawn on it, and every line is numbered. Thus, the
paper looks like this:
<PRE>
1 Samprit
2 Atanu
3 Jonaki
4 Krishanu
5 Saikat
6
7
8
9
...
</PRE>
Unlike our paper list, the computer also writes after each name
the number of the line where the next friend is to be found:
<PRE>
1 Samprit   2
2 Atanu     3
3 Jonaki    4
4 Krishanu  5
5 Saikat    0
6
7
8
9
...
</PRE>
The 0 after Saikat means that Saikat is the last name in the
list. Nothing interesting so far. Now suppose that I need to
insert Anvit in the third position. The computer simply writes
Anvit at the next available position:
<PRE>
1 Samprit   2
2 Atanu     3
3 Jonaki    4
4 Krishanu  5
5 Saikat    0
6 Anvit
7
8
9
...
</PRE>
I want Anvit to appear after Atanu. So I write 6 after Atanu.
Similarly,  Jonaki should appear after
Anvit. So I write 3 after Anvit:
<PRE>
1 Samprit   2
2 Atanu     <RED>6</RED>
3 Jonaki    4
4 Krishanu  5
5 Saikat    0
6 Anvit     <RED>3</RED>
7
8
9
...
</PRE>
Is this clear. Then try these exercises.

<EXR>
Insert the name Arko after Krishanu.
Next, insert the name Oishi <I>before</I> Saikat. 
</EXR>

<EXR>
Which is more difficult:
inserting <I>after</I> a given name, or <I>before</I> a given
name? Will the difficulty increase if the list is very long?
</EXR>

<EXR>
Add Subroto after Saikat. Thus, Subroto is now the last in the list.
</EXR>

Now suppose I suddenly find a long lost friend, Arinjita, and
must give her the first place. So I need to update the list as
follows.
<PRE>
1 Samprit   2
2 Atanu     6
3 Jonaki    4
4 Krishanu  5
5 Saikat    0
6 Anvit     3
7 Arinjita  1
8
9
...
</PRE>
But here you'll have a problem while displaying the list. We have
to start from Arinjita (i.e., line 7) and not from line 1. How on
earth are we to know where to start from? The computer needs to keep track of that separately. It
calls the line number corresponding to the first name
the <B>head</B>. So far, the head was always 1. But after
inserting Arinjita, the head changes to 7. Henceforth, we shall
denote the head with a star:
<PRE>
 1 Samprit   2
 2 Atanu     6
 3 Jonaki    4
 4 Krishanu  5
 5 Saikat    0
 6 Anvit     3
*7 Arinjita  1
 8
 9
...
</PRE>

<HEAD2>Deletion</HEAD2>
We talked about inserting a name in the list. Deleting is even
easier. Suppose that we want to delete the name after line number
2. The next line number is 6 (Anvit), and after that comes line 3
(Jonaki). Our aim is to delete Anvit from the list, i.e., we
should have Jonaki coming right after Atanu. Convince yourself
that the following updating achieves this:
<PRE>
 1 Samprit   2
 2 Atanu     <RED>3</RED>
 3 Jonaki    4
 4 Krishanu  5
 5 Saikat    0
 6 Anvit     3
*7 Arinjita  1
 8
 9
 ...
</PRE>
Notice that we do not need to do anything to line 6. Just by
making sure that line 6 is not referred by others, we are
effectively removing Anvit from the list.

<EXR>
Delete the head from the list, i.e., delete Arinjita making the
next guy, Samprit the new head.
</EXR>

<HEAD2>Implementing in C</HEAD2>
As the discussion above shows, the computer maintains a secret paper
list (which can only grow), and displays the final list cleverly
by following the next line numbers. Well, as you might have
guessed, there is really no paper list inside a computer. The
role of the paper is played by the memory of the computer. This
memory is indeed like a long (very l..o..n..g) piece of papers
with many lines marked on it. Just as in our example, the lines
are numbered consecutively. Each lines is 
called a <B>location</B> and its  number is called
its <B>address</B>. As there are a huge number of locations, the
address easily runs into 20 digits or so!
<P/>
Now, we need to associate a location with an address. There has
to to be a 2-way communication: address to location, and location
to address. If you have a variable <C>x</C> stored at some
location, then its address is given by <C>&x</C>. Conversely, if
the address of a location is stored in a variable
called <C>p</C>, then the corresponding location
is <C>*p</C>. Incidentally, just as integers are stored
in <C>int</C>'s and characters in <C>char</C>'s, there are
special types of variables to hold addresses
called <B>pointer</B>s.
<P/>
Thus, to store a name and the address of the next student we need
a string and a pointer. Typically, you package them as follows in
C:
<J>
struct <RED>stdnt</RED> {
  char <RED>name</RED>[80];
  struct <BLUE>stdnt</BLUE> *<RED>next</RED>;
}
</J>
Yes, it is ugly. Nobody denies that. But that is how it is in
C. Here the red words are words of our choice. The black words
are parts of the C language. The word <C>stdnt</C> has occurred
twice (the second occurrence is shown in blue). 

<HEAD2>The basic operations</HEAD2>
What are the things that we would like to do with the structure?
We want to 
<UL>
<LI>refer to a student</LI>
<LI>accessing parts</LI>
<LI>create a student,</LI> 
</UL>
Let's learn to do these one by one in C. 

<HEAD3>Referring to a student</HEAD3>
There are two ways to refer to a student, directly or by
address. It is somewhat like referring to a student by name
(direct) or by roll number (address).  In the direct method 
you'll need a variable of type <C>struct stdnt</C> like:
<J>
struct stdnt aStudent;
</J>
In the address method, you'll need a variable of type <C>struct
stdnt*</C> like:
<J>
struct stdnt* studentAddress;
</J>
In this case the variable <C>studentAddress</C> is called
a <B>pointer</B>. 
<P/>
It is easy to switch between the two representations: 
<J>
aStudent = *studentAddress;
</J>
and
<J>
studentAddress = & aStudent;
</J>

<HEAD3>Accessing parts</HEAD3>
Here <C>struct stdnt</C> has two parts (or <B>field</B>s, as they
are called): <C>name</C> and <C>next</C>. You may access these
easily. If the student is given directly, then use:
<C>aStudent.name</C> and <C>aStudent.next</C>. If the student is
specified via address, then use <C>studentAddress->name</C>
and <C>studentAddress->next</C>. 

<P/>
We may use these forms to both read and write. For example, if I
need to print the name of a student, I may use
<J>
printf("Name is %s\n", aStudent.name);
</J>
or
<J>
printf("Name is %s\n", studentAddress->name);
</J>
If I want to make a student's name "Samprit", I shall use 
<J>
sprintf(aStudent.name,"Samprit");
</J>
or
<J>
sprintf(studentAddress->name,"Samprit");
</J>
I can similarly, read the next student's name as
<J>
printf("Next name is %s\n",aStudent.next->name);
</J>
or
<J>
printf("Next name is %s\n",studentAddress->next->name);
</J>

<HEAD3>Creation</HEAD3>
First, creation of a new
student. This is like adding a new name in the paper list. For
this you have to find an unused line, and write the name there. 
Finding an unused line is called <B>memory allocation</B> in C,
and we shall do this by the <C>calloc</C> function. Now, when the
memory is being allocated, we have only the address of the
location with which to refer to the student. So here
we <I>must</I> use the address method:
<J>
studentAddress = (struct stdnt*) calloc(1,sizeof(struct stdnt));
</J>
In plain English, this rather ugly line means the following:
<Q>
Allocate enough memory to store 1 variable of type <C>struct
stdnt</C>, then clear the memory (writing 0s). Finally, store the
address of the memory in a pointer called <C>studentAddress</C>.
</Q>

<HEAD2>A computational model</HEAD2>
Any computer program works with bits, innumerably many 0s and
1s. If you try to keep track of all those 0s and 1s, then you'll
beome crazy. Instead, we think in terms of high level
analogies. The analogy must be simple, yet incorporate the
pitfalls on the real siuation. Such analogies are called
computational models. The "names listed on paper" story
was one example. However, it fails to take into account three
difficulties that a programmer faces when coding linked lists:
<UL>
<LI>the computer memory is huge, making it impossible to glance
through the entire list at once.</LI>
<LI>the computer memory does not store past values. If you 
write <C>x=5</C>, and then <C>x=10</C>, then the past value (5)
of <C>x</C> get overwritten by the new value (10). There is no
way to recover that past value (unless you kept a separate
backup).</LI>
<LI>The computer can do only one thing at a time. We human
beings are parallel processing all the time (dreaming about
lunch, while taking down notes).</LI>
</UL>
In order to incorporate these, we shall create a new
computational model. This model will denote the names by pieces
of cards and the pointers will be paper clips tied with ropes. 
<CIMG web="pieces.png"/>
Thus, our <C>struct stdnt</C> looks like this, a paper clip
attached from a cardboard bearing a name:
<CIMG web="struc.png"/>
This is the basic element of a linked list. We chain them
together and hang them from hooks attached to a horizontal bar:
<CIMG web="mod.png"/>
The hooks represents all the variables used in your program. The
particular hook used for hanging the linked list is the
variable <C>head</C>. It is a pointer. That is why we have a clip
danging from it. Now our computational model says that there is a
deep abyss under the horizontal bar. Anything no atttached to the
bar (directly or indirectly) is sure to drop into the abyss, and
may never be retrieved. This moels the fact that the computer
memory is huge, and if you lose track of anything, you can never
recover it. Also, the computer can do only one thing at a
time. To mimick this, we shall put one final restriction: you can
use only one hand to work with the cards and clips. 

<P/>
OK, now let us see how we may remove "Jonaki" from the linked
list. 
<P/>
<B>Attempt 1:</B> Your first impulse may be to undo the clip that holds
"Jonaki" in place. But remember that you are only using one hand,
so you canot hold "Jonaki " with the other hand during this. As a
result, the moment the clip is released, "Jonaki" and all the
cards under it will plummet down into the depth of the abyss! 

<P/>
<B>Attempt 2:</B> Take another clip, and fix this to the card
below "Jonaki":
<CIMG web="del1.png"/>
Next, release the clip holding "Jonaki", causing "Jonaki" to hang
from its tail:
<CIMG web="del2.png"/>
Finally, attach the clip that was holding "Jonaki" to the card
below "Jonaki".
<CIMG web="del3.png"/>
Well, we have achieved our goal. However, you may not be happy as
there are unnecessary appendages dangling here and there. They
are really not very harmful, but still it is a good habit to clean up the mess, by
removing thoe appendages. But you cannot reach "Jonaki" anymore
now, as the ropes attached to clips may
only be followed <I>towards</I> the clip and not <I>away from</I> it!
<P/>
<B>Attempt 3:</B> First step as before. But before you undo the
clip holding "Jonaki", make sure "Jonaki" does not link to the
list: 
<CIMG web="del1b.png"/>
Now, the moment you release the clip holding "Jonaki" it gets
lost:
<CIMG web="del2b.png"/>
Finally, link up "Anvit" to "Samprit".
<CIMG web="del3b.png"/>
You might as well remove the helper clip at this point.
<P/>

Now let us see how we may code this up in C:
<J>
struct stdnt* before; /* Given to us */
struct stdnt* after;  /* The helper */

after = before->next->next; /* Conect the helper */
before->next->next = 0; /* Remove the thing to be
                           deleted */
before->next = after;   /* Reconnect */
after = 0;              /* Remove helper */
</J>
Try to feel each of the steps while coding. 
<P/>
If this is clear try your hand at the following exercise.

<EXR>
Write a C program to remove the first element of a linked
list. Be sure to first work it out single-handedly using the
computational model. Sketch each step. Then code it up!
</EXR>
</NOTE>@}
