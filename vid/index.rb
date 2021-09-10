@{<NOTE>
<HEAD1>The video production system</HEAD1>
Download the <LINK to="">bundle</LINK>, and uncompress it. It
will create a folder structure like this:
<PRE>
vidbase (root folder)
  |
  +---fromapp
  |
  +---test (a sample video folder)
  |
  +---fromapp 
  |
  +---Melter.java
  |
  +---AndroViewer.java
  |
  +---Preprocess.java
  |
  +---Global.java
  |
  +---icon.png
  |
  +---sync.png
  |
  +---transparent.png
</PRE>

Open the <CODE>Global.java</CODE> file with an editor. You'll
find these lines near the top:
<PRE>
final private String
    base = "<RED>/home/cssc/na/s/othernotes/androtalks</RED>"; //Change this folder.

</PRE>
Change the red part with the path of the
folder <CODE>vidbase</CODE>. For example, if you have put
your <CODE>vidbase</CODE> folder in <CODE>c:\users\sosu</CODE>,
then you should have:
<PRE>
final private String
    base = "<RED>c:/users/sosu/vidbase</RED>"; //Change this folder.

</PRE>
Note the forward slashes (even in Windows).
<P/>

Compile, and run. You should get a window like this:
<CIMG web="window.png">Preprocess starting window</CIMG>
Only the <CODE>dir</CODE> button is enabled. Click this, and you
will be presented with a folder open dialog starting with
the <CODE>vidbase</CODE> folder. If it starts from any other
folder, you need to check the path that you entered just now.

<P/>
Leave this window open for the time being. Let us understand the
architecture.

<HEAD2>Understanding the folder structure</HEAD2>
The <CODE>vidbase</CODE> folder is the <BLUE>root folder</BLUE>. You'll never
poke outside this. This folder will have one subfolder for each
lecture (one lecture=one output video). These will be called the <BLUE>video folder</BLUE>s. 
Here I have provided one sample lecture
folder <CODE>test</CODE>. A lecture consists of a number of
sessions (continuous shoots). Inside a <BLUE>video folder</BLUE>
there is one <BLUE>session folder</BLUE> for each
session. The <CODE>fromapp</CODE> folder (under the <BLUE>root
folder</BLUE>) is for
dumping the output of the app from the tab. Currently, it
contains the output from my mobile, so that you can test the
software even without access to the tab.

<HEAD2>States</HEAD2>
As you work with the software, you'll move from one state to
another. There are 6 states in all. Here is an overview of the
workflow:
<CIMG web="states.png">Overview of the steps</CIMG>
At the very outset you'll choose a <BLUE>video folder</BLUE> to
work on. As you move from one state to the next, the contents of
this folder will evolve. Understanding this evolution
is the key to understanding the states. The detailed workflow
will come later.

<UL>
<LI><B>Blank:</B> In this state the structure of the <BLUE>video
folder</BLUE> is this:
<PRE>
video folder
  |
  +---fromcamera (blank folder)
  |
  +---order.txt (blank text file)
</PRE>
This is the very first state.
</LI>

<LI><B>Ready:</B> You arrive at this state after you finish
making the pictures and prompts (optional) for each session. In
this state  the <BLUE>video folder</BLUE> contains a
few extra things:
<PRE>
video folder
  |
  +---fromcamera (blank folder)
  |
  +---order.txt (see below for its contents)
  |
  +---<RED>intro (session folder 1)</RED>
  |
  +---<RED>math (session folder 2)</RED>
</PRE>
As we have already mentioned,  each  session has its 
<BLUE>session folder</BLUE> under
the <BLUE>video folder</BLUE>. The names are arbitrary
(e.g., <CODE>intro</CODE> and <CODE>math</CODE> used above). Each <BLUE>session folder</BLUE>
consists of the slides and (optionally) the prompt file. We
shall give the details later. Most of the images will be in svg
format (output by inkscape), and should have names consisting of a common prefix
followed by a number, e.g., <CODE>pic1.svg</CODE>, <CODE>pic2.svg</CODE>, <CODE>pic3.svg</CODE>,
etc.

<P/>
I have provided the <BLUE>video folder</BLUE> <CODE>test</CODE>
in this state, so that you do not have make the images to test
out the software.
</LI>
<LI><B>Preshoot:</B> Here the <BLUE>video folder</BLUE>
looks like this:
<PRE>
video folder
  |
  +---fromcamera (blank folder)
  |
  +---order.txt (see below for its contents)
  |
  +---intro (session folder 1)
  |
  +---math (session folder 2)
</PRE>
The file
<CODE>order.txt</CODE> specifies the sessions in the correct
order, along with the file prefixes used. A typical example:
<PRE>
intro,r
math,p
</PRE>
This means there are two <BLUE>session folder</BLUE>s. The first
is called <CODE>intro</CODE>, the second <CODE>math</CODE>. In
the first, the svg files have prefix <CODE>r</CODE>, and
in the second, the prefix is <CODE>p</CODE>.

<P/>

Note the new subfolder called <CODE>transfer</CODE> containing the
things to be transferred to the tab.</LI>

<LI><B>Postshoot:</B> This state is reached after the shootings
are over, one shooting per session, and the things are
transferred back from the tab to the laptop.
The <CODE>fromapp</CODE> folder (under the <BLUE>root
folder</BLUE>) has the output of the app, and 
the <CODE>fromcamera</CODE>
folder (under the <BLUE>video folder</BLUE>) now contain the videos shot by the camera.</LI>
<PRE>
video folder
  |
  +---fromcamera <RED>(contains the raw videos from the tab)</RED>
  |
  +---order.txt
  |
  +---intro (session folder 1)
  |
  +---math (session folder 2)
</PRE>
<LI><B>Preedit:</B> This step is reached after a little technical
processing of the output of the app, resulting in a folder
called <CODE>mlt</CODE> under the  <BLUE>video folder</BLUE>:
<PRE>
video folder
  |
  +---fromcamera
  |
  +---order.txt
  |
  +---intro (session folder 1)
  |
  +---math (session folder 2)
  |
  +---<RED>mlt</RED>
</PRE>

</LI>
<LI><B>Postedit:</B> You get to this state after opening kdenlive
and aligning the overlays with the raw videos. Two new things are born
in the <BLUE>video folder</BLUE>: a <CODE>kdenlive</CODE> file,
and  an <CODE>mp4</CODE> video file, the final output.</LI>
</UL>

<HEAD2>Detailed workflow</HEAD2>

<UL>
<LI><B>Blank</B> to <B>Ready</B>: Toughest part. Here you have
to draw the pictures, and create the optional prompt files. We
shall skip this step here, as the provided sample is already in
the <B>Ready</B> state.</LI>
<LI><B>Ready</B> to <B>Preshoot</B>: Launch Preprocess.java (you
might create a desktop shortcut). Click "dir", choose
the <BLUE>video folder</BLUE>. Click "svg->png". While keeping
this window open, run the AndroViewer.java in parallel. Flip
through the slides using the cursor keys to check
everything. When you are satisfied, hit the "flip" button. This
will generate a <CODE>transfer</CODE> folder under
the <BLUE>video folder</BLUE>. Transfer the
entire <CODE>transfer</CODE> folder (not just is contents) to
the tab. </LI>
<LI><B>Preshoot</B> to <B>Postshoot</B>: Well, shoot!</LI>
<LI><B>Postshoot</B> to <B>Preedit</B>: Transfer the videos to
the <CODE>fromcamera</CODE> folder under the <BLUE>video
folder</BLUE>, and the output of the app to
the <CODE>fromapp</CODE> folder under the <BLUE>root
folder</BLUE>.
<P/>

Then run
Preprocess.java (or continue to use it, if it is already
running). Click "cue" followed by "melt".</LI>

<LI><B>Preedit</B> to <B>Postedit</B>: Launch kdenlive, and
import the folders <CODE>fromcamera</CODE> and <CODE>mlt</CODE>
into it. Drag them to the timeline, align and render!</LI>
</UL>


</NOTE>@}
