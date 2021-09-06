@{<NOTE>
<HEAD1>File management in C</HEAD1>

When you start learning to program, a good analogy to keep in mind
is this: 
<Q>
Just as we take inputs from our surroundings via our sensory
organs (eyes, ears etc), make decisions about them with our brain, and carry out
those decisions using our motor organs (hands and legs),
similarly, a computer gets its input from the connected input
devices (keyboard/mouse/touchpad), processes the input in its
CPU, and produces results on its output devices (screen/speaker etc).
</Q>
Most of the devices attached to a computer are either an input
device (keyboard/mouse/scanner/webcam etc) or an output device
(screen/speaker/printer). But there is one notable exception: a
device that is both input as well as output. In fact, this device
is present in human beings also. It cannot be seen, but its
presence can be felt. It is the <I>mind</I>. When you are reading this,
your eye sees some symbols, your brain construes meaning out of
them, but where does the output go? The output goes into your
mind. So here the mind acts as an output device. When later
you'll answer questions in an examination, where will the
information come from. Assuming honesty on your part, the
information should come from your mind. So there the mind acts as
an input device. 
<P/>
The role of the mind is played by the <B>hard drive</B> of the
computer. It is a big box connected inside the
computer. Sometimes people use <I>external</I> hard drives, which
are connected from outside. The hard drive is basically a long
array of bytes. Each byte is a list of 8 bits. Each bit may be
set on or off by the computer. The most important property of the
hard drive is that the bit values set by the computer are
retained even after the computer is switched off, or the hard
drive is detached from it! It is this feature that makes it
behave like our mind. Our mind retains facts  even after the
source of facts is taken away. So whenever, your program needs to
produce output that should survive beyond the life time of the
program (e.g.,  needs to be preserved or shared via email or
uploaded to the internet), the output must be written to a hard
drive. Similarly, if your program wants to use information from
some past session (possibly output from some other program), then
it needs to read from a hard drive. As this is a common
requirement, and there are many programs all trying to read from
or write to the hard drive, it is easy to lose oneself in the
chaos. To prevent this the array of bytes in the hard drive is
organized in a particular way. We must have a clear mental picture
of a computational model of the hard drive in order to use it in
our program. 

<HEAD2>Computational model</HEAD2>
There are two parts of the hard drive: the used part and unused
part. Think of the unused part as a l..o..n..g roll of paper
stretching for miles. For most purposes, you might consider it
virtually endless. The part in use is organized as a tree. Thus,
the computational model of the entire hard drive is like this:
<CIMG web="drive.png"></CIMG>
The inner nodes of the tree are labelled red with various
names. These are called <B>folder</B>s. From each  leaf node we
see pieces of paper hanging. These are called <B>file</B>s. They
also have names (I have shown only three, in green). Notice that
the name <C>isi.c</C> has been used twice. In order to uniquely
specify a file, we give its entire <B>path</B> (i.e., how to
reach that file from the top of the tree). The paths for for the
three files shown in green are:
<PRE>
c:\user\isi.c
c:\user\samahriti\isi.c
c:\user\samahriti\chaplin.mp4
</PRE>
Notice the backslashes. The are called the path separators. In
Linux systems, we use a forward slash for this purpose.
<P/>

Each file, as I have said already, is like a piece of
paper. These papers are all torn off the huge roll of unused
supply. Unlike real paper, however, these pieces of papers may be
removed from the tree, 
erased, and returned to the roll for future use!

<HEAD2>Enter C</HEAD2>
With this computational model in mind, we can now state how 
a C program manages this tree, i.e, performs file
management. There are basically three major operations:
<UL>
<LI>Create a file</LI>
<LI>Delete a file</LI>
<LI>Write into a file</LI>
<LI>Read from a file</LI>
</UL>
There is, however, one little complication. A file is just a list
of bytes, and each byte consists of 8 bits (i.e., 0s and
1s). Now, 0s and 1s are good for computers, not for us humans. We
like to work with numbers and letters. So we encode numbers and
letters in terms of 0s and 1s. Thus, when we want to write numbers or
letters into a
file, we usually mean "first encode them in terms of 0s and 1s,
and then write the resulting 0s and 1s into the file." Similarly,
reading from a file usually means "read the 0s and 1s and then
decode them into numbers and letters." Of course, there may be
situations where you do want to write/read some 0s and 1s
directly. 
<P/>
Accordingly there are two sets of functions provided by C: with
encoding/decoding or directly. We shall discuss the more
frequently used case first: with encoding/decoding.
<P/>
Numbers and letters may be encoded in different ways in terms of
0s and 1s. One such is called ASCII (American Standard Code for
Information Interchange). This is no more the most popular
method (which is Unicode). However, when C was created, ASCII was
the main coding format. ASCII maps all the letters (upper/lower
case), digits, punctuation marks into bytes. Now, if you want to
encode a letter, you just apply ASCII. If you want to store an integer
you first reduce it to a list of digits (and possibly
a sign) using some base, and then apply ASCII to the
digits and sign. C allows the bases 10, 8 and 16. If you have a
number that is not an integer, then it is first converted to
decimal representation, and the resulting digits etc are encoded
using ASCII. 

<HEAD2>Writing letters</HEAD2>
<PRE>
<XT>
<X>#include <stdio.h>

int main() {</X>
  <X lab="1">FILE *fp;</X>

  <X lab="2">fp = fopen("silly.txt","w");</X>

  <X lab="3">fprintf(fp,"Hello Samahriti!");</X>

  <X lab="4">fclose(fp);</X>
  <X>return 0;
}</X>
</XT>
</PRE>
<XL>
<X ref="1">This line declares a <B>file pointer</B>. Don't worry
about its exact definition. According to our computational
model, it refers to a piece of paper.</X>
<X ref="2">The <C>fopen</C> function <B>opens a
file</B>. According to our computational model, this either
tears a piece of paper from the unused roll and attaches it to a
leaf of the tree (as here), or connects the pointer to an
existing file. The <C>"w"</C> stands for "write", and tells the
computer to start a new file. The name of the file is
"silly.txt". Notice that I have not mentioned the entire
path. In such a case, C assumes a default folder (more on this below).</X>
<X ref="3">The <C>fprintf</C> function does the actual
writing.</X>
<X ref="4">The <C>fclose</C> function is the complement to
the <C>fopen</C> function.</X>
</XL>

<HEAD3>Choosing the folder</HEAD3>
When a C program (or any other program, for that matter) starts,
it chooses a particular folder as its default. This folder is
called its <B>working folder</B>. In most Windows computer, it is
something like 
<PRE>
C:\Users\samahriti
</PRE>
where <C>samahriti</C> is the login name of the user. If you are
starting your program from a terminal, then you can change the
name of the working folder as part of the prompt. But since this
is very much system dependent, I shall not discuss this further
here. Finding the working folder may take some time initially. 

<HEAD2>Writing numbers</HEAD2>
As I have already mentioned, writing numbers is a two stage
process: first converting the number to a sequence of digits (and
possibly a decimal point and sign), and then applying ASCII
encoding. Also, there is a difference between how integers and
non-integers are handled. Integers may be represented using bases
10, 8 or 16. But non-integers must use base 10.
<PRE>
<XT>
<X>#include <stdio.h>

int main() {</X>
  <X>FILE *fp;</X>
  <X>int i;
  i = 245;</X>
  <X>fp = fopen("silly.txt","w");</X>

  <X lab="1">fprintf(fp,"%d", i+23);</X>

  <X>fclose(fp);</X>
  <X>return 0;
}</X>
</XT>
</PRE>
<XL>
<X ref="1">Now the <C>fprintf</C> function takes 3 arguments:
the first is the file pointer. The second is the <B>format</B>,
i.e., how the first stage is to be done. Here the <C>%d</C>
means "base 10" ('d' for "decimal"). The third argument is the
integer to be printed (here it is <M>245+23=268</M>).</X>
</XL>
If you replace the <C>%d</C> with <C>%o</C> or <C>%x</C>, you'll
get, respectively, base 8 or base 16.

<P/>
The following code shows printing of a non-integer:
<PRE>
<XT>
<X>#include <stdio.h>

int main() {</X>
  <X>FILE *fp;</X>
  <X>float x;
  i = 24.5;</X>
  <X>fp = fopen("silly.txt","w");</X>

  <X lab="1">fprintf(fp,"%f", x/3);</X>

  <X>fclose(fp);</X>
  <X>return 0;
}</X>
</XT>
</PRE>
<XL>
<X ref="1">Notice the format <C>%f</C>. It requests the value
of <M>x/3</M> to be converted to the decimal form. It is
possible to control this conversion regarding the number of
decimal places to retain. But we shall not go into the details
here, as the default is pretty good for most cases.</X>
</XL>

<HEAD3>Mixing various outputs</HEAD3>
It is possible to mix outputs of various types in the
same <C>fprintf</C> line:
<PRE>
<XT>
<X>#include <stdio.h>

int main() {</X>
  <X>FILE *fp;</X>
  <X>int i;
  float x;
  i = 245;
  x = 45.6;
  </X>
  <X>fp = fopen("silly.txt","w");</X>

  <X lab="1">fprintf(fp,"x = %f, and i = %d", x, i);</X>

  <X>fclose(fp);</X>
  <X>return 0;
}</X>
</XT>
</PRE>
<XL>
<X ref="1">For each format specifier (e.g. <C>%f</C>
and <C>%d</C> here), there must be a corresponding value
specified. Failure to match them up properly may result in weird errors.</X>
</XL>

<HEAD2>Reading from a file</HEAD2>
To read from a file, the first prerequisite is that the file must
exist. Also, you must know what types of values are present
there, and in what order. For example, if a file merely contains
the word "Hello", and you are trying to read an integer from it,
then it will generate an error.
<XT>
<X>#include <stdio.h>

int main() {</X>
  <X>FILE *fp;</X>
  <X>int i;</X>
  <X lab="1">fp = fopen("silly.txt","r");</X>

  <X lab="2">fscanf(fp,"%d", &i);</X>

  <X>fclose(fp);</X>
  <X>return 0;
}</X>
</XT>
<XL>
<X ref="1">The <C>"r"</C> (as opposed to <C>"w"</C> in the
earlier examples) tells the computer to open the file for reading.</X>
<X ref="2">The <C>fscanf</C> function is for reading from a file.
Notice how we are using <C>&i</C>.</X>
</XL>
You may use the format specifiers <C>%o</C>, <C>%x</C>
and <C>%f</C> as in case of <C>fprintf</C>.

<HEAD3>Continuing,  stopping and skipping</HEAD3>
Reading from a file is much more complicated than writing to a
file. When an ASCII file (often called a "text file") is read,
the computer reads it character by character, and then groups the
characters into numbers and other things. To understand this
process it helps to visualize a <B>reading head</B>. Think of it
as a thin line that is placed between two consecutive characters:
<CIMG web="readhead.png">The red line is the read head</CIMG>
All the characters to the left of the reading head have already been
read, the characters to its right are yet to be read. Here, for
instance, we have read the <C>s</C> and are about to read
the <C>a</C>. Initially, the reading head is before the very
first character in the file.
<P/>
The entire process launched by <C>fscanf</C> may be visualized as
a journey of the reading head over the contents of the file. It
can do three things:
<UL>
<LI>move over the next character, and remember that character,</LI>
<LI>move over the next character, and ignore that character</LI>
<LI>stop</LI>
</UL>
The rule governing these is simple: ignore any space character(s) in
the beginning, read as long as you can until the reading head
comes just before a character that cannot fit into the type of
thing you are reading (e.g., integer).

<EXM>For instance, if you issue the command:
<PRE>
fscanf(fp, "%d%d",&i,&j);
</PRE>
and <C>fp</C> points to a file containing this:
<CIMG web="read1.png">The reading head is at the very left</CIMG>
Here the space characters are shown as grey boxes. According to
the reading policy just mentioned, the first <C>%d</C> causes the
reading head to come to this position:
<CIMG web="read2.png">The ignored characters are underlined in red,
remembered ones in blue</CIMG>
Also, the integer 123 gets stored in the variable <C>i</C>. 
<P/>

The next <C>%d</C> causes the reading head to move further (and
put the value 56 in <C>j</C>):
<CIMG web="read3.png">The reading head has finished its
journey</CIMG>
How did the reading head know that it has to stop after
the <C>6</C>? Because, the file ends there! We sometimes  imagine
a character called the <C>End Of File (EOF)</C> placed at the
very end. The reading head is not allowed to go past it.
</EXM>
This example showed the simplest scenario. Now let's see how
things may go wrong. 

<EXM>
We shall again trace the same <C>fscanf</C>,
but now the file contents are:
<CIMG web="readbad1.png">Notice the decimal point</CIMG>
Now the first <C>%d</C> causes the reading head to come to this position:
<CIMG web="readbad2.png">Can't get past the decimal point!</CIMG>
But now it's stuck, because an integer cannot contain a decimal
point. So <C>i</C> gets the value 1.
<P/>
Now the next <C>%d</C> comes into play. It tries to push the
reading head further. But the reading head remains
stuck., and  so <C>j</C> remains unchanged. Remember that no
error message is printed on screen. 
</EXM>

Here is a third scenario:
<EXM>
We run the command
<PRE>
fscanf(fp, "%d%f",&i,&x);
</PRE>
where the file contents are as in the last example. Here again
the first <C>%d</C> causes <C>i</C> to get the value 1, and, as
before, we
arrive at: 
<CIMG web="readbad2.png">End of <C>%d</C></CIMG>
Next the <C>%f</C> takes action. Now of course, the decimal point
is no more a taboo character, and reading head happily glides
over it, and eventually stops here:
<CIMG web="readbad3.png">End of <C>%f</C></CIMG>
As a result <C>x</C> get the value <M>0.23.</M>

<HEAD2>A word of caution</HEAD2>
What we have learned so far about <C>fscanf</C> pretty much
covers all that you'll need for the time being. However, there
are some exotic things that <C>fscanf</C> is capable
of. Unfortunately, beginners inadvertently get into those
situations by mistake and become puzzled some inexplicable
behaviour. We shall show one such. 

<EXM>
If instead of 
<PRE>
fscanf(fp, "%d",&i);
</PRE>
you accidentally put a space before the <C>%d</C> to get
<PRE>
fscanf(fp, " %d",&i);
</PRE>
then the behaviour will be drastically different. The program
will now look for an integer <I>following a single
space</I>. Similarly, typing
<PRE>
fscanf(fp, "%d ",&i);
</PRE>
will cause it to look for an integer <I>followed by a single
space</I>. Similarly, 
<PRE>
fscanf(fp, "%d %d",&i,&j);
</PRE>
expects two integers <I>separated by exactly one space</I>. We
shall not go into the rationale behind this apparently weird
behaviour. Just remember not to put any space in the format
in <C>fscanf</C>. No such restriction for <C>fprintf</C>.
</EXM>
</EXM>
</NOTE>@}
