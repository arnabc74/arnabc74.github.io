@{<NOTE> -*- eval: (folding-mode t) -*-
<TITLE>Course: Basic 1: Basic Statistics</TITLE>
<UPDT>FRI MAR 18 IST 2022</UPDT>

<INTRO>
We hear about statistics a lot. Be it forecasting the weather or
predicting the share market or clinical trials, statistics is all
around us. We all have some idea about statistics, even though we
may not have had any formal training.  Terms like  "data", "data
processing softwares", "average behaviour" etc are not unfamiliar
to us. Yet we the world of statistics remains a mystery. Ever
wanted to peep deep inside statistics, to attain mastery over
that mystery. If so, you are standing right at the entrance. This
course will take a birds' eye overview of some key concepts of
statistics.  No prerequisite, except some free time and the
willingness to learn. We shall learn about types of data, how to present
data, and the basic 
characteristics of data. Nothing ambitious, really. But it is the
start of an ambitious journey! 

The course consists of 6 modules, one per week.
Each module will have 5 lessons. The first 4 of them will
each introduce a new topic. The last lesson will review and
complement the earlier lessons.

Each lesson will have some videos, some reading references, and
some practice problems for you to work out.

After the 6 weeks of lecture are over, you'll get 2 more weeks
for self study and the final exam.

The grade will come from two sources, module tests
and a <B>final exam</B>. At the end of each module
there will a test consisting of <B>5 questions</B>
about the topics 
discussed in that module. Each question will carry 2 points.

That accounts for 60 points. The remaining 40 points will
come from the final exam.

The video lectures and reading materials will constitute the main
reference. The reading materials will all come from the following books:

  * Statistics by Witte and Witte
  * Statistics by Freedman, Pisani and Purves
  * How to lie with statistics by  Huff


We shall use the <B>LibreOffice Calc</B> software for data
 analysis. It is not the most popular software out there. But it
 free (and open source, if you care for that), and closely
 resembles the propreitary MS-Excel interface. Also, LibreOffice
 Calc has an easy learning curve. Don't worry if you have never
 heard of LibreOffice Calc or about any statistical software, for
 that matter. We shall start from downloading and installing it
 in your system. 

  OK, that's the end of the course intro. 

</INTRO>
<HEAD1>Module 1: Data types</HEAD1>
<INTRO>
This module is about getting started with LibreOffice
Calc. That's what we *have* to start with, as everything else
requires a software to perform. Just as you need to know how to
use a telescope before you can observe the distant planets!
LibreOffice Calc is available for free downlod for Windows, Linux
and Mac. Installation is generally quite easy. At this point you
might be tempted to ditch your computer and rely solely on your
mobile instead. My sincere advice: don't! LibreOffice Calc does
not have an Android or IPhone version, and the interface is too
detailed to read on a small screen. Some learners prefer to learn
everything inside online sandbox versions. This course will not
let you do that. I believe that learning to install a software is
an integral part of learning to use the software.   
</INTRO>
<STKY><HEAD3>Module 1,  Introductory video: About the course</HEAD3></STKY>
<SCRIPT id="m1/intro" done="k" t="4:03">
<SESS t="1.10" done="a" kf="30,60,70,80,90" id="s1">
Hello,  and welcome to the PGDAS course on <B>Basic Statistics</B>. This
is our very first lecture, and I am your
instructor <B>Arnab Chakraborty</B>. Try to say my last
name. Trust me, everything else in the course is easier than that!

First let me tell you something about the structure of our course.
---
The course consists of <B>6 modules, one per week</B>
Each module will have <B>5 lessons</B>. The first 4 of them will
each introduce a new topic. The last lesson will be sort of a
 wrap up kind of thing. 
---
Each lesson will have some videos, some reading references, and
some practice problems for you to work out.

After the 6 weeks of lecture are over, you'll get 2 more weeks
for self study and the final exam.
---
Aha, exam. And that brings us to the important question: How are
you going to be graded?
</SESS>
<JINGLE t="0.1">Grading</JINGLE>
<SESS t="0.50" done="a" kf="10,20,30,40,50,60,70" id="s2">
The grade will come from two sources, <B>module tests</B>
and a <B>final exam</B>. At the end of each module
there is a test<V>[shown]</V>, consisting of <B>5 questions</B>
about the topics ...
---
discussed in that module. Each question will carry <B>2 points.</B>

 6 modules, 5 questions per module, 2 points per
question. That accounts for 60 points. The remaining 40 points will
come from the final exam.
---
We shall talk more about the nature of the tests later.
</SESS>
<JINGLE t="0.1">Reference materials</JINGLE>
<SESS t="0.80" done="a" kf="30,60,90" id="s3">
The video lectures and reading materials will constitue the main
reference. For each lesson I shall ask you to read from various
books. Unfortunately, I cannot guarantee availability of the
books for all of you. So the video lectures will be as self
contained as possible. 
---
Here are some books that you may read along:
  * <B>Statistics by Witte and Witte</B>
  * <B>Statistics by Freedman, Pisani and Purves</B>
  * <B>How to lie with statistics by  Huff</B>
---
This last book, despite its frivolous name, is full of useful
insights. If you feel bored with statistics, that's a good book
to revive your interest with!
</SESS>
<JINGLE t="0.1">Software</JINGLE>
<SESS t="1.30" done="a" kf="30" id="s4">
Modern day statistics is impossible without statistical
softwares. There are quite a few softwares out there in the market.
starting from quite easy ones with gentle
learning curves to extremely expensive and sophisticated ones with
steep learning curves.
---
 We shall naturally start with a software
that is not too difficult to learn, and yet is capable of doing a
good number of data manipulation activities. And just to keep it accessible
to everybody, we shall use a free and open source software that you can download
from the web. We shall use <B>LibreOffice Calc</B>.
---
 "What's that?" you may
ask. Well, it is a free and open source alternative to the  popular MS-Excel
software. They have very similar interfaces. If you learn
LibreOffice Calc you can take your skills to use MS-Excel.
---
 Of course, LibreOffice will not be enough for some ambitious  analyses, but
then we shall learn R and Python for them in a different course. 
--- 
 Well, that's about it! Now let's get started with the lessons
 from our next video! And we shall start by familiarising
 ourselves with the software.
</SESS>
</SCRIPT>

<HEAD2>Module 1: Lesson 1</HEAD2>
<STKY>
<HEAD3>Module 1, Lesson 1,  Video 1: Using a computer</HEAD3></STKY>
<LESSON>
<SCRIPT id="m1/l1/v1" done="k" t="2:30">
<SESS t="2.40" done="a" kf="10,20,30,40,50,60,70" id="s1">
The common belief about statistics is that it is number
crunching. While there is more to statistics than mere number
crunching, it does involve a lot of that.
---
 We shall need to work
with data sets consisting of many numbers, and even a toy data
set will be difficult to handle manually or using a
calculator.
---
 So we need a software to play with data. In this very first lesson we
shall learn the barest minimum of a statistical software to
proceed with the rest of the course. 
---
There are many such softwares to choose from. Some softwares like
<B>Microsoft Excel</B> are relatively easy to 
learn, while others like <B>SPSS, SYSTAT or SAS</B> have steeper learning
curves. 
---
All these softwares are proprietary, and you need to pay
money in order to own a legal copy. Though in some cases you may
get a free online version with limited features. 
---
There are also some excellent free softwares. The <B>R
language and RStudio</B> provide a very sophisticated statistical
computational environment that is completely free but requires
quite a bit of time to master.
---
 There is also a formidable array of
statistical analysis tools in the vastly popular <B>Python</B> language,
which is also free. 
---
We shall use <B>LibreOffice Calc</B> software in this course. 
It has an interface extremely
similar to that of Microsoft Excel, and expertise in using one
easily translates to the other.
---
It is easy to learn
and use, has enough features for our requirements, is available
for free for <B>Windows, Linux and Mac</B>. Can be used offline. And if
you like online tools like <B>Docker</B>,...
---
 then you can use it via Docker
as well. If you don't know what Docker is, don't worry, we shall
not need it here.
---
This course is not about learning LibreOffice. It is about
learning statistics. So our exposure to the software will be
limited to what we shall need for this course. 
---
In the next video we shall learn how to get LibreOffice running
in your machine.
</SESS>
</SCRIPT>

<FLD>
<EXRLIST id="m1l1_a.yml">
- typeName: textReflect
  prompt: >
     Name three free softwares and/or languages that may be used
     for statistical analysis. 
  defaultFeedback: >
     R, LibreOffice Calc and Python. 

- typeName: textReflect
  prompt: >
     LibreOffice Calc is very similar to Microsoft Excel in its
  interface. True or False? 
  defaultFeedback: >
      True. There are some ifferences of course. But they would
      not matter much for our course.

</EXRLIST>
</FLD>
<STKY>
<HEAD3>Module 1, Lesson 1,  Video 2: Local installation</HEAD3>
</STKY>

<SCRIPT id="m1/l1/v2" done="k" t="6:06">
<SESS t="0.80" done="r" kf="30,60" id="s1">
Here we shall learn how to get LibreOffice running in your
machine. You'll need a Windows or Linux or Mac computer. I do not
have a Mac ready at hand. So I shall demonstrate using Windows
and Linux only.
---
 Now LibreOffice comes in two varieties:
<B>installable</B> version and <B>portable</B> version. The first requires you
to install the software, which may take time, and depending on
your expertise, a bit tough.
---
 The portable version is much easier,
you just download a file, and click on it, and it starts
running. You may even put the downloaded thing in your pen drive,
and run the program from there in a public machine!
</SESS>
<JINGLE t="0.1">Windows</JINGLE>
<SC t="2.00" done="r" id="sc_win_112">
[Screencast:  portable app. download and no installation, show in windows]
</SC>
<JINGLE t="0.1">Linux</JINGLE>
<SC t="2.00" done="r" id="sc_lin_112">
[Screencast:  portable appimage. download and no installation,
show in ubuntu]
https://www.libreoffice.org/download/appimage/
</SC>
</SCRIPT>
<REF>
LibreOffice download instructions.
</REF>
<FLD>
<EXRLIST id="m1l1_b.yml">
- typeName: textReflect
  prompt: >
     After you finish downloading the appimage for LibreOffice in
  a Linux machine, can you immediately run it? 
  defaultFeedback: >
     No, you need to give the file execution access first.

- typeName: textReflect
  prompt: >
      After you finish downloading the portable app for LibreOffice in
  a Windows machine, can you immediately run it? 
  defaultFeedback: >
     No, you need to unpack it (what they call installation,
  though it is really not an installation in the true sense).
</EXRLIST>
</FLD>
<STKY>
<HEAD3>Module 1, Lesson 1,  Video 3: Getting started</HEAD3>
</STKY>

<SCRIPT id="m1/l1/v3" done="k" t="7:11">
<SC t="6.00" done="r" id="sc_lointroa_113">
[Screencast: Getting started]
  * The regions: spreadsheet, menu, status bar
  * Spreadsheet: 
      - Enter data, numbers and text (align) 
      - motion: cursor, enter, mouse click, [shift] tab
      - selection
      - delete/hide row/column
      - using =: autoupdate, mouseclick  does not work, enter to exit, double click to edit
                 drag over range
      - loops (value[string, num] and position) and $
-------------
New suggestions:
 0) Overview: Installation and GUI
 1) Data entry: numbers and strings
 2) Format and colour, SAVE LOAD
 3) Select: Shift click, control click, don't drag, using text
  box
 4) Drag for sequencing: direct and control d
 5) fORMULA 
 6) REFERENCE: RELEATIVE AND ABSOLUTE
</SC>
<IVQ id="ivq113.yml" t="2:00">
- typeName: multipleChoice
  prompt: >
      What key are you supposed to hold down while clicking to
  select a rangle of cells?
  defaultFeedback: >
      
  shuffleOptions: true
  options: The shift key
  - answer:
    isCorrect: true
    feedback: >
      Yes! 
  - answer: The control key
    feedback: >
      Control clicking selects different (possibly)
  non-contiguous cells.
  - answer: The alt key
    feedback: >
      Nope! 
  - answer: The windows key
    feedback: >
      Nope!

</IVQ>
</SCRIPT>

<FLD>
<EXRLIST id="m1l1_c.yml">
- typeName: textReflect
  prompt: |-
Enter the following  data in the LibreOffice spreadsheet.
    | Name    | Age | Income (Rs.) |
    |---------+-----+--------------|
    | Ram     |  45 | 23,456       |
    | Rakibul |  29 | 12,452       |
  defaultFeedback: >
    Here is what I get after some formatting:
     [[./exraux/tab1.png]]

- typeName: checkbox
  prompt: >
    Consider the following screenshot:
     [[./exraux/tabpart.png]]
    You want to change the third digit of the cell marked A to
    5. How would you do it?
  shuffleOptions: true
  options:
  - answer: >
     Double-click that cell, position the cursor after
     that digit, delete and type 5.
    isCorrect: true
    feedback: >
      Yes, this is the smartest way.
  - answer: >
      Click that cell. Click B. Correct the value shown in B.
    isCorrect: true
    feedback: >
      This works, but requires repositioning the mouse.
  - answer: >
      Click after that digit in cell A, delete and type 5.
    feedback: >
      No, this won't work. It will replace the entire number with
      just a 5.
  - answer: >
      Click on cell A. Retype the entire number.
    isCorrect: true
    feedback: >
      Yes, it will work, but you also re-typed the correct
      digits. This is time consuming and error-prone.
    
    
- typeName: multipleChoice
  prompt: >
    You have a table like this:
     [[./exraux/tabpart2.png]]
    You want to delete the marked row to arrive at:
     [[./exraux/tabpart3.png]]
    How will you achieve this?
  shuffleOptions: true
  options:
  - answer: >
      Right-click on the left margin of the row. Choose "Delete
      rows" from the pop up menu.
    isCorrect: true
    feedback: >
      Great job!  
  - answer: >
      Click on the left margin of the row. Hit delete.
    feedback: >
      No, this will only delete the contents or the row, not the
      entire row.
  - answer: >
      Right-click on the left margin of the row. Choose "Clear
      contents" from the pop up menu.
    feedback: >
      No, this will only delete the contents or the row, not the
      entire row.
    
- typeName: checkbox
  prompt: >
    You want to insert a new blank row between rows 3 and 4 in the
    following spreadsheet. The new row will be called row 4, the
    existing row 4 will become row 5.
    How would you do it?
  shuffleOptions: true
  options:
  - answer: >
     Right-click on the left margin of row 3, choose
     "Insert rows below" from the pop up menu.
    isCorrect: true
    feedback: >
      
  - answer: >
      Right-click on the left margin of row 4, choose
      "Insert rows above" from the pop up menu.
    isCorrect: true
    feedback: >
      
  - answer: >
      Click in the last cell in row 3. Then hit enter.
    feedback: >
      This works in a textfile, but not in a spreadsheet!
      

</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 1, Lesson 1,  Video 4: Some tasks already seen</HEAD3>
</STKY>

<SCRIPT id="m1/l1/v4" done="k" t="6:09">
<SC t="4.00" done="r" id="sc_lointrob_113">
Formula with relative reference. 
</SC>
</SCRIPT>


<FLD>
<EXRLIST id="m1l1_d.yml">
- typeName: textReflect
  prompt: >
     The cell  C1 has the formula =A1-D3. The content of the
  cell is copied and pasted into cell E5. What will be the actual
  content of E5?
  defaultFeedback: >
      We have moved from column C to column E, so bump all
      columns two steps ahead. A becomes C, D becomes F.
      We have moved from row 1 to row 5. So all referenced rows
      will also increase by 4. The final answer is =C5-F7.

- typeName: textReflect
  prompt: >
     The cell  C10 has the formula =A1-D3. The content of the
  cell is copied and pasted into cell E5. What will be the actual
  content of E5?
  defaultFeedback: >
     Aha, now we need to reference cells that are outside the
     spreadsheet. That's not allowed. You'll see a #REF! error.


</EXRLIST>
</FLD>

<SCRIPT id="m1/l1/v5" done="k" t="5:55">
<SC t="4.00" done="n" id="sc_introc_113">
Dragging relative reference. Absolute reference.
</SC>
</SCRIPT>


<FLD>
<EXRLIST id="m1l1_e.yml">
- typeName: textReflect
  prompt: >
     Cell A5 contains =A$1+$A3. It is copied to B6. What is the 
     content of B6 now?
  defaultFeedback: >
     We have moved one place down and right. So all unlocked
     columns will increase by 1, and so will the unlocked rows.
     Thus A$1 will become B$1, and $A3 will be $A4. So the
     content of B6 is =B$1+$A4.

- typeName: textReflect
  prompt: >
     Consider this situation.
      [[./exraux/before.png]]
     We want to subtract A4 from all the numbers.
     If the formula at B1 is dragged
     upto B4, what will the values in column B be?
  defaultFeedback: >
      [[./exraux/after.png]]
     Here the column in $A4 is locked, not the row.
     You needed =A1-A$4.

</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 1, Lesson 1,  Video 5: File formats: Excel</HEAD3></STKY>

<SCRIPT id="m1/l1/v6" done="k" t="4:01">
<SESS t="2.00" done="r" kf="30,60,90" id="s1">
In olden days people used to store data on paper, and perform all
the computations by hand. Now of course computers
provide both  the  storage as well as the processing.
---
 Data sets are stored as files,  
be it in the hard drive inside a computer or removable devices like a
USB drive.
---
Now,  a file in a computer is just a collection of 0's and
1's. When we store data  in a file,  they first need to be
converted into 0's and 1's.
---
 When we read the data back from the
file,  the 0's and 1's are converted back into the original
form. This two-way conversion process is mostly done
automatically without our intervention.
--- 
Now, this process may be
done in different ways,  and each such way is called a <B>file
format</B>. 
There are quite a few file formats that are used in
statistics.
---
 Some formats are good for human reading, or for sending data
files over the email,  while some formats are 
optimised to hold a large amount of data in a small space. 
---
In this course we shall use the LibreOffice software,  which
understands various file formats. Every file format has its
specific file name extension.
---
The default file format of LibreOffice has file
extension <B>.ods</B>.

 You should not use this format, as it is not widely supported. 
---
Instead, you should use  two other formats that are widely supported.
We shall discuss only the  first format in this video. The second
frmat will be discussed in the next. The first format has the
extension <B>.xlsx</B>. 
---
This is one of the main 
file formats used by MS Excel. This format allows cell formatings and
embedded graphics, and is suitable for producing reports.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="2.00" done="r" id="sc_xlsx_115">
[Screencast: Saving and loading xslx]
</SC>
</SCRIPT>


<FLD>
<EXRLIST id="m1l1_f.yml">
- typeName: numeric
  prompt: >
      Here is a data file in xlsx format [test.xlsx]. Open it,
      and report the value in cell a6.
  defaultFeedback: >
      No, check again.
  shuffleOptions: true
  options:
  - value: 172
    isCorrect: true
    feedback: >
       That's correct.
      


- typeName: textReflect
  prompt: >
    Change some value in the above data set, and again save it in
    the xlsx format.
  defaultFeedback: >
    Check by reloading the modified file.   

</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 1, Lesson 1,  Video 6: File formats: CSV</HEAD3></STKY>
<SCRIPT id="m1/l1/v7" done="k" t="6:44">
<SESS t="0.80" done="a" kf="30,60" id="s1">
While the Excel format is adequate for many elementary
purposes,  there are a few of drawbacks. First,  you need to
have MS Excel or LibreOffice or similar software in order to view
the data in the file.
---
 Second, if even one byte gets corrupted during trnsmitting the
fie, the entire file may become unusable.
---
Third,  in case you want to take  data from one software to
another, you may find that the source software cannot output in
the excel format.
---
  So it is a good idea to know about a
universally understood format,  called
the <B>comma-separated-values</B> format,  with file
extension <B>.csv</B>.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="4" done="r" id="sc_csv_116">
 In this format each case is represented by
a line and the values in each line are separated by a comma. This
format is particularly useful when a value may have a space in
it,  e.g. <B>West Bengal</B> or <B>Ram Singh</B>. Sometimes a
value may be missing. Such missing values may be easily marked by
two consecutive commas. 
<P/>
On most computers a file with <B>.csv</B> format is automatically
opened in MS Excel,  if the software in installed. However,  the
CSV format has one downside. It cannot hold anything other than
a single data table,  while the XLSX format can hold multiple
tables,  as well as graphs and reports.


[Screencast: Saving and loading as csv]
</SC>
</SCRIPT>
<FLD>

<EXRLIST id="m1l1_g.yml">
- typeName: multipleChoice
  prompt: >
     If you need to create a csv file from scratch which of the
     following editors is *not* suitable?

  defaultFeedback: >
      Use a plain text editor. Nothing fancy.
  shuffleOptions: true
  options:
  - answer: MS Word
    isCorrect: true
    feedback: >
      
  - answer: notepad (Windows)
    feedback: >
      
  - answer: gedit (Linux)
    feedback: >
      
  - answer: vi (Linux)
    feedback: >
      

- typeName: multipleChoice
  prompt: |-
    A line from a CSV file is
       , 34, ,
    How many variables are there?
  shuffleOptions: true
  options:
  - answer: exactly 4.
    isCorrect: true
    feedback: |-
      Yes, fill up each gap with an x to see this clearly:
          x, 34, x, x 
  - answer: exactly 3.
    feedback: >
      Fill up each gap with an x. Then you'll get the answer.
  - answer: exactly 2.
    feedback: >
      Fill up each gap with an x. Then you'll get the answer.
  - answer: exactly 1.
    feedback: >
      Fill up each gap with an x. Then you'll get the answer.

- typeName: multipleChoice
  prompt: |-
    Here is a little data set for you:
    | Area  | Yield | Irrigation |
    |-------+-------+------------|
    | 2,345 |   325 | manual     |
    | 3,451 |       | mechanical |
    | 1,378 |   182 | manual     |
    Convert this to a CSV file, and load it into Libreoffice.
    Did everything go as you expected?
  shuffleOptions: true
  options:
  - answer: Yes.
    isCorrect: true
    feedback: >
      Congratulations!
  - answer: No, I am getting 4 columns.
    feedback: >
      Aha, possibly you typed the commas in the numbers. Skip the
      commas inside a number.
  - answer: No, I do not know where to start.
    feedback: >
      Oops. You'll need to start typing in a text editor (like notepad).
  - answer: No, Libreoffice cannot load my file.
    feedback: >
      Hmmm...there could be various reasons. Did you use a simple
      text editor like notepad, and not some fancy editor like MS
      Word? The latter won't work. Also, you'll need to save the 
      file with a csv extension. Watch the video carefully to
      understand how to do this.
    

</EXRLIST>

</FLD>
<REF>
Windows installation: 
   https://www.youtube.com/watch?v=HzGi0og2irE
Full documentation of Calc
https://documentation.libreoffice.org/en/english-documentation/calc/
Specifically read: Chapter 1: Introducing Calc
</REF>

</LESSON>

<HEAD2>Module 1: Lesson 2</HEAD2>
<STKY><HEAD3>Module 1,  Lesson 2,  Video 1: Data--what and why</HEAD3></STKY>
<LESSON>

<SCRIPT id="m1/l2/v1" done="k" t="3:51">
<SESS t="0.70" done="a" kf="30,60" id="s1">
This is a course on <B>Basic Statistics</B>.
We hear about statistics a lot. But what is it? Well,  there are
various ways to define it.
---
Possibly the simplest,  and the most
comprehensive way,  is to say that it is the <B>art and science
of learning from experience</B>,  and as such it is the most fundamental 
tool behind human existence.
---
 Whether we are trying to predict tomorrow's weather   or the
next wave of COVID,  we are using 
statistics.
</SESS>
<JINGLE t="0.1">Learning from experience</JINGLE>
<SESS t="2.10" done="a" kf="0,10,20,30,40,50,60,70,80,90" id="s2">
 Most often we learn from experience even without being conscious
about it.  When we do something unconsciously,  out of reflex, 
without really thinking about it,  we tend to do it
inefficiently.
---
 Take <B>high jumping</B>,  for instance. Most of us can jump
over a fence.  We hardly need to think about it. Our muscles
somehow move on their own and we end up on the other side.
---
 But if one considers the process  consciously,  one can see many subtle
ways of improvement,  and the sum total of all those may lead to a
quite different technique <B>fosbury flop</B>, jumping over your
back,  which yields a rather substantial  improvement in efficiency!
---
Well,  the same is true about learning from experience. 
Statistics is a conscious and careful way of going about
this. Let's start by carefully looking at the word
"<B>experience</B>".
---
 Take a simple example. Suppose we want to tap
the experience of our friends about some movie. If we ask
them <B>How was the movie?</B>, we shall get responses like
<B>Ok</B>, <B>so-so</B>, <B>Good</B>, <B>Hey you must watch it!</B>
---
 Yet another may
give you a long description<V>[Blah blah]</V> about what she liked the
most. 

Informative as such informal comments are,  they are
difficult to summarise efficiently.
---
 For one thing, they lack a common scale. One person's "Good" may very well be another
person's "so-so". The very first thing we might do to rectify
this is to provide a common scale. <V>Likert scale
appears.</V> 
---
Many movie rating
webpages do precisely this. They provide a 5-point scale.  This common
scale brings more uniformity in the responses than a mere
haphazard collection of "Good", "Bad" and "so-so".
</SESS>
<JINGLE t="0.1">Data</JINGLE>
<SESS t="0.60" done="a" kf="30" id="s3">
 When we collect experience in  a systematic
way we get <B>data</B>. And this is the first point where
statistics differs from the common man's way of learning from
experience.
---
  Statistics systematically collects and  stores the experience in a
cut-and-dried fashion before proceeding to glean information from
it. Data are  that cut-and-dried experience.
---
It might interest you to learn about the different ways data are
collected. So let's get a taste of that in the next video.
</SESS>
</SCRIPT>

<FLD>
<EXRLIST id="m1l2_a.yml">
- typeName: multipleChoice
  prompt: >
     Which of the following is the best description of
     "statistics" as a subject?
  options:
    - answer: Science of learning from experience.
      feedback: Yes, that's right! 
      isCorrect: true
    - answer: Number crunching.
      feedback: >
        Ah, not quite. While much of statistics does involve
        number crunching, statistics is no more just number
        crunching than Hamlet is just some ink on paper.
    - answer: Prediction of future
      feedback: It's just one imortant application area of statistics. 
    - answer: Worse than damned lie!
      feedback: Oh no, sometimes it is even worse!


- typeName: multipleChoice
  prompt: >
    The managing director of a car manufacturing company wants
    to assess the role of three aspects of different car (colour,
    mileage and leg space) behind its appeal to potential
    customers. Among the following approaches which is the best for him?

  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: >
     Ask potential customers to rate different cars in a 5-point
     scale, and also collect data on colour, mileage and leg
     space of those cars.
    isCorrect: true
    feedback: >
      Good strategy. Also some other aspects like gender and
      income and number of cars already owned could be recorded.
  - answer: |-
      Ask three questions to each customer: 
         How important is colour for you?
         How important is mileage for you?
         How important is leg space for you?
      Let them write a single sentence answer for each.
    feedback: >
      There would be no standard to collate the sentences.
  - answer: >
      Get past sales data for different brands of cars, and also 
      record their colour, mileage and leg space.
    feedback: >
      Not bad, but customer preferences change over time. So
      better to work with potential customers.

  - answer: >
      Employ a psychologist to make the decision. 
    feedback: >
      Beneficial strategy...for the psychologist, I mean!

- typeName: multipleChoice
  prompt: >
    "A certain tution centre claims to have prepare students
  very well for admission to a reputed institute." In order to
  assess the truth of this claim which one is the better strategy?
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: >
      Take some students from that tution centre randomly and see
      how many of them get admission to that institute.
    isCorrect: true
    feedback: >
      This is the better strategy. We are basicaly answering the
      question "If a student is trained by this centre, what is
      the chance of him.her to get admission to that institute?"
      This strategy starts with students satisfying the "if"
      condition, and counts the number of students satisfying then
      "then" condition.
  - answer:
    feedback: >
      Take some random students admitted to that institute, and
      see how many of them came from that tution centre.
  - answer:
    feedback: >
      Bad strategy. Imagine a tution centre that thanks to its ad
      campaigns gets almost all the students, but gives
      them hardly any training. Still the proportion of their
      students among the admitted students would be high. It would
      merely reflect the success of their ad campaigns. 

</EXRLIST>
</FLD>

<STKY><HEAD3>Module 1,  Lesson 2,  Video 2: Data collection devices</HEAD3></STKY>

<SCRIPT id="m1/l2/v2" done="k" t="4:37">
<SESS t="1.60" done="a" kf="10,20,30,40,50,60,70,80,90,100,110,120" id="s1">
How do we collect data? 
There are basically five types of devices for data collection
depending on the scenario. 
---
* <B>Measure</B>, 
* <B>Observe</B>, 
* <B>Lookup</B>, 
* <B>Ask</B>, and 
* <B>Derive</B>. 
---
If we want data about some
physical quantity that is accessible to us,<V>[meas hilite]</V> like the area of
a plot, height of a person, intensity of sound, temperature of a
green house, the most direct way is to just measure it.
---
Sometimes, however, merely observing is enough,<V>[obs
hilite]</V>. For instance, a
person's gender.
---
 In many cases, especially for data about people and society, 
we may get them by looking up<V>[hilite]</V> existing
records. For instance, income amounts 
for employees may be obtained from the pay registers.
---
 In some situations asking<V>[hilite]</V> a knowledgeable person
is the only way to get information. This is particularly true if
the information is about a mental state (like satisfaction
level).
---
 Finally, certain data are  derived<V>[hilite]</V> from 
other related quantities. Examples include total expenditure
which is obtained by adding different types of expenditures,...
---
 or <B>fertility</B> of a plot, which is obtained by dividing  <B>yield by
the  area.</B>
</SESS>
<JINGLE t="0.1">Looking at data</JINGLE>
<SESS t="1.80" done="a" kf="30" id="s2">
Statisticians have to work with data from various, posibly
unfamiliar, domains.  When you see a data set for the first time, it is
like entering an unknown dark room.
---
 Your eyes will need time to adjust. Similarly, one needs some time to get a feel
for a data set. A good mental exercise to facilitate this
process is to quickly classify the various pieces of information
present in the data in terms of how they were
collected. 
---
Let's consider this: <B>total income of rural
households having significant agricultural income</B>  in
a certain district.
---
 Let's think for a moment what this really means and 
how values of these quantity  were arrived at. What objective
definition of "significant"<V>[finger]</V> was used? In terms of absolute
amount? Or as a percentage of the total income?
---
 What qualifies as "agricultural income"? <V>[finger]</V> Also, how was the income amount
determined? By asking? By looking up some government register? 
---
Even the term "rural" needs a clear objective definition. 
Thinking about such points right at the outset may
appear unnecessary, but is a good way to warm up.
---
This excercise is not only good for warming up, but may throw
light on the reliability of the information present. For
instance, if you ask a man about his monthly income data,...
---
you are more likely to get an underestimate. However, if the data
were obtained from his payslip, then the amount is more likely
to be accurate.
</SESS>
<JINGLE t="0.1">The word "data"</JINGLE>
<SESS t="0.60" done="a" kf="10,20,30,40,50" id="s3">
 "Data" is a plural word. Its singular "datum" is rarely
used. A common mistake found in many reports is to say things
like "This data shows ...". It should be either "These data show
..." or "This data set shows ...".
---
 But knowing the word "data"
grammatically is hardly enough. We need to take a deeper look,  and
that's what we are about to do next.
</SESS>
</SCRIPT>

<FLD>
<EXRLIST id="m1l2_b.yml">
- typeName: multipleChoice
  prompt: > 
    We want to collect first hand data about villagers' condition after a
    natural calamity. Which is the best way to go about it?
  shuffleOptions: true
  options:
   - answer: Chat with the villagers informally.
     feedback: Hard to collate such data in an objective way.
   - answer: >
       Prepare a list of questions before visiting the village,  and
       present that  list to each villager.
     feedback: >
        Reasonable way. But if you are unfamiliar with the
        village, it is easy to mis important points.
   - answer: > 
       Same as above but with questions prepared after an informal
       chat with the villagers
     isCorrect: true
   - answer: Ask only the head of the village.
     feedback: The head might give only his/her personal view.


- typeName: multipleChoice
  prompt: >
     How would go about collecting data on fertility of soil in
     different plots of lands? 

  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: Derive
    isCorrect: true
    feedback: >
      Aha! That's correct. You need to know total yield and also
      total area. Divide one by the other.
  - answer: Measure
    feedback: >
      Fertility is not like length, mass or time, something you
    can directly measure.
  - answer: Ask
    feedback: >
      Whom should you ask? Not me! 
  - answer: Look up
    feedback: >
      Hmmm...that kind of avoids answering the question. Which
      existing source would you look up? How could that source get
      the data in the first place?
  - answer: Observe
    feedback: >
      Nope! Fertility is not something that you can just
      observe...unless you have very special eyes!


- typeName: textReflect
  prompt: >
  defaultFeedback: >
      

</EXRLIST>
</FLD>

<SCRIPT id="m1/l2/v3" done="k" t="3:18">
<SESS t="0.40" done="a" id="s1">
In the last video we learned about the various instruments to get
data. These instruments may be used in different ways in a
real scenario. In order to discuss these we first need to know 
a few terms, which we shall introduce next.
</SESS>
<JINGLE t="0.1">A few terms</JINGLE>
<SESS t="2.40" done="a" kf="10,20,30,40,50,60,70,80,90,100" id="s2">
In any data collection scenario we have an
<B>agency</B> that reports the data.
---
 It could be some international body like the <B>WHO</B>, some <B>government</B>, a
<B>private organisation</B>, or even an investigator in <B>individual</B>
capacity.
---
 Then there is the <B>scope</B>. For example, the agency
may be interested in only rural households having income from
agriculture, or it could be only urban household with at least
one earning female member.
---
 Closely connected with the scope is the <B>time
frame</B>. Just imagine how meaningless it would be to say
something like the population of India was a thousand million without
mentioning the year!
---
 Finally, we have the concept of a <B>unit</B>. 
No, this is not units like the inch or the centimetre. 
If you are collecting data about households, then each household
is a unit,  if you are collecting data about districts, then each
distrct is a unit.  
---
Multiple agencies may be responsible for various parts of a data
set. For instance,  agency A may take the data from some
existing record, created by some other agency B in the past.
--- 
Such data are called <B>secondary data</B> from the viewpoint of
agency A. If the agency reporting
the data is also responsible for collecting the data, then we
have <B>primary data</B>.
---
Whether to use primary or secondary data is an important decision
that one has to make right at the outset.
Each has its advantages and disadvantages. 
---
Primary data,  for example,  are the only option if you are
conducting a study about something not explored before. But they
also happen to be very expensive.
---
 Secondary data are easier to get,  but may be dated,  
or not exactly suited for a particular study.
---
It is somewhat like buying a dress. You may buy a custom-made
dress to suit your exact requirements, or you may just buy a
ready-made one.
---
 The advantages and disadvantages are
similar. Primary data  will give you
the exact information you want.
---
 Secondary data, on the other
hand,  may only be an approximation to the information that you
are actually seeking. 
</SESS>
</SCRIPT>


<FLD>
<EXRLIST id="m1l2_c.yml">
- typeName: textReflect
  prompt: >
         An astronomer has discovered a new celestial object, and
  wants to compare it with similar objects already known. Will
  she need primary data or secondary data?
  defaultFeedback: >
      Both. Primary data for the new object, secondary one for
      the already knwn ones. 

- typeName: textReflect
  prompt: >
     A population census aims, among other things, to count the
  total  number of people in a country at a certain time
  point. Suppose that the census itself takes 6 months to
  complete. Think of one problem with scope that this may cause.
  defaultFeedback: >
      How to account for the chnge in population during this
  time? For example, people have died, new babaies have been
  born, some people have left the country, while others have
  entered. Should we include them? Or exclude them? 
      

</EXRLIST>
</FLD>

<STKY><HEAD3>Module 1, Lesson 2,  Video 4: Data--Census/sample, Observational/experiment</HEAD3></STKY>
<SCRIPT id="m1/l2/v4" done="k" t="3:26">
<SESS t="1.70" done="a" kf="10,20,30,40,50,60,70,80,90" id="s1">
We have talked about the <B>scope</B> of a study, and also
mentioned the concept of <B>units</B>. All the units coming under
the scope constitute the <B>population</B>.
---
 For example, if we are dealing with household level rural data
for a district, then the set of all rural households in the
district is the population.
---
 If the population is small, then you
can actually collect the data from each and every unit. This is called <B>complete
enumertion</B> or <B>census</B>.
---
As an example,  if you are interested in the monthly expenditure of
the households in a village and the village has just 30
households,  then you can indeed visit each and every household
to collect the data.
---
  But imagine doing the same thing for every
household in a large city! Then we have to resort to taking
a <B>sample</B>,  <B>a representative subset of all the households,</B>
and collect data from only those households. 
---
How to choose the sample appropriately is a vast topic in
itself. You'll learn more about it later in a course on <B>Sample
Survey</B>.
---
 For now, let it suffice to know that most of the time we
select the sample as a random subset of the population. Such a
sample is naturally called a <B>random sample</B>. This gives a
fair chance to every unit in the population to be included in the sample.
</SESS>
<JINGLE t="0.1">Complete enumeration vs sample</JINGLE>
<SESS t="1.10" done="a" kf="10,20,30,40,50" id="s2">
How to compare between complete enumeration data and data
obtained from a random sample?<V>[shown]</V>
---
Complete enumeration gives,  well,  the <B>complete
information</B>. What can be better? But then it comes at a great
price. It is enormously more <B>expensive and time
consuming</B>.
---
 Indeed,  so much so it might just be infeasible in many
cases. Even a government can hardly afford to perform complete
census of its population frequently.
---
 So sampling is  inevitable in most situations, because it
is <B>less expensive and less time consuming</B>. 
 But samples have their own pain. 
---
Is a sample really <B>representative</B> of the entire population? That's a question
that continues to bug all conclusons that you draw from sample
data.
---
 The larger the sample size, the greater the chance that it will
explore the nooks and corners of the population. But larger
sample size means greater expense in data collection as
well.
---
 Balancing that trade-off is an important consideration in
sample survey, as you will learn later.
</SESS>
</SCRIPT>

<FLD>
<EXRLIST id="m1l2_d.yml">
- typeName: textReflect
  prompt: >
     A statistician wants to study the distribution of heights  of
  people in a country. Another statistician wants to study the
  distribution of incomes. Which statistician will need a larger
  sample? 
  defaultFeedback: >
      The second, because income varies more than heights.

- typeName: textReflect
  prompt: >
     In order to draw a sample of 10 hens from a cage containing
  500, a statistician employs the following procedure: She opens
  the cage slightly, and catches the first 10 she can. Is this a
  good procedure? 
  defaultFeedback: >
      No. The hens near the door and the weaker ones are more
  likely to be selected.

- typeName: textReflect
  prompt: >
     "Java programmers die younger than C programmers." In order to test this (fake)
  rumour, you collect data on the lifespans of all dead Java and C
  programmers, and indeed find that in your sample the average life span of the
  Java programmers are less than those of the C
  programmers. What's wrong with this approach?
  defaultFeedback: >
      Java is a more recent language. So most Java programmers
      are still living. You excluded them from your sample.

</EXRLIST>
</FLD>

<STKY><HEAD3>Module 1, Lesson 2,  Video 5: Data--Observational/experiment</HEAD3></STKY>
<SCRIPT id="m1/l2/v5" done="k" t="3:42">
<SESS t="3.20" done="a" kf="10,20,30,40,50,60,70,80,90,100" id="s1">
There is yet another way to classify data
collection. <B>Observational study</B> and <B>designed
experiment</B>.
---
  In an observational study,  you are merely a
passive observer,<V>[passive investigator]</V>  collecting
information about a system as you 
find it,  without trying to modify the system.
---
 In a designed experiment,  by contrast,  you are deliberately
trying to disturb the system<V>[active investigator]</V>,  and
collecting data about how it responds to the change.
---
 Let me give a very simple mundane example. You see
something like a rope lying on your way. Is it really a rope? Or a snake? You
want to find out. You may go about this in two ways:
---
 you may just wait and watch its behaviour (that's observational
study). If it stays in the same posture for 2 minutes, then possibly it is
just a piece of rope.
---
 But if it starts slithering away, then
it is definitely a snake. Here is an alternative way of going
about this:  you  throw a stone at it, 
and see how it reacts.
---
 This would be a designed experiment, because you deliberately
changed the system in order to learn how the system reacts to the change.
---
Designed experiments are used more frequently in <B>clinical
trials</B> to assess effectiveness of drugs, or deciding about <B>optimal
settings in a production process</B>. 
---
In a <B>social study</B>, on the other
hand, we generally cannot or do not want to disturb the system, and
hence have to rely on observational study.
---
 If we want to relate
educational level to income, then observational study is the only
way to go about it. The same is true for most studies in <B>geology and
astronomy</B>.
---
Let's now compare observational study with designed
experiment. Most scientific studies that deal with causality ie, 
tries to conclude things like "this causes that",  must rely on
designed experiment.<V>[can infer causality]</V>
---
 To conclude things like "This causes that", 
you have to really do "this" and see if "that" occurs,  and then
not do "this" and make sure that "that" also does not occur.
---
 In other words,  you have to modify the system according to a
design. As you might guess,  this involves a lot of extra effort,  
not present in observational study. And observational studies
won't let you make causal inferences.<V>[shown]</V>
---
 However,  there are many situations where observational study is
the only way to go, when the system may not be
modified.<V>[unmodifiable]</V> To check if smoking causes cancer,
you cannot really ask a person to start smoking! 
---
On the other hand, if you want to assess the
effect of some <B>new measure</B>, then designed experiment  is the only
option, because how can you learn about the new measure unless
you apply it?     
</SESS>
</SCRIPT>

<FLD>

<EXRLIST id="m1l2_e.yml">
- typeName: multipleChoice
  prompt: >
   An NGO wants to assess the effect of a health benefit scheme
   introduced by the government. For this purpose, some villagers 
   are chosen who have enrolled for the scheme,  and some others 
   who have not. Then data are collected about their monthly
   health related expenditure. This is an example of: 
  shuffleOptions: true
  options:
   - answer: a controlled experiment
   - answer: a designed experiment
   - answer: an observational study
     isCorrect: true
   - answer: none of the above.

- typeName: multipleChoice
  prompt: >
    A student wants to judge if joining a coaching class is effective
    for admission to a particular institute. Which of the following
    is the stronger evidence in favour of the coaching class?
  shuffleOptions: true
  options:
   - answer: >
       out of all students admitted to the institute,  95% had gone
       to that coaching class.
     feedback: >
       Every Nobel laureate drinks water. But that  does not make 
       water an effective means to win that prize!
   - answer: >
       out of all students going to the coaching class,  95% got
       admission to the institute.
     isCorrect: true 


- typeName: multipleChoice
  prompt: >
    All farmers in a developing country were requested to write
    to the agricultural minister about their daily expenses. 
    A report was constructed based on the responses obtained. 
    Is this a reliable data set? 
  shuffleOptions: true
  options:
  - answer: No.
    isCorrect: true
    feedback: >
      Most farmers (especially the poor ones) are illiterate in
      a developing country. So written responses will only
      reflect the truth about a small subset of farmers.
  - answer: Yes.
    feedback: >
      What about the poor illiterate farmers? In any developing
      country, they constitute the lion's share of the farmer
      population!

- typeName: multipleChoice
  prompt: > 
    "1243 people died of cancer in a city 10 years ago. 
    This year the figure is 2982." Can we 
    reasonably conclude from this that 
    health conditions have deteriorated over the last 10 years?
  shuffleOptions: true
  options:
  - answer: No.
    isCorrect: true
    feedback: >
      Total population has most likely increased over this time.
  - answer: Yes.
    feedback: >
      But the total population may have increased over the last
      10 years!
</EXRLIST>

</FLD>


<SCRIPT id="m1/l2/v6" done="k" t="5:24">
<SESS t="0.5" done="a" id="s1">
The term data conjures up the vision of numbers...zillions of
figures stored in computer disks to be processed by gigantic
supercomputers.
---
 Well,  it is true to some extent,  all data
are encoded as numbers when stored in computers, but the data
themselves need not always be about numbers.
---
 They may take other forms. In order to learn
statistics effectively,  it is imperative that we know how a data set
looks on a computer screen. It looks like a rectangle, what is
called a data matrix. We shall start with... a small example.
</SESS>
<SC t="2" done="r" id="sc_datamx_126">
We shall start with... a small example.
[Sheet 1: A small data set. Discuss case and variables]
[Sheet 2: Hugli data set. Huge]
<FLD>
 Here is a data set stored shown in a
spreadsheet. It is like rectangle, consisting of a number of rows
and columns. Each column denotes a <B>variable</B>. 
Each row is called a <B>case</B>. Think of this like this. We had
already mentioned about units in a data collection scenario,
remember? Like the households in a household-level survey. When
we collect data we get information about the households. Like
making a measurement, or asking a specific questionm making an
observation. Each measurement or question or
observation gives rise to a variable. Like "What is the family
size?" corresponds to one variable. The responses that we get
for measurement / question / observation are the  <B>value</B>s
for that variable. All the values corresponding to the same unit
are customarily written in a row, or case, as we call it. The
values for the same variable are written in a same column. This
is the format that all standard softwares expect the data to be in.
<P/>
Sometimes beginners fail to cast a data set into this
rectangular format. Let's discuss this next.
</FLD>
 </SC>
<JINGLE t="0.1">From data to data matrix</JINGLE>
<SC t="3" done="r" id="sc_form_126">
[Next sheet: Show multiple copies of the same form, and linked
data matrix. Fill the forms and watch the data matrix grow.
]
<FLD>
We have already seen how the values in a data set result from
five different sources: measuring,  observing, looking up, asking
and deriving. But when we want to cast the data into a data
matrix, it helps to imagine a <B>report sheet</B> where each
variable is like a field. Imagine that you are approaching each
unit with a copy of this sheet, and filling it up based on the
information from that unit. Then each filled-in sheet gives you
one case (i.e, row) of your data matrix.
<P/>
An example might help here. 
Suppose that we have are considering household level data in
different areas in a 
district. An area may be of one of three types: urban, semi-urban
and rural.  For each household we are interested in the number of
inmates, monthly income, whether the household owns agricultural
land, and if so the area of land holding. The hypothetical report
sheet will then have fields: 
  name of head (or some other identifier)
  name of area
  type of area
  number of inmates
  monthly income
  landholding [y/n]
  area  
Two points are in order here. First, the type of area is really
not an attribute of the household, rather it is  an attribute of
the area. But still I have put it in the report sheet. This is
quite common in practice. The information may actually come from
units of different levels nested inside one another, like here
household is the basic unit, that is inside the larger unit
called area. The type attribute is actually for the larger unit. 
But still, since each case in the data matrix refers to a single
household, I have included it in the report sheet.
<P/>
 The second point is that the area of landholding is meaningful
only for the households owning land. But even for households without any
land holding, there must be a value for the area. It could be 0,
or could be some special marker like NA, or may simply be left
blank. 
<TODO>Use NREG_JOB_CARD example from hugli data here.</TODO>
</FLD>
</SC>
</SCRIPT>


<FLD>
<EXRLIST id="m1l2_f.yml">
- typeName: multipleChoice
  prompt: >
    We are collecting household level data from 5 different
    villages. From each  villages  10 random  households are selected.
    For each selected household we collect data on monthly
    income,  main source of income,  and the number of people. If the
    resulting table has <M>n</M> rows and <M>p</M> columns,
    then:
  shuffleOptions: true
  options:
   - answer: <M>n=10</M> and <M>p=4</M>
     feedback: >
       Oops! <M>p</M> is the number of variables. How many
       variables are we having here? Also <M>n</M> is the
       total number of cases, i.e., the total number of households.
   - answer: <M>n=50</M> and <M>p=3</M>
     isCorrect: true
     feedback: >
       Bang on point! 10 households from each of 5 villages.
       That gives 50 cases in total. Also we have 3 variables.
   - answer: <M>n=50</M> and <M>p=4</M>
     feedback: > 
       Not quite! Your <M>n</M> is correct, but are there
       really 4 variables? 
   - answer: <M>n=10</M> and <M>p=3</M>
     feedback: > 
       Hmmm...let's see. You think there are just 10 households 
       in this study? Or 10 households from *each of 5 villages?*


- typeName: multipleChoice
  prompt: |-
    Consider the following data set. 

    | Name          | Family size | Income (Rs) |
    |---------------+-------------+-------------|
    | Ram Singh     |           3 |        2345 |
    | Rehan Molla   |           4 |        5000 |
    | Joseph Mathew |           2 |        4000 |

    What is the value of income in the 3rd case?
  shuffleOptions: true
  options:
  - answer: Rs. 4000
    isCorrect: true
    feedback: Good job!
      
  - answer: 4000
    feedback: You missed the unit!
      
  - answer: Rs 5000
    feedback: >
      The third case means row three *not counting the header row!*
      
  - answer: Rs 2345
    feedback: >
      The third case means row three (not counting the header row).
      You were possibly attracted by the 3 in the second column! 


- typeName: multipleChoice
  prompt: |-
    The following data set has one suspicious case. Which case?
  
    | Height (cm) |
    |-------------|
    |         175 |
    |         180 |
    |      155176 |
    | 183         |
  shuffleOptions: true
  options:
  - answer: Case 3
    isCorrect: true
    feedback: >
      Most possibly that 155176 was supposed to be 155 followed
      by 176.
  - answer: Case 1
    feedback: >
      Nothing unusual about this height!
  - answer: Case 2
    feedback: >
       Nothing unusual about this height!
  - answer: Cse 4
    feedback: >
       Nothing unusual about this height!
</EXRLIST>
</FLD>


<SCRIPT id="m1/l2/v7" done="k" t="2:46">
<SESS t="0.80" done="t" id="s1">
In the last video we have learned about creating a data matrix
from scratch. This is useful if we are doing our own data
entry.
---
 More often the entry is done by different people in
different places, and each of them produces one or more table. 
---
These are typically human readable colourful tables, with
information all over the place, in the row headings,  and
columns headings, table titles. Sometimes rows and columns are nested.
---
Pleasant to look at, but not quite ready for statistical data
analysis. We need to rearrange the tables in the form of a
data matrix.
---
 Sort of repairing the tables. A task that beginners
often find confusing. That's what we are going to discuss now. 
</SESS>
<JINGLE t="0.1">Repairing tables</JINGLE>
<SC t="2.00" done="r" id="sc_repmult_127">
[Sheet 5: Multiple rows. Different tables. Combine into a single table]
<FLD>
Spreadsheet programs like MS-Excel or LibreOffice are used to
record data. However, sometimes one needs to rearrange the data
before it is ready for statistical analysis. Most, if not all,
statistical analysis requires the input to be a <I>single</I>
data matrix. But the data may be present over multiple tables in
a spreadsheet. Here are two scenarios. There may be units nested
inside one another. Like households inside villages, and villages
inside districts.
Some information may be available for districts, some for
villages, while someothers from vilages. It is important to merge
these into a single data matrix.
<P/>
Another scenario is when different tables are created for
different larger units. Like we are collecting data for
agricultral plots in different villages. For each plot we want
its area, type of fertiliser and total yield. If there are 4
villages, with 10 plots in each, and one investigator is in
charge of collecting data from one village, then the collected
data will be in 4 tables, which need to be merged into a single
data matrix. Notice how the plot numbers are now repeated. 
Notice also how the names of villages came down from the
headings and formed a column of its own. This is an important
thing to remember. In the final data matrix, the information
should be only in the columns headings and the body. No information
should be in the table title. Similarly, there should not be any
info in the row headings. Here is an example. 

           Plot number 
District 1    1
              2
              3
District 2    1
              2
              3
              4
Here is a quick checklist:

   * No nested rows/columns. 
   * No row heading
   * No info in table heading
   * Single table
   * Rows denotes cases
   * Columns denote variables.
</FLD>
</SC>
</SCRIPT>

<FLD>

<EXRLIST id="m1l2_g.yml">

- typeName: multipleChoice
  prompt: |-
    Identify the variable which is derived from the other variables.
    | Income from agriculture | Income from business | Total income |
    |-------------------------+----------------------+--------------|
    |                     234 |                  435 | 669          |
  shuffleOptions: true
  options:
  - answer: Column 3
    isCorrect: true
    feedback: >
      Yes, it is obtained by adding the other two columns.
  - answer: Column 1
    feedback: >
      Well, you can compute this column as column 3 - column
      2. But obviously that was not how it was computed.

  - answer: Column 2
    feedback: >
      Well, you can compute this column as column 3 - column
      1. But obviously that was not how it was computed.
      
- typeName: multipleChoice
  prompt: |-
    We have 2,  4 and 3 plots under an agricultural survey in the villages Abid,  Belkhas and
    Chimpani. We have data table for each villag with header:
    | Id | Area | Irrigation | Yield |
    |----+------+------------+-------|
    |    |      |            |       |
    these. If we cast it as a single table, then that combined
    table will have:
  shuffleOptions: true
  options:
  - answer: 4 columns and 9 rows.
    isCorrect: true
    feedback: |-
      Good. The new header will be:
      | Id | Area | Irrigation | Yield | Village |
      |----+------+------------+-------+---------|
      |    |      |            |       |         |
  - answer: 3 columns and 9 rows
    feedback: |-
      No, we need to have one extra column for the village. The
      new header will be:
      | Id | Area | Irrigation | Yield | Village |
      |----+------+------------+-------+---------|
      |    |      |            |       |         |
  - answer: 4 columns and 10 rows.
    feedback: |-
      No. You are right about the columns:
      | Id | Area | Irrigation | Yield | Village |
      |----+------+------------+-------+---------|
      |    |      |            |       |         |
      but there will be just 2+3+4=9 rows.


</EXRLIST>

</FLD>

<REF>
WW: Chapter 1
FPP: Chapter 1 (skim)
DH: Chapter 1 (optional)
</REF>
</LESSON>

<HEAD2>Module 1: Lesson 3</HEAD2>

<LESSON>
<SCRIPT id="m1/l3/v1" done="k" t="5:46">
<SESS t="1.20" done="a" id="s1">
In the last lesson we have learned about types of data, and have
acquired a basic understanding of how they are collected. We
learned about cases and variables. Now it is time to take a
closer look at variables.
---
Variables are to statisticians what  colours are to a
painter. You may look at colours from the viewers' perspective,
and talk about dreamy sunset colour, or the warm colour of roses.
---
 But all this wide variation is basically made by mixing colours in a
restricted pallete. So from the painter's perspective the colours
are more prosaically named as burnt sienna and carmine.
---
 The description of the colours from the viewers' perspective are more
intuitive and often lack clear distincttion. But the painter's
terminology is more precise and technically oriented. 
---
Similar is the case with variables. We can classify them in terms
of usage, and also in terms of their techical nature. Let's learn
about them one by one.
</SESS>
<JINGLE t="0.1">Types of variables (by usage)</JINGLE>
<SC t="1" done="r" id="sc_val_131">
[Values: number/text/missing/date/border cases]
All values same type
[val.ods]
<FLD>
 As we
already know the columns in a data matrix denote variables. The names of the
variables are given at the very top. A quick look at the values
show that some of them are numbers, while  others are
textual. Some values may be dates. Also some values may be
missing. Some values may be like "less than 12" or "negligible". 
The first point to know is that all values belonging to the same
variable (i.e., in the same column) must be of
 the same type.  Thus,  if we have a variable like a person's
 height,  then either all of the values are in numbers (e.g.,  in
 cm) or in words  like "tall",  "medium" and "short". But not a
 mixture of both.  
</FLD>
</SC>
<JINGLE t="0.1">Identifier variable</JINGLE>
<SC t="1" done="r" id="sc_id_131">
[same data]
<FLD>
Let's look at  an example. Here is a data  matrix.
The simplest type of variable from the users' perspective is an <B>identifier</B> variable. These
are, well,  used to identify a case. Most official statistics
data have quite a few of the initial columns devoted to
identifier variables. They could be names or roll
numbers or EPIC or PAN or something similar. These variables
rarely enter into any analysis. The major use for these is for
tracking. If there is something unusual about a case (as detected
before or after analysis), we may need to refer to it later. The
identifier vriables help us to do that. They are often used to
label plots. But more of that when we shall learn about plotting
data. 
<P/>
I had once heard the story of a doctor who had a just a
smattering of the statistical knowledge. He wanted to study
various medical conditions of patients in a hospital. The data
matrix was full of numbers. The numbers in very first column gave
the bed numbers. In his confusion, he entered that into his
computation, and ended up with a numerical relation between blood
pressure and bed number! 
<P/>
Don't do that mistake. 
</FLD>
</SC>
<JINGLE t="0.1">Timestamp and count</JINGLE>
<SC t="2" done="r" id="sc_timecount_131">
[population data]
<FLD> On time stamp
Another type of variable is a <B>timestamp</B>. This marks
the time when the that particular case was recorded. The time
stamp may be a date, or a month or even year. For a medical
monitoring data it may even be marked in hours and minutes. For
some cases the time stamp may be used only for identification
purpose. But for certain data sets, the time may enter the main
analysis. These are called <B>time series</B>. Examples are stock
prices recorded over time, number of COVID infected persons
recorded over time. Time series data are extremely important in
statistics, as they are used for predicting the future. We shall
later have more occasion to discuss time series. 
</FLD>
<FLD> On count variable
Consider this scenario. We are visiting
a village and asking each family about the number of children
they have. There the data may be like this. One family may have 2
children,  another may have 3,  while others may have 4 or none. Can a
family have 2.5 children? No! Neither can a family have -2
children! Thus, here the values must be
non-negative integers. 
 This is an example of a <B>counting</B> variable. Examples of other variables of
this type include <B>count of trees in an area</B>,  
<B>number of COVID infections in a district</B>. 
<P/>
Next we shall take a look a another type of variable.
</FLD>
</SC>
<JINGLE t="1">Categorical variables</JINGLE>
<SC t="1" done="r" id="sc_cat_131">

<FLD>
Let's look at this example. Here we have two types of houses:
Kuccha (i.e., made of mud) and Pukka (made of concrete). 
Unlike the counting variables,  here we know exactly that these
are the only 
possible values. This is what is called a <B>categorical</B>
variable, because it denotes categories. Each value is the name
of a category.

<P/>
Next we shall learn about variables that denote outcomes of
measurements.
</FLD>
</SC>
</SCRIPT>


<FLD>
<EXRLIST id="m1l3_a.yml">
- typeName: multipleChoice
  prompt: >
           A statistician classifies people into three classes: tall,
  medium and short. This produces:

  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: one categorical variable
    isCorrect: true
    feedback: >
      
  - answer: one measurement variable
    feedback: >
      
  - answer: three categorical variables
    feedback: >
      "Tall", "medium" and "short" are the values, not separate variables.
  - answer: three measurement variables
    feedback: >
      
- typeName: textReflect
  prompt: >
    Is blood group a categorical variable? What about blood pressure?
  defaultFeedback: >
      Blood group is a categorical variable, but not blood pressure.

</EXRLIST>
</FLD>

<STKY><HEAD3>Module 1, Lesson 3,  Video 2: Types of variables (Users' perspective) (contd)</HEAD3></STKY>
<SCRIPT id="m1/l3/v2" done="k" t="5:09">
<SC t="5" done="r" id="sc_meas_132">
[meas.csv]
<FLD>
An important type of variables is measurement variables. As the
name suggests, these are
outcomes of measurements. If you are interested in the relation
between weight and height of different persons, then you'll
typically work with the data set like this. Here the variables
weight and height are both measurement variables.
<P/>
Other example include temperature,  blood pressure,  area
of plots,  agricultural yield of plots. 

<P/>

Now counting may be also considered as a form of measurement, but
we we shall use the term measurement variable for situations
where the quantity being meaaured is continuous. Unlike counting,
where a count jumps from one integer to the next, here the
measurements can take all the values inbetween. If it is possible
to have persons 5 feet and 6 feet tall, then it is possible to
have a person with any height between 5 and 6 feet. Of course the
sample at hand may not include such a peron, but it is ridiculous
to say that 5.2 feet is an impossible height for a person to have.
<P/>
An important concept connected with such measrement variables is
that of <B>approximation</B>. All measurements made by hman
beings are done using finite precision instruments. For instance,
when you measure a persons height and say that she is 5 feet 3 in
tall, you are most probably reporting the height <I>to the
neaest inch</I>. As a result, the reported height jumps from one
integer mark to the next, much like a counting variable. But
note the difference. For counting, a count of 2.5 is impossible
in principle, while a height of 5 feet 2.3 inches is quite
possible. It is the inadequacy of the measuring instrument which
prevents us from reporting the height to that level of precision.
<P/>
Sometimes we use approximation to such a crude level, that the
reported values hardly deserve to be called measurements. Instead
we get <B>interval variables</B>, which we discuss next.

<JINGLE t="0.1">Interval variables</JINGLE>

We shall start with an example: income tax. Income tax depends on
income. So it is only natural that the data that the income tax
office is interested in, should have a variable called
income. Now income has a lot of variability. There are major
differences as well as minor differences. The major differences
are of course important, but are the minor differences of any
consequance for the computation of income tax? No. So the income
tax office considers income as income slabs. Something like up to
100,000, from 100,000 to 200,000, from 200,000 to 300,000, and so
on. These income slabs constitute a new variable, which is an
example of an interval variable. Sometimes the intervals are
given descriptive names like low income group, middle income
group, high income group, etc. Thus, income group like other
interval variables, is actually a
categorical variable. The difference between these and
categorical variables like gender lies in the fact that these are
created by grouping values of the underlying variable.
<P/>
Other examples of such variables include letter grades in
examinations. Here A denotes a certain range of marks, B denotes
another range and so on.
<P/>
Yet another example is age group.
<P/>
When we use  an interval variables instead of the underlying raw
variable, we are obviously losing information. If I tell you that
my age is 47 years, you immediately know that I belong to the age
group middle age (say 40-50). But if I just tell you that I
belong to the middle age group, yo have no way of knowing my
exact age for sure. So why should we use interval variables
instead of the underlying raw variable?  Well, the main advantage 
is when the underlying variable cannot be
precisely  measured, and we really do not need the precision for
our present purpose. 

<P/>
This idea of categorizing an underlying continuous measureument
variable is very commonly seen psychomtric studies and feedback
systems in the form of what is <B>Likert scales.</B> We discuss
this next.

<JINGLE t="0.1">Likert variables</JINGLE>

In this age of online shopping we all know about Amazon and
Netflix and Rotten Tomato. All these sites allow the users to
provide ratings. These ratings are commonly given in a scale of 5
stars. This is an example of a <B>Likert scale</B>, or 5-point
Likert scale, to be precise.
<P/>
This is also an interval variable in disguise, where the
underlying variable may be called satisfaction. But it is really
hard to measure it. So we cannot really explicitly associate
intervals to each rating, like "two star means satisfaction
between 2.3 and 4.6". That is why we refrain from the calling
them interval variables.
<P/>
Well we have described many different types of variables from the
user's perspective. It is important to know these well, as the
choice of the appropriate type of statistical analyses depends
crucially on the type of variable you are working with. 
</FLD>
</SC>
</SCRIPT>
<FLD>
<EXRLIST id="m1l3_b.yml">
- typeName: multipleChoice
  prompt: >
    In a financial data set the annual turnover of small businesses
    are expressed as slabs like 1 lakh to 2 lakhs,  2 lakhs to 3 lakhs, 
    etc. In this data set annual turnover is most appropriately called
  shuffleOptions: true
  options:
  - answer: an interval variable
    isCorrect: true
    feedback: That's right. Each slab here is an interval.
  - answer: a categorical variable
    feedback: >
      Not entirely wrong, but a more appropriate description
      should take the slab structure in consideration. 
  - answer: a Likert-type variable 
    feedback: >
      No, these are not like ratings along a scale.
  - answer: an identifier variable
    feedback: >
      No, this variable is not identifying the cases. An
      identifier would just be useful for distinguishing one case
      from another. Note that each slab denotes a range of values.


- typeName: multipleChoice
  prompt: >
    A data set has a variable "gender" that encodes male as 1,  female
    as 2 and others as 3. This variable is an example of a 
  shuffleOptions: true
  options:
  - answer: categorical variable
    isCorrect: true
    feedback: >
      Yes, despite the use of numbers, this is just a
      categorical variable.
  - answer: measurement variable
    feedback: >
      No, possibly you have chosen this because of the numerical
      nature of the values. But, you see, finding the gender of a
      person does not really amount to *measuring* anything. 
      The different values denote different categories (oops, gave you a hint!).
  - answer: a Likert-type variable
    feedback: >
      No, gender is not a rating along a scale. 
  - answer: an identifier variable
    feedback: > 
      No, this variable is not identifying the cases. An
      identifier would just be useful for distinguishing one case
      from another. Note that each slab denotes a range of values.


- typeName: multipleChoice
  prompt: >
    A variable which gives the number of road accidents in a
    particular month  at a particular crossing is 
  shuffleOptions: true
  options:
  - answer: a counting variable
    isCorrect: true
    feedback: >
        That's right! We are *counting* the number of accidents.
  - answer: a categorical variable
    feedback: > 
        No, the different values do not denote different
        categories. Aren't we *counting* something here?
  - answer: a Likert-type variable
    feedback: >
        No, this is not a rating along a scale.
  - answer: an identifier variable
    feedback: >
        No, an identifier is supposed to distinguish one case
        from another. But number of accidents does not do that.


- typeName: multipleChoice
  prompt: >
    If we record the height of a person to the nearest inch then the
    variable is an example of 
  shuffleOptions: true
  options:
  - answer: a measurement variable
    isCorrect: true
    feedback: >
      When we measuring something, the result is a measuring variable.
  - answer: a counting variable
    feedback: >
      Well, you do have a point there. It *is* somewhat like
      counting the inches. But, you see, the quantity we are
      measuring is actually continuous. The counting nature is just
      due to our approximation.
  - answer: a categorical variable
    feedback: >
      No, we are *measuring* something, not merely labelling
      different categories.
  - answer: a Likert-type variable
    feedback: >
      No, this is not like rating along a scale.


- typeName: multipleChoice
  prompt: >
    The number of new occurences of COVID in each district of a
    state is recorded over a month. Then 
  shuffleOptions: true
  options:
  - answer: district is an identifier variable,  covid is a counting variable
    isCorrect: true
  - answer: district is a categorical variable,  covid is a Likert-type variable
    feedback: >
      Each case 
  - answer: district is a categorical variable,  covid is a measurement variable
  - answer: district is an identifier variable,  covid is an interval variable



</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 1, Lesson 3,  Video 3: Types of variables (technical perspective)</HEAD3></STKY>
<SCRIPT id="m1/l3/v3" done="k" t="5:18">
<SESS t="0.60" done="a" kf="30,60" id="s1">
In one of the earlier videos we mentioned how variables are some
what like colours for a painter. There seem to be so many
different colours in the world...
---
 Yet to the painter everything boils down to a surprisingly
simple pallette consisting of only a
few colours.
---
 Similarly, from a technical perspective there are
only two different types of variables. Yes, you have heard that
right, just two: <B>continuous</B>
and <B>discrete</B>. We shall now discuss them one by one.
</SESS>
<JINGLE t="0.1">Continuous</JINGLE>
<SESS t="2.20" done="a" kf="10,20,50,60,70,80,90,100,110" id="s2">
A continuous variable means a variable that takes
all values in an interval, <V>[shown]</V>  a range of values without
any gap<V>[finger]</V>. 
---
We have already seen this when we talked about 
measuring people's heights. When you measure heights of a bunch
of people you will get a few numbers like
these.<V>[160,155,180]</V>
---
These are
only some distinct points in that interval<V>[shown]</V>.
But these are not the only possible values.  The points
between them are also valid values.
---
 It is not that people either
have this height or they jump to that height without ever taking
the values in-between. All possible human heights form a
continuum,  a range without any gap. So height is a continuous
variable. 
---
Most measurement variables are continuous. Here we are not taking
<B>approximation</B> into account, we are talking about the true
underlying value.
---
 Here, for example, you can see that the heights are reported
rounded off to the nearest centimetre, so no value between
<B>150 and 151</B>, say,  can appear in the reported data,...
---
 but actually the
value <B>150.32</B> is quite possible.
 It just gets reported as 150, that's all!
---
 All continuous variables must be rounded when
reported in a data set. And all values of the same variable should
be rounded to the same level of precision.
---
 Mathematically <B>156.0 and 156.00</B> are the same. But they mean different things as
values of a continuous variable in a data set. 
156.0 means the true value has been rounded off to one decimal
place,...
---
 while 156.00 means rounding off to two decimal places.
<V>[make space]</V> Thus a reported 156.0 means the
true value is in the interval <B>[155.95, 155.05)</B>, while a 156.00 means 
<B>[155.995,156.005)</B>.
</SESS>
<TODO>Change the first interval end point: done.</TODO>
<JINGLE t="0.1">Discrete</JINGLE>
<SESS t="1.40" done="a" kf="10,20,30,40,50,60,70,80,90,100" id="s3">
 A discrete variable is one which
can take only <B>finitely many values</B> or is a <B>count</B> variable.
All categorical variables are of this type.
---
 For instance, <B>gender</B> can take only three values <B>Male, Female and
other</B>. Counting variables are also considered discrete. 
They can in principle go on and on.
---
 All <B>identifier</B> variables are discrete, as well. 
So are the <B>Likert</B> type variables, like
5-star ratings. As you can
understand, almost all variables except measurement variables are
discrete. 
---
The mathematics to handle all discrete variables is
quite similar. But that is no comfort for the practising
statistician,...
---
 because the intepretation of the result will
crucially depend on whether a variable is a Likert variable or a
Categorical variable. 
---
By the way, even a measurement variable may appear discrete due
to approximation. However, discrete or continuous refers to the
true values, and not the approximate reported values.
---
 Thus, even if monthly <B>income</B> is reported to the nearest thousand, it is
considered <B>continuous</B>. However, if we use only <B>income slabs</B>,
which is an interval variable, then we have a <B>discrete</B> variable.
</SESS>
</SCRIPT>


<FLD>
<EXRLIST id="m1l3_c.yml">
- typeName: textReflect
  prompt: >
     Identify the types (discrete/continuous) of these variables regarding a human
  being: body type (endomorphic/mesomorphic/ectomorphic), age in
  completed years, eye colour, height, blood group.
  defaultFeedback: >
     body type, eye colour and blood group are discrete. The
     others are continuous. 

- typeName: textReflect
  prompt: >
     Should marks awarded to students in a scale of 0 to 100 be considered continuous?
  defaultFeedback: >
     Well, yes. Partly because it is measuring the merit of a
     student, and intuitively merit is something continuous. Also
     the resolution of the scale is quite high. Moreover, some
     teachers do award fractional marks like 50.5.

</EXRLIST>
</FLD>

<STKY><HEAD3>Module 1, Lesson 3,  Video 4: Uses of numbers</HEAD3></STKY>
<SCRIPT id="m1/l3/v4" done="k" t="7:09">
<SC t="7" done="r" id="sc_numuse_134">
numuse.ods
<FLD>Discussion
When we think about data, we think about numbers. While we do
occasionally use texts as values of variables, numbers are used
much more often. Now, numbers as used in a data set need not be
same as numbers as we learn in mathematics. Numbers are often
used as codes. Here's an
example. Suppose we hae a variable called <B>smoking
habit</B>. It can either be "yes" or "no". However, often such
binary values are encoded as 1 and 0, respectively. Now you must
be careful when working with these. You may not just average a
smoker and a non-smoker to get 0.5! That would just be
meaningless! Similarly, we cannot say that a smoker is greater
than a non-smoker (even though 1 is indeed greater than
0). Indeed, the numbers are just used as names here. Depending on
how they are used, there are 4 types of numbers in statistics:
  * nominal
  * ordinal
  * interval type
  * interval/ratio type
Let's start with nominal.

When a number is used just as a name, we call it nominal. The
example of smoking habit that we saw just now furnishes one such
scenario. Another example could be coding Male as 0 and Female as
0. When a number is used nominally, we may not perform any
arithmetic operation or comparison with them. Changing the
numbers should also not have any effect, as long as the distinct
numbers remain distinct. Thus, we could as well have coded Male
as 2 and Female as 1. 
<P/>
Numbers used nominally are a trap for the beginning
statisticians. They inadvertanently pass these numbers into
statistical analysis techniques that perform artihmetic
operations on them. The computer would never complain if you make
this mistake. You'll just be rewarded with garbage results. 
<P/>
Next we shall talk about another level of using numbers, where
comparison is allowed, though arithmetic operations are still forbidden.

<JINGLE t="0.1">Ordinal</JINGLE>

Consider a variable called educational level. This is an important
variable in many social studies. Typical values may be
"Preschool", "Primary", "Secondary", "Higher secondary",
"College" and "Higher". These may be encoded as numbers, say as
1,2,...,6, respectively. While this encoding is natural, would
you consider encoding them like this: 1 for "Preschool", 4 for
"Primary", 2 for "Higher", etc? No, that is absurd, because there
is an implied ordering among the values. Thus we are at a higher
level than nominal, but still arithmetic oprations are
meaningless. For example, 2-1 = 5-4, but that does not mean  that
the difference between 
primary education  and preschool education is the same as the
difference between
College than Higher secondary education. Indeed, we can hardly
quantify the "difference between primary and preschool education
levels"!
Earlier we talked about interval variables. If the intervals are
encoded as single numbers, then those numbers are being used as
ordinals. 

<JINGLE t="0.1">Interval/ratio level</JINGLE>

Next we shall talk about the highest level of using numbers. The
fancy name is <B>interval/ratio level</B>. In plain words, it
means using numbers as in mathematics. You can perform arithmetic
operation on these meaningfully. Most measurement variables are
of this type. I said "most", because there are a few examples
where cetain operaions  may not really make sense. Consider this
data set, where we record temperatures of different cities in the
month of January. While it is meaningful to say that Kolkata is
5 degrees warmer than Delhi, it is meaningless to say Kolkata is
double warmer than Delhi. This is because the temperatre scales
have arbitrary origins. What is double in one scale need not be
double in another. Thus, here difference is meaningful, but not
ratio. 
</FLD>
</SC>
<IVQ id="ivq134.yml" t="2:27">
- typeName: multipleChoice
  prompt: >
      If each case is a dog, and different breeds are encoded as
  numbers, like 1 for greyhound, 2 for doverman etc, then numbers
  are used at the 
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: nominal level
    isCorrect: true
    feedback: >
      Yes!
  - answer: ordinal level
    feedback: >
      No specific ordering.
</IVQ>
</SCRIPT>
<REF>
WW: 1.4--1.6
    8.1, 8.2
</REF>

<FLD>

<EXRLIST id="m1l3_d.yml">
- typeName: multipleChoice
- prompt: >
    A counting variable is 
  shuffleOptions: true
  options:
   - answer: a discrete variable
   - answer: a difference-type continuous variable
   - answer: a ratio-type continuous variable
   - answer: none of these



- typeName: multipleChoice
Temperature is a 
shuffleOptions: true
options:
   - answer: a discrete variable
   - answer: a difference-type continuous variable
   - answer: a ratio-type continuous variable
   - answer: none of these




- typeName: multipleChoice
Temperature is a 
shuffleOptions: true
options:
   - answer: a discrete variable
   - answer: a difference-type continuous variable
   - answer: a ratio-type continuous variable
   - answer: none of these



- typeName: multipleChoice
If gender is encoded as 1 for male,  2 for female and 3 for
others,  then it is  
shuffleOptions: true
options:
   - answer: a nominal variable
   - answer: an ordinal variable
   - answer: a counting variable
   - answer: a difference-type continuous variable



- typeName: multipleChoice
PAN of a person  is an example of 
shuffleOptions: true
options:
   - answer: a nominal variable
   - answer: an ordinal variable
   - answer: a ratio-type continuous variable
   - answer: none of these




</EXRLIST>

</FLD>
</LESSON>

<HEAD2>Module 1: Lesson 4</HEAD2>
<STKY>
<HEAD3>Module 1, Lesson 4,  Video 1: Univariate and multivariate</HEAD3></STKY>
<LESSON>
<SCRIPT id="m1/l4/v1" done="k" t="6:39">
<SESS t="0.80" done="a" id="s1">
We have learned quite a bit of stuff in the videos
so far. We have a basic idea about how data are collected, and
what are the different types of variables we are interested
in. 
---
So far we are looking at the variables one at a time. But in
most real life scenarios we have more than one variable of
interest in the data. This is because we collect
different pieces of information for the same unit.
---  
I said "variable of interest" to exclude any identifier 
variable that might be present. When we have multiple variables
recorded for each unit, we are typically 
interested in the interplay between them.
---
 Let's take a toy example to understand this.
</SESS>
<JINGLE t="0.1">A toy example</JINGLE>
<SESS t="2.00" done="a" kf="10,20,50,60,70" id="s2">
Quantities in the real world are related in various ways, and one
of the aims of science is to explore them.
---
 While some of the laws are
obtained by purely logical thinking, most others are ascertained
empirically based on data. 
---
Our toy example is one such scenario. 
Here we are interested in exploring the relation between the
sides of <B> right
angled triangles</B>.
---
 Of course, we know that they are linked by 
<B>Pythagoras' theorem</B>, but like many such relations in nature let's
pretend that this is also initially unknown to the researcher. 
---
We start with this random collection of right angled triangles.<V>[shown]</V>
and  measure the lengths of their sides.
Thus, we have 3 variables, and 5 values for each.<V>[shown]</V>
---
Now these 5 right angled triangles are just 5 random right angled
triangles, and so their order in the data set is not important.
---
Now suppose we focus our attention on only the hypotenuse. No
information is changed about it if I  
reshuffle the numbers in its column<V>[finger]</V> , as long as I am working with
that column only.
---
And this is true about each of the variables
individually. But does that mean that  I can reshuffle the numbers in each column
independently, and still not change any information in the entire
data set? 
---
Let's do such
a scrambling.<V>[shown]</V> Well,
now I shall end up with triples<V>[finger]</V>  that may not
correspond to any right angled triangle, or may be no triangle at
all!
---
Thus, reshuffling has destroyed important information like Pythagoras' theorem.
Reshuffling is OK, as long as we reshuffle entire
rows, and not merely the values in the columns
independently.
---
 Otherwise, we have no hope to recover the
inter-relation between the variables.
</SESS>
<JINGLE t="0.1">Univariate vs multivariate</JINGLE>
<SESS t="0.70" done="a" kf="30,60" id="s3">
Well, this brings us to the distinction between
a <B>univariate</B> and <B>multivariate</B> data set. A
univariate scenario is where we are focusing our attention on
only one variable.
---
 There may be other variables also, but we are
interested in only one of them, or more likely, one at a time.
--- 
A multivariate scenario, on the 
other hand, involves more than one variable, and we are
interested in exploring their inter-relation.
---
 As the triangle example showed, a multivariate data set is not
merely a collection of some univariate data sets bunched
together. All the variables need to be considered together.
</SESS>
<JINGLE t="0.1">A more practical example</JINGLE>
<SESS t="1.70" done="a" kf="10,20,30,40,50" id="s4">
Here's a more practical example of a bivariate
scenario. "Bivariate" as you have no doubt guessed is a special
case of multivariate, where we have only <I>two</I> variables of
interest.
---
 Similarly, <B>trivariate</B> is where the focus is on
only three variables. Anyway, our example<V>[triv clears]</V> is
a bivariate one.
---
 The units here are schools, and we are interested in checking if
the schools nurture academic and physical skills in a balanced way. We draw a
random sample of students  and conduct two tests, one on academic skills and the other on
physical skills.
---
 Thus we get two scores, academic and
physical.<V>[shown]</V> There are students with high and low values in either
variable. But looking at each variable <I>separately</I> will not
let us answer our question.
---
 In this data set, for example,<V>[trans]</V> we
have a high scorer in academics,<V>[finger]</V> but the student is in poor physical
training. On the other hand, the guys who are physically well-trained are flunking
in academics.
---
 Now let's just reshuffle the numbers only in the second 
column.<V>[shown]</V> The new data set shows much better balance between
academic and physical training,...
---
 as students with high marks in
one are typically getting high marks in the other, as well. 
Thus we see that reshuffling the columns independently changes
the information content of the data set.
</SESS>
<TODO>Cut a period of silence: done</TODO>
</SCRIPT>

<FLD>
<EXRLIST id="m1l4_a.yml">
- typeName: textReflect
  prompt: >
     If we collect daily data on maximum and minimum temperatures
  in a city, then is the resulting data set a univariate one or a
  multivariate one?
  defaultFeedback: >
      Multivariate. Bivariate, to be precise.

- typeName: textReflect
  prompt: >
     For 1000 persons, we collect their government identification
  number, name as well their income. Is the resulting data set
  univariate or multivariate?
  defaultFeedback: >
      Well, there are three variables. But still it should be
      univariate for statistical purposes, because the first two are
      just identifier variables.

- typeName: multipleChoice
  prompt: >
    For 50 households data have been collected on the number of
    members. The resulting data set has two columns,  a serial number
    and the number of members. This data set is 
  shuffleOptions: true
  options:
   - answer: univariate
     isCorrect : true
     feedback: >
       Correct. Though there are two columns, yet the first
       column is merely for identifying the cases.
   - answer: bivariate
     feedback: >
       No. Despite there being *two* columns in the data matrix,
       the first column is merely for identifying the cases.
   - answer: multivariate
     feedback: >
       Well, there *are* more than one columns in the data
       matrix. But the first column is merely for identifying the
       cases. 
   - answer: none of these.
     feedback: >
       Hey, wait a second! Any data set is either univariate or
       multivariate (bivariate being just a special case of
       multivariate). 


- typeName: multipleChoice
  prompt: >
    For 50 rural  and 50 semi-urban households we have collected the
    monthly income and expenditure data. 
    The aim is to study the effect of the background on the
    income-expenditure relation. The data set here is
  shuffleOptions: true
  options:
  - answer: univariate
    feedback: >
      Well, I can already see *at least* two variables: income
      and expenditure. 
  - answer: bivariate
    feedback: >
      Good guess, but not correct. There is a third variable here
      other than income and expenditure.
  - answer: trivariate
    isCorrect: true
    feedback: >
      Yes, there are three variables here: income, expenditure
      and, say,  *type* which is a categorical variable taking
      values rural and semi-urban.
  - answer: none of these
    feedback: >
      You mean there are at least four variables here? Well, I
      can see income and expenditure and ...
</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 1, Lesson 4,  Video 2: Univariate and multivariate</HEAD3></STKY>
<SCRIPT id="m1/l4/v2" done="k" t="4:40">
<SESS t="0.5" done="r" id="s1">
In this video we are going to see the example of a famous
multivariate data set, called the iris data set. It is about 3
species of iris flowers. Each flower is a case.
---
 We measure each flower in 4 different ways and also record the
species. Hence we get a multivariate data set. We shall also look
at a multivariate data set about air pollution.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="5" done="r" id="sc_iris_142">
Real life data example. Point out interrelations worth exploring.
[iris.ods (iris + pollution)]
</SC>
</SCRIPT>



<FLD>
<EXRLIST id="m1l4_b.yml">
- typeName: textReflect
  prompt: >
     How many continuous variables are there
     in the iris data? And how many categorical? 
  defaultFeedback: >
     4 continuous and 1 categorical. 

- typeName: textReflect
  prompt: >
     The iris data set has 150 cases. 
     Suppose that you decide to draw a representative
     sample of only 15 cases out of these.
     How would you do this? 
  defaultFeedback: >
     Pick 5 random flowers of each species. 

</EXRLIST>
</FLD>


<STKY>
<HEAD3>Module 1, Lesson 4,  Video 3: Time series and  panel data</HEAD3></STKY>


<SCRIPT id="m1/l4/v3" done="k" t="4:40">
<SESS t="2.00" done="a" kf="10,20,50,120,130,140,150,160" id="s1">
In statistics with work with data in the form of a data matrix.<V>[shown]</V>
In the last few videos we have talked a lot about variables,
i.e., the columns in the data matrix.<V>[shown]</V> But what about the rows,
i.e., the cases?<V>[shown]</V>
---
 Well, that's what we are going to talk about
now. But first, when we think about cases, stop thinking of them
as a row of values, but as the totality of information about a
single unit.
---
 Visualise a unit as a single object, like a patient,
or a plot of land, a household, a student in a particular class,
and so on. When you do so, you might detect some layout of
these units that has bearing on the object of your study.
---
 Like, they may be measurements of depth of a river at different points
along the river.<V>[shown]</V> Each point is then a unit, and they are laid out
spatially. A point near the source of the river may behave
differently from one near the estuary.
---
 In fact, the variation of
depth along the river may be the focus of attention in the
study. 

As yet another example, we might consider daily minimum temperature data
for many years.<V>[shown]</V>
---
 Here each day is a unit, and they are laid out uniformly along a
time line. This temporal layout is important because we may hope
to predict future values based on such a data set.
---
 Based on the
layout of the units we classify data in a number of ways:
  * <B>Time series and panel data</B>
  * <B>Cross-sectional data</B>
  * <B>Spatial data</B>
---
Let's discuss these one by one.
</SESS>
<JINGLE t="0.1">Time series</JINGLE>
<SESS t="1.50" done="a" kf="30,40,50,60,70" id="s2">
If the cases are each marked with a time stamp, and we are
interested in the temporal evolution of the data, i.e, how the
values are changing over time, then we have a <B>time
series</B>.
---
 If we imagine time flowing down a pipe, then it is
like following a flow longitudinally through the pipe. Hence
another name for such data is <B>longitudinal data</B>.
---
 Stock
market data is a common example. The most important aim behind
analysing such data is prediction of the future.
---
In most scenarios, the cases of a time series data set are
collected <B>uniformly over time</B>, with some occasional
irregularities.
---
 However, in a burgeoning field of
statistics, <B>astrostatistics</B>, where we observe celestial bodies
over time, the sampling time points are necessarily irregular, as
certain bodies are not visible at certain times.
---
 It is remarkable
how time series analysis helps scientists to look for <B>extrasolar
planets</B> (i.e., planets around stars other than the sun) that
might be inhabited.
---
Commonly when we use the term time series or longitudinal data,
we think of just a single variable, or univariate data. But of
course we may like to follow the temporal evolution for a
multivariate data as well. Then it is called panel data.
<TODO>Cut a little faltering at start: done</TODO>
</SESS>
<JINGLE t="0.1">Panel data</JINGLE>
<SESS t="0.60" done="a" kf="10,20,30,40,50" id="s3">
<B>Panel data</B>, as I said just now, are basically <B>multivariate time
series</B> data. These are very common in econometric studies, where
we follow the interplay among different economic factors over
time. Thus we are interested in three things here: 
---
* <B>Prediction</B>
* <B>Relation among the variables</B>
* <B>How the relation is evolving over time.</B>
---
In the next video we shall look at some real life examples of
time series and panel data.
<TODO>Cut silence: done</TODO>
</SESS>
</SCRIPT>

<FLD>
<EXRLIST id="m1l4_c.yml">
- typeName: textReflect
  prompt: >
     Think of 5 time series data that might be interesting to you.
  defaultFeedback: >
     Daily COVID infection in your neighbourhood. Your bank
     balance over time. Your body weight over the past few
     years. Prices of the stocks that you hold. Download speed of
     your internet connection.

- typeName: textReflect
  prompt: >
    Many parents keep a record of their children's heights each
    birthday. Are these  examples of  time series?
  defaultFeedback: >
    Yes, of course!  

- typeName: textReflect
  prompt: >
     There is a familiar clinical measurement related to the
     heart that is actually a time series.  What is it?
  defaultFeedback: >
     Electrocardiogram (ECG). 

</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 1, Lesson 4,  Video 4: Time series and  panel data</HEAD3></STKY>
<SCRIPT id="m1/l4/v4" t="5:55" done="k">
<SC t="6" done="r" id="sc_time_144">
[time.ods]

Practical:
https://fred.stlouisfed.org/series/LNU00000001



Units:  Thousands of Persons, Not Seasonally Adjusted

Frequency:  Monthly

Civilian noninstitutional population is defined as persons 16
years of age and older residing in the 50 states and the District
of Columbia, who are not inmates of institutions (e.g., penal and
mental facilities, homes for the aged), and who are not on active
duty in the Armed Forces.   

The series comes from the 'Current Population Survey (Household Survey)'

The source code is: LNU00000001

Suggested Citation:

U.S. Bureau of Labor Statistics, Population Level - Men
[LNU00000001], retrieved from FRED, Federal Reserve Bank of
St. Louis; https://fred.stlouisfed.org/series/LNU00000001, December 27, 2021.  

</SC>
</SCRIPT>


<FLD>
<EXRLIST id="m1l4_d.yml">
- typeName: textReflect
  prompt: >
     How many variables were there in the panel data set in the
     last video?

  defaultFeedback: >
      Five.

- typeName: textReflect
  prompt: >
    In one variable in the panel data set above, numbers were used
    at the nominal level. Which variable?
  defaultFeedback: >
    Firm.

</EXRLIST>
</FLD>


<SCRIPT id="m1/l4/v5" done="k" t="5:46">
<SESS t="1.60" done="r" kf="10,20,80" id="s1">
We have learned about time series and panel data, where the cases
are laid along a line, the time line. 
If, on the other hand, our data consist of just a single snap shot of all the
variables at a single time point, we get a <B>cross-sectional</B>
data set.
---
 The term cross-sectional comes from the fact
that a snapshot at a single time point is like  a cross-sectional
view of the pipe of time.  In a sense this is the simplest
possible scenario, where there is no particular 
layout of the units.
---
 If we visit the households of a village and
collect some information from them, the resulting data set is
will be cross-sectional. When a country conducts a census of its
population, the result is a cross-sectional data set.
---
In a cross-sectional data set you may reshuffle the cases (entire rows)
without destroying any important information.
---
 A special case is where all the cases are
independent and as far as the study area is concerned are
expected to behave identically. In other words, 
all variations are due to chance only.
---
 Such a cross-sectional data set is 
called an <B>IID</B> data set. IID is an acronym for Independent and
Identically Distributed.<V>[shown]</V> Typical examples are data from a random
sample. 
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="4" done="r" id="sc_cross_145">
fusion.ods
https://developer.nvidia.com/sites/all/modules/custom/gpugems/books/GPUGems/gpugems_ch41.html
</SC>
</SCRIPT>

<FLD>
<EXRLIST id="m1l4_e.yml">
- typeName: textReflect
  prompt: >
     A scientist spins tops at different speeds and measures the
     times they take to stop. Is the resulting data set a time
     series data set? 
  defaultFeedback: >
     No, it is cross sectional data set. The cases (ie spins) may
     be  reordered without losing any information.

- typeName: textReflect
  prompt: >
    It is     suspected that a spring balance slowly sags, when used repeated
    over a short time. To juudge this it is used to measure the
    same weight repeatedly 100 times at regular intervals over 30 minutes. Is the
    resulting data set a time series data?
  defaultFeedback: >
    Yes.  

</EXRLIST>
</FLD>



<STKY>
<HEAD3>Module 1, Lesson 4,  Video 6: Spatial data etc</HEAD3></STKY>

<SCRIPT id="m1/l4/v6" t="1:33" done="k">
<SESS t="0.70" done="a" kf="30,60" id="s1">
When the units are laid out geographically over space, and we are
interested in the spatial positionings of the units, we
have <B>spatial data</B>.
---
 A good example is weather data (e.g.,
rainfall and temperature) or environment data (e.g. pollution
level) collected from different centres.
---
  <B>Geostatistics</B> is the
branch of statistics that deal particularly with spatial data.
---
With the wide availability of satellite imagery, spatial data are
now assuming great importance.  
</SESS>
<JINGLE t="0.1">Other layouts</JINGLE>
<SESS t="0.90" done="a" id="s2">
We have learned about various ways units may be laid out in a
data set. A great deal has been written about analysing spatial data, and
an even greater amount of literature exists for cross-sectional
and time series data. 
---
Still these by no means exhaust the possibilities. It is quite
possible to have other, more complicated layouts. For instance we
may have both spatial and temporal structures. e.g., how railfall
pattern is changing over time in different parts of the globe. 
---
Another example could be data from social media, where the units
are the people, and the layout is provided by their
interrelation like Facebook friendship. 

In this course, however, we shall not consider these layouts.
</SESS>
</SCRIPT>

<FLD>
<EXRLIST id="m1l4_f.yml">

- typeName: multipleChoice
  prompt: >
    If we collect household level monnthly income data for 10 villages in a
    district,  and the data collection takes two weeks,  then the
    resulting data set is an example of ...
  shuffleOptions: true
  options:
  - answer: cross-sectional data set.
    isCorrect: true
    feedback: >
      Since household level data are not excpected to change
      significantly over a span of just 2 weeks, it is reasonable
      to consider this data set as cross-sectional. 
  - answer: time series data set.
    feedback: >
      Though 2 weeks ellapsed between the start and end of the
      survey, yet we are not following any household during this
      time period. So it is still like a snapshot in time.
  - answer: spatial data set
    feedback: >
      In such a survey the households are not tagged with their geographical
      locations (*e.g.*, latitudes or longitudes). 
  - answer: panel data
    feedback: >
      Any panel data has a time component. But we are not
      following any household over time.
 
- typeName: checkbox
  prompt: >
    Arsenic contamination levels are determined at different
    points along a river on a particular date. The resulting data set is 
    an example of:
  shuffleOptions: true
  options:
  - answer: spatial data set.
    isCorrect: true
    feedback: >
      The points are identified with their geographical locations.
  - answer: time series data.
    feedback: >
      We are not following the river over time.
  - answer: cross-sectional data.
    isCorrect: true
    feedback: >
      Yes, it is correct, but does not capture the fact that the
      points are tagged with their geographical locations.
  - answer: panel data
    feedback: >
      No, a panel data has a time component. But our data set has none.


- typeName: checkbox
  prompt: >
    Monthly expenditure data of a small business farm for 2
    years are ...
  shuffleOptions: true
  options:
  - answer: time series data.
    isCorrect: true
    feedback: >
      We are measuring the same quantity repeatedly at different
      time points.
  - answer: spatial data
    feedback: >
      No, thee is no location tagging involved here!
  - answer: panel data.
    isCorrect: true
    feedback: >
      Well, we reserve the term *panel data* for the situation
      where multiple measurements are made at each time point. This
      is most likely the case here, because expenditure comes under
      different heads.
  - answer: cross-sectional data.
    feedback: >
      No, we are measuring the same quantity repeatedly at different
      time points.

- typeName: multipleChoice
  prompt: >
    Data are collected about the number of different crimes in a
    city per month over 10 years. This is an example of:
  shuffleOptions: true
  options:
  - answer: panel data 
    isCorrect: true
    feedback: >
      We are measuring multiple quntities repeatedly at different
      time points. 
  - answer: spatial data
    feedback: >
      No location tagging is involved here.
  - answer: cross-sectional data
    feedback: >
      The measurements are made repeatedly at different time points.

</EXRLIST>

</FLD>

<REF>
Visit DASL and search for multivariate data. Read their
story. Also search for time series data. Finally, visit the panel
data webpage refered to in the video. 
</REF>
</LESSON>


<HEAD2>Module 1: Lesson 5</HEAD2>
<LESSON>

<STKY><HEAD3>Module 1, Lesson 5 (review),  Video 1</HEAD3></STKY>
<SCRIPT id="m1/l5/v1" done="k" t="3:48">
<SESS t="3.30" done="a"  id="s1">
So we have come to the very last lesson of the week. We have 
already had 4 lessons. This last lesson is
mainly for review purposes.
---
Now before we go into other things, lt me ask you this: how did
you like the lessons so far? Well, let's be honest. If you are
like most learners (and that includes me), you are bored! Right?
---
No, no! No reason to be ashamed about that. It's natural, almost
inevitable until I tell you a secret. The lessons look boring,
because they hardly tell you anything beyong common sense that
you already have.
---
 The only extra things are some jargons, and
learning jargons by themselves is never fun. And you know what,
most topics in statistics are indeed actually common sense. Nothing
excitingly new there.
---
 The exciting part is in applying those
concepts to data that YOU CARE ABOUT. And that's the secret that
so many learners, books and courses miss! In order to enjoy statistics, you
first must have data that you feel excited about!
---
 It is easy to download from the internet data
on COVID infection or a country's literacy level. But are you
really interested in those data? Do you have questions that you
want to answer based on them,...
---
 questions that are your very own? Not something already answered
by others? If not, then those data are as good as dead bodies for
you. You can perform post mortem analysis  with them to learn
anatomy, but you cannot fall in love with them.
---
So step 0: get hold some data that YOU care about. You may need
quite a bit of brainstorming before you get a satisfactory
answer.
---
 They need not be, and usually will not be, anything of general
interest. That's why they are waiting for YOU to analyse them. Here are some
examples: your phone keeps track of call times as well as call
durations.
---
 That's data. Ever wondered what is your maximum call
duration over the last week? Is there any relation between duration and the time? 
How many missed calls per day?
---
 Another source of easy data is
your grocery bill. Create a data set of weekly grocery
expenses. Think of interesting questions. Indeed, you might
surprise yourself by unearthing some of your own habits! 
---
Do you watch movies on your computer? Or listen to music? Each
file has a file size, as well as a duration. Create a data set
out of them, try to explore their relation. 
---
If you love running or some sort of physical training, measure yourself,
time, blood pressure, whatever. Explore the resulting data. Ask
questions. Try to find answer.
---
In short, being a statistician is not just about learning some
techniques. It is about developing a quantitative mindset towards
whatever you are interested in.
---
 Learn to see data everywhere, and
ask questions, try to answer them, and everytime you learn a new
method, apply them on YOUR data sets, and that's how you'll find
the joy of statistics.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 1, Lesson 5,  Video 2: Secondary data</HEAD3></STKY>
<SCRIPT id="m1/l5/v2" done="k" t="2:47">
<SESS t="1.90" done="a" kf="10,20,30,40,50,60" id="s1">
The most interesting types of data, as I said, are primary
data. Data that you collect yourself for your own interest.
---
 The greatest mistake that a statistics learner can make is to confine
oneself to just secondary data, data already collected by
others. Typically, they squeeze out much of the juice out of them
before publishing.
---
 With all these juice already presented in the
form of summry tables and charts, you do not really feel like
looking at the raw data yourself. So secondary data are never as exciting as
primary data.
---
 But still one has to admit that
primary data, data that you can collect on your own, would be
limited to your neighbourhood.
---
 If you want to look at the world beyond through data, 
you have to use secondary data. Here are
some public domain data sources that you should explore.
---
<B>World bank: https://data.worldbank.org/</B>
All sorts of economic indicators, literacy levels, COVID
data. For different countries. Over years.
---
<B>FRED: https://fred.stlouisfed.org/</B>
Another similar one, but for the US.
---
<B>Our world in data: https://ourworldindata.org/</B>
Another great source of data about anything and everything that
affects our planet.
---
<B>Climate data: https://www.ncdc.noaa.gov/cdo-web/</B>
This one is about climate only. 
---
If you care about data collected and published  by the Indian
government, look here:
<B>Open government data platform: https://data.gov.in/</B>
---
All these were for serious data. Here are some sources that also
give you some fun data sets, small ones. And what's more they
might put ideas in your head about what data you may collect
yourself.
---
<B>http://www.randomservices.org/random/data/index.html
Data And Story Library: https://dasl.datadescription.com/
Kaggle: https://www.kaggle.com/datasets</B>
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 1, Lesson 5 (review),  Video 3: Software</HEAD3></STKY>

<SCRIPT  id="m1/l5/v3" t="1:24" done="k">
skip it
<SESS t="1.40" done="a" kf="30" id="s1">
We talked about the LibreOffice CALC software. Like all softwares
it takes time to get used to. Espcially if you already know some
other software, you may need some time to unlearn those
habits.
---
At times  you'll feel annoyed and angry with the stupidity of
LibreOffice. It's all part of the learning curve. 
---
Here's a piece of advice to make that process a bit
smoother. Start using Libre Office as a simple calculator, for
your everyday chores, like grocery expense computation, or some
such easy thing.
---
 Of course, watching youtube videos is another
way you may try out. 
---
Later you will learn two powerful statistical softwares: <B>R and
Python</B>. Well, Python is not just about statistics, but you can do
a lot of statistics with Python. The data layout that we discussed here
will work for them as well. The data matrix idea, cases in rows,
variables in columns thing.
---
Let me share a little Libreoffice CALC tip with you. Often you
need to go to the very last row of a data matrix, say to see how
may cases there are. You may of course scroll down, but that is
tedious for a large data set. But you can define a keyboard short cut.
</SESS>
<JINGLE t="0.1">Keyboard short cut</JINGLE>
<SC t="4">

</SC>
</SCRIPT>


<STKY><HEAD3>Module 1, Lesson 5, Video 4</HEAD3></STKY>
<SCRIPT id="m1/l5/v4" done="k" t="3:21">
<SESS t="2.90" done="a" kf="10,20,30,40" id="s1">
Statistics is a vast subject, and there is so much to say even
about just basic structure of data. We have mostly covered
whatever basic notion about data we shall need for our
course.
---
 But there are other things that are also worth having an
idea about. That's what we plan to do now.

Measurement is a major way to get hold of data. When we think of
measurement, we think of measuring tapes and weighing
machines.
---
 But in the modern era of microcontrollers, measurements
extend much beyond those traditional devices. You may be
surprised if I tell you that in your pocket you have a data
collection device...
---
that makes <B>40,000,000 high precision measurements in a fraction
of a second!</B>
 It is just your mobile phone camera. When you take a
picture it is basically a matrix of tiny tiles,
called <B>pixels</B>.
---
 There are three sensors per pixel measuring
the intensities of red, green and blue lights falling there. So
if you have a 13 megapixel camera then each snap is the result of 
13 times 10^20 times 3 measurements! But do we need to care about
such data in statistics?
---
 Indeed! An important branch of statistics and machine learning
called pattern recognition, works with such data. If you 
take 10 such snaps, then your data matrix is 10 times 4000000. 
---
Such data sets where columns far outnumber rows are getting so
very common nowadays that newer methods are being developed to
deal with them. 
---
Most traditional statistical methods, however, like the
ones we shall learn in thiis course are meant for data sets where
we have many more rows than columns.  
---
We have mentioned time series data, where the cases are arranged
chronolgically. Such data occur frequently when monitoring some 
situation (like number of COVID infected persons, value of some
stock).
---
 I have also mentioned that irregularly spaced time series
analysis is used by NASA in search for extrasolar planets. Now I
am going to tell you about another type of time series data that
we can collect ourselves: <B>audio</B>.
---
 Yes, when we record audio (say
at 48 K Hz) we are actually making 48000 measurements per second!
Since the measurements are made chronolgically, and time plays an
important role in playback, the resulting data are  time series
data.
---
 Analysis of sound is an important application area. That
goes without saying. But it might come as a surprise that in 
a method called <B>active noise
cancellation</B>...
---
 statisticians try to predict the future values of a  sound in order to
produce an "opposite sound" to 
cancel noise in air crafts. 
</SESS>
</SCRIPT>


<STKY><HEAD3>Module 1, Lesson 5,  Video 5: Real life experience</HEAD3></STKY>
<SCRIPT id="m1/l5/v5" t="6:35" done="k">
<SESS t="1.90" done="a" kf="10,20,30,40,50,60,70" id="s1">
Much of whatever we have discussed in this module is basically
common sense, and may appear trivial, until you see them used in
practice. 
---
In this video I shall try to provide their real life
flavour by going through the planning stage of a real data
collection scenario that I myself was  part of. For the ease of
exposition I shall simplify certain things.
---
I live in <B>West Bengal</B>, a state in <B>India</B>. In one corner of our
state we have a number of <B>coal mines</B>. The local people mostly
earn their subsistence from the mines.
---
 In the olden days the mines used to be <B>underground mines</B>,
where you dig a vertical tunnel deep into the mine, and bring out the coal. It was a
dangerous business, and livelihood was hard.
---
 But in terms of the misery  it was nothing compared to the modern
system which is called <B>open cast mining</B>. This uses explosives to
blow up the top to reveal the entire coal content as an open
basin,...
---
 and then scoops out the coal, leaving behind a huge
cavity after all the coal has been extracted. This <B>reduces  the
total amount of arrable land</B>, pastures, and causes
severe <B>ground water imbalance</B>, adversely affecting local life. 
---
We decided to present the adverse effect of open cast mining
 statistically, in the form of a report to be sent to the
government.
---
 And for that we needed data. How we planned the data
collection is what I am going to discuss now.
</SESS>
<JINGLE t="0.1">Scope?</JINGLE>
<SESS t="0.70" done="a" kf="30,60" id="s2">
We wanted to depict  the <B>degradation of the local
living condition due to open cast mining</B>. 
So it may seem that collecting
data about villages  close to the open cast mines should be
enough.
---
 But no, in order to assess the effect of open cast
mining, we need to compare the affected villages with some
unaffected ones.
---
 So our scope must include the affected as well
as the unaffected villages in the locality, ie, <B>[scope: all villages in the area</B>.
</SESS>
<JINGLE t="0.1">What information to collect?</JINGLE>
<SESS t="1.20" done="a" kf="10,20,30,40,50,60,70,80" id="s3">
Obvious choices include <B>monthly income</B>, <B>source of
income</B> and the <B>quality of water</B>.
--- 
Since the study is about the effect of open cast mining which is a
relatively recent phenomenon, we need to be able to compare these
indicators before and after <V>[table
structure shown]</V>  open cast mining started.
---
 We can obtain the  current
values by asking the villagers or measuring<V>[check marks shown]</V>, but what about the
past values? Most of the villagers are nearly illiterate. Some of
them do not even know their own 
age!
---
 So for these cells <V>[finger]</V>  we had to rely on secondary data, that we
obtained from some past surveys
regarding the local livelihood.<V>[check marks]</V>
---
 This also put severe restriction on the current data worth
collecting, as they needed to be 
comparable to the available  past data.
---
 For example,
We had no way to get past data on water quality<V>[cross shown]</V>. So 
the corresponding current data could not be used for our
planned comparison.<V>[cross shown]</V>
</SESS>
<JINGLE t="0.1">Sample or census?</JINGLE>
<SESS t="1.30" done="a" kf="30,60,90" id="s4">
We were just three in the team. The population of households was large. 
 Not sure how much effort the exercise
involved, we did a <B>pilot study</B>,...
---
 prepared a tentative
<B>questionnaire</B>, visited three villages and interviewed some of the
families there.
---
 This gave us some idea about how much time was
needed per household. Accordingly, we streamlined the questionnaire,
hired and trained two locals to help with the interviews, and even then we could
reach only a small <B>sample</B>.
---
  Our aim was to assess the effect of
open cast mining. So in our sample we were careful to include
 villages both close to open cast mines and 
somewhat away from them. 
---
Most of the information had to be
collected by asking the villagers. The villagers often needed prodding
to elicit response.
----
 Unless one was careful, it was quite possible
to bias their responses by our proddings. Sometimes we were
mistaken for government officials, and had to appease the angry
villagers who blamed us for their plight. 
</SESS>
<JINGLE t="0.1">Take away message</JINGLE>
<SESS t="0.80" done="a" id="s5">
All in all, the experience was far from what one would expect by
reading statistics textbooks. In a textbook life seems so nicely
mathematical, even randomness is mathematical. 
---
Just as  martial arts tournaments are more like games than real
fights.  Strict rules of conduct are  followed even during a bout.
But statistics in the real world is much more like street
fighting.
---
 Sometime you need to do things against strict
textbook codes. But you have to take the spirit...
---
And that's good advice: Don't get bogged down in the
technicalities, take the spirit...then use common
sense, and judgement while  implementing them...
</SESS>

</SCRIPT>

<FLD>
<EXRLIST id="m1_add.yml">
- typeName: checkbox
  prompt: |-
      Consider the data stored in an informal style in the 
  file [[./exraux/m1_1.ods]]. If the complete data are presented as a
  data matrix, then which of the following statements would be
  true   about the data matrix?

  shuffleOptions: true
  options:
  - answer: It has 15 rows and 8 columns
    isCorrect: true
      There are 15 rows, one for each patient. The variables are 
      Bed no, Name, Weight at admission, Weight at discharge,
      Height, Hospital, Ward, RTPCR.      

  - answer: It has 15 rows and 5 columns.
    feedback: >
      Looks like you missed these variables:  Hospital, Ward, RTPCR.
  - answer: It has 17 rows and 6 columns.
    feedback: >
      Each patient is a case. How many patients are there?
      Also did you remember these variables:  Hospital, Ward, RTPCR?

  - answer: There are exactly 2 identifier variables
    feedback: >
      What about hospital and ward?
  - answer: There are exactly 4 identifier variables
    isCorrect: true
    feedback: >
      Hospital, Bed no, ward and name are all the identifier variables.

- typeName: multipleChoice
  prompt: |-
      5 persons have chosen 3 out of 4 movies according to order of
      preference:
        | Person | First favourite | Second favourite | Third favourite |
        |--------+-----------------+------------------+-----------------|
        |      1 |               2 |                3 |               1 |
        |      2 |               1 |                4 |               2 |
        |      3 |               3 |                2 |               1 |
        |      4 |               2 |                3 |               1 |
        |      5 |               1 |                2 |               4 |
      Here  Movie 1 = Rob Roy, Movie 2 = Modern Times, 
            Movie 3 = Citizen Kane, Movie 4 = The Seventh Samurai
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: Here all the numbers are used at nominal level.
    isCorrect: true
    feedback: >
      Good. The numbers are all substitutes for names here,
      either names of pepsons or names of movies.      
  - answer: > 
      Column 1 uses numbers at nominal level, other columns
      at ordinal level.
    feedback: >
      Column 1 is nominal. But are the rest really ordinal? There
      is ordering here, but that is taken care of by the variable
      names, like First favourite, Second favourite, etc. 
  - answer: >
      All the numbers are used at ordinal level.
    feedback: >
      Hmmm..., you think that person 1 is something like "the
      first" or "the smallest"  in some sense?
  - answer: >
      Column 1 uses numbers at ordinal level, other columns
      at nominal level.
    feedback: >
      Hmmm..., you think that person 1 is "the first" or "the
      smallest"  in some sense? I do agree with you about the
      remaining columns, though.
      
- typeName: numeric
  prompt: |-
      Here is a line from a valid csv file:

      United States of America,45,,37,,,

      How many variables are there in this data set?

  defaultFeedback: >
      Count the number of commas, add one to that.
  shuffleOptions: true
  options: 7
  - value:
    isCorrect: true

- typeName: checkbox
  prompt: |-
      Which of the following statements is/are appropriate about the
      following data:
        | Place | Temperature (degrees Celsius) |
        |-------+-------------------------------|
        | P     |                            20 |
        | Q     |                            15 |
        | R     |                            25 |
        | S     |                            30 |

  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: S is twice as warm as Q.
    feedback: >
      
  - answer: S is as much warmer than R as P is than Q.
    isCorrect: true
    feedback: >
      
  - answer: >
      P has a temperature which is exactly midway between
      those of Q and R.
    isCorrect: true
    feedback: >
      
  - answer: >
      The total temperature of P and R is the same as the
      total temperature of Q and S.
    feedback: >
      
- typeName: multipleChoice
  prompt: >
      A data set reports the smoking habit (yes or no) and age
  (in completed years) about 100 persons. Then identify the
  correct statements.
  defaultFeedback: >
      Smoking habit is discrete, but age is continuous (though it
      is approximated to an integer).
  shuffleOptions: true
  options:
  - answer: Smoking habit is a discrete variable.
    isCorrect: true
      
  - answer: Smoking habit is a continuous variable.
      
  - answer: Age is a discrete variable.
      
  - answer: Age is a continuous variable.
    isCorrect: true
</EXRLIST>
</FLD>
</LESSON>

<HEAD1>Module 2: Presentation of data (part 1)</HEAD1>
<STKY><HEAD3>Module 2, Introductory Video: Peer review</HEAD3></STKY>
<SCRIPT id="m2/intro" done="k" t="2:14">
<SESS t="2.00" done="a" kf="30,40,70,80,90,100" id="s1">
So we have finished one week of our course, and are now about to
start the second week. This week our focus will be on 
presentation of data, mainly graphical presentations, ie
presenting data through pictures.
---
The structure of this week will remain basically the same as that
of the last week. Four lessons plus practice problems, and then a
review lesson followed by a module test. There is, however, one
new element. The module test will contain some <B>peer graded</B>
problems.
---
 This is an important aspect of this course, and henceforth we
are going to see quite a lot of it. So let's understand it well.
---
Last week's module test consisted of only objective problems that
could be graded automatically by the computer. In such problems
the correct answer may be chosen just by guessing. So these are
not the best instruments to judge one's understanding of the subject.
---
For that we need problems that require more complex answers. That's
where  peer grading comes in. After the submission deadline is
over<V>[shown]</V>, each student will be graded by three
other randomly selected students<V>[shown]</V>.
---
 The process will be conducted blindly, i.e., the graders will not know the
identity of the student whose answers they are grading<V>[shown]</V>, and the
student will not know who his/her graders are<V>[shown]</V>.
---
 Then the centralmost grade will be taken (after
possibly an optional check by the instructor). 
---
Don't worry if this your first time grading experience. I shall provide you
with the correct answers plus a <B>rubric</B>, i.e., a scheme for how much marks to
give for different aspects of the solution. 
</SESS>
</SCRIPT>

<HEAD2>Module 2: Lesson 1</HEAD2>
<STKY><HEAD3>Module 2, Lesson 1,  Video 1: Graphical: exploratory and pedagogic</HEAD3></STKY>
<LESSON>
<SCRIPT id="m2/l1/v1" done="k" t="6:37">
<SESS t="2.60" done="r" kf="10,20,30,40,50,60,120,180,190" id="s1">
During the period <B>1853--1856, the Crimean War</B> took place 
between the British and the Russian, where  a young nurse named 
<B>Florence Nightingale [florpic.png]</B>  along with a
small group of friends,   was providing
voluntary nursing service at the battlefield.
---
 She was shocked to find
that more soldiers died of preventible diseases and neglect than in actual
fighting.
---
This was painfully obvious to her, as it was to many others present at the
battlefield. But unfortunately the policy makers sitting in
London did not see this as clearly.
---
 Fortunately for the soldiers and the posterity,  Florence
Nightingale  was not just a dedicated
nurse. She was also a passionate statistician at heart,  one who knew how to
convince others using data.<V>[Clear]</V>
---
 She knew that data, as a mere
collection of numbers, did not appeal to non-statisticians. So
she designed a way to present her data through pictures.
---
 Her graphic<V>[rose1.jpg]</V>, which she called the
wedges<V>[names shown]</V>, and which is 
more commonly known as the 
Nightingale Rose Chart or the Coxcomb, has gone down in history
as one of the most famous data charts ever made.
---
 She included it in a privately published report, which she circulated among
powerful politicians. This eventually led to a significant
improvement in the sanitary conditions of the army hospitals.
---
Let's take a closer look at the chart. Her data set<V>datapart.png</V> was a monthly 
trivariate time series, collected from 1854 to 1855. The three
variables were the numbers of deaths due to three causes:
---
preventible, wounds, and others.<V>[trans finger]</V> To depict
the data, she split<V>[start]</V> the central
360 degree angle of a circle 
into 12 equal parts<V>[anim]</V> and devoted one to each month.
---
 Then she scaled each sector with <B>area proportional to the mortality
rates.</B> She did such a thing three times, once for each cause
of mortality. 
---
Thus, in each wedge she had three sectors<V>[shown]</V> (all
starting from the centre), and colour coded by the cause of
death, blue for preventible, red for wounds, and black for the
others.
---
 As one can easily see, the blue sectors dominate the entire chart, driving
her point home that deaths due to preventible reasons were the
most significant. 
</SESS>
<JINGLE t="0.1">Two goals</JINGLE>
<SESS t="1.70" done="r" kf="10,20,30,40,50,60,70,80" id="s2">
This is a classic example showing the power of pictorial
representation of data. We use our eyes to
decide about our surroundings.
 We are extremely adept at grasping visual patterns.
---
  Graphical representation of data
just converts patterns in the data into visual patterns, 
which even a layman can quickly detect. 
---
Now graphically representing data does not mean converting a
jumble of numbers into a riot of colours. It must be
done with two basic points in view: <B>comparability</B> and <B>contrast</B>.
---
In his book <B>Speaking of Graphics</B>, the author <B>Paul Lewi</B> tells us how
Nightingale achieved these using her chart. Though her
original data<V>[datapart.png]</V> were the numbers of deaths,
---
 she did not actually make the area proportional to that. Instead she used an
additional variable, the monthly size of the army,<V>[variable shown]</V> and projected
everything to   <B>mortality rates</B>,
 by dividing the numbers of
death by the army size for that month.
---
 This allowed her to compare different months, without having to worry about the
different army sizes in the different months. 

Also, in a Rose chart for a different mortality
data <V>[rose2part.jpg trans]</V> she
added this dashed circle to the chart to denote the mortality
rate at the civilian hospitals at Manchester, far from the
battlefield.
---
 As the dashed circle denoted the annual value, she projected her <B>monthly
rates to the annual rates</B> before drawing the sectors. 

The idea of comparability is like bringing fractions on a common denominator
before comparing them by the numerators.
</SESS>
<JINGLE t="0.1">Contrast</JINGLE>
<SESS t="0.60" done="r" kf="10,20,30" id="s3">
The next point is that of <B>contrast</B>. In her charts,
Nightingale presented two different contrasting pairs. First,
<B>between the different causes of mortality</B>, and then <B>between
mortality in the army hospitals and that in the Manchester
hospitals. </B>
---
Contrast appeals to the human mind. 
watched. A graphical representation of data without contrast is as uninteresting as a
musical piece where the same note is played repeatedly
without variation.
</SESS>
<SESS t="0.20" done="r" id="s4">
One may,  like Florence Nightingale,  improvise one's own way of
representing data graphically. But there are certain standard
methods,  which every statistician should know about. And that's
what we are going to learn next.
</SESS>
</SCRIPT>
<STKY><HEAD3>Module 2, Lesson 1,  Video 2: Line diagram</HEAD3></STKY>
<SCRIPT id="m2/l1/v2" done="k" t="3:38">
<SESS t="0.80" done="r" kf="10,20" id="s1">
When we present a data set, there are two conflicting aims. One is to
present it as it is, in an <B>objective</B> way. The other
is <B>subjective</B>, 
to highlight what we feel is worth seeing, possibly downplaying other
aspects. 
---
This is somewhat like writing a  review for a book.
An editorial review impassively lists the salient features of
the book, leaving the final judgement to the reader.
---
 But a customer review is more passionate. It seeks to present a
personal view more than a comprehensive picture. In the world of
modern statistics, the latter is generally frowned upon. However,
such presentations are frequently used in advertisements and
similar places.
</SESS>
<SESS t="2.40" done="r" kf="10,20,30,40,68,95,98,125" id="s2">
The data used by Florence Nightingale  were time series data. The
most common way to depict such data is the <B>line chart</B>. 
A line chart is  a graph like this. <V>[shown trans]</V> 
---
Here time is shown in the <M>x</M>-axis, and
the quantity of interest in the <M>y</M>-axis and the values are
shown as dots joined by line segments.
---
  Let's consider a data set used by Florence Nightingale about the 
mortalities in an army hospital <V>[data.png]</V>.
Here time is given as dates. So we label the horizontal axis with the
dates,<V>[start plot]</V> and the vertical axis shows the mortality
values.
---
 The first value is 192, which gives us this point <V>[finger]</V>.
Similarly, each row gives us one
point <V>Points are shown</V>. We join the consecutive points
with straighlines.<V>[Show]</V> The resulting plot is a line
chart. 
---
Why did we join the points with straight lines? Two reasons. First, time
flows continuously, even though we are observing our series at
only some discrete points. Second, the variable shown along the
vertical axis is a count variable.
---
 For a count variable or a continuous variable, it is meaningful to ask
for the value of the series in-between two observations. A simple
way to approximate such intermediate values is by linear
interpolation.
---
 This is what is achieved by joining consecutive
points with straight lines.

But if the variable shown along the vertical axis were
categorical, then a line chart would not make much sense.
<V>[clear]</V>
---
If we have multiple variables of interest,  then we have multiple
lines that may be plotted separately or,  if they are comparable,
overlaid on the same plot. 
---
For example,<V>[empty plot shown]</V> the trivariate mortality
data used by Florence Nightingale may be presented like
this. <V>[3 lines are animated]</V>.
---
 Here the three lines
correspond to the three causes of mortality, as is shown by the
legend.

In the next video we shall learn about creating line charts
using LibreOffice.
</SESS>
</SCRIPT>

<FLD> Line plot
<EXRLIST id="m2l1_a.yml">
- typeName: numeric
  prompt: |-
    Here is a line plot of sales. 
       [[./exraux/line1.png]]
    What is the value for May?
  shuffleOptions: true
  answers:
  - value: [145,155]
    isCorrect: true
    feedback: >

- typeName: numeric
  prompt: > 
    This plot shows a periodic fluctuation. What is the length
    of a single period?
    [[./exraux/line2.png]]
  defaultFeedback: >
    Consider the horizontal distance between two consecutive minima.
  answers:
  - range: [30,40]
    isCorrect: true
    feedback: >

- typeName: numeric
  prompt: > 
    From this time series plot  guess the next
    peak value. 
        [[./exraux/line3.png]]
  defaultFeedback: >
    The maximums are roughly on a straight line. They are
    increasing regularly, 3, 6, 9, ...
  answers:
  - range: [11,13]
    isCorrect: true
    feedback: >
      
</EXRLIST>
</FLD>

<STKY><HEAD3>Module 2, Lesson 1,  Video 3: Line diagram (lab)</HEAD3></STKY>
<SCRIPT id="m2/l1/v3" done="k" t="5:34">
<SESS t="0.30" done="r" id="s1">
In this video we shall learn how to create line charts
using Libreoffice. We shall first learn with toy
examples. We shall get into real data at the very end of the module.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="2" done="r">
[Screencast: making a line diagram, overlay, labeling]
ts1: Single series, works out of box.
</SC>
<JINGLE t="0.1">ts2</JINGLE>
<SC t="3" done="r">
[Screencast: making a line diagram, overlay, labeling]
ts2: Multiple series, works out of box.
</SC>
</SCRIPT>

<STKY><HEAD3>Module 2, Lesson 1,  Video 4: Line diagram (lab)</HEAD3></STKY>
<SCRIPT id="m2/l1/v4" done="k" t="5:04">
<SC t="5.5" done="r">
[Screencast: ts3: Time as numbers, Needs "First column as
labels", missing?]
</SC>
</SCRIPT>

<STKY><HEAD3>Module 2, Lesson 1,  Video 5: Line diagram (lab)</HEAD3></STKY>
<SCRIPT id="m2/l1/v5" done="k" t="5:54">
<SC t="6" done="r">
[Screencast: ts5: Details of the chart edit mode.]
<TODO>Combine this and the last video.</TODO>
</SC>
</SCRIPT>

<FLD> More line plot (make plot)
<EXRLIST id="m2l1_b.yml">
- typeName: textReflect
  prompt: >
     Make a line plot of sales1 against time based on this data set. 
      [[./exraux/lineplot.csv]] 
  defaultFeedback: >
      [[./exraux/line2.png]]
- typeName: textReflect
  prompt: >
    Consider the same data set once again. Make an overlaid line
    plot of sales1 and sales2 against time.
  defaultFeedback: >
      [[./exraux/line4.png]]
</EXRLIST>
</FLD>

<STKY><HEAD3>Module 2, Lesson 1,  Video 6: Line diagram (interpretation)</HEAD3></STKY>
<SCRIPT id="m2/l1/v6" done="k" t="1:47">
<SESS t="1.50" done="r" kf="10,20,30,40,390,400,440" id="s1">
What are line charts good for? Line charts show the ups and downs
of the values over time. A 
plot like this <V>[inc.png]</V>, for example, indicates a steady
growth, with some minor undulations, while
a plot like this<V>[dec.png]</V> shows a steady decline.
---
 Often we see a periodic behaviour, like a weekly or yearly cycle. Such periodic
behaviour is often difficult to discern without a line chart. Let's look at
a famous data set as an example. First a little bit of
background.
---
 Just as the moon has dark patches on it, the Sun also has dark patches called
<B>sunspots</B>. Here is a video from NASA that show
these. <V>[sunspot.lst 3 sec]</V>
---
 Of course, we cannot see them with the naked eye, but astronomers manage to
count these spots using solar telescopes. They find that  the
number of sunspots vary with time. 
---
If we plot<V>[start shown]</V> the yearly average numbers of sunspots as
 a line chart, then we get a picture like this. <V>[anim]</V> We
can discern a periodic behaviour. The period is roughly 11 years.<V>[finger]</V> 
---
Line charts of sales or stock prices also show various periodic
patterns that are useful for prediction. We shall have more
occasion to talk about prediction when we discuss time series analysis.
</SESS>
</SCRIPT>




<REF>
WW: 
</REF>
</LESSON>
<HEAD2>Module 2: Lesson 2</HEAD2>
<STKY>
<HEAD3>Module 2, Lesson 2,  Video 1: Scatter plot</HEAD3></STKY>
<LESSON>
<SCRIPT id="m2/l2/v1" done="k" t="5:05">
<SESS t="2.70" done="r" kf="10,20,30,32,50,60,61,96,100,110,120" id="s1">
The last video discussed line charts. Line charts are primarily
used for univariate data, though multivariate data could be
accommodated using multiple line 
charts overlaid on top of one another.
---
 The next graphical device
that we are going to learn about is primarily for bivariate data,
though it may also be used for trivariate data. It is called a
<B>scatter plot</B>. 
---
Scatterplot is a close kin of  line chart. Here we just show
the points without joining them with lines. Sort of a line chart,
without the lines! Let's understand this with an example. 
---
Consider a fictitious height-weight data set. <V>[Show]</V> Here each case is a
person, and we have measured the height and weight of each
person. To present this data set as a scatterplot, we take two
axes, one for each variable.
---
  Here height is shown in the horizontal axis, and weight in the
vertical axis.<V>[axes shown]</V> 
---
The first case has this height,  weight pair. This corresponds to
this point.<V>[first point shown]</V> Similarly, each case gives 
us a point.<V>[anim]</V> 

The resulting diagram is called a <B>scatterplot</B>.
---
Why do we show height along the horizontal axis, and weight along
the vertical axis?
This choice is taken from mathematics. 
---
Suppose you plot the graph of some formula like <M>y = \sin
x</M>,<V>[anim]</V> where <M>y</M>
is  given in terms of <M>x.</M> 
---
Then <M>x</M>, the independent
variable,  is shown along the
horizontal axis, while the dependent variable <M>y</M> is shown
along the vertical axis.
---
 Similarly,<V>[scatterplot shown]</V> here height is like the
<B>independent</B> variable, and weight is the <B>dependent</B>
variable. Height depends on fewer things than weight
does. We seem to just get our height genetically, and it becomes
fixed once we are adults. 
---
Weight, on the other hand, fluctuates based on lots of factors, food,
exercise etc. As a result, we talk about the ideal weight of a 
person with a given height, but not about the ideal height for a
person with a given weight.
---
 Thus judging the weight in terms of
the height is a natural tendency, and this is why we have shown
height along the horizontal axis and weight along the vertical axis.

 Let's now go through a
little lab session before discussion further details.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="2" done="r">
[Screencast: making a scatterplot for the height-weight data.]
hw1: simple 
</SC>
<SESS t="0.20" done="r" id="s2">
In the next video we shall look at a little variation of this.
</SESS>
</SCRIPT>

<SCRIPT id="m2/l2/v2" done="k" t="7:01">
<SESS t="0.20" done="r" id="s1">
Sometimes we may accommodate a third (categorical) variable in a
scatterplot. Let's see how.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="7" done="r">
[Screencast: hw2: Gender: Split using gender, plot both.]
</SC>
</SCRIPT>

<SCRIPT id="m2/l2/v3" done="k" t="3:40">
<SESS t="0.70" done="r" kf="30" id="s1">
Let's now take a closer look at scatterplots. First, these are
mainly used when both the variables are continuous. They are sometimes
used even when one variable is discrete. But they cannot be used
if both the variables are categorical. 
---
Like if you have a data
set with two variables income group and education level, <V>[plot]</V>then
all the middle income  cases with school level education will
pile up here. 
So you cannot know how many such points there really are!
---
Let's now  discuss about interpreting a scatterplot of two
continuous variables.
</SESS>
<JINGLE t="0.1">Interpretation</JINGLE>
<SESS t="0.50" done="r" kf="10,40,70,100,130,160,190,220,250" id="s2">
How to intepret a scatterplot? Well, a scatterplot shows the
relation (or lack thereof) between two variables. Our eyes are
extremely adept at discerning patterns in 2 dimensional
pictures.
---
 Scatterplots harness that power by converting the
data values to points in the plane. Here are some commonly encountered
patterns.  
---
 * <B>Linear increasing</B>
 * <B>Linear decreasing</B>
 * <B>Constant</B>
---
 * <B>Linear loose</B>
 * <B>Linear tight</B>
 * <B>Nonlinear increasing</B>
---
 * <B>Nonlinear decreasing</B>
 * <B>Nonlinear mixed</B>
 * <B>Independent </B>
</SESS>
<JINGLE t="0.1">Outliers</JINGLE>
<SESS t="1.00" done="r" kf="10,20,30,40,50,60" id="s3">
Finding an overall pattern in a data set is the most important
use of scatterplots. the second most important use is just its
opposite: detecting points that do not conform to the general
pattern. These are called <B>outliers</B>. 
---
Real life data abound in outliers. There are two types of
outliers:
  * Result of data <B>error</B> (typo, sensor glitches)
  * Correct but unexpected ie <B>new behaviour</B>
---
Whatever the type, scatterplots are quite useful to detect
them. Here are a few examples:
  * Independent with one point far off. <V>[out1.png]</V>
---
  * Linear with one point not along the line. <V>[out2.png]</V>
  * Linear with one point one the line but far from others. <V>[out3.png]</V>

In the next video we shall learn about handling outliers.
</SESS>
</SCRIPT>

<SCRIPT id="m2/l2/v4" done="k" t="3:07">
<SESS t="2.30" done="r" kf="10,20,30,40,50,60" id="s1">
 Statistics tries to
understand the overall behaviour of the bulk of the data. So it
may seem that outliers should just be weeded out. While that may
be justified for certain types of outliers, this should not be
the general strategy. 
---
Outliers always deserve special attention. There are at least
three reasons for this:
* First, some outliers are results of rectifiable mistakes in
data collection. They should be corrected and included in the
analysis. <V>[Rectification]</V>
---
* Second, some methods are seriously affected by the presence of
outliers. So outliers may dictate the choice of the analysis
methods. <V>[Choice of methods]</V>
---
*Third, and the most important, the outliers may indicate the
presence of some hitherto unsuspected natural process. Such outliers might
very well open the door to a new world of research. <V>[New behaviour]</V>
---
Let me cite a couple of examples of  outliers that proved to
be of great consequence. The <B>discovery of holes in the ozonosphere</B>
resulted from an unexpected anomalous observation in the
Antarctic atmosphere.
---
 Even the scientist who noticed it first thought that it was possibly just peculiar to
Antarctica. Fortunately, he did not ignore it, and thus made the
important discovery of holes in the ozone layer.
---
The second example, ironically, <V>[Challenger disaster]</V> was one where the scientists
focused only on the outliers, and hence missed the fact that
certain parts of a space shuttle tend to fail in low
temperatures. 
---
This eventually led to the explosion of
the Challenger space shuttle causing death of all the crew
aboard. 
---
More specifically, based on test launches the scientists had
created these scatterplots. <V>[challenger.png]</V> The lower
plot shows the number of failures versus temperature.
--- 
The scientists had wrongly ignored the cases with no failures to
consider only the top plot, which seemed to indicate no relation
between temperature and failure. But the full plot clearly
lower temperatures may lead to  failures.
---
And that's what evntually happened on the final day.
</SESS>
</SCRIPT>

<SCRIPT id="m2/l2/v5" done="k" t="5:16">
<SESS t="0.60" done="r" kf="10,20" id="s1">
A scatterplot is primarily meant for two continuous variables. We
have seen how we can use color coding to incorporate a third
categorical variable. But what if we have a third variable that
is continuous?
---
 Then we can use a <B>bubble plot</B>, like
this. <V>[Show]</V>. It is basically a scatterplot with the
points replaced by disks whose radii are proportional to the
third variable.
---
Let's see how it works in Libreoffice.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="5" done="r">
[Screencast: bubble plot]
bubble.csv: Need of the first column as label. Try without making
colours, then make colours.
</SC>
</SCRIPT>


<FLD>Scatter plot
<EXRLIST id="m2l2_a.yml">
- typeName: numeric
  prompt: >
    Here is a weight vs height scatterplot for a random sample of adult men.
        [[/.exraux/scat1.png]]
    What is the weight of the shortest guy?

  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - value: 70
    isCorrect: true
    feedback: >

- typeName: numeric
  prompt: > 
    The following scatterplot shows an outlier. 
           [[./exraux/scat2.png]]
    Its <M>x</M>-value is:
  shuffleOptions: true
  answers:
  - range: [165,175]
    isCorrect: true
    feedback: >

- typeName: numeric
  prompt: >
     How many clusters can you see in the following scatterplot?
      [[./exraux/scat3.png]]
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - value: 2
    isCorrect: true
    feedback: >
</EXRLIST>
</FLD>

<FLD>Make scatter plot
<EXRLIST id="m2l2_b.yml">
- typeName: textReflect
  prompt: >
     Make a scatterplot based on the following data 
      [[./exraux/scatplot.csv]]
  defaultFeedback: >
      [[./exraux/scatplot.png]]
- typeName: textReflect
  prompt: >
    Repeat the same exercise,  but now colour-code the clusters
    in the plot. 
      
  defaultFeedback: >
    Use the condition "x < 60" to separate the clusters.
       [[./exraux/scatplotcol.png]]
</EXRLIST>
</FLD>

<REF>*
FPP: Chapter 7, section 1, 2.
     Chapter 8, section 1.
WW:  6.1, 6.2
</REF>

</LESSON>
<HEAD2>Module 2: Lesson 3</HEAD2>

<LESSON>
<SCRIPT id="m2/l3/v1" done="k" t="6:27">
<SESS t="2.30" done="r" kf="30,60,70,80" id="s1">
The two graphical representations that we have learned so far were
both meant primarily for continuous variables. Take line chart
for example. The justification behind joining successive points
by lines came from the continuity of the two variables.
---
 It made sense to talk about the values inbetween two observed points. But
there are situations where this is not the case. Suppose that we
want to present graphically the populations of different countries.
Here country is a categorical variable.
---
 If we make a line plot like this,<V>[line plot]</V> then the
line  will be meaningless. 
What is the intepretation of this point<V>[finger]</V>, for example? It is the
population half-way between India and the US?
---
 What is "half-way between two countries"? It is not that the countries are
just points and population is something that changes continuously
between them. Also, the countries are not ordered. So why should we
join India and US, and not, say, India and Indonesia? 
---
It is in such a situation that we need a discrete version of the
line chart. Of course, we may just leave the points as they are,
and omit the lines. But then it is just a scatterplot, which is
better suited if both the variables are continuous.
---
 So here instead we draw bars like this.<V>[bar chart]</V> 
The heights of the bars represent the
variable. This is called a <B>bar chart</B>. To avoid clutter I
have not shown the values along the vertical axis here. But ideally one
should.
---
If the variable in
the horizontal axis is unordered (as is the case here), then the
order of the bars are not important. However, if the horizontal variable is
ordered, then it is natural to present them according to that
order.
---
 For example, if we are representing counts of people in
different income groups, then ordering them as Low, Middle, High
is OK, but not as Low, High, Middle. 
---
<P/>
Another similar example, is from Amazon's review summary.

Before going into further details. It is time to get our hands
dirty with some lab work.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="6" done="r">
[Screencast: Make a simple bar chart. Play with labels legends
etc]
bar.csv: Go slow.
</SC>
</SCRIPT>

<SCRIPT id="m2/l3/v2" done="k" t="6:54">
<SESS t="1.50" done="r" kf="10,20" id="s1">
Now that we have learned how to make a basic bar chart, it is
time to take a look at some of its variants. The basic bar chart
is for bivariate data only, where the variable shown along the
horizontal axis is a categorical one.
---
What if we have more candidate variables for the vertical axis?
For example, to modify our population for countries example, suppose
that we have the male and female populations reported
separately for four countries A, B, C and D.
---
Of course, we may just want to make two separate bar charts. But
what if we also want to compare them? Then we can place the bars
side by side.<V>[side.png]</V>
---
 While this faciliates comparison between the male
and female populations, it makes it difficult to compare the
total poplations across countries. So we may use a subdivided bar
chart.<V>[top.png]</V> instead. 
---
Here it is easier to compare totals across countries, males
across countries, and males with females for each state. But comparing the
female poplations across countries is less easy, because those
rectangles do not start from a common level.<V>[finger]</V>
---
 This is a common situation encountered when using a graphical representation of
data. Certain choices make only certain aspects of the data stand
out. While this is desirable in some cases, this may also end up
presenting a biased view of the data. 
---
Anyway, before talking further it is time to go to the lab.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="5" done="r">
[Screencast: side-by-side and subdivided (also show 3D)]
bar3.csv: Side by side. Change colour.
bar2.csv: First side by side. Difference and subdivided. Show
3d with 3d options.
</SC>
</SCRIPT>




<STKY>
<HEAD3>Module 2, Lesson 3,  Video 3: Pie</HEAD3></STKY>
<SCRIPT id="m2/l3/v3" done="k" t="5:41">
<SESS t="1.50" done="r" kf="10,20,30" id="s1">
Bar charts are good for showing values of one variable (typically
a continuous one) in relation to a categorical variable. Often,
however, we are interested in showing the values as fractions of
a whole. 
---
For instance, to get a quick idea of the relative
positions in sales of different brands of cars,
we might report the number of sales of each brand.<V>[dat.png]</V>
But this will not be adequate
for providing contrast between the brands in relation with the
whole.
---
 For this we should divide the sales for each
brand by the total.  A good way of representing
such fractions that add up to 1 is the <B>pie chart</B>. 
---
Here is a pie chart for our data.<V>[pie.png]</V> It shows the
total sales as a
circle. We know that the central angle is 360 degrees. Also the
total fraction is 1.
---
 This known total naturally corresponds to the
known central angle. Then we split the circle into sectors whose
central angles (or equivalently the area) are proportional to the
fractions to be depicted.
---
 Notice that the radius contains no information. Also, the actual
 value denoted by each sector cannot be recovered from the pie
chart. It tells us only the fractions. 

Let's learn making a pie chart using Libreoffice.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="5" done="r">
[Screencast: Make a simple pie chart. Play with labels etc.]
pie.csv: Tools > Options > Charts > Default colours (in chart
edit environment) <TODO>Chop some excess audio near the end.</TODO>
</SC>
</SCRIPT>
<STKY>
<HEAD3>Module 2, Lesson 3,  Video 4: Pie (variants)</HEAD3></STKY>

<SCRIPT id="m2/l3/v4" done="k" t="3:32">
<SESS t="2.40" done="r" kf="30,40,50" id="s1">
We have seen different variants of the bar chart. They are useful for
different situations. However, 
that's not the case for the pie chart. It has hardly  any 
variant at all. LibreOffice does offer some, but they are not very
useful. 
---
For one thing, you may make a pie chart look like a 3D
object<V>[pie3d.png]</V>, a disc with some thickness.  But that is only a
cosmetic thing, which may actually interfere with
interpretability, as in a 3D view the circle gets distorted into
an ellipse.
---
 So the sectors in the sides get more prominence. Also
the part that is further away from eye looks smaller than the
parts closer to it. This is due to
perspective effect. 
---
Perspective effect is the visual artifact that makes parallel
raillines appear to be meeting at infinity. 
---
Pie charts are not good for multivariate data. If you have more
than variable, you have to make a separate pie chart for
each. Libreoffice does have an option for incorporating multiple
variables in the same pie chart using concentric rings.
---
 For example if you have a bivariate data set <V>[shown]</V> showing
expenses of two girls on some fruits, then you may create this
pie chart<V>[shown]</V> with two nested rings, one for each girl.
---
You may fiddle with LibreOffice a bit to figure out how to create
this. But this chart is not a very desirable one. It
is quite misleading. The inner ring has a smaller radius, and hence
gets smaller areas for the same angle.
---
This downplays the variable depicted by the inner ring. For
example, this bright green colour is used for oranges.<V>[finger]</V> Just by looking at
the chart, you might think that both the girls spent the same
proportion of their respective totals on oranges. 
---
But that is not true. The inner ring girl, has actually spent a greater
percentage, but this is disguised by the smaller radius of her
ring. 

The takehome message is that such nested pie charts should not be
used for any serious statistical work. 
</SESS>

</SCRIPT>
<FLD> Bar and pie chart
<EXRLIST id="m2l3_a.yml">

- typeName: textReflect
  prompt: > 
    Consider the following bar chart. 
    [[./exraux/pie1.png]]
    Two categories have  roughly the same value. Which two?
  defaultFeedback: A and C.

- typeName: textReflect
  prompt: Who has the lion's share in the pie chart of the last exercise?
  defaultFeedback: E.
</EXRLIST>
</FLD>


<FLD>Make bar and pie charts
<EXRLIST id="m2l3_b.yml">

- typeName: textReflect
  prompt: > 
    Make a bar chart from the following data.
     [[./exraux/piebar.csv]]
  defaultFeedback:
     [[./exraux/bar1.png]]

- typeName: textReflect
  prompt: > 
    Make a bar chart from the following data.
     [[./exraux/piebar.csv]]
  defaultFeedback:
     [[./exraux/pie1.png]]


</EXRLIST>
</FLD>
<REF>
WW: 2.10
</REF>
</LESSON>
<HEAD2>Module 2: Lesson 4</HEAD2>

<LESSON>
<SCRIPT id="m2/l4/v1" done="k" t="5:41">
<SESS t="1.70" done="r" kf="10,20,30,40,50,60,70,80" id="s1">
Charts are more colourful than numbers. But we do not add charts
in a report just to make the report colourful. <B>Charts must help
in interpreting data</B>.
---
 Sometimes people use charts wrongly,
deliberately or inadvertently. It is important to acquaint
ourselves with such misuses, both to avoid committing these
mistakes ourselves,...
---
 as well as to safeguard against others
deliberately trying to distort our view of the data. 

The very first point to remember is that charts show values of
variables, and every chart should be clearly labelled with the
<B>names of the variables</B> it is depicting. 
---
It is not uncommon to find
plots like this <V>[Show]</V> accompanying a claim like our brand of nutrition
drink is 50% more helpful for building muscles.
---
 Such a plot is meaningless because it is not telling us what  the variable
along the vertical axis is. 

The next important point is to <B>mention the scale</B>.
---
 In this bar chart <V>[bad chart 2]</V>, an unsuspecting
viewer is led to believe that this denotes the zero
level. <V>[finger axis]</V>, and so this value is twice that.
---
 However, it is quite possible that the scales do not start from 0. Instead they
start like this.<V>Show correction.</V> Now we see that the two
bars are almost of the same height!

There are two take away messages from this:
---
 * Always <B>show the scale</B>.

 * Be careful about <B>scales that do not start from 0</B>.
</SESS>
<JINGLE t="0.1">Subtler mistakes</JINGLE>
<SESS t="1.80" done="r" kf="10,20,30,40,50" id="s2">
The mistakes we discussed just now  were gross mistakes. 
Next we shall discuss errors that are
more subtle. These are often deliberately planted in 
reports meant for propaganda.
---
 When we are making charts we are converting patterns in the
data to visual features, patterns that appeal to the eye. Now
different features  appeal to the eye to different extents, some more than
others.
---
 If you use a chart that maps a variable to a more conspicuous
feature, then the viewer will find it more convincing. And there
is a pitfall for the unwary here.
---
 Suppose that we have a univariate data set, about populations 
in different countries. <V>[popdat.png]</V>
---
 Instead of making a bar chart, we want to be playful, and replace the drab
rectangles with little human figures with sizes proportional to
the population.<V>[show]</V>
---
 Problem! What do we mean by "size" here? Length
or area? Now it is a property of the human eye that it is more
attracted by  area than by linear dimension.
---
 This  square<V>[big square]</V>, for example
seems to be 4 times this square<V>[small square]</V>, though in terms of linear
dimension it is only double!
---
 So if you are showing the population as proportional to the
length, you're accentuating the contrast (which may not be desirable).
---
Indeed Florence Nightingale's original chart<V>[shown]</V> could have been made
more visually powerful by making the <I>radius</I> instead of the
area of a sector proportional to the value. 
</SESS>

<JINGLE t="0.1">2D or not 2D?</JINGLE>
<SESS t="1.00" done="r" id="s3">
3D graphics look cool in a report. Realistically rendered 3D
graphics employ perspective distortion, the distortion that makes
circles look like ellipses, and make far away trees appear
smaller than those close at hand.
---
 Now depth added to a chart is
mainly to make it look cool. Since it is not an integral part of
the information,  it may be applied in different
ways.
---
 But depending on how you apply it, the part of the chart
closer to the eye will get more emphasis than the part away from
it.
---
 As this interferes  with an objective interpretation
the data, serious statisticians strongly disparage the use of the
static 3D plots.
---
 3D plots are OK, only when the user is allowed
to view it from different angles (typically using some
interactive software). In this course, however, we shall not go
into interactive plots.
</SESS>
</SCRIPT>
<STKY>
<HEAD3>Module 2, Lesson 4,  Video 2: Pitfalls</HEAD3></STKY>

<SCRIPT id="m2/l4/v2" done="k" t="7:32">
<SESS t="2.00" done="r" kf="10,20,30,50" id="s1">
Finally we come to the subtlest mistake: forgetting the two basic
principles behind graphical representations:
  * <B>Comparability </B>

  * <B>Contrast</B>
---
We had mentioned earlier how Florence Nightingale had used these
two principles in her charts. 
---
Graphical representations, like most statistical techniques, are
dumb procedures that work on data. I call them dumb, because they
do not care about whether they produce meaningful results or
not.
---
 It is your duty as the analyst to make sure that the outcome
is meaningful. This reponsibility is apparent even in as simple a
plot as a line chart. 

Let's see how these two principles are to be followed while
making a line chart. 
---
When you make a line chart, the eyes of the viewer are
naturally drawn towards  comparing the
heights of the points along the line. So the quantities
represented by these heights should better be comparabale.
---
 The software will not guarantee this for you. It is a dumb piece
 of algorithm that has no sense of the domain, and does not know 
what is comparable and what isn't.
---
 Suppose that I want to make a chart showing the
GDP of a country over time. Here is the data set.<V>[shown]</V>  

Would you immediately go about making a 
line chart of these raw data?
---
No, because here the GDP values are not comparable, as they depend
on the current value of the money which is also changing over time. So we
need to have an idea of how the relative value of money has been
changing over time.
---
 This information is provided by the price indices. <V>[Enhanced
data]</V>. 
We need to deflate the GDP
values using these indices before making a line chart.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="4" done="r" id="sc_bar4_242">
[Screencast: Line chart of derived quantities.]
bar4.csv: GDP inflation. 
</SC>
<SESS t="1.10" done="r" id="s2">
While comparability makes a chart meaningful, it
is contrast that makes it relevant and interesting.
---
 Most graphical
representations are used as part of a report. A report should
tell a story, and the charts should fit into that story. 
---
It is contrast (or a sriking lack thereof) that fits
a chart into a report.

Just presenting charts after charts, leaves the viewer
bewildered. Here is a little thumb rule to help you decide 
when to use a chart:
---
Try to write a one-line highlight of the contrast
present in the chart. If you cannot write such a line, then possibly you should better
omit the plot.
---
Take the example of a bar chart showing revenues from different crops.
If there is one crop that markedly stands
out over the rest, then that contrast should make the chart
relevant.
---
 If your contention is that the crops are basically all
similar in terms of the revenue they bring, then a bar chart with
all bars more or less of the same height is relevant.
</SESS>
</SCRIPT>
<FLD>Bad plot
<EXRLIST id="m2l4_a.yml">

- typeName: multipleChoice
  prompt: > 
    Here is a plot of the sales of a company over the
    years. [[./exraux/ts.png]]
    Can we claim that the company has doubled its sales from 2017
    to 2018? 
  defaultFeedback: No. The vertical axis is unmarked.

- typeName: multipleChoice
  prompt: >
    Here is a 3D pie chart. 
     [[./exraux/badpie.png]]
    Two categories here have the same value. Which two?
  defaultFeedback: F and D. By the way, B has double their value.

</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 2, Lesson 4,  Video 3: Real life examples</HEAD3></STKY>

<SCRIPT t="6:55" done="k" id="m2/l4/v3">
<SESS t="0.9" done="r" id="s1">
Ramble intro for real life data.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="5" done="r" id="sc_tsplot_243">
[tsplot.ods]
Plotting world bank data for countries (w/ & w/o transposing)
timeseries.xlsx: afganisthan, corruption, Copy with transpose to
new sheet, use index, 
</SC>
</SCRIPT>

<STKY>
<HEAD3>Module 2, Lesson 4,  Video 4: Real life examples</HEAD3></STKY>


<SCRIPT t="5:31" done="k" id="m2/l4/v4">
<SESS t="0.9" done="r" id="s1">
Ramble intro for real life data.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="5" done="r" id="sc_pie_244">
Pie chart from Hugli data.
</SC>
</SCRIPT>



</LESSON>

<HEAD2>Module 2: Lesson 5</HEAD2>
<LESSON>

<SCRIPT id="m2/l5/v1" t="4:36" done="k">
<SESS t="1.10" done="n" id="s1">
So we have come to the end of module 2. We are now two week deep
into our six weeks of lecture. This week we have learned one of
the most important things in statistics: graphical representation
of data.
---
 Whether you are creating a report, or exploring a data
set or preparing for some ambitious statistical analysis,
representing data pictorially is an indispensible tool. 
---
Statistics is all about finding patterns in numbers. Now our eyes
are already very efficient for finding visual patterns. We can
easily recognise faces, can judge the weather by looking at the
sky, and so many other things.
---
 Unfortunately our eyes are not very good at finding patterns in
numbers. That's where charts
come in. They harness the power of the eye, by converting patterns in the data to visual
patterns. Then our eyes become efficient statistical analysis tools. 
</SESS>
<JINGLE t="0.1">Let the audience decide</JINGLE>
<SESS t="0.60" done="n" id="s2">
When we try to convince someone about some conclusion, there are two ways to go
about it: you may start by stating your conclusion, and then list
the reasons why this conclusion is a good one.
---
 Or you may present the facts first in such a way that your viewers can form the
conclusion for themselves. This latter technique is far more
effective. Graphical representations of data do precisely that,
they let the viewer make the decision. 
</SESS>
<JINGLE t="0.1">Two uses</JINGLE>
<SESS t="2.70" done="n" id="s3">
We have have discussed different forms of charts. There are many
more. Some of them will be discussed later in this course. But
more important than knowing lots of different types of charts,...
---
is being clear about why you are using
them. There are typically two reasons behind why one uses a
chart: 
---
1) To explore a new data set: At the end of last week I had
talked about collecting your own data, something that you care
about. Like your phone call durations, or if you love gardening
daily measurements of size of some leaf.
---
 Once you get such a data
set, and you finish entering it into the computer, the first
question is what to do with it. The answer inevitably is: plot
it.
---
 Think of interesting ways to make a pictue out of it. 
Whenever you have a question about the data, try to come up
with a chart that will show you the answer. Like are weekend
calls longer than the weekday calls?
---
 Then show the calls on a number line, colour coded by weekday or
weekend. Such exploratory 
plots are for your own personal use. So you may be sloppy about
titles and colours. 
---
2) The second use is for generating reports. Here you must be
careful about two things: contrast and comparison. Pretend that
you have to put a one line summary under every chart you include
in your report.
---
The summary should clearly say what you are
comparing and what contrast is coming out of the plot. 

If you cannot come up with such a summary, then
do not include the plot in your report.
---
 There are two common mistakes seen in a report 
created by a novice statistician: either there is no plot, or
there are too many plots. The first is unpardonable, but the
second is not good either. 
---
Comparison and contrast are the two governing principles. 
Comparison is like what you plan to show, and contrast is what comes out
of that plan.
---
 A plot that is good for exploratory purposes, may
not fit in a final report. Also, if you are creative you may be
able to design your own charts.
---
 But most people prefer to stick to the traditional ones, because
your audience would be more familiar with those. Charts are like
languages, when you speak, you must do so in a language that your
audience understands. 
</SESS>
<TODO>chop silence: done</TODO>
</SCRIPT>

<STKY>
<HEAD3>Module 2, Lesson 5, Video 2: Need for plots</HEAD3>
</STKY>

<SCRIPT id="m2/l5/v2" t="1:55" done="k">
<SESS t="1.80" done="a" kf="30" id="s1">
There is one thing regarding charts that I have not mentioned,
but might as well do so now. It is called a <B>Dashboard</B>. The idea
is to present a data set essentially just through charts,...
---
 not just one
chart, but a collection of many charts as well as some summary
informations like totals and maximums or minimums. 
---
Many modern data sets accumulate over time. Like streaming
data. Say, financial transaction data. They  pour in day and night in a
bank. Or meteorological data may get continuosly updated.
---
 It would be nice if we can have different charts that always show
the uptodate picture. As data are updated, so are the
plots.
---
 That's the idea of a dashboard. Much like the dashboad of
a car, always showing the up-to-date status, speed, amount of gas
in tank, battery charge and all that.
---
LibreOffice does not have any built in feature for creating
dashboards, but we can still create one. You designate one place
in the spreadsheet for storing the data, and another for the
plots.
---
 When you create the plots, specify entire columns as the
inputs, and not a just a few specific rows containing the current
data.
---
 That way, when new data will be added in the columns, the
plot will be able to update itself. Then you may add colourful
titles etc to make it look like a dashboard. Experiment with it!
---
By the way, LibreOffice also allows you to write your own
programs. So if you know how to write programs, then you can use
your skill. 
---
But we shall not explore these ideas further in this course.
</SESS>
</SCRIPT>
<STKY>
<HEAD3>Module 2, Lesson 5, Video 3: Line charts</HEAD3>
</STKY>
<SCRIPT  id="m2/l5/v3" t="2:51" done="k">
<SESS t="2.50" done="n" id="s1">
We discussed 4 different charts. Line chart, scatter plots, bar
charts and pie charts. All these charts are meant for printing on
paper or viewing as static images onscreen.
---
 In other words, these
are all 2D objects, they have got just two dimensions, x direction and
y-direction.
---
 Accordingly they can show relation between two
variables. The choice of the chart largely depends on the
variables that we want to work with.
---
 If both the variables are
continuous or count variables, then you should use line charts and
scatterplots. If one is discrete, but the other continuous or a
counting variable, then go for a bar chart or a pie chart.
---
We have not discussed any chart suitable for exploring the
relation between two categorical variables. Actually, there
aren't many standard charts for that purpose.
---
Coming to continuous versus continuous cases, line charts are good mainly 
for time series data. Like number of COVID infected persons over
days. Or growth of a plant. Or price of some stock. An ECG plot
is yet another example. Otherwise use a scatterplot. 
---
Both line charts and scatterplots are useful for 
exploratory as well as reporting purposes. When you report a line
chart try to start your vertical axis from zero.
---
 Otherwise, the ups and downs of the lines may not really reflect the actual
fluctuations proportionately. If due to some space constraint,  it is
not possible to start the vertical axis from zero, 
then at least warn the viewer of this fact.
---
Similarly, be careful when you interpret a line chart that has a vertical
axis not starting from zero.
---
We have also learned how to overlay line charts, ie draw multiple
line charts on the same plotting region. Of course, this is
meaningful only when all the lines denote variables that are
comparable,...
---
and are being plotted against some common variable along the
horizontal axis. 

LibreOffice or any other software for that matter, won't warn you
if you overlay unrelated line charts on top of each other.
---
 It is your duty as the statistican to keep in the mind the maxims of
comparison and contrast when you make a line chart, or whatever
other type of chart, for that matter.
</SESS>
</SCRIPT>

<STKY>
<HEAD3>Module 2, Lesson 5, Video 4: Scatterplot</HEAD3>
</STKY>
<SCRIPT id="m2/l5/v4" t="1:36" done="k">
<SESS t="0.90" done="n" id="s1">
We have learned about scatterplots. Extremely useful things to
show the relation between two continuos variables. I cannot think
of any other device, graphical or mathematical...
---
 that comes close
to the scatterplot in its power to bring out relationship between
two continuous variables. 
---
Scatterplots form the backbone of many sophisticated
statistical techniques. The most notable of them is regression,
something that we shall learn later.
</SESS>
<JINGLE t="0.1">More variables</JINGLE>
<SESS t="0.60" done="n" id="s2">
 The only drawback of a scatterplot is that
it is limited to only two variables. So if you have a
multivariate data with 3 or more variables, then you have to make
scatterplots of two variables at a time.
---
 Sometimes statisticians make scatterplots of all possible pairs
of continuous variables 
in a data set. 
---
And if you add colour coding, you may easily
incorporate a third categorical variable. We have also learned
about the bubble chart, which may incorporate a third continuous
variable.
---
 Of course, the bubble sizes only give an idea of the
relative values. 

We may also make interactive 3D scatterplots.
---
 LibreOffice cannot
do that, but R can. Such a scatterplot may be rotated by the
mouse to view the data from different directions. In the next
video we shall give a little taste of these.
</SESS>
</SCRIPT>

<STKY>
<HEAD3>Module 2, Lesson 5, Video 5: Pairs and 3D (R)</HEAD3>
</STKY>

<SCRIPT id="m2/l5/v5" t="5:24" done="k">
<SESS t="0.40" done="r" id="s1">
Here I shall demonstrate two ways to use scatterplots for higher
dimensional data. These techniques are not available in
LibreOffice.
---
 I shall show these using a software called R, which you shall
learn in a different course. So this demonstration is something
that you won't be able to reproduce yourselves at this point.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="5" done="r" id="sc_rgl_255">
[pca.ods]
$cw/pgdas/plot3d/index.html
RGL demo.
pca.csv
try webgl
</SC>
<R>
o(2,5,5)
x = read.table('pca.dat')
x[,1] = trim(x[,1])
x[,2] = trim(x[,2])
x[,3] = trim(x[,3])
names(x) = c('X','Y','Z')
csv(x,'pca.csv')

library(rgl)
pairs(x)
tmp = plot3d(x)
val=rglwidget(elementId="fff")
</R>
</SCRIPT>
<R>
o(2,5,5)
val = read.table('pca.dat',head=T)
library(rgl)
plot3d(val,size=2)
spheres3d(val,rad=0.1)
</R>
<STKY>
<HEAD3>Module 2, Lesson 5, Video 6: Pie and bar</HEAD3>
</STKY>

<SCRIPT id="m2/l5/v6" t="1:58" done="k">
<SESS t="1.80" done="n" id="s1">
We have learned about pie charts and bar charts. Both of these
are for categorical variables. Unlike line
charts and scatterplots, these two are mainly useful for
reporting purposes, though occasionally also useful for
exploration of new data.
---
 There is one important point about the
pie chart that makes it different from the other graphical
representations we have learned. It loses information. It shows
only the fractions.
---
 Like if you have voting data between two political
parties, and each party gets 73 votes, then a pie
chart will merely convey the fact that each has got 50%
votes. The exact number 73 will be lost.
---
 This may or may not be desirable. If you do not want this, then 
you should use  a bar chart, instead.

A pie chart is simple. And you should keep it that way. Trying to
add embellishments to it only destroys its message.
---
 So avoid 3D pie charts, or nested pie charts, though LibreOffice allows you
to make them as easily as the usual pie chart.

Bar charts, on the other hand, have some useful variants.
---
 The side-by-side bar chart is good for comparing two or three
variables. Like male populations and female populations for
different countries. But
again it is important to first make sure that the variables are
indeed comparable. 
---
The subdivided bar charts combine the effect of both a pie chart
and an ordinary bar chart. Though it is possible to distort the
perception somewhat by choosing the order of the subdivisions
differently. 
</SESS>
</SCRIPT>

<FLD>Additive

<EXRLIST id="m2_add.yml">
- typeName: checkbox
  prompt: |-
     A statistician has devised a new chart that she calls the
     ring chart. It shows values of a single continuous
     variable. The different values are shown as concentric
     rings. For example, the data set
      | Country   | Population |
      |-----------+------------|
      | India     | 1380004385 |
      | China     | 1439323776 |
      | USA       |  331002651 |
      | Indonesia |  273523615 |
     is depicted as [./exraux/ringplot.png]. Here each ring (the central ring looks
     like a disc) has area proportional to the value. Suggest
     what is wrong with this chart.
      
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: There is no legend. 
    isCorrect: true
    feedback: >
      Yes, not having a legend makes it difficult/impossible to
  figure out which ring is for which category.
  - answer: The eye is more sensitive to the thickness of a ring
  than its area.
    isCorrect: true
    feedback: >
      Yes, the outer rings become thinner to accommodate the same
  area.  
  - answer:  The eye is more sensitive to the area of a ring
  than its thickness.
    feedback: >
      No, it is the other way around. The eye feels the thickness
  more easily than the area. 
  - answer: Too many rngs might confuse the eye.
    feedback: >
      While that is true, it is not a flaw of this **particular**
  chart. Too many of anything is difficult for visual
  comprehension. 

- typeName: Peer review
  prompt: >
     Here is a data set [m2_1.csv] about daily minimum
     temperatures in Melbourne that I downloaded from Kaggle.
     Make a suitable plot using LibreOffice Calc to represent this graphically.

  Rubric:
    1) Should draw a line chart (1 point)
    2) The plot should be correct with appropriate title and labels (1 point)
      
- typeName: checkbox
  prompt: >
     Here is a summary table [m2_2.csv] from an NSSO survey. Your
  boss wants you to represent it with a
     suitable chart using LibreOffice Calc. Which of the
  following should you do? 

  shuffleOptions: true
  options:
  - answer: Make a bar chart.
    isCorrect: true
    feedback: >
      Yes, a bar chart is the right thing here, because you want
  to show absolute values for certain  categories. 
  - answer: Add labels and titles.
    feedback: >
      Good. While these may be dropped for exploratory charts
  (the ones that you make for your own inspection), they must be
  included in charts for the boss (or others)!
  - answer: Make a pie chart.
    feedback: >
      Well, pie charts show only the relative proportions. Your
  boss might not like a chart that does not show the actual
  values. 
  - answer: Make a line chart.
    feedback: >
      Hmmm...line charts are for continuous variables. 

      
- typeName: checkbox
  prompt: >
     Use a suitable chart to explore this bivariate data
     [[m2_3.csv]]. In particular, which of the following is/are
  true about the data?
      
  shuffleOptions: true
  options:
  - answer: Case 37 is the only outlier.
    isCorrect: true
    feedback: >
      Good. I hope you made a scatterplot, and moused over the
  outlier to see that it is for case 37.
  - answer: Case 24 is the only outlier.
    feedback: >
      No, did you make a scatterplot? 
  - answer: Case 37 and case 24 are both outliers.
    feedback: >
      Is case 24 really an outlier? Check using a scatterplot.
  - answer: There is no outlier.
    feedback: >
      If you just look at the values of the individual variables,
  then that's how it seems. But make a scatterplot first. 

- typeName: multipleChoice
  prompt: >
      If the plot of Y vs X looks like this [m2_scat.png], then the plot
  between X and Y^2 will show which of the following patterns?
  defaultFeedback: >
      Remember that Y takes some negative values. After squaring,
      they will become positive.
  shuffleOptions: true
  options: 
  - answer: first decreasing, then increasing
    isCorrect: true
    feedback: >
      Yes, the part of the plot for negative Y values is now decreasing.

  - answer: increasing 
      
  - answer: decreasing
      
  - answer: first increasing, then decreasing
      

</EXRLIST>
<R>
cw('exraux')
set.seed(35346)
x = 10+rnorm(49)
y = x + rnorm(49)/3
x[37] = 10+-1.43
y[37] = 10+1.53
x = trim(x); y = trim(y)
plot(x,y)
csv(data.frame(x,y),'m2_3.csv')
</R>
<R>
cw('exraux')
png('m2_scat.png')
x = runif(30,-2,3)
y = x + rnorm(30)/4
plot(x,y,pch=20)
dev.off()
</R>

</FLD>

<R>
disc = function(r,col) {
  theta = seq(0,2*pi,len=100)
  polygon(r*cos(theta),r*sin(theta),col=col)
}
ring = function(x) {
   r = sqrt(cumsum(x))
   n = length(r)
   col = rainbow(n)

   bareplot(0,xlim=c(-r[n],r[n]), ylim=c(-r[n],r[n]),ty='n',asp=1)

   for(i in n:1) {
     disc(r[i],col[i])
   }
}

   cw('exraux')
   png('ringplot.png')   
   ring(1:3)
   dev.off()

</R>
</LESSON>
<REF>
(local-set-key [f12] 'org-open-at-point-global)
</REF>
<HEAD1>Module 3: Presentation of data (part 2)</HEAD1>
<SCRIPT id="m3/intro" done="k" t="0:42">
<SESS t="0.70" done="r" id="s1">
Here we are at the start of week 3 of our course. We have already
made quite a bit of progress. We have learned about data and
related concepts. We have learned about some basic graphical
representation of data. 
---
This week we shall learn about tabular
representation of data and a very important graphical device
called the histogram. 
---
The structure will remain as in the last week. Four topics, along
with practice problems, followed by a review session and the
week's test. And as before we have some peer review problems. 

OK, enough introduction. Let's get started!
</SESS>
</SCRIPT>
<HEAD2>Module 3: Lesson 1</HEAD2>

<LESSON>
<SCRIPT id="m3/l1/v1" done="k" t="6:25">
<SESS t="2.70" done="r" kf="10,20,30,40,50,60,70" id="s1">
In this video we shall talk about a representation of data that
is definitely the one most commonly used: <B>tabular
format</B>.
---
 Be it a telephone directory or a dictionary or a
railway timetable,  tables are everywhere around us. Even when we
use a computer to look up information,  the underlying data base
is basically a collection of tables. 
---
A table,  as we all know,  presents data in a rectangular
format. Well,  we have already used them earlier in this
course<V>[rawtab.png]</V> like this. When we first learned
about data in week 1, we talked about a data matrix, which is an
example of a table. 
---
There columns represented variables and rows represented cases. Those
tables were meant primarily to be fed into a computer
program. 
But human-readbale tables can be (and should be) more
varied. 
---
They allow for various embellishments,<V>[ptab, point]</V> like 
row headings,   nested rows, 
nested columns,  marginal summaries etc.
Such fancy tables are often called <B>pivot tables</B>.
Now here is a little question for you: [ivq] <V>[clear]</V>
---
When we learned about bar chart and pie chart, we often needed a
summary table to start with. Those were also examples of pivot
tables. Let's understand how to get these from the data
matrix. 
---
Let's start with an example. Suppose that there are 1000
students who have been given letter grades A, B, C, D, and F<V>[letgrad]</V>. We
want to represent the data as a bar chart like
this<V>[gradbar]</V>.
---
 As you may
guess we need a summary table <V>[gradtab]</V>like this to produce the
chart. 
To arrive at the summary table we
basically have to count the numbers of A's and B's etc. Of
course, it is tedious to do by hand. 
---
We shall learn how to make
Libreoffice do this for us. In the process we shall also learn
how the same technique may be modified to produce more varied
pivot tables. 
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="4" done="r" id="s1">
[Screencast: Create a letter grade frequency distribution.]
letgrad.csv:
</SC>
</SCRIPT>

<FLD>Make pivot table (1D)
<EXRLIST id="m3l1_a.yml">
- typeName: textReflect
  prompt: >
      Consider this letter grade [[./exraux/grades.xlsx]]. Make a pivot
  table of counts.
  defaultFeedback: >
      [[./exraux/gradesol.png]]
      
- typeName: numeric
  prompt: >
      Consider this [[./exraux/nsshugli.csv]]. Make a pivot table
  showing the percent of persons of the different religions
  (column Y).
  defaultFeedback: >
    [[./exraux/nsshuglisol.png]]      
  shuffleOptions: true
      
- typeName: numeric
  prompt: >
      Consider the [[./exraux/kick.csv]]. Use a pivot table to find the number of times the
      maximum value of death has occured.
  defaultFeedback: >
      [[./exraux/kicksol.png]]
</EXRLIST>
</FLD>
<STKY>
<HEAD3>Module 3, Lesson 1,  Video 2: Tabular: Pivot table and pivot chart</HEAD3>
</STKY>
<SCRIPT id="m3/l1/v2" done="k" t="5:51">
<SESS t="1.90" done="r" kf="10,20,50" id="s1">
The example that we saw in the last video was possibly the
simplest type of pivot table. More generally a pivot table (also
called a <B>cross-tabulation</B>) takes a raw data
matrix, <V>[dat.png]</V> like this one, with at least
one categorical variable.
---
 To make a pivot table you need to
select one or more of these categorical variables. Based on 
the combinations of values of these variables the cases get
grouped into subsets.
---
 For instance, here we have a variable called
gender (taking values Male and Female) and another variable called
handedness (taking values Left and Right). So there are
four subsets (Male, Left), (Male, Right), (Female, Left) and
(Female, Right). We group all the cases into 4 groups
accordingly. <V>[shown one by one]</V>
---
 Of course, one or more of these subsets may
actually be empty, i.e. ,there may not be any row corresponding
to that particular combination. In our case, the (Male, Left)
group is empty. 
---
The next thing you need to 
specify is some variable that you want to study over the
groups. It could be the categorical variables themselves, or
something else, like IQ in our example.

The last thing to specify is some kind of summary value to be
applied to the selected variable over each
subset.
---
 The summary value could just be the size of the
subset. This is what we did in the letter grade example. Or it
could be average or sum or something else. For example, we may like to
find out average IQ level for each of the four groups.

Let's see a detailed example to understand this.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="5" done="r" id="s1">
[Screencast: Make a pivot table, and play with settings]
lr.csv,  avg iq, decimal places.
</SC>
</SCRIPT>

<FLD>Make pivot table for things other than count
<EXRLIST id="m3l1_b.yml">
- typeName: textReflect
  prompt: >
      Here is a data set [[./exraux/lrnew.xlsx]] similar to the one used in the
  video. Apply the same technique on this data set. What is the
  average IQ for the right-handed males?
  defaultFeedback: >
      [[./exraux/lrnewsol.png]]
      
- typeName: textReflect
  prompt: >
      Consider he same data set once more. But this time make a
      table showing the maximum IQ values for the four
      groups. What is the maximum for left-handed females?
  defaultFeedback: >
      [[./exraux/lrnewsol2.png]]
      
- typeName: multipleChoice
  prompt: >
      Consider this pivot table computed based on this data:
        [[./exraux/pivtab.png]]
      Which of the following LibreOffice dialogs produced this?
  defaultFeedback: >

  shuffleOptions: true
  options: [[./exraux/d1.png]]
  - answer:
    isCorrect: true
    feedback: >
      
  - answer: [[./exraux/d2.png]]
    feedback: >
      
  - answer: [[./exraux/d3.png]]
    feedback: >
      

</EXRLIST>
</FLD>
<STKY>
<HEAD3>Module 3, Lesson 1,  Video 3: Tabular: Pivot table and pivot chart</HEAD3>
</STKY>

<SCRIPT id="m3/l1/v3" done="k" t="5:01">
<SESS t="0.40" done="r" id="s1">
Pivot tables allow some additional embellishments to be added to
the basic summary table. In fact, the marginal totals that we
were seeing all along, were examples of this. We can remove them,
if we please.
---
Let's see how we can do this using Libreoffice.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="5" done="r" id="s1">
[Screencast: Marginals off from last example.]
</SC>
</SCRIPT>

<FLD>Pivot table math
<EXRLIST id="m3l1_c.yml">

- typeName: textReflect
  prompt: |-
    We have constructed this pivot
    table. 
    |              | Male | Female | Total |
    |--------------+------+--------+-------|
    | Left-handed  |   29 | A      | B     |
    | Right-handed |   34 | 45     | C     |
    |--------------+------+--------+-------|
    | Total        |   D  | E      | 200   |

  What should the values in the named cells be?
  defaultFeedback: >
    C = 34+45=79. D=29+34=63. B = 200-C=121. E = 200-D=137. A = B-29=92.

- typeName: textReflect
  prompt: > 
    Here are two pivot tables claimed to be derived from the
    same data set. Is the claim justified?
    [[./exraux/ctabboth.png]]
  defaultFeedback: >    
    Yes, because all the cell frequencies match. They are just in
    a different order, that's all!

- typeName: multipleChoice
  promot: |-
    Here are two different layouts for the same pivot
    table. Which one is better suited for a newspaper report?
    |      |     Urban      |    Rural      |
    |------+-------+--------+------+--------|
    |      | Male  | Female | Male | Female |
    |------+-------+--------+------+--------|
    | High |       |        |      |        |
    | Med  |       |        |      |        |
    | Low  |       |        |      |        |
    and 
    |        |         Urban         |         Rural         |
    |--------+-------+-------+-------+-------+-------+-------|
    |        | High  | Med   | Low   | High  | Med   | Low   |
    | Male   |       |       |       |       |       |       |
    | Female |       |       |       |       |       |       |
  shuffleOptions: true
  options:
  - answer: The first
    isCorrect: true
    feedback: >
      Yes, here the column heading denote the background of the
      persons. The row heading deal with the income.
  - answer: The second
    feedback: >
      Here the demographic background is partly in the row headings
      and partly in the columns headings.
  - answer: Both are equally useful.
    feedback: >
       Well, they both contain the same information. But the
       natural aim here is to relate the income group with the background.
</EXRLIST>
</FLD>

<SCRIPT id="m3/l1/v4" done="k" t="5:30">
<SESS t="0.80" done="r" kf="10,30,50,60" id="s1">
Pivot tables have two major uses in a report. One is as
themselves, just to summarise data.  Most tables that we see in a report are actually
pivot tables generated from the original data matrix which is
typically very huge.
---
 The second use of pivot tables is as an
intermediate step towards producing grphical representations
like bar charts or pie charts.
---
 So the entire route from the raw
data matrix to such a chart basically consists of two steps: raw
data to pivot table,<V>[shown]</V>
--- 
Then pivot table to the chart<V>[shown]</V>. Both
these steps may be conveniently packed into a single thing in
LibreOffice. This combined thing is called a <B>pivot chart</B>. 
Let's see an example.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="5" done="r" id="s1">
[Screencast: Pivot chart]
letgrad.csv: pie chart
</SC>
</SCRIPT>
<FLD>Make pivot chart
<EXRLIST id="m3l1_d.yml">
- typeName: textReflect
  prompt: >
    Consider the same data set [[./exraux/letgrad.csv]] as used
    in the video. Create a 
    pivot bar chart showing the frequencies.
  defaultFeedback: >
     [[./exraux/letgradsol1.png]]

- typeName: textReflect
  prompt: >
    Repeat the same exercise, but this time showing 
    the percentages of students.
  defaultFeedback: >
     [[./exraux/letgradsol2.png]] 
     I needed to edit the y-axis a bit to get the labellings as percentages.
  
</EXRLIST>
</FLD>
<REF>
FPP: Chapter 3, section 6
LO manual
</REF>
</LESSON>

<HEAD2>Module 3: Lesson 2</HEAD2>
<STKY>
<HEAD3>Module 3, Lesson 2,  Video 1: Contingency table</HEAD3></STKY>
<LESSON>
<SCRIPT id="m3/l2/v1" done="k" t="6:27">
<SESS t="1.30" done="r" kf="10,20,30,40,50" id="s1">
In the last video we talked about pivot tables, and mentioned how
they may be used in a report. There is one type of pivot table
which has a much more important use, and goes deeper in terms of
theory. I am talking about a <B>contingency table</B>.
---
A pivot table requires specification of two things:
 * One or more <B>categorical</B> variables.
 * Some <B>summary</B> measure.

---
To get a contingency table, we need to choose  two
categorical variables, and count as the summary measure. Let's
take an example.
---
Here is a table<V>[shown]</V> with two categorical variables gender
(Male/Female) and Handedness (Left/Right). The corresponding
contingency table is 2 by 2<V>[shown]</V>, where each cell has the
corresponding count. [Explain by pointing].
---
It should be quite easy to create such a contingency table in
LibreOffice, as we have already learned how to create a general
pivot table. Anyway, here is a little lab session, in case you
need one.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="4" done="r" id="s1">
[Screencast: Make contingency table.]
lr.csv: Don't use iq
</SC>
</SCRIPT>

<FLD>Contingency table by hand and LibreOffice
<EXRLIST id="m3l2_a.yml">
- typeName: multipleChoice
  prompt: >
     We have a contingency table to explore association among
     three categorical variables, gender (M/F), education level
     (preschool/school/college/higher) and income group
     (high/middle/low). What is the order of the resulting
     contingency table?
  defaultFeedback: >
     Gender has 2 values, education level 4 and income group 3.
     So the answer is 2x4x3.      
  shuffleOptions: true
  options:
  - answer: >
       2x4x3
    isCorrect: true
    feedback: >
      2x2x4
  - answer:
      2x4x4
    feedback: >
      
  - answer:
      3x4x4
    feedback: >

- typeName: textReflect
  prompt: |-
    Create a contingency table by hand from this toy data:
      | Serial | Gender | Income group |
      |--------+--------+--------------|
      |      1 | Male   | High         |
      |      2 | Male   | Low          |
      |      3 | Female | Low          |
      |      4 | Male   | Middle       |
      |      5 | Female | Middle       |
      |      6 | Male   | Low          |
      |      7 | Male   | High         |
  defaultFeedback: |-
    It should look like this 
        |        | High | Middle | Low |
        |--------+------+--------+-----|
        | Male   |    2 |      1 |   2 |
        | Female |    0 |      1 |   1 |

- typeName: textReflect
  prompt: |-
      Consider this incomplete contingency table:
        |            | Male | Female | Total |
        |------------+------+--------+-------|
        | Smoker     |      |        | 345   |
        | Non-smoker |      |        | x     |
        |------------+------+--------+-------|
        | Total      |  600 |    500 |       |
      What should be in the cell marked 'x'?
  defaultFeedback: >
      (600+500)-345 = 755.

- typeName: textReflect
  prompt: >
    Consider this data set [[./exraux/eduincdata.xlsx]]
    reporting educational levels and
    income groups of some people. Create a contingency table.
  defaultFeedback: >
    It should look like this [[./exraux/eduincsol1.png]]
    Do you find the order of the rows and columns disconcerting? 
    Unfortunately, there is no simple way out of this other than 
    renaming the categories carefully.
- typeName: textReflect
  prompt: >
    Redo the last exercise, but this time drop the preschool category.
  defaultFeedback: >
    It should look like this [[./exraux/eduincsol2.png]]
    Notice the little blue triangle, clicking on it did the
    trick.

- typeName: textReflect
  prompt: >
    Use the same data file as above. Create a pivot table.
    Now change a value in the raw data. Get LibreOffice to 
    update the pivot table.
  defaultFeedback: >
    Right click on the pivot table and select "Refresh" from the 
    pop up menu.
</EXRLIST>
</FLD>

<SCRIPT id="m3/l2/v2" done="k" t="5:01">
<SESS t="1.10" done="r" kf="10,20,30" id="s1">
We mentioned just now that contingency tables are very
important in statistics. Why is that? The most important reason
is that they help us to explore relation between two categorical
variables. Let's take an example.
---
We often want to answer questions like <B>"Is smoking related to
cancer?"</B>. Or what is the relation between <B>education level and
income group</B>? Does the chance of <B>admission to an educational
institute depend on one's gender</B>? 
---
All these questions are trying
to connect two categorical variables. In the first case smoking
habit (Y/N) with cancer (Y/N). In the second case, educational
level (preschool, school,  college and above)
and income level (low, middle, high). In the third case admission
status (admitted / rejected) and gender (male /
female). 
---
Contingency tables help us to understand such relations.
</SESS>
<JINGLE t="0.1">Some real life scenarios</JINGLE>
<SESS t="3.00" done="r" kf="60,70,80,90" id="s2">
Many studies aim to assess satisfaction of people regarding some
service or product. It could be reviewing a product, or providing
feedback for some service.
---
 Satisfaction, inherently, is something
continuous. However, it is difficult to quantify it meaningfully
along a continuous scale, like "I am 2.3343 units happy". However,
we can broadly classify our satisfaction level in say 5 classes,...
---
ranging from very unhappy to very happy.<V>[shown]</V>. Hence we
see such star rating systems everywhere. These are
called  <B>Likert scale</B>s.
---
 The one that we saw just now was a 5-point
Likert scale, which is the most common variant. We sometimes also
see 3-point and 10-point versions.
---
 When we collect data using Likert scales, we get one
such rating from each respondent, or case. Along with the rating
variable, we also collect other potentially relevant data about
the respondents, like gender, income level, etc.
---
 So we end up with a data set like this.<V>[shown]</V>

One of the most important things that we do with such a data set,
is to assess which of the other variables are closely associated
with the rating.
---
 Like answering questions like: Does gender play
a signficant role? Something like women prefer our product
more than men do? Or may be gender plays no role at all?
---
Similarly, we may ask whether income level plays a role. Answers
to such questions will enable a company to focus their efforts into
appropriate channels. 
---
In order to arrive at the answer, we first create a contingency
table involving the rating variable and the variable in
question, and find some suitable measure of association based on
the table. That's one type of application.
---
Here is a different type of application. 
Firms that lend money to people, like house loans, credit cards and all
that, have to worry a lot about <B>defaulters</B>, those who do not pay
up.
---
 A new customer comes in, asks for a loan. The firm naturally
wants to guess if this fellow is going to be a defaulter or
not. For this the firm uses  data regarding past
customers.
---
 There we have a binary variable, defaulter, with
values yes and no. And also other background information about
each customer.
---
 Many of these background variables are
categorical. So their association with the "defaulter" variable
may be assessed using a contingency table involving that variable
and the "defaulter" variable.
---
We may even<V>[clear]</V> use this technique for continuous variables, after
suitably categorising it. Like "age" is converted to "age group".
---
In the next video we shall take a brief look at how association may be
measured based on contingency tables.
</SESS>
</SCRIPT>

<FLD>Contingency table use
<EXRLIST id="m3l2_b.yml">
- typeName: checkbox
  prompt: >
      Association between which of the following pairs of
      variables may be checked using contingency tables?
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: >
      Letter grade received in mid term exam and letter
      grade in final exam.
    isCorrect: true
    feedback: >
      
  - answer: >
      Eye colour and hair colour
    isCorrect: true
    feedback: >
      
  - answer: >
      Height (in cm) and weight (in kg) of adult African males
    feedback: >
      These are not categorical variables.
  - answer: >
      Severity of car accidents with car brands.
    isCorrect: true
    feedback: >
      Here we are assuming that severity is a categorical variable.  

- typeName: numeric
  prompt: >
      We want to assess association between gender (Male/Female)
      and income group (High/Middle/Low). Each frequency in the
      contingency table is at least 5. Then the minimum possible
      sample size is
  defaultFeedback: >
      2*3 = 6 cells, each with at least 5 cases. So the minimum
  sample size is 6*5 = 30.      
  shuffleOptions: true
  options:
  - value: 30
    isCorrect: true
    feedback: >

      
</EXRLIST>
</FLD>

<SCRIPT id="m3/l2/v3" done="k" t="3:26">
<SESS t="2.90" done="r" kf="10,20,30,40,50,60" id="s1">

We shall return to contingency tables near the end of this
course, and later in other courses as well. There we shall see
how we exactly process a contingency table numerically to derive
answers to important questions. 
---
For now let's have an intuitive
feel for how a contingency table may shed light on the relation
between two categorical variables. 
---
Suppose that we are interested in knowing whether there is any
relation  between <B>income level and gender</B> in a
particular job sector. 
---
For this
we draw a random sample of workers from that sector and
record their genders as well as their income groups. For the sake
of simplicity suppose that there are only three income groups:
low, middle and high. The resulting raw data will look<V>[geninc]</V> something
like this.
---
 We convert this to a contingency table <V>[noasso1]</V>like this. Just
by looking at it, do you think that there is any relation between
gender and income group?
---
 Well, even a cursory glance will show
that the row for Male is basically the same as the row for
Females. So there is no reason to believe that gender matters in
determining the income group.
---
 Now suppose the values in the
Female row  are like this<V>[noasso2]</V>.  Here the Female row differs quite a
lot from the Male row. Does that mean that Gender influences
Income group here?
---
 Well, no. Because the values are
all proportionally reduced, basically halved. It is just that the total number
of females is smaller in our sample. But among the females the
proportions of the three income groups are the same as those for
the Males.
---
 So here also we conclude that gender is not associated
with income group. 
---
If however, the table<V>[asso]</V> were like this, then definitely the
proportions are widely different for the two genders. Now there
is indeed reason to suspect a strong relation between gender and
income group.
---
This is the basic idea behind using a contingency table for
assessing relation. More details will come later.
---
OK, here's little table for you.<V>[assoq]</V> Assume that there
is no association between gender and income group. Can you tell
me what should be here? 
---
10% males are in the Low income group. So 10% females must 
be there
too. 10% of 300, ie 30. So A should be 30. Work out the remaining
two for yourself.
</SESS>
</SCRIPT>

<FLD>Association by hand
<EXRLIST id="m3l2_c.yml">
- typeName: textReflect
  prompt: |-
     Here is a blank contingency table with the given
     marginals. 
       |              | Male | Female | Total |
       |--------------+------+--------+-------|
       | Left handed  |      |        |    25 |
       | Right handed |      |        |    75 |
       |--------------+------+--------+-------|
       | Total        |  200 |    300 |       |
     Fill in the cells with frequencies expected under
     the assumption of no association. Allow frequencies to be
     non-integers. 
  defaultFeedback: >
      
- typeName: textReflect
  prompt: |-
     Here is a contingency table between gender and income group.
      |        | High | Middle | Low |
      |--------+------+--------+-----|
      | Male   |  342 |   2569 | 235 |
      | Female |  103 |    800 | 67  |
     Does this table show strong association between two variables?
  defaultFeedback: >
</EXRLIST>
</FLD>

<SCRIPT id="m3/l2/v4" done="k" t="3:27">
<SESS t="3.00" done="r" kf="10,50,60,70,80" id="s1">
We have mentioned how we may construct  a contingency table from
raw data. When we collect raw data with the aim of creating a
contingency table, there are three major ways to go about it. Let's
understand this with an example. 
---
Suppose that our population consists of employees from a
particular job sector. We are interested in two variables <B>gender
and responsibility</B> levels. Let's say there are four
responsibility levels: <B>Manager,
Engineer, Clerk and  Support staff</B>.
---
 Our final aim is to get a
contingency table<V>[emptytab]</V> like this, that shows genders in the rows
and the responsibilities in the columns. 
---
How should we go about collecting data for this? One method could
be to select 100 employees randomly from the entire population,
and observe the gender and responsibility levels for
each.
---
 In this scheme we have no control on how many men and how
many women will be in our sample. Neither do we have any control
on the counts for the responsibility levels. So both the row
marginals and the column marginals are random.
---
An alternative approach<V>[gentab]</V> is to draw a random sample of 50 men and
50 women, and then observe the responsibility levels for each of
them. Here there are 50 men and 50 women by design. So the row
marginals are fixed, not random. However,  the row marginals
continue to be random as before.
---
Of course, we could have done it the other way around, fixing the
column marginals first<V>[restab]</V>. Then we should have chosen in advance the number of
persons in each responsibility level, say 25 each, and randomly
chosen that many employees from each level.
---
 Finally, we observe
the genders of these selected employees. 

Why are we bothering about these different sampling schemes? Because the
different  schemes will let us make different types of
inferences. 
---
Suppose that we want to
know the proportion of male employees versus female
employees. Then the second scheme is not suitable, because there
we deliberately chose an equal number of men and women.
---
Similarly,
if we are interested in comparing the responsibility levels for
the two genders, i.e., trying to check if the responsibility
level distribution for men differ significantly from that for
women, then the third scheme is not suitable, as there we are
starting by fixing the responsibility level counts.
---
  The first
scheme may also not be suitable if there happen to be too few men (or two
few women) in the sample. Here the second scheme is the best
suited for the purpose.
</SESS>
</SCRIPT>

<FLD>Sampling for assoc
<EXRLIST id="m3l2_d.yml">
- typeName: multipleChoice
  prompt: >
      We want to explore the association between the occurence of
  a very rare disease and blood group (A, B, AB, O). Which of the
  following schemes is best suited for this?
  defaultFeedback: >
      
  shuffleOptions: true
  options: >
  - answer:
      Select a random sample of 20 persons with that disease, and
      80 persons without the disease. Then ascertain the blood groups.
    isCorrect: true
    feedback: >
      
  - answer: >
     Select a random sample of size 25 of each blood group, and
     ascertain if they have the disease or not.
    feedback: >
      
  - answer: >
      Select 100 persons randomly from the entire population, and
      ascertain their blood groups as well as whether they have
      the disease or not.
    feedback: >
      
  - answer:
      Select a random sample of 25 persons of each blood
      group. Then inject the disease into a random 50 of them. 
    feedback: >
      

</EXRLIST>
</FLD>

<SCRIPT id="m3/l2/v5" done="k" t="4:57">
<SESS t="1.60" done="r" kf="10,20,30,50,90,120,130,140,150,160" id="s1">
All the contingency tables discussed so far were 2-way or
2-dimensional. It is quite possible to have higher dimensional
contingency tables. For example if we want to study the relation
between 3 categorical variables, say, <B>gender</B>, <B>educational
level</B>
and <B>income group,</B>
---
 We consider  two levels
under gender <V>[shown]</V>, 4 under educational
level <V>[shown]</V>, and 3 under income group<V>[shown]</V>.
---
So we shall have a <B>3-way
contingency table</B>,which is <B><M>2\times4\times 4</M></B> in
size.

Here  it ia customary to refer to the first variable as the
<B>layer</B>, the second as the <B>row</B>, and last as
 the <B>column</B>.
---
Thus, gender is the layer variable, educational level is the
row variable, and income group is the column variable. Such
 tables
are printed  layer by layer, where each layer is
a 2-way table. 
---
Most of the concepts that we have learned about 2-dimensional contingency
tables readily generalise for higher dimensional contingency
tables, as well. For example, we may talk about association
between the variables.
---
 However, a higher dimensional contingency
table allows more variety. For instance, 
income group and educational level may be associated in
one way in the male layer, but  differently
 in the female layer. 
---(*)
Statisticians often build elaborate models called <B>log-linear
models</B> to capture such complex relations. But we shall not go
into this any further in this course.
---
In the next video we shall see how we may construct a 3-way contingency
table from raw data using LibreOffice.
</SESS>
<SESS t="2.20" done="r" kf="10,20,30,40,50,110,290" id="s2">
(insert this at (*) above)
Here is a real life example of a 3-dimensional contingency table,
 where different layers have different types of
association.
---
 Indeed, we shall consider an extreme situation where
one layer has strong association, while another layer has no
association at all!
---
 Suppose that we have a list of locations and  are collecting
data from a random sample of people about how happy they will be
to live in the locations in our list.
---
 Each person is to 
say either "Happy" or "Unhappy" for each location. So we have one
variable: <B>"Happiness"</B>  with values <B>Happy and Unhappy</B>.
--- 
Now, we have various information regarding the
locations as well as the respondents. One variable about the
locations is "<B>school</B>" which says if there is a school nearby or
not. Accordingly there are two possible values, school and no school<V>[shown]</V>
---
 Finally there is another binary variable, this time  about the 
respondents, <B>"marital status", married or unmarried. </B>
So our data set has three binary variables, other than the names
of the respondents and the locations.
---
We may neatly present the information as a 2x2x2 contingency
table like this.<V>[shown]</V> Each little cube here is a cell, and
contains a frequncy, the number of times that combination occurs
in the data set. 
---
This cell for example<V>[finger]</V> gives the count of married people who are
happy in a location with a neighbourhood school.
---
Let's consider the 
married and unmarried layers separately.<V>[anim]</V> 
---
Married people are
likely to worry about proximity to school when deciding about
the location for residence. So in this layer we expect to see
association.
---
 But in the other layer, we have unmarried people,
who may not care at all about schools. So we may not find
association here.
</SESS>
</SCRIPT>

<SCRIPT id="m3/l2/v6" done="k" t="6:34">
<SC t="6" done="r" id="s1">
[Screencast: 3-way toy example as described.]
gei.csv: gender, edu, income
</SC>
</SCRIPT>



<REF>
WW: 19.6 Lost letter study
</REF>
</LESSON>
<HEAD2>Module 3: Lesson 3</HEAD2>
<STKY><HEAD3>Module 3, Lesson 3,  Video 1: Frequency distribution</HEAD3></STKY>
<LESSON>
<SCRIPT id="m3/l3/v1" done="k" t="6:30">
<SESS t="1.80" done="r" kf="10,20,30,40,50,60,70,80,90,100,110,120" id="s1">
Out of all the topics we are  learning this week, <B>frequency
distribution</B> is perhaps the most important. It is quite 
humble to look at, and yet its roots go to the very core of
statistical theory. 
---
Let's understand with an example. Suppose we have a categorical
variable, like the letter grades we saw in an earlier
example <V>[data shown]</V>. 
---
When we counted the numbers of A's , B's etc there
 <V>[shown]</V> we got this. These counts are
called the <B>frequencies</B>. The entire table is called
the frequency distribution table for this categorical
variable. 
---
Unlike a categorical variable, a counting variable may take
infinitely many values in principle 0, 1,2,3, etc. But to create
a frequency distribution table, we make finitely many groups, something
like <V>[countfrq]</V> 0, 1, 2, and 3 or more, and count from the data the frequency
for each group to fill in these places.
---
 But if the variable is continuous, like a person's height<V>[man
 shown]</V>, then we consider the set of
 all its possible values along a line.<V>[scale shown]</V> 
---
We  choose some convenient points  along this line<V>[shown]</V> and consider the
 resulting intervals. Each interval is a <B>class</B>. The chosen
 points are the <B>class boundaries</B>.
---
 The lengths of the classes are
 called the <B>class widths</B>. Sometimes we consider the midpoint
 of a class as a representative value, called the <B>class mark</B>.

Now let's quickly see how frequency distributions may be created in LibreOffice.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="5" done="r" id="land_331">
[Screencast: Create a frequency distribution table.]
land.csv
</SC>
</SCRIPT>

<FLD>Make discrete and cont freq using LO
<EXRLIST id="m3l3_a.yml">

- typeName: textReflect
  prompt: |-
    Here is a frequency distribution.
    |  Class | Frequency |
    |--------+-----------|
    | 10--19 |       329 |
    | 20--29 |       294 |
    | 30--39 |       298 |
    | 40--69 |       198 |
    | 70--99 |       231 |
    Find the lower endpoint of the class with the maximum frequency.
  defaultFeedback: >
    It is 10.

- typeName: textReflect
  prompt: >
     Create a frequency distribution for the categorical variable
     colour from this [[./exraux/colour.csv]]. 
  defaultFeedback: >
     [[./exraux/coloursol.png]]

- typeName: textReflect
  prompt: |-
    Make a frequency distribution from this data set [[./exraux/frqdata.csv]] using
    these classes. 
    | Classes    |
    |------------|
    | 0 -- 0.1   |
    | 0.1 -- 0.2 |
    | 0.2 -- 0.5 |
    | 0.5 -- 0.7 |
    | 0.7 -- 0.9 |
    | 0.9 -- 1.0 |
  defaultFeedback: >
    [[./exraux/frqdatasol.png]]
    We first created the "Breaks" column,
    then populated the "Freq" column. Finally we added the
  "Class" column.
      
- typeName: textReflect
  prompt: >
     Create a frequency distribution for the continuous variable
     sepal length from this [data set]. Use these classes: [4,5),
  [5,6), [6,7), [7,8).
  defaultFeedback: >
      
- typeName: textReflect
  prompt: >
     Create a frequency distribution for the continuous variable
     Petal.Length from this data set [[./exraux/iris.csv]]. Use 4 classes of
     equal width of your choice.
  defaultFeedback: >
      First find the minimum and maximum of the values. Then
      split the whole range into 4 equal parts.

</EXRLIST>
</FLD>


<SCRIPT id="m3/l3/v2" done="k" t="4:08">
<SESS t="0.90" done="r" id="s1">
What we are going to discuss here may look ridiculously
simple. Indeed, it is simple, very simple. But not always
obvious. It is a way to count. 
---
Count? But don't we already know how to count?
Well, yes,  We can all easily count
things of any single type, like cars going down a road. As each
car passes you keep on increasing the count by 1. 1,2,3...
---
But sometimes we have to count different types of things
simultaneously, where the things come in hadhazardly, like 
three different types of cars or different types of trees in a
forest.
---
Then keeping simultaneous track of all the counts gets quite confusing. It is here that
technique called tally marking helps.
</SESS>
<JINGLE t="0.1">Tally marking</JINGLE>
<BC t="3" done="r" id="bc_tally_332">
Explain tally marking.
</BC>
</SCRIPT>
<R>
cw('exraux')
set.seed(46346)
x = runif(50)
y = runif(50,-0.2,0.2)
col = sample(c('red','blue','green'),50,rep=T)
bareplot(x,y,ylim=c(-1,1),pch=20,col=col)
table(col)
</R>

<FLD>
<EXRLIST id="m3l3_b.yml">
- typeName: textReflect
  prompt: >
     Use tally marks to count the numbers of dots of different colours in this
     picture: [[./exraux/tally.png]]
 
  defaultFeedback: |-
      | Colour | Frequency |
      |--------+-----------|
      | Blue   |        20 |
      | Green  |        14 |
      | Red    | 16        |

</EXRLIST>
</FLD>

<SCRIPT id="m3/l3/v3" done="k" t="3:06">
<SESS t="2.90" done="r" kf="10,20,30" id="s1">
Now that we have learned what a frequency distribution is, you
might naturally wonder what is so special about them! Indeed,
this humble thing is central to the very idea of statistics.  To
appreciate this it will help if you carry out a simple (if a bit
tedious) experiment.
---
 The experiment goes like this: take a coin,
toss it 50 times, record the outcomes. So you get a list of 50
heads and tails.
---
From this we need to find the proportion of heads, i.e.,  the
number of heads divided by the total number tosses. And we want to
compute this after every toss. 
---
Let me explain with a typical run. Here is a coin. I toss it
for the first time<V>[toss]</V>. Head!  1 head out of 1
toss. So proportion of head is 1/1 = <B>1.</B>
---
Toss again. Tail! So still just 1 head out of the 2 tosses. Hence the
proportion of head slips down to 1/2 i.e, <B>0.5</B>.
You go on like this for 50 tosses. 
---
Now make a line chart of these. The horizontal axis should show
the number of tosses, 1,2,...up to 50. the vertical axis shows the running
proportions of heads. I shall not show the plot here, because I
want you to do this for yourself! But I shall give you a hint.
---
Though the coin is an arbitrary one, each
toss was random and one toss had no effect on the other tosses,
yet  the resulting plot will show a
very predictable pattern.
---
 It fluctuates for some time initially,
and then mysteriously becomes rather steady and approaches a
fixed number (in the vicinity of 0.5).
---
 Just try this at home with
your own coin. You'll see that your coin behaves just in the way I
have predicted. 
---
While I strongly urge you to carry this experiment out with a
real coin. In the next video  I shall provide a LibreOffice version of the
experiment, which will show the same result, much more easily,
albeit much less dramatically,
---
 because a computer can only
<B>simulate</B> a coin toss. There we shall also learn how LibreOffice
can simulate data. 
</SESS>
</SCRIPT>

<FLD>Actual coin toss
<EXRLIST id="m3l3_c.yml">
- typeName: textReflect
  prompt: >
     Carry out the coin toss experiment by performing at least 50
     tosses.  Make a plot using LibreOffce.
  defaultFeedback: >
      You should see a line converging to somewhere close to 0.5.

- typeName: textReflect
  prompt: >
     This and the following exercises try to give an idea about
     why statistical regularity occurs in the coin toss experiment.
     Suppose that I have tossed a coin 9 times and have obtained
     eactly 5  heads. If I toss again, what are the 
     minimum and maximum possible values of proportion of heads
     out of the 10 tosses?

  defaultFeedback: >
      Min = 1/2, Max= 3/5. Minimum  occurs when I get a tail in
      the 10th toss, and maximum occurs when I get a head.
      
      
- typeName: textReflect
  prompt: >
     Suppose that I have tossed a coin k times and have obtained
     p_k proportion of  heads. If I toss again, what are the 
     minimum and maximum possible values of p_{k+1}

  defaultFeedback: >
      Min =  kp_k/(k+1), Max = (kp_k+1)/(k+1). Reasoning is same
      as that in the last problem.
      
- typeName: multipleChoice
  prompt: >
     Suppose that I am tossing a coin repeatedly. Let p_k be the
     proportion of  heads out of the first k tosses. Given p_k,
     let the minimum and maximum possible values of p_{k+1} be
     m_k and M_k. Then, as k increases, how will M_k-m_k behave?

  defaultFeedback: >
     It will decrease to zero. Use the last exercise to see this.

</EXRLIST>
</FLD>
<STKY><HEAD3>Module 3, Lesson 3,  Video 4: Frequency distribution</HEAD3></STKY>
<SCRIPT id="m3/l3/v4" done="k" t="6:14">
<SC t="6" done="r" id="simul_334">
[Screencast: experiment]
Show simul randomness. Split. Do cumsum.
</SC>
</SCRIPT>

<FLD>Simulated coin toss
<EXRLIST id="m3l3_d.yml">
- typeName: textReflect
  prompt: >
     Perform the experiment yourself using LibreOffce. 
     defaultFeedback: >
       You already know what to expect.   

</EXRLIST>
</FLD>

<SCRIPT id="m3/l3/v5" done="k" t="5:07">
<SESS t="0.70" done="r" kf="10,20" id="s1">
What you experienced is the last video is the key idea behind the whole of
statistics. It is called <B>statistical regularity</B>:
---
 lots of randomness accumulating in a way so that the randomness seems to
cancel itself out, and a regular behavior emerges. This was first
observed by gamblers in the middle ages.
---
 There have been many mathematical results that try to capture its
essence in various contexts. The first such theorem
 was proved by
<B>Jacob Bernoulli in 1731</B>.
---
 It took him more than  20 years of research
from the concept of the theorem to the finished proof!
</SESS>
<SESS t="0.70" done="r" id="s2">
Why is statistical regularity important? Because it seems to
offer a clue to the working of nature. There are many natural
things around us that show surprising similariries and yet are
completely distinct. 
---
One example is fingerprints. All finger
prints look deceptively similar, and yet are distinct. All the
leaves of the same tree are very much similar to each other, and
yet no two leaves are exactly identical.
---
 It is undeniable that
the variation is random, but then what is the source of the
similarity? Statistical regularity is one way to explain this. 
</SESS>
<SESS t="0.60" done="r" kf="10,20" id="s3">
One way (if not the only way) to harness the idea of statistical
regularity is via the frequency distribution, or to be precise
<B>relative frequency distribution</B>.
---
 Relative frequency is
just a fancy term for proportions, frequency divided by the
sample size. Like number of heads divided by number of tosses.
---
If you repeat the same random
experiment again and again, the relative frequency distribution
starts showing statistical regularity, i.e., starts approaching
something fixed.
---
 This fixed limit is called the <B>probability
distribution</B> for that random experiment. The entire theory of
statistics hinges on this idea.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="2" done="r" id="sc_binom_335">
Convergence of relative freq. Show binom example.
</SC>
</SCRIPT>
<FLD>Relative freq concept
<EXRLIST id="m3l3_e.yml">
- typeName: textReflect
  prompt: |-
     Here is a frequency distribution table. Add a column of
     relative frequencies to it.
       | Value | Frequency |
       |-------+-----------|
       |     1 |        17 |
       |     2 |        17 |
       |     3 |        25 |
       |     4 |        19 |
       |     5 |        12 |
  defaultFeedback: >
      The relative frequencies are: 0.189, 0.189, 0.278, 0.211, 0.133.

- typeName: multipleChoice
  prompt: >  
    Is it always true that the class with the maximum frequency is
    also the class with maximum relative frequency?
  shuffleOptions: true
  options:
  - answer: Yes
    isCorrect: true
    feedback: >
      Yes, because relative frequency is just frequency divided by
      the total sample size, which does not depend on the classes.
  - answer: No
    feedback: >
      Well, relative  frequency is just frequency divided by
      the total sample size, which does not depend on the classes.
  - answer: Nothing may be said in general.
    feedback: >
      Well, relative relative frequency is just frequency divided by
      the total sample size, which does not depend on the classes.

</EXRLIST>
</FLD>
<REF>
WW: 2.1--2.7
</REF>
</LESSON>
<HEAD2>Module 3: Lesson 4</HEAD2>
<LESSON>

<SCRIPT id="m3/l4/v1" done="k" t="4:31">
<SESS t="0.90" done="r" kf="10,20" id="s1">
We have already seen some ways to  represent
data graphically. Most of them were pretty self-evident. Indeed, that is one
of their main qualities, because they are meant to present data
to laymen.
---
 In this course we shall also discuss two other graphical
devices, that are more sophisticated, and
primarily used by statisticians themselves for understanding
data. 
---
These are 
  * <B>histogram</B>
  * <B>box plot</B>
The first of these will be discussed here. The other will come
in a couple of weeks.
---
Histograms are extremely useful for understanding
the behaviour of data, and have a rich theory underlying
them. But since they are not used much for report generation,
neither LibreOffice nor MS Excel has full support for them.
</SESS>
<SESS t="0.60" done="r" id="s2">
Histograms are extremely similar to bar charts. However, bar
charts are for categorical variables, while histograms  may be
used  for both discrete and
continuous ones. 
---
The histogram is a graphical way of
demonstrating statistical regularity based on a frequency
distribution. Histograms come in two major varieties, depending
on whether the variable is discrete or continuous. 
</SESS>
<JINGLE t="0.1">Discrete and continuous histograms</JINGLE>
<SESS t="2.40" done="r" kf="10,20,30,70,80,140,200,210,212,270,280" id="s3">
The discrete
case is the easier of the two, and we shall start with that.
Suppose that we have a counting variable. To make its histogram, we shall
first obtain its frequency distribution<V>[frq]</V>, i.e., count how many times
each possible class of values has occured in the data set.
---
 Then we compute
the relative frequency<V>[relfrq]</V> for each class, i.e., the frequency
divided by the total number of cases. Then we  create
a bar chart<V>[shown]</V>. Here each  bar has height= relative
frequency.
---
That's our histogram!
Since the bars depict relative frequencies, so
the sum of the lengths of the all the bars <V>[animation]</V>  must
be 1.

Let's look at some possible shapes of a discrete
histogram. 
---
* This <V>[shown,point]</V> histogram has a peak at the centre, tapering off
towards the two ends. This peak gives the value that the variable
is taking most frequently. These extreme values occur more
rarely. The overall shape is symmetric around the centre.
---
* This <V>[shown]</V> histogram, on the other hand, is quite skewed towards the
right. The frequently occuring values are near the left extreme. 
---
* This<V>[shown]</V> histogram is skewed towards left. The most frequently
occuring value is near the right.

Of course, there are many other types of histograms possible as well.
---
Next let us look at histograms of continuous variables. 
A continuous variable takes values continuously over a
line. <V>[shown]</V> We subdivide the line
into classes<V>[shown]</V>,
 and consider the corresponding frequency
distribution.
---
 As before we compute the relative frequencies and
erect rectangles<V>[shown]</V> over each class with <B>area = relative frequency</B>.
---
Note  two important
differences of continuous histograms with discrete ones.

* First, the bars here, unlike here, may have <B>different
widths</B>. Also the bar are all adjacent to each other.
---
* The second
difference is more subtle. It is the area, and not height, of a
bar that is  equal 
to the relative frequency.
This makes the total area of the histogram equal to 1.
</SESS>
</SCRIPT>

<FLD>
<EXRLIST id="m3l4_a.yml">
- typeName: numeric
  prompt: |-
   Find the class width of the class with maximum frequency
   density in this frequency distribution:
   | Class    | Frequency |
   |----------+-----------|
   | [0,3)    |        45 |
   | [3,4)    |        34 |
   | [4,4.5)  |        26 |
   | [4.5, 5) |        23 |
   | [5,9]    |        46 |
  shuffleOptions: true
  answers:
  - range:
    isCorrect: true
    feedback: >
      
  - range:
    feedback: >
      
  - range:
    feedback: >
      
  - range:
    feedback: >
</EXRLIST>
</FLD>
<STKY>
<HEAD3>Module 3, Lesson 4,  Video 2: Lab</HEAD3></STKY>

<SCRIPT id="m3/l4/v2" done="k" t="3:39">
<SC t="5" done="r" id="letgrad_343">
[Screencast: Discrete histogram]
Reuse the earlier data.
</SC>
</SCRIPT>

<FLD>
<EXRLIST id="m3l4_b.yml">
- typeName: textReflect
  prompt: >
     Make a histogram of this [data set]. Remember to show
     relative frequencies in the vertical axis.
  defaultFeedback: >
      
- typeName: textReflect
  prompt: >
     Make a histogram of this [data set].
  defaultFeedback: >
      

</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 3, Lesson 4,  Video 3: Lab</HEAD3></STKY>

<SCRIPT id="m3/l4/v3" done="k" t="5:50">
<SC t="7" done="r" id="land_344">
[Screencast: Continuous histogram]
Reuse the earlier data.
</SC>
</SCRIPT>

<FLD>
<EXRLIST id="m3l4_c.yml">
- typeName: textReflect
  prompt: >
     Make a histogram of this [data set]. Remember to show
     relative frequency densities in the vertical axis.
  defaultFeedback: >
      
- typeName: textReflect
  prompt: >
     Make a histogram of this [data set].
  defaultFeedback: >
      

</EXRLIST>
</FLD>

<SCRIPT id="m3/l4/v4" done="k" t="2:09">
<SESS t="1.80" done="r" kf="10,20,40" id="s1">
The shape of the histogram reveals interesting facts about a
variable, and has profound implication for statistical
analysis of data.
---
The variables  in a data set take values randomly.<V>[somedat]</V>
 Any statistical analysis
presupposes that there is some underlying (unknown) random
process of nature that produces these values.<V>[blackbox
shown]</V>
---
It is just like rolling a
die. Subtle variations in the forces, the angle of launch,
rotations determine the final outcome in so complex a way that
we have to consider it as a blackbox. Its working can be 
inferred only indirectly from its output.
---
 And that's where histograms come to
our help. If the blackbox runs a large number of times, and we
make a histogram of its random outputs<V>[hist shown]</V>, then quite surprisingly
the effect of the randomness magically vanishes...
---
... and we arrive at
a shape that depends only on the process, and not on the particular
outputs. If you run the same process again a
large number of times, then the shape of the new histogram will
be essentially the same as the earlier one!
---
 This magical behaviour is a consequence of
statistical regularity, and is utilised by statisticians to
detect the unobserved process behind the observed data. It is
much like fingerprint analysis. Fingerprints that all appear
similar to the layman uniquely identify different persons in the
eye of the expert.
---
 Similarly, values that appear as jumbles of
numbers to the layman reveal interesting tell-tale shapes to the
statistician who constructs a histogram out of them!
</SESS>
</SCRIPT>

<FLD>
<EXRLIST id="m3l4_d.yml">
- typeName: multipleChoice
  prompt: >
     Make a histogram of this [data set] and identify the
     shape from among the following shapes: [fig]
  defaultFeedback: >
      
  shuffleOptions: true
  options: II
  - answer:
    isCorrect: true
    feedback: >
      
  - answer: I
    feedback: >
      
  - answer: III
    feedback: >
      
  - answer: IV
    feedback: >
      
- typeName: multipleChoice
  prompt: >
      We have some variable whose histogram looks like this:
        [[./exraux/histx.png]]
      Then the histogram of x^2 looks like which one of the two?
        [[./exraux/histsol.png]]
  defaultFeedback: >
      
  shuffleOptions: true
  options: I
  - answer:
    isCorrect: true
    feedback: >
      
  - answer: II
    feedback: >
      
  - answer: neither.
    feedback: >
      

</EXRLIST>
</FLD>

<SCRIPT id="m3/l4/v5" done="k" t="5:02">
<SESS t="1" done="r" id="s1">
As our sample size grows, the shape of the histogram starts to
converge to a definite shape, as long as the sample comes from the
same underlying process. This is an example of statistical
regularity.
---
 The definite shape that the histogram approaches does
not depend on the random sample, but only on the underlying
process. Thus, the shape is like a fingerprint of the hidden
process. Let's see this in acton in the lab.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="4" done="r" id="sc_hist_345">
Convergence of continuous histogram. Show Gaussian example.
</SC>
</SCRIPT>

<STKY>
<HEAD3>Module 3, Lesson 4,  Video 6: Shape of histogram</HEAD3></STKY>
<SCRIPT id="m3/l4/v6" done="k**" t="2:39">
<SESS t="1.20" done="r" kf="10,70,130,140,150" id="s1">
Suppose we draw a huge random sample across  the entire Indian
population, and collect data about their monthly income. Even
without carrying out the sampling let's see whether we can guess
the shape of histogram. Can it be like this <V>[flat]</V>?
---
The horizontal axis denotes income. So <V>[point]</V>this is the poor end, and
this the rich end. Here it seems there is
an equal number of people in all income levels! That's not true! 

Can it be like this <V>[left skew]</V>?
---
 No, now there are more rich men than
poor!
 Can it be like this <V>[right skew]</V>.
---
 This looks better. Indeed, this is the typical shape for
income distribution for most countries with a significant 
capitalist component.  Notice how the shape of
the histogram shows the underlying process, namely the
economic structure of the country.
---
Since the shape is the most important aspect of a histogram,
statisticians try to capture  the shape using 
mathematical curves. <V>[curve shown]</V> Each such
curve is called a <B>probability distribution</B>.
</SESS>
<JINGLE t="0.1">Probability distribution</JINGLE>
<SESS t="0.90" done="r" kf="10,12,68,125" id="s2">
Certain probability distributions occur so frequently in practice
that statisticians have given them special names, and
created mathematical formulae to describe the shapes.  Familiarity with these is
one important pillar of statistical expertise.
---
Here is the most popular one: the bell-shape<V>[hist shown]</V>. Its formula
is <V>[curve and formula shown]</V> this. It is called
the <B>normal distribution</B> or the <B>Gaussian
distribution</B> with parameters <M>\mu</M> and <M>\sigma^2.</M>
---
 If you
change <M>\mu</M> the bell moves right and left<V>[shown]</V>. If you
change <M>\sigma</M> then its steepness changes<V>[shown]</V>.

We shall have many occasions to visit these shapes throughout statistics.
</SESS>
</SCRIPT>
<FLD>
<EXRLIST id="m3l4_e.yml">

- typeName: multipleChoice
  promShow a histogram and ask for relative frequency density for
a particular class.

- typeName: multipleChoiceShow a histogram, give sample size, and ask for frequency  for
a particular class.

- typeName: multipleChoiceShow a histogram give a value, and ask for propportion to
its left.


- typeName: multipleChoiceShow a histogram give a proportion, and ask for cut-off value.



</EXRLIST>
</FLD>


<FLD>
<EXRLIST id="m3l4_f.yml">

- typeName: multipleChoiceMake histogram based on data.

- typeName: multipleChoiceMake histogram and identify a 5% cut-off.

- typeName: multipleChoiceMake histogram and match its shape from among some given
shapes.


</EXRLIST>
</FLD>

<REF>
FPP: Chapter 3, parts 1--4.
WW: 2.11
DH: Chapters 5, 6, 7
</REF>
</LESSON>

<HEAD2>Module 3: Lesson 5</HEAD2>
<LESSON>
<STKY>
<HEAD3>Module 3, Lesson 5 ,  Video 1: Review</HEAD3>
</STKY>

<SCRIPT id="m3/l5/v1" t="5:46" done="k">
<SESS t="1.50" done="n" id="s1">
We have come to the end of week 3. Three weeks out of 6 weeks of
lecture. And this week we have covered a very important
module. Let's see what we have had in this module.
---
 I shall list the topics in the order of decreasing importance. The most
important concept is that of the histogram. It is of towering
importance in statistics.
---
 Of course, we cannot think of histograms without the related concept of frequency
distributions, which also we learned this week. Then we had
contingency tables. In fact, contingency tables are actually
higher dimensional frequency distributions.
---
 Like joint frequency distribution of two or more categorical
variables. How many males in our sample, and how many females? That's frequency
distribution. Or how many lefthanded persons? Or right handed
ones? That's frequency distribution, too.
---
 But in a contingency table, we ask the combined question: how many left handed males?
Or how many right handed females? 
---
We also discussed pivot tables and pivot
charts, which were the least important topic of this week.
</SESS>
<JINGLE t="0.1">Statistical regularity and histograms</JINGLE>
<SESS t="1.40" done="n" id="s2">
Let us quickly recall why  histograms are very important in
statistics. The main aim of statistics is to explore and harness a natural
phenomenon called statistical regularity,...
---
 if a lot of randomness is piled together appropriately, then the
randomness somehow cancels itself to a great extent and a regular behaviour
emerges. This is statistical regularity. We have seen a
demonstration of this using actual coin tosss as well as using
LibreOffice.
---
 Histograms are basically a systematic way to use
that idea for any random experiment. If you continue to repeat
the same random experiment independently a large number of times
and create a histogram after each step,...
---
 the shape of the histograms evolves oer time, and eventually converges to
something depending on only the random experiment, but not on the
actual outcomes. Thus, histograms are used as a tool to detect
the random experiment behind observed data. 
---
The limiting shape of the histogram is called a probability
distribution. Statisticians and probabilists spend a lot of time
detecting the probability distributions of different
variables.
---
 Thick books have been written about different
probability distributions found in nature. They are  somewhat like
dictionaries for statisticians.
</SESS>
<JINGLE t="0.1">Parametric and nonparametric</JINGLE>
<SESS t="2.20" done="a" kf="30" id="s3">
When a musician hears a piece of music he tries to identify its
basic structure. He already knows many standard basic structures,
and so would quickly recognise if one of them is being
used.
---
 If the musician has a good repertoire of structures in his
brain, then that's what will happen most of the time. He would
able to recognise it immediately. But occasionally he would come
across a structure that he has not heard before.
---
 Then he would
need more effort to analyse it. And if this new structure occurs
repeatedly in different musical pieces, he might even add it to
his existing repertoire.
---
Well, the situation is similar in statistics. When a statistican
encounters a new variable, she makes a histogram of the
values.
---
 If there are many cases in the data set, then the
histogram shape converges, and she can get a pretty good idea of
its limiting shape. Now any statistician already knows many
standrd probability distributions. 
---
This is an integral part of any statistical training. So she quickly runs through her
familiar distribtions, and checks if the shape at hand already
belongs there. If it does, then that's good news, and all the
wealth of knowledge regarding that distribtion may be brought to
bear upon the variable at hand.
---
 If, on the other hand, the
distribution is not a familiar one, the statistician has to put
extra effort to analyse the variable on its own. 
---
Thus, you see there are two different courses of actions
depending on whether the distribution is a standard one or
not. 
---
Accordingly there are two branches of statistics: <B>parametric
and nonparametric</B>. Parametric means when the distribution could
be recognised. Nonparametric means it could not be identified. 
---
Since the repoertoire of standard statistical distributions is
pretty huge, we most often find ourselves in the parametric
branch. As a result most beginner's course on statistics (like
this one) focuses only on  parametric statistics.
</SESS>
</SCRIPT>

<STKY>
<HEAD3>Module 3, Lesson 5 ,  Video 2: Review of contingency tables</HEAD3>
</STKY>
<SCRIPT id="m3/l5/v2" t="4:57" done="k">
<SESS t="0" done="a" kf="10,20,30" id="s1">
We have introduced the concept of contingency tables this
week. As I have already said, they are just frequncy distributions tables where 
we are considering two or more categorical variables simultaneously.
---
 <B>Joint frequency distribution</B>, as we call them. Just as we
may create histograms by erecting rectangles over each class,...
---
similarly we erect boxes,<V>[shown]</V> 3d boxes over each cell in a
contingency table to create histograms based on joint
distributions.
---
 Here also we can talk about statistical
regularity.  The histogram looks like a bunch of 
high rise buildings in a city.
---
 If we make heights equal to the
relative frequencies, then as the sample size grows, the
shape of the histogram converges to what is called a 
<B>joint probability distribution</B>. 
</SESS>
<JINGLE t="0.1">Accessible to laymen</JINGLE>
<SESS t="1.60" done="n" id="s2">
Contingency tables are extremely useful for answering many questions of
social importance. Like "is smoking related with cancer?", "is gender
related with salary"?, "is religion related with income level?"
---
 One reason behind the great usefulness of contingency tables is that
these are easily acesble to laymen. Also continuous variables are
usually more diffcult to measure with accuracy than categorical
ones.
---
 It is far more difficult to to measure the heights of 100
students, than it is to classify them into three broad categories
like tall medium and short. 
---
Just draw the boundary lines, and make
the people file past them, and you can immediately observe the
categories.
---
 Similarly mental states like satisfaction level are
best captured as categorical variables or Likert variables.
---
Thus, if you are social worker and you want to use  statistics to
draw attention to relation between two things, then contingency
tables are the right tool for you. 
---
Say, you think arsenic in water causes some 
problem among children. You do not have any sophisticated kit to
measure the exact level of the chemical in the water.
---
 Nor do you have enough medical facility. But still with some crude aparatus
you can broadly classify the water soursces as free, low,
high. and malnutrition level as yes and no. Contingeny tables are
a great tool in the arsenal of the statistical missionary.
</SESS>
<JINGLE t="0.1">Association versus causation</JINGLE>
<SESS t="1.60" done="n" id="s3">
This is one point where laymen often misinterpret statistics. It
is not confined to just contingency tables. It occurs whenever we
are talking about relation between two variables based on
data.
---
 Suppose we take some smokers and nonsmokers and find that
there are more lung cancer cases among smokers than among
non-smokers. Can we conclude from this that smoking causes lung
cancer or increases the chance of lung cancer?
---
 Well, no.  In the
data set "smoking" is one variable, taking values yes and
no. "Lung cancer" another, which also takes the values "yes" or
"no".
---
 What you have observed is that there is an association
between then. But why say that this causes that? The data set up
is symmetric. I might as well
say lung cancer causes smoking!
---
 Of course, that conclusion is
ridiculous. But that is becaue we have other information
regarding these variables beyond the present data set.
---
 As yet another example, you may consider the association between
eduction level and income level. Any positive association between
these two variables may be because wealthier people can afford
higher quality education for their kids,...
---
 or it could be that better educated people are more likely to get higher
salaries. Indeed, both of these are true in reality. A mere
contingency table analysis would only infer association. That's all.
</SESS>
</SCRIPT>

<SCRIPT id="m3/l5/v3" t="6:20" done="k">
<SESS t="0.50" done="a" kf="30" id="s1">
Sometimes I find people are worried about the terms <B>class limit
and class boundary</B>. It is not an important distinction, and most
standard books do not discuss the term class limit at all.
---
 But some school textbooks do, and create a confusion in the mind of
the inquisitive learner. So let's quickly... discuss it.
</SESS>
<BC t="5" done="r" id="bc_limbd_353">
 Suppose you
you have a continuous variable. When you create a frequency
distribution you first need to make classes like from a to b,
then from b to c, and so on. Here a,b,c etc are called the class
boundaries. Now suppose you get an observation
exactly eequal to b. Where do you put it, in this class or in the
next? Well, both are equally justified. One needs some convention
here to avoid confusion, like this boundary point should be
considered as inside the class to its left, and outside the class
to its right. The arbitrariness of such a convention is no great
concern, as for a continuous variable the probability of its
taking any pecific value is 0. But still this is a slight source
of annoyance in practice, just in case a boundary value happens
to occur in the sample. It is to avoid this that the concept of
class limits were created. When values of a continuous variable
are reported in a data set, all the values are rounded to some
common level, say one decimal place, or two decimal places, like
that. We can avoid the problem of a data value being equal to a
class boundary, by taking the class boundary values at a higher
level of precision. Like if the values are reported up to one
decimal place, then we can have values like 1.0, 1.1, 1.2, 1.3, etc,
but not 1.15. So we take class boundaries like 0.95, 1.95, 
etc. When we do this, then the values in the class from 0.95 to
1.95 are like 0.0, 0.1, ..., 0.9. So the minimum possible value
in the class is 0.0 and the maximum value is 0.9. These are
called the class limits. Notice that the class boundaries are
shared by the adjacent classes, the class limits are not.

This distinction, however, is quite blurred in a
computer. Because a computer uses binary numbers, and uses binary
rounding off internally, while we human beings prefer decimal
rounding off. Thus, even though we enter 0.1 in a computer, the
computer rounds it off, as 0.1 cannot be represented exactly as a
binary number inside a computer.
</BC>
</SCRIPT>

<SCRIPT id="m3/l5/v4" t="2:00" done="k">
<SESS t="1.60" done="a" kf="30" id="s1">
Statistics has two major goals, analysing data and presenting
 data. While analysing data is the more important of the two,
 presenting data should not be neglected.
---
 Pivot tables and pivot
 charts are valueable tools for presenting data. Though we
 loosely speak about presenting data through pictures, we rarely present the raw
 data through pictures.
---
 We first summarise the raw data and then
 present the summary through pictures. And that's what pivot
 tables and pivot charts achieve.
---
 There is hardly any
 statistical textbook that teaches you about pivot charts. In
 fact, even the term pivot chart may not occur in them.
---
 Yet  familirity with the pivot tables and charts is very important for
 the practising statistician.
--- 
As it is not possible to learn
 about them from textbooks, you have to learn by playing with the
 software. Explore the different options.
---
 Just a word of caution here:<V>[shown trans]</V> the option "Enable drill to
 details"<V>[fnger]</V>  does not work as expected in
 LibreOffice due to a bug. You get this by clickong on "options" here.
---
 At the
very end of last week's module<V>[clear]</V> we talked about dashboards, a
collection of dynamically updated charts linked with data. Pivot
charts are very useful for creating such dashboards.
---
 For this you'll find it useful to create three different sheets, one sheet
for the data, one for the pivot tables and the third for the
pivot charts. 

Microsoft Excel, by the way, has a much better support for dashboards.
</SESS>
</SCRIPT>

<FLD>

<EXRLIST id="m3_add.yml">
- typeName: checkbox
  prompt: >
      Which of the following statement(s) is/area true about a
  histogram that shows relative frequency density along the
  vertical axis? 
      
  shuffleOptions: true
  options:
  - answer: The area of a bar gives the **relative frequency** of the
  corresponding class.
    isCorrect: true
    feedback: >
      Yes, because the area is width times relative frequency density.
  - answer: Each bar must touch its neighbour(s).
    isCorrect: true 
    feedback: >
      Yes, because relative frequency density is only for
    continuous variables.
  - answer: The bars must be equal widths.
    feedback: >
      
  - answer: The area of a bar gives the **frequency** of the
  corresponding class.
    feedback: >
      No, because the area is width times **relative** frequency density.

- typeName: multipleChoice
  prompt: >
       Create a contingency table based on religion and household type
  from this data set. [[./exraux/m3_cont.csv]]. Now choose the most
  appropriate options(s):

  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: There are exactly 11 cells with 0 frequencies.
    isCorrect: true
    feedback: >
      Yes, all the cells for religion 3 (except where household
  type is 29). Also two cells for religion 2.
  - answer:  There are exactly 9 cells with 0 frequencies.
    feedback: >
      No, possibly you have overlooked the empty cells for
  religion 2.
  - answer: It is a 3x10 contingency table.
    isCorrect: true
    feedback: >
      Yes, 3 rows and 10 columns, not counting the totals.
  - answer: It is a 4x11 contingency table.
    feedback: >
      No. Possibly you included the row and column for the
  totals.  

- typeName: multipleChoice
  prompt: |-
      Here is an empty  contingency table with only some of the
marginals.
    |          | Carpentar | Tailor | Barber | Total |
    |----------+-----------+--------+--------+-------|
    | Tax paid |           |        |        |   234 |
    | Tax due  |           |        |        |   143 |
    |----------+-----------+--------+--------+-------|
    | Total    | 145       |        | 91     |       |

Assume that the two categorical variables profession and tax
payment status are independent. Then which of the following
statements is/are true?

  defaultFeedback: >
      To find the expected frequency of a cell multiply the row
      and column totals and divide by the grand total.
  shuffleOptions: true
  options:
  - answer: The expected number of carpentars who has paid their
      taxes is 90. 
    isCorrect: true
      
  - answer: The expected frequency in the cell (Tax due, Barber)
    is 34.5 (rounded to first decimal place).
    isCorrect: true
  
  - answer: The expected frequency for a cell may exceed the
    minimum of the 
    corresponding row total and column total.
      
  - answer: The expected frequency for a cell must not exceed the
    observed freqncy for the cell. 
      

- typeName: multipleChoice
  prompt: >
      Make a bar chart as a pivot chart for Religion based on the
  data set [m3_cont.csv]. Then choose the correct option(s).

  shuffleOptions: true
  options:
  - answer: The tallest bar is more than 6 times the next tallest one.
    isCorrect: true
    feedback: >
      Yes, the tallest bar is for religion 1, the second tallest
  for religion 2.
  - answer: One of the bars has height 0.
    feedback: >
      No, the bar for religion 3 is indeed very low, but it does
  have a positive height.
  - answer: There are two bars of (roughly) equal heights.
    feedback: >
      Not at all. The heights arewidely different.
  - answer: The bar for religion 2 is slightly taller than 75.
    feedback: >
      No, it barely exceeds 50. 

- typeName: multipleChoice
  prompt: |-
       Here is a frequency distribution based on some raw data that is
    not available.
    |  Class | Frequency |
    |--------+-----------|
    | 10--20 |        23 |
    | 20--30 |        45 |
    | 30--40 |        50 |
    | 40--50 |        43 |
    | 50--60 |        30 |
    | 60--70 |        15 |
    | 70--80 |         5 |
   Let M be the centralmost value in the raw data. Then which of
    the followin option(s) is/are true? 

  defaultFeedback: >
   There are 211 observations in all. So the centralmost value is
   the 106-th one. We need to cumulatively add the frequencies
   until we cross the 106 for the first time.      
  shuffleOptions: true
  options:
  - answer: M lies between 20 and 30
      
  - answer: M lies between 30 and 40
    isCorrect: true
      
  - answer: M lies between 40 and 50
      
  - answer: M lies in the class with the maximum frequency.
    isCorrect: true
      
</EXRLIST>
<R>
rw = c(234,143)
gt = sum(rw)
cl = c(145,gt-145-91,91)
outer(rw,cl)/gt
</R>
<R>
cw('exraux')
set.seed(333341)
x = trim(100+10*rnorm(1000))
csv(data.frame(x),'m3_hist.csv')

23+45+50+43+30+15+5
</R>

</FLD>

</LESSON>

<HEAD1>Module 4: Central tendency</HEAD1>
<SCRIPT id="m4/intro" done="k" t="2:36">
<SESS t="2.30" done="a" kf="30,60" id="s1">
We are starting our fourth week. In the first two weeks we have
learned about data and their graphical representations. The idea
was like this: we wanted information, so we collected data, lots
of values of lots of variables for lots of cases. 
---
We cannot digest all those data by just looking at them. But our eye
can take in a lot of pictorial details easily. So we devised a
way to convert numerical patterns to visual patterns.
---
 And that was the graphical representations that we learned in the
second week.
---
 Pictures are great when they can be used, but it is
difficult to convert all types of patterns to pictures. So we
explored a different approach in the  third week:...
---
tabulation. Here we summarised a possibly huge data matrix
into much more managable pivot tables. 
---
But howsoever we summarise data, by pictures or tables, the end
product still needs to be intepreted by inspection. It would be
great if...
---
 we can come up with ways to summarise data using some
mathematical formula, that would capture various intuitive
aspects of the data. 
---
 Then the process may be completely automated. This is an ambitious demand,
and nobody till date can claim to have developed mathematical
formulae for capturing all intuitive aspects of a data set. 
---
But still certain aspects can be captured mathematically
using what are called <B>summary statistic</B>s. More precisely, we shall
compute certain numbers based on the data, that will tell us
important intuitive features of the data.
---
 Any number computed based
on data is called a statistic<V>[finger]</V> (no 's' at end). It is a
singular noun.
---
 Since we are using a statistic to capture some
aspect of data, it is a form of summarisation. Hence the term
summary statistic. They are also called <B>descriptive
statistic</B>s.
---
These are classified according to the intuitive concept
they seek to capture. This week, we shall learn about
the intuitive concept: centre of the data. 
</SESS>
</SCRIPT>

<HEAD2>Module 4: Lesson 1</HEAD2>

<LESSON>
<SCRIPT id="m4/l1/v1" done="k" t="5:08">
<SESS t="2.70" done="r" kf="10,20,30,40,50" id="s1">
Let me ask you a simple question: <B>what is the typical life span
of Indians?</B> You may not know the exact answer,  but you'll guess
that it is around 70, and you'll be right.
---
 Now let me ask you another question: <B>what
is the typical length of an adult male dolphin?</B> Possibly you
have no idea,  but anyway Google will give you an answer.
---
 Now comes the
last question: <B>what is the typical weight of a mammal?</B> I am sure
you do not know! I am sure you've never heard this question
before. Will you turn to Google for an answer? No,  this question
is absurd!
---
 There are so many different types of mammals ranging
from tiny rodents to enormous blue whales. What do you mean by
"typical" here? 
---
All these questions mention a
set of numbers (lifespans of Indians in the first case, lengths of
dolphins in the second, and body weights of mammals in the
third).
---
We need  a <B>"typical" value</B> that represents
that set. In the first two cases such "typical" values make sense. But
in the last it doesn't.
--- 
This is a common situation in real
life.<V>[clear]</V> Sometimes we feel that a bunch of numbers are
so close enough
together, that their essence may be captured by a single "typical"
value.
---
 In some cases, no single  value can represent the entire set
 meaningfully. It is hard to draw a line where a typical value starts becoming
meaningless, but intuitively we can all feel this.
---
 If a bunch of numbers may be reasonably represented by a single typical value, we
say that those numbers have a <B>central tendency</B>. Here
the word "tendency" captures the somewhat intuitive
and subjective flavour of the situation.
---
 If we have a variable whose
values have central tendency, i.e., a single typical 
value makes sense, then we are naturally interested in finding
one.
---
 Any such way is called a measure of central tendency. And our
first lesson is devoted to just this. We shall start with the
most popular such measure.
</SESS>
<JINGLE t="0.1">Arithmetic mean</JINGLE>
<SESS t="2.20" done="r" kf="10,20,30,40,50" id="s2">
 Commonly people
loosely refer to a "<B>typical value</B>" as "the <B>average</B>" as in "What is the average
cost of a 2 bedroom flat?"
---
  The term "average" also appears in a
precise sense in school text books: the average of a bunch of numbers
<M>x_1, ..., x_n</M> is defined as their sum divided by the number of
numbers. i.e., <M>[[\sum_{i=1}^n x_i][n]].</M>
<P/>
We use x-bar to denote average of xi's.
<P/>
Now there is an important difference between these two usages of the
term "average". In the first sense it conveys the somewhat intuitive
notion of a "typical value".
In the second sense it is a precise mathametical formula. To
avoid any possible confusion between the two concepts statistics uses two
different terms to convey these two meanings:
  * When we want to mean "typical value" we say "a
    measure of central tendency".
  * When we want to refer to that math formula, we say <B>arithmetic mean</B>
    or just simply the mean. 
<P/>
Now the fact that common man uses the same term "average" for both
purposes has its origin in the fact that mean is indeed the
most popular measure of central tendency. But be careful
here. Mean is just a formula, it is always defined for any
bunch of numbers, whether or not they show central tendency. Thus, if
I ask "What is the average body weight of mammals?" then you can in
principle just
list the body weights of all the mammals and find their 
mean. While that will definitely produce a number, that number will
not be a meaningful answer to the original question. In fact, the
question itself is absurd, because how can you measure central tendency,
where there is no central tendency?
</SESS>
</SCRIPT>
<FLD>Central tendency
<EXRLIST id="m4l1_a.yml">

- typeName: multipleChoice
  prompt: >
    Two sets of  numbers are shown using two diffeent colours
    along a number line: 
         [[./exraux/numline.png]]
    Which set do you think has/have central tendency?
  shuffleOptions: true
  options:
  - answer: the red set , but not the blue.
    isCorrect: true
    feedback: >
      The red points are more or less tighlty clustered
      together, while the blue points seems to come in *two*
      clusters. Clubbing the two clusters together may not be a good idea.
  - answer: the blue set B, but not the red.
    feedback: >
      The blue points come in *two* clusters. Like weights of
      blue whales and weights of dogs. Is it s good idea to club them together?
  - answer: both red and blue.
    feedback: >
      The blue points come in *two* clusters. Like weights of
      blue whales and weights of dogs. Is it s good idea to club them together?
      
  - answer: neither red nor blue.
    feedback: >
      The red points are nicely clustered together. They appear
      to represent basically the same number except for some minor
      variations.        

</EXRLIST>
</FLD>

<FLD> Mean math
<EXRLIST id="m4l1_b.yml">


- typeName: multipleChoice
  prompt: > 
    If the mean of 10 numbers is 23.5,  and one of them is
    exactly equal to 23.5,  then what is the mean of the remaining
    nine numbers?
  shuffleOptions: true
  options:
  - answer: Must also be 23.5.
    isCorrect: true
    feedback: >
      Yes. Had the remaining nine number had a different mean,
  then the overall mean would have been pulled away from 23.5
  towards that point.
  - answer: Should be less than 23.5.
    feedback: >
      But then don't you think that the overall mean would be pulled down from 23.5?
  - answer: Should be more than 23.5.
    feedback: >
      But then don't you think that the overall mean would be pulled up from 23.5?
  - answer: Cannot say anything in general.
    feedback: >
      Well, let's say the mean of those nine numbers is x. Then
      their total must be 9x. So the total of all the numbers is
      9x+23.5. Then what is their mean?
  

- typeName: multipleChoice
    prompt: > 
      If the mean of of 10 numbers is 10,  and none of them equals
      10,  then is it true that exactly five must be above 10,  and five
      below 10?
  shuffleOptions: true
  options: 
  - answer: No
    isCorrect: true
    feedback: >
      Remember the balancing scale example we discussed in the
      video? It is possible to have a situation like this[fig].
      Here that one *far away* point can balance all the other points.
  - answer: Yes.
    feedback: >
      Remember the balancing scale example we discussed in the
      video? A *far away* point can turn the balance more
      powerfully than a point closer to the pivot.

</EXRLIST>
</FLD>


<STKY>
<HEAD3>Module 4, Lesson 1,  Video 2: Lab</HEAD3></STKY>
<SCRIPT id="m4/l1/v2" done="k" t="6:42">
<SESS t="0.50" done="r" id="s1">
Computing mean is conceptually easy. We learn do this in school. But
there we worked with only a few numbers, may be at most 10 of
them.
---
 But
in statistics when we compute the mean of a variable, we need to work with
as many values as there are cases, which may easily range into
thousands. So use of softwares is imperative. Let's learn how to do
this using LibreOffice.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="6" done="r" id="s">
[Screencast: Different techniques-- =average, right click summary bar, --
                                -- =averageif, rubbish values skipped,
                                descriptive statistics]
land.csv
</SC>
</SCRIPT>

<FLD>Mean compute lab
<EXRLIST id="m4l1_c.yml">

- typeName: numeric
  prompt: |-
    Compute mean of these numbers using LibreOffice.
    23.4, 32.1, 56.2, 45.0, 34.4
  defaultFeedback: >
    Well, the minimum of these numbers is 23.4 and the maximum is
    56.2. Isn't it odd that you think the mean is outside this range?
  shuffleOptions: true
  answers:
  - range: [38.2,38.22]
    isCorrect: true
    feedback: >
      That's right!
  - range: [23.4, 38.2)
    feedback: >
      No, please check the computation. May be you should watch
      the video once again for the formula?
  - range: (38.22,56.2]
    feedback: >
      No, please check the computation. May be you should watch
      the video once again for the formula?      
      

- typeName: multipleChoice
  prompt: > 
    This LibreOffice spread sheet [[./exraux/multi.xlsx]] has numbers in 3
    columns. What is their  *overall* mean?
  defaultFeedback: >
    The simplest way to find out is to select all the columns and
    then look up the status bar.

  answers:
  - value: 15
    isCorrect: true
    feedback: >

</EXRLIST>
</FLD>


<SCRIPT id="m4/l1/v3" done="k" t="7:15">
<SESS t="1.30" done="r" kf="10,20,40,50" id="s1">
Mean is a measure of central tendency. But central tendency is a
subjective, intuitive concept, while mean has a precise mathematical
definition.
---
 It is quite difficult (if not impossible) to come up with a
mathematical definition that fully captures human intuition. Mean is
no exception.
---
 Before you use mean to measure central tendency, it is
important to know what aspects of the intuition are captured by mean,
and what are not. 
---
Suppose a typical height of  adult females in a certain community is
<B>5.5 feet</B>. What should be a typical height in inches? Intuition tells
us to just convert 5.5 feet to inches to get <B>66 inches</B>. This is
intuitive.
---
 Is this really true for the mathematical formula for mean? If the mean of some heights
expressed in feet is 5.5, then will the mean of the same heights
expressed in inches be 66?
---
 Well, yes. As may be easily seen from the
formula.<V>scale.png</V> The common multiplier just comes out
of the sum. and we get this.
---
 Indeed, we
can have this formula which you can prove similarly.

<P/>
<V>Theorem: am(a*x_i+b) = a*am(x_i)+b.</V>
<P/>
---
Here the mathematics goes hand in hand with intuition. Now let's see
where things go wrong.
</SESS>
<JINGLE t="0.1">Problem</JINGLE>
<SESS t="1.20" done="r" kf="50,60,70" id="s2">
Consider these squares.<V>[shown]</V> What is a typical side length of these
squares? What is a typical area of these squares?
---
 Intuition says that
if L is an answer to the first question, then L^2 should be an answer
to the second. 

Let's see if the arithmetic mean formula conforms to this.
---
Mean of the lengths is this<V>[shown]</V>, but mean of the areas is this<V>[shown]</V>, which is not 
square of that!
---
Indeed, this is not just for squaring. If you take any transformation
of the values other than the simple <M>ax+b</M> type, then the mean will not
transform in the same way!
---(*)
It is hard to live with this fact. But it is a fact nonetheless. If
you feel unhappy with this, don't worry. The  measure of
central tendency that we shall discuss in the next video is free of
this problem to a great extent!
</SESS>
<BC t="4" done="r" id="bc_meangraph_413">
Explain with curved graph why mean(f)\neq f(mean) using two points.
</BC>
</SCRIPT>

<FLD>Mean trans
<EXRLIST id="m4l1_d.yml">


- typeName: multipleChoice
  prompt: >
    The mean height of 10 students is 164.6 cm. If the heights
    were measured in inches then the mean would have been:
  defaultFeedback: Use the theorem from the video.
  shuffleOptions: true
  options:
  - answer: 164.6 times 2.54 inches
    isCorrect: true
    feedback: >
      
  - answer: 164.6 divided by 2.54 inches
    feedback: >
      
  - answer: 164.6 times 2.54 divided by 10 inches
    feedback: >
      
  - answer: Cannot be computed based on the information given.
    feedback: >
      

- typeName: multipleChoice
  prompt: >
    The mean side length of 10 square plots is 164.6 cm. Then 
    the mean area is:
  defaultFeedback: >
    Mean bhaves nicely only when the values are transformed by a
    formula like ax+b. Here the transformation is squaring, which
    is not of this form.
  shuffleOptions: true
  options:
  - answer: cannot answer based on the information given.
    isCorrect: true
    feedback: >
      
  - answer: \sqrt{164.6} cm^2
    feedback: >
      
  - answer: 164.6^2 cm^2.
    feedback: >
      
  - answer: 
    feedback: >
      
</EXRLIST>
</FLD>




<SCRIPT id="m4/l1/v4" done="k" t="6:23">
<SESS t="2.50" done="r" kf="10,20,40,60,70,80,90,100,140" id="s1">
So far we have been talking about computing  mean for <B>raw data</B>,
where all the observed values of a variable are available. Sometimes
we have to work with a <B>frequency distribution</B> table.
---
 This is particularly the case when using secondary data, which we have to
retrieve from printed reports. Few printed reports contain the raw
data, which are often pretty huge. Reports contain only summary
tables, like frequency distribution tables.
---
 So it's important to know
how to compute arithmetic mean from frequency distribution tables.

Let's start with am example. Suppose that we have these
values <V>[number line shown]</V>, with
artihmetic mean here <V>[mean shown with finger]</V>
---
 Now  suppose we make a frequency distribution
like this:<V>[frequencies shown as f_i]</V> The first thing that you should understand that we have
have lost some information when we passed from the raw table to this
distribution.
--
 We could construct the frequency distribution from the raw
data, but we cannot construct the raw table back from the frequency
distribution.
---
 For example, we know that there are <M>f_1</M> values in this
class, but do not know where in the interval those <M>f_1</M> numbers lie. So
precisely speaking we cannot compute the arithmetic mean of the
original values using only the frequency distribution.
---
 However, we can do an approximation. For each class we assume that the points
within are uniformly distributed throughout the class. So the
average value in a class is its mid point, 
the class mark<V>[shown]</V>.
---
 Let's call them <M>m_i</M>'s.  Then roughly the total of all the
values in the <M>i</M>-th class should be <B><M>f_im_i.</M></B>
Hence the total sum is roughly <B><M>\sum f_im_i.</M></B>
---
Also the total number of values is <B><M>\sum f_i.</M></B> 
 So the mean is<V>[anim]</V>
<B><D>
[[\sum f_i m_i][\sum f_i]].
</D></B>
---
Unfortunately LibreOffice does not provide any shortcut to this formula.
 Let's
learn the longhand way.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="4" done="r" id="s">
[Screencast: Mean for grouped data]
</SC>
</SCRIPT>
<FLD>
<EXRLIST id="m4l1_e.yml">

- typeName: textReflect
  prompt: |-
     Find mean from this frequency distribution:
      | Value | Frequency |
      |-------+-----------|
      |     1 |         3 |
      |     2 |         5 |
      |     3 |         2 |
      |     4 |         9 |
      |     5 |         3 |
  defaultFeedback: >
    Approximately 3.18. Here sum of the frequecies is 22, and sum
    of all the values is 70.

- typeName: textReflect
  prompt: |-
     Find mean from this frequency distribution:
      | Value    | Frequency |
      |----------+-----------|
      | 0 --  10 |         4 |
      | 10 -- 20 |        10 |
      | 20 -- 30 |        12 |
      | 30 -- 40 |         9 |
      | 40 -- 50 |         5 |
  defaultFeedback: >
    Approximately 25.25. Here sum of the frequecies is 40, and sum
    of all the values is 1010.
</EXRLIST>
</FLD>
<R>
x = 1:5
frq = c(3,5,2,9,3)
sum(x*frq)/sum(frq)

x = c(5,15,25,35,45)
frq = c(4,10,12,9,5)
sum(x*frq)/sum(frq)
</R>
</LESSON>
<HEAD2>Module 4: Lesson 2</HEAD2>

<LESSON>
<SCRIPT id="m4/l2/v1" done="k" t="4:42">
<SESS t="1.10" done="r" kf="10,40,90" id="s1">
We have learned about one measure of central tendency already in the
last lesson, the mean. We have also seen one undesirable
property of that, it does not transform intuitively: e.g., square of
mean need not be mean of squares.
---
 We are going to propose another
measure that is somewhat free of this problem, and has also some other
desirable properties.
---
It is called the <B>median</B>. The median of a variable in a
data set is defined as the central most
value of that variable. 
---
  Here is a quick example. Consider these numbers.<V>[4.5 1.3  7.1
in a column]</V>, imagine them along a number line <V>[anim]</V>,
pick the middlemost, i.e., 4.5.
---
Simple! But let's see two possible troubles with this simple
idea. First, the case where the same value occurs multiple
times.
</SESS>
<JINGLE t="0.1">Repeated value</JINGLE>
<SESS t="0.70" done="r" kf="70,100" id="s2">
 Suppose that  we have these 7 numbers.
<V>[5 3 6 1 3 7 8 shown in column]</V>. Sort them. <V>[anim]</V>. Two
of these are the same, but still we count them as two numbers).
---
 The
middlemost means the fourth number, fourth when you show them ordered
like this, i.e., 3.
---
In all these examples we had an odd number of values, so we could get a middlemost
value. What if we had an even number of values? That's what we
shall see next.
</SESS>
<JINGLE t="0.1">Even number of values</JINGLE>
<SESS t="1.00" done="r" kf="60,90" id="s3">
Suppose that we have these 6 values. <V>[1 4 2 6 7 5 Shown as
column].</V> If we sort them 
<V>[shown]</V> like this, then we see that there are two middlemost
values. 
---
Well, median needs to be a single number. There is a little
controversy about how to choose a single value. Some people
maintain that median is not uniquely defined here, any value in this
interval should be called a median. 
---
But most people agree to call the
point exactly midway between these as the mdeian. All softwares follow
this definition.
---
Computing median is bit more work that computing mean, because we have
to first sort the values. Sorting is one thing that computers do quite
well. So let's learn how to compute median using LibreOffice.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="1.5" done="r">
[Screencast: compute median. Mention rubbish avoidance. Status bar
click. Descriptive statistics menu.]
</SC>
</SCRIPT>

<FLD>Median comp hand
<EXRLIST id="m4l2_a.yml">

- typeName: numeric
  prompt: |-
    Compute median of these numbers by hand.
    34.3, 23.5, 34.6, 120.4, 30.4
  shuffleOptions: true
  defaultFeedback: >
    You need to sort the values first. Then pick the central value.
  answers:
  - value: 30.4
    isCorrect: true
    feedback: >
      Yes, that is the central value.

- typeName: numeric
  prompt: >
      Find median of the numbers in [[./exraux/medcomp.xlsx]] using LibreOffice
  defaultFeedback: >
      Use the median function.
  shuffleOptions: true
  options:
  - value: 13
    isCorrect: true
    feedback: >
      That's correct. 

- typeName: textReflect
  prompt: >
     Sort the value column in [[./exraux/sortme.xlsx]] in
     ascending order.
  defaultFeedback: >
     It should look like [[./exraux/sorted1.xlsx]] 

- typeName: textReflect
  prompt: >
     Sort value column  according to the key column in [[./exraux/sortme.xlsx]] in
     descending order.
  defaultFeedback: >
     It should look like [[./exraux/sorted2.xlsx]] 

</EXRLIST>
</FLD>


<SCRIPT id="m4/l2/v2" done="k" t="3:20">
<SESS t="3.00" done="r" kf="10,70,130,140,150,180" id="s1">
We have already seen how arithmetic mean behaves nicely when we change
units or add a constant. Well, the same good quality is shared by median
as well. Let's see how. 
---
Suppose that we have measured the lengths of a number of objects in centimetres
and show the values along a number line,<V>[show]</V>.
The median is either the central value in case there is an odd number of
points, or a value  between
the two centralmost values in case of an even number.
---
Now when you change the unit, say to inches, i.e., divide all the values
by 2.54, All the points squeeze in by the same factor <V>[anim]</V> The order remains the
same,  and so does the centralmost value. Thus, the median also
gets divided by 2.54. The same thing happens if you multiply or divide by
any other constant. 
---
Similarly if you shift all
the values by the same amount<V>[anim]</V>, the median changes
accordingly. So we have this theorem.<V>[trans.png]</V>

<B>Theorem: median(a*x_i+b) = a*median(x_i)+b</B>
---
Now let's revisit that example of squares. We had 4 squares <V>[show]</V>, and wanted
to know the typical side length, and also the typical area. We
hoped that the typical area would be the square of the typical length. This
hope was belied by arithmetic mean. But let's see what happens for 
median.
---
 Let us order the squares by lengths of sides.<V>[anim]</V> The middle most
side length is this. Now to find median of area, we have to sort the
squares by the areas. Since a square with longer side must also have
larger area, so the ordering remains the same  here as well.
---
 And
since median depends only on the ordering, we can actually talk
about a median square as something between these two central
squares. The side of the median square is the median side, and
the area of the median square is the median area. 
---
Since, both the median side and median area refer to the same
square, the median area is indeed the
square of the median side. In fact, the same thing is true
about any transformation that preserves the order.
---
A similar argument also works if the order is completely
reversed, because the centre of the data would still remain in
the center. This end would go to that end, and that end would
come to this end, but the centre stays at the centre, and so does
the median.
</SESS>
</SCRIPT>

<FLD>Median trans
<EXRLIST id="m4l2_b.yml">
- typeName: multipleChoice
  prompt: >
    The median height of 10 students is 164.6 cm. If the heights
    were measured in inches then the median would have been:
  shuffleOptions: true
  options:
  - answer: 164.6 times 2.54 inches
    isCorrect: true
    feedback: >
      
  - answer: 164.6 divided by 2.54 inches
    feedback: >
      
  - answer: 164.6 times 2.54 divided by 10 inches
    feedback: >
      
  - answer: Cannot be computed based on the information given.
    feedback: >
      
- typeName: multipleChoice
  prompt: >
    The median side length of 10 square plots is 164.6 cm. Then 
    the median area is:
  defaultFeedback: >
    Median transforms like the data for any order
    preserving transformation.
  shuffleOptions: true
  options:
  - answer: 164.6^2 cm^2.
    isCorrect: true
    feedback: >
      
  - answer: \sqrt{164.6} cm^2
    feedback: >
      
  - answer: 
    feedback: >
      
  - answer: cannot answer based on the information given.
    feedback: >
      


</EXRLIST>
</FLD>


<SCRIPT id="m4/l2/v3" done="k" t="3:24+??">
<SESS t="2:42" done="r" kf="10,30,40,50,60,70,80" id="s1">
Just as for mean, we may need to compute median from a frequency
distribution table. The need for this arises mainly when you are using
secondary data, where summary tables are more readily available than
raw data. 
---
As we have already mentioned earlier, grouped data
contain less information than  raw data. So we may not be able to
get back the median of the raw data using only the grouped data. But
still we can try to approximate it following the same line as we did
for mean.
---
 There we assumed all values inside a class to be
uniformly spread out throughout the class. We are going to make
the same assumption here as well.
---
Let's see this with an example. Here is a small frequency distribution.

<V><PRE>
1--3 5
3--5 4
5--8 6
</PRE>
</V>
---
If we try to show these points along the number line <V>[show]</V>we know that
 there are 5 points here, 4 here and 6 here, but we do not know the
 exact locations of the individual dots. We have just put these
 points by imagination, but there is no way to be sure.
---
 Now there are 5+4+6=15
 points in all, that's for sure. So the 8-th point should be the central
 most. This point, but of course, we have drawn this here by just
 imagination. We do not know the exact location.
---
 All that we know for sure is that it must be in this
 class.   But
 where exactly in the this class does the median lie? We can
 try to make a reasonable guess like this.
---
Suppose we start walking from this end towards that end. We
 arrive here after crossing <M>5</M> of the <M>15</M> points,
 i.e, <M>[[5][15]]=[[13]]</M> of
 the points.
---
 As we continue our journey, we pass the halfway point somewhere
here, and when we come here we have crossed <M>5+4=9</M> points
 out of <M>15,</M> i.e., crossed  <M>[[5+4][15]]=[[35]]</M>-th
 part of the data.
---
  The position of the halfway point i.e., the
 median, may now be guessed by <B>linear interpolation</B>. That
 is think of the <M>[[13]]</M> and <M>[[35]]</M> as on a number
 line of their own <V>[show]</V>.
---
 On that line <M>[[12]]</M> is
 here. <V>[show]</V> The corresponding point on the  original
number line 
should be somewhere
 here.<V>[Show]</V>
---
 Of course we have no way to be sure, because
 we do not know how the points are distributed inside this
 class. This is just a reasonable guess. 
---
Unfortunately, LibreOffice (or any other software for that matter, as
far as I know) does not implements this. All softwares allow you to
 computer median only from raw data.
</SESS>
</SCRIPT>


<FLD> Median from grouped data
<EXRLIST id="m4l2_c.yml">
- typeName: textReflect
  prompt: |-
     Computed median from this grouped data set:
       | Value | Frequency |
       |-------+-----------|
       |     1 |         3 |
       |     2 |        10 |
       |     3 |         4 |
       |     4 |         3 |
       |     5 |         1 |
  defaultFeedback: >
     There are 21 values in all (counting repetitions). So the
     median is the 11-th number. This is 2.

- typeName: textReflect
  prompt: |-
     Which class contains the median in the following grouped data set?
       |  Value | Frequency |
       |--------+-----------|
       | 10--20 |         4 |
       | 20--30 |        10 |
       | 30--40 |        23 |
       | 40--50 |        33 |
       | 50--60 |         1 |
  defaultFeedback: >
     There are 71 values in all (counting repetitions). So the
     median is the 36-th number. Add the frequencies cumulatively
     to get 4, 4+10=14, 14+23=37, which exceeds 36. So the median
     must lie in the class 30--40.

</EXRLIST>
</FLD>

<SCRIPT id="m4/l2/v4" done="k" t="5:30">
<SESS t="1.50" done="r" kf="40,50,60" id="s1">
This course uses peer review: each student's answerscript is graded by
three other randomly selected students. So each student basically has three
candidate grades, hopefully more or less similar.  And we have to
choose a typical value.
---
 Aha, isn't that a central tendency problem?
Yes, it is. And this is how we shall proceed. First we need to make sure
that the three grades are indeed similar, i.e., they do have a central
tendency. If not, then some intervention is called for.
---
 Otherwise, we need to
choose a measure of central tendency. Should I choose mean?
Let's see what may go wrong if I do.
---
Suppose the grades are shown in a number line.<V>[Shown]</V> Two are close together,
while one is much lower. If it is very low, then of course, we shall
flag the situation as a "no central tendency" scenario and
intervene.
---
 But suppose it
is quite low, but yet not too low. If we take the  mean, that
will be somewhere here.<V>[show]</V> You see how it gets
influenced by that far off
value. 
---
Such far off values, as you already know are called
<B>outlier</B>s. Mean has this problem: it gets affected too much by outliers. 

So we do not use mean here. We use median, which is the central most
value, and not affected by changes in the extreme values.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="4" done="r" id="sc_medrob_424">
Median is robust, mean is not. Show using data.
</SC>
</SCRIPT>

<FLD>Mean median relation
<EXRLIST id="m4l2_d.yml">


- typeName: textReflect
  prompt: >
    Write down 3 numbers such that their median is less than
    their mean. 
  defaultFeedback: >
    Start with three regularly spaced numbers, e.g., 1,2,3. Then increase the
  largest number. For instance, 1,2,4.

- typeName: numeric
  prompt: >
    The mean of three numbers is equal to their median. If the smallest
    number is 10 and second smallest is 13,  then find the other number.
  defaultFeedback: >
    No, that's not correct. If mean equals median, then the
    numbers must be equispaced.
  shuffleOptions: true
  answers:
  - value: 16
    isCorrect: true
    feedback: >
      Aha, that's right! The numbers are equispaced. Since the
      gap is 13-10=3, so the remaining number must be 13 + 3 = 16.
      

</EXRLIST>
</FLD>


<SCRIPT id="m4/l2/v5" done="k" t="6:38">
<SESS t="0.9" done="r" id="s1">
Ramble intro to different properties (for generalisation).
</SESS>
<JINGLE t="0.1">Properties</JINGLE>
<BC t="6" done="r" id="bc_medprop_425">
Properties: Data depth, simplicial.
</BC>
</SCRIPT>
</LESSON>
<HEAD2>Module 4: Lesson 3</HEAD2>

<LESSON>
<SCRIPT id="m4/l3/v1" done="k" t="2:59">
<SESS t="2.70" done="r" kf="30,40,50,60,70,80,90,100" id="s1">
In the last two lessons we have learned about two most popular
measures of central tendency: mean and median. These were
applicable primarily for continuous variables, and also for
counting variables and certain ordinal variables.
---
 Next we shall discuss a
measure of central tendency that is primarily meant for categorical
variables and counting variables, though sometimes also used for
continuous variables.
---
Let's start with an example. Suppose that there are dresses of three
different colours,<V>[dresses]</V> and 100 different people, among whom 
40 love red<V>[show]</V>,  35 love blue<V>[show]</V>, and the remaining 25 love purple<V>[show]</V>.
---
Now due to some constraint you have to order
dresses of the same colour  for all the 100 people. Which colour would
you order? 
---
If you order red, then these 40 will be happy, but the remaining
60 will be unhappy, because they have to wear a colour they do not love.

If you order blue, instead, then only these 35 will be happy.
---
If purple is ordered, then the number of happy persons will be
even smaller, just 25.

So you should order red for everybody.
---
Notice how the categorical nature of the variable (color of dress)
plays a role here. One either gets one's favourite colour or not. Either
of the other two colours is equally bad. In such a case, the best representative value
is the one which occurs the maximum number of times. This value
is called the <B>mode</B>.
---
 Thus, here red is the mode. This is basically how one makes a selection
by majority vote. Of course, you may run into the problem of
ties. There may be two candidates both attaining the same maximum
frequency. Such a data set is called <B>multimodal</B> as opposed
to <B>unimodal</B>, which means having a unique mode.
---
 In our example we had a unimodal data set. Had the numbers been like<V>[shown]</V> 40,
40, 20, then both red and blue would be modes,
and we have a multimodal data set. In a
multimodal situation mode is not very useful as a measure of
central tendency. Indeed, being multimodal may even imply lack of
central tendency.
</SESS>
</SCRIPT>


<SCRIPT id="m4/l3/v2" done="k" t="2:33">
<SESS t="1.50" done="r" kf="10,20,30,40,50,60" id="s1">
Mode may be considered  as a  way to choose a
representative value by minimising the overall unhappiness.
This idea of minimising the overall unhappiness was actually present even for
mean and median. Only the definition of unhappiness was different
in those cases.
---
 Let's take an example to understand this. Here are some
points along the number line<V>[shown]</V>. Suppose we decide to choose this point as
their representative<V>[shown]</V>. We shall see how unhappy each of the data
points is with this decision. Take this point
say, <M>x_i.</M> <V>[shown]</V>.
---
 Clearly, the further it is from the
representative, the unhappier it is. He is like: 
"Oh that guy is so far away from me. He cannot represent me
well!" 
So here is one way to measure the
unhappiness:
---
 the  distance between the point and the
representative, or the absolute value <B><M>|x_i-a|.</M></B> So the total
unhappiness is  <B><M>\sum|x_i-a|.</M></B>
---
 This of course depends
on <M>a.</M> If you choose <M>a</M> to
minimise this, then one can show that <M>a</M> must be median of
the points.<V>median minimises this.</V>
</SESS>
<JINGLE t="0.1">Another form of unhappiness</JINGLE>
<SESS t="1.10" done="r" kf="10,20,30,40" id="s2">
Another similar, but different way to do measure unhappiness is
by considering the squared distance: <M>(x_i-a)^2</M><V>[show
everything in one go]</V>.
---
 Here <M>a</M> is the representative
and <M>x_i</M> is some value of our variable.  This choice leads to
the total unhappiness <B><M>\sum(x_i-a)^2.</M></B> One may show that
this is minimum, when <M>a</M> is the mean.<V>Mean
minimises this.</V> 
---
Thus, you see, all the measures of central tendency that we have
discussed so far can be considered from a common view point:
choosing a representative causing minimum unhappiness. 
---
In fact, this idea pervades much of
statistics beyond just central tendency. What we called
unhappiness is more technically referred to as
the <B>loss</B>. Many statistical methods are motivated by trying
to minimise some suitable notion of loss.
</SESS>
</SCRIPT>

<FLD>Mode computation by hand
<EXRLIST id="m4l3_a.yml">
- typeName: numeric
  prompt: |-
    Find the mode of these numbers by inspection:
      23, 54, 59, 31, 54, 78, 54, 54, 31
  defaultFeedback: >
    Remember the definition of mode? It is the number that 
    occurs most frequently. 
  shuffleOptions: true
  answers:
  - value: 54
    isCorrect: true
    feedback: >
      Yes, 54 is the number that repeats most often.


- typeName: multipleChoice
  prompt: |- 
    Do these numbers have any unique mode?
    34, 59, 34, 54, 39, 59, 59, 34, 59, 23, 34
  shuffleOptions: true
  options:
  - answer: No.
    isCorrect: true
    feedback: >
      Actually both 34 and 59 qualify to be modes here. 
  - answer: Yes, 34.
    feedback: >
      Well, 34 is *one* mode, but it is not the *unique* mode.
  - answer: Yes, 59.
    feedback: >
      Well, 54 is *one* mode, but it is not the *unique* mode.

</EXRLIST>
</FLD>

<SCRIPT id="m4/l3/v3" done="k" t="1:44">
<SESS t="1.60" done="r" kf="10,20" id="s1">
Mode as we defined it in the last video was the value (or values) with the
highest frequency. This made sense for categorical data or count
data, as there the same value is usually repeated many times. But
in continuous data, the same value is repeated more rarely, if
at all.
---
 However, lots of values may be very close together. For
example, if you report body weights of 100 persons to the nearest 100th of a kg,
you may hardly get any exact repetion, while many weights will
lie tightly together. A typical case may be shown along a number
line. <V>[show]</V>
---
Naturally you'll like to say that the most frequntly occuring
weights are near here. So we should call the center of this
crowd the mode.
---
 To make this idea somewhat precise, we
construct a histogram,<V>[show]</V> and look at the class with the maximum
area. We expect the mode to lie there. If the classes are taken
with sufficiently small width, then we can narrow down on the
mode more and more precisely. 
---
However, this procedure requires a huge amount of data, and while
it works in principle, is not a practicable way for real life
data. So we do not usually try to find mode for a continuous
variable in a data set.
</SESS>
</SCRIPT>


<SCRIPT id="m4/l3/v4" done="k" t="3:04">
<SESS t="0.30" done="r" id="s1">
Finding the mode for a categorical variable or count variable is
quite easy. We just find the frequncy of each possible value, and
choose the value corresponding to the maximum frequency. If this
maximum occurs for multiple values, then each of those values is
a mode.
---
Let's work with toy data of hourly counts of traffic rule
violations over at a fictitious crossing.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="2.8" done="r" id="acc_432">
[Screencast: traffic poisson mode.]
acc.csv
</SC>
</SCRIPT>


<FLD>Mode computation by LibreOffice
<EXRLIST id="m4l3_b.yml">
- typeName: textReflect
  prompt: >
     Compute mode for the data set in [[./exraux/modecomp.xlsx]]
  defaultFeedback: >
     First make a frequency distribution. It should look like 
     [[./exraux/modetab.png]]
     The highest frequency is 24, occurs for the value 12, which
     is the mode.

- typeName: textReflect
  prompt: |-
     Consider this frequency distribution:
      | Value | Frequency |
      |-------+-----------|
      |     1 |         2 |
      |     2 |        10 |
      |     3 |         4 |
      |     4 |         6 |
      |     5 |        12 |
      |     6 |         3 |
     What is the mode? Will you use it as a measure of central
     tendency here?
  defaultFeedback: >
     The mode is 5. But the distribution actually looks bimodal,
     with another peak at 2. So possibly there is no central tendency 
     in the data.
</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 4, Lesson 3,  Video 5: Other measures</HEAD3></STKY>
<SCRIPT id="m4/l3/v5" done="k" t="5:52">
<SESS t="1.90" done="r" kf="10,20,30,40,50,80,90,100,110,120" id="s1">
We have talked about the three major measures of central
tendency: mean, median and mode. Each has its own advantages and
disadvantages. Sometimes we want to retain the advantages of one,
and yet avoid its disadvantages.
---
 This leads to other measures of
central tendency that are obtained by tweaking these basic
measures. We shall see two such. Both are obtained by tweaking
the definition of mean. 
---
The first is called <B>weighted mean</B>. When we compute the
mean by the formula <B><M>[[1n]]\sum x_i,</M></B> we are giving equal
importance to all the <M>x_i</M>'s. Sometimes that is
undesirable.
---
 Here is  a simple example. Suppose that we have many
agricultural plots of different areas and productivity
levels<V>[rectangles]</V>.
Let the productivities be called <M>x_i</M>'s. <V>[shown]</V>
---
We want
to find the average productivity level for all the
plots. Productivity for a plot is measured as yield per unit
area<V>[shown]</V> for a single season.
---
 If we merely add all the productivity
levels of the individual plots and divide by the number of plots,
then we shall arrive at a meaningless figure. Because  a
very small plot with high productiity may not offset the effect
of a huge plot with a low productivty.
---
 So we should take areas
and yield separately into account. <V>[area and yield animate one
below the other from the fraction.]</V>
Let's call the areas <M>w_i</M>'s.
---
 We shall first multiply the productivty  of each plot with its area to get
the yield of that plot<V>[shown]</V> sum these to get the total
yield, and 
divide by the total area<V>[show]</V> to get the overall productivity
level. This formula is called the <B>weighted mean</B>.
---
Let's see this in action.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="4" done="r" id="s">
[Screencast: Above example.]
</SC>
</SCRIPT>


<FLD>
<EXRLIST id="m4l3_c.yml">
- typeName: textReflect
  prompt: >
     Consider the data set [[./exraux/wmean.xlsx]]. Compute 
     weighted mean of Sales 1 using the weights given. 
  defaultFeedback: >
      The answer should be 14.47. Here is the computation:
      [[./exraux/wmeansol1.png]]

- typeName: textReflect
  prompt: >
     Again considee the same data set. Now find the weighted mean
     of Sales 2 using the same weights.  
  defaultFeedback: >
     Computation sheet:
     [[./exraux/wmeansol2.png]]   

</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 4, Lesson 3,  Video 6: Other measures</HEAD3></STKY>
<SCRIPT id="m4/l3/v6" done="k" t="6:11">
<SESS t="1.60" done="r" kf="10,40,60" id="s1">
We saw how weighted mean is sometimes better than usual
mean. Well, the next measure of central tendency that we are
going to discuss is an extreme application of this idea. It just
gives  zero weights to some of the points in order to achieve
robustness. It is called <B>trimmed mean</B>.
---
We have seen that mean is not very robust, because extreme
observtions can easily pull it towards themselves away from the
true centre of the bulk of points. Consider these
values.<V>[number line anim]</V>. This point[finger] at the extreme is
an outlier that might pull the mean away too much.
---
 One way to rectify this is to
first trim away the extreme points and then compute the mean of
the rest. This is the same as attaching zero weights to those
discarded extreme points.
---
 Depending on how far we trim, we have
different versions of trimmed mean, e.g., 10% trimmed mean or 5%
trimmed mean. A 10% trimmed mean will first discard the most
extreme 10% of the points (5% from either end) and then compute
the usual mean of the rest.
---
 Suppose in our example we trim off 2
points from each end. <V>[dashed lines shown]</V> and compute the
mean of the rest. Now the outlier can have no effect.

Let's look at the computation using LibreOffice.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="4" done="r" id="survey_435">
[Screencast: 10%-trimmed mean of  land_owned from hugli survey. survey.csv]
</SC>
</SCRIPT>
</LESSON>

<FLD>Robust
<EXRLIST id="m4l3_d.yml">
- typeName: multipleChoice
  prompt: >
    Which is more robust: mean or median?
  shuffleOptions: true
  options:
  - answer: median
    isCorrect: true
    feedback: >
      Yes, median is not easily purturbed by extreme values.
  - answer: mean
    feedback: >
      No, mean is easily purpurbed even by a single value 
      lying far from the test.  

- typeName: multipleChoiceCompute 10% trimmed mean from these numbers.

 - typeName: trimmed median is same as median.
</EXRLIST>
</FLD>
<HEAD2>Module 4: Lesson 4</HEAD2>

<STKY>
<HEAD3>Module 4, Lesson 4,  Video 1: Quantiles what?</HEAD3></STKY>
<LESSON>
<SCRIPT id="m4/l4/v1" done="k" t="2:37">
<SESS t="2.60" done="r" kf="10,20,50,80,90,120,130,140" id="s1">
This lesson is not about yet another measure of central
tendency. However, the idea is somewhat related, so I am
discussing it this week. This topic will prove essential in the
Statistical Methods course when we shall learn about test of
statistical hypotheses. 
---
Let's start with something we have already seen: median.
<V>[number line with median shown]</V> It is
the most central point among all the values.
---
 We may think it
as the point which splits the all the values into two parts, with
exactly half the values to its left.<V>[shown]</V> Well, this is not entirely
precise if we have an odd numer of values, but you get the general
idea.
---
 Now, there is nothing special about the proportion half. We might as well think
of a point<V>[shown]</V> that <M>[[13]]</M>-way into the data set from the
left, i.e., exactly <M>[[13]]</M> of the values lie to its left
(again allow a little rounding off if the number of points is not
exactly divisible by 3).
---
 In general for any
fraction <M>p\in(0,1)</M> we can consider a point<V>[shown]</V> such that
exactly <M>p</M> fraction of the values lie to its left. This point is
called the <B><M>p</M>-th quantile</B>.

In particular, median is the <M>p</M>-th  quantile for <M>p=[[12]].</M>
---
While median is the most popular quantile in use, some other
quantiles also deserve mention. If you take <M>p=[[14]]</M><V>[shown]</V> you
get the <B>first quartile</B>. Note the spelling, it is quartile
and not quantile.
---
 If you take <M>p=[[34]]</M>, you get the
third quartile<V>[shown]</V>. Clearly, the second quartile corresponds
to <M>p=[[24]]=[[12]]</M>, and so is the same as the median. 
---
Another type of quantile that has a special name is
the <B>percentile</B>. For <M>k=1,...,99</M> the <B><M>k</M>-th
percentile is the <M>[[k][100]]</M>-th quantile</B>.
---
 Sometimes you
may hear about <B>k-th decile</B>, which refers to the <B><M>[[k][10]]</M>-th
quantile, for <M>k=1,...,9.</M></B> However, the term decile is
rarely used.
</SESS>
</SCRIPT>


<FLD>
<EXRLIST id="m4l4_a.yml">
- typeName: textReflect
  prompt: >
     What is the 50% percentile of a variable commonly called? 
  defaultFeedback: >
     Median. 

- typeName: textReflect
  prompt: >
    A variable has 1000 cases. Then approximately how many values
    will lie above the 3rd quartile?
  defaultFeedback: >
    One fourth of the values, ie, 250.     

</EXRLIST>
</FLD>
<STKY>
<HEAD3>Module 4, Lesson 4,  Video 2: Quantiles why?</HEAD3></STKY>
<SCRIPT id="m4/l4/v2" done="k" t="2:24">
<SESS t="2.10" done="r" kf="10,20,30,40,50,60" id="s1">
Why are quantiles useful? Just as central tendency  seeks
to capture the notion of the centre of data, quantiles are 
used to capture the idea of the <B>boundary of data</B>.
---
 Most quantities in real life vary randomly. If we hold our finger steadily in
midair, we can see it shake a little. This random variation is natural as
long as it remains within a threshold. Crossing the threshold
might signal a change, causing us to make a remark
like: "Hey your finger is shaking too much, are you ill?"
---
As yet another example, there is some inevitable variation among
blood pressures of healthy persons. Thus, though <B>120/80</B> is
nominally the standard for healthy blood pressure, a blood
pressure like <B>125/76</B> is no cause of worry. It is within the
acceptable threshold of variation.
---
 How does one decide upon such a threshold? Well, quantiles come in
handy for this purpose. A typical exercise that is followed to
come up with such thresholds often boils down to this:
---
 First
measurements are made for a random sample of  individuals who are
known to be healthy. Imagine these laid out along a number line. <V>[number line shown]</V>
---
 Then the 5% and 95% quantiles (i.e., 5-th
and 95-th percentiles, respectively) are computed.<V>[shown]</V> These are
considered as the lower and upper thresholds. Values falling
beyond these are suspicious, as only 5% of the healthy cases fall
below this lower threshold and only 5% exceed the upper one.
---
Thus quantiles help to provide hard boundaries allowing for some
margin. Later in this lesson we shall discuss a similar concept
called <B>p-value</B>, that provides a soft boundary.

In the next video we shall  see how quartiles are  computed using LibreOffice.
</SESS>
</SCRIPT>

<STKY>
<HEAD3>Module 4, Lesson 4,  Video 3: Quantiles how?</HEAD3></STKY>
<SCRIPT id="m4/l4/v3" done="k" t="5:56">
<SC t="2" done="r" id="sc_quartcomp_443">
[Screencast: Computation of quartiles.]
toy.csv
</SC>
<JINGLE t="0.1">Visualisation</JINGLE>
<SC t="4" done="r" id="sc_quartvis_443">
[Screencast: Visualize quartiles using histogram.]
toycomp.ods
</SC>
</SCRIPT>

<SCRIPT id="m4/l4/v4" done="k" t="4:07">
<SESS t="3.90" done="r" kf="0,10,20,30,40,50,60,70,80,90,100,110,120,130,140,150" id="s1">
We have already mentioned <B>p-value</B> as a soft boundary for a
data. In this video we shall learn the details. If I ask you "<B>Is
2 greater than 5?</B>" then answer is "No". If I ask you "<B>Is 100 more
than 80?</B>" then answer is "Yes". These are objective questions
with objective answers irrespective of the context.
---
 But if I ask you "<B>Is 15 a large number?</B>", then as an objective question it is
meaningless. It needs some context to have a meaningful
answer. Like <B>Is an animal aged 15 years too old?</B>,
 The answer depends on the species of the
animal.
---
 If it is a <B>cat</B>, then the answer is "<B>yes</B>, it is old indeed." But if it is a
<B>turtle</B>, then our answer would be "<B>No</B>, it is just a baby." How did
we choose the appropriate answers in the different  contexts?
---
 By comparing the given number, 15, with our prior knowledge about
how long the animals of the species in question usually live. In
other words we imagined the value, 15, as a point on a number
line<V>[shown]</V>, which was full of typical known life spans of that kind of
animals.
---
 Cats rarely live longer than than 15 years. So only a
miniscule fraction of points would lie to the right of 15.
Turtles, on the other hand, are known to live even longer than
150 years, so the fraction of points to the right of 15 is
huge.
---
 It is this "fraction of points exceeding our given value"
that determines our answer. 
If the fraction is close to 0, then we  call our value "too large".
 If we do not have such a sample of typical values to
compare against, we cannot answer the question at all.
---
 For
instance, if I ask you "Is 15 years too old an age for a <B>Komodo
Dragon</B>?", and you do not any idea about that particular beast,
then you won't be able to answer the question at all (unless you
look up the internet).
---
This all important "fraction of values of a variable exceeding a given point"
is called the <B>upper-tailed p-value</B> of that point for that variable.
---
Had the question been about a given point being "too
low" for a variable, we would have naturally looked at the opposite
fraction, the fraction of values below that given point. That is
called, as you might expect, the <B>lower tailed
p-value</B>.
---
 Sometime we talk about <B>two-tailed
p-values</B>. Here we are talking about a variable with values
more or less
symmetrically distributed around some centre<V>[numline
shown]</V>,
---
 and we are asking
whether a given value is too far from that centre, too far in
either direction, too high or too low. Thus, both these values
will qualify as "too far".<V>[finger]</V>
---
Now suppose this is the poont whose two-tailed p-value we are to
find.<V>[shown]</V> Imagine another point symmetrically opposite
on the other cide of the centre.<V>[shown]</V>  Look at the fraction of the
points lying outside this interval.
That is  the two-tailed p-value. 
</SESS>
</SCRIPT>
<STKY>
<HEAD3>Module 4, Lesson 4,  Video 5: Lab</HEAD3></STKY>
<SCRIPT id="m4/l4/v5" done="k" t="5:26">
<SESS t="0.20" done="r" id="s1">
In this video we shall learn about computing
p-values assuming... that we know the entire population.
</SESS>
<SC t="5" done="r" id="pvaldat_445">
[Screencast: Compute p-value from popln data]
</SC>
</SCRIPT>

<SCRIPT id="m4/l4/v6" done="k" t="5:12">
<SC t="6" done="r" id="pvalhist_446">
[Screencast: Visualise p-value from histogram and distribution]
</SC>
</SCRIPT>


<FLD> pvalues computation
<EXRLIST id="m4l4_b.yml">
- typeName: textReflect
  prompt: >
     The file [[./exraux/pvalcomp.xlsx]] contains lots of values of a
     variable. Find the upper tailed p-value for 3.14 w.r.t these values. 
  defaultFeedback: >
      Use the =countif(a2:a1001,">3.14"). The answer should be 0.385.
- typeName: textReflect
  prompt: >
     The file [[./exraux/pvalcomp.xlsx]] contains lots of values of a
     variable. Find the lower tailed p-value for 2.12 w.r.t these values. 
  defaultFeedback: >
      Use the =countif(a2:a1001,"<2.12")/1000. The answer should
      be 0.423.


</EXRLIST>
</FLD>

<FLD>Trimmed mean computation
<EXRLIST id="m4l4_c.yml">
- typeName: textReflect
  prompt: >
     Compute 10% trimmed mean of the values in [[./exraux/pvalcomp.xlsx]] 
  defaultFeedback: >
     Use =trimmean(a2:a1001,0.1). The answer should be 2.54.

</EXRLIST>
</FLD>
</LESSON>
<HEAD2>Module 4: Lesson 5</HEAD2>
<LESSON>
<STKY>
<HEAD3>Module 4, Lesson 5 ,  Video 1: Review</HEAD3></STKY>
<SCRIPT id="m4/l5/v1" t="6:24" done="k">
<SESS t="1.70" done="a" kf="30" id="s1">
Statistics uses mathematics. But the main difference between
statistics and mathematics is that in mathematics the same
activity always prouces the same answer, while in statistics it
does not.
---
 2+2 always make 4 in mathematics. But measuring your
body weight repeatedly within 5 minutes will produce slightly
differing measurements.
---
  If we plot all the observed values in a
number line we typically a see a dense cluster with the tails
tapering off towards either side.<V>[numhist shown]</V> The curve
shows the shape of the histogram. This pattern is very common.
---
 It is as if all the values are trying to be the same number but
getting jittered away by randomness. It is here that we feel
inclined to replace the values by a single typical value. In
other words we have central tendency.
---
 This concept is everycwhere. Almost all our descriptions about things around us are
basically in terms of central tendency. Like when we say faces
are round, we are disregarding the variations in the true
shape.
---
 Indeed that is basically the only way to describe
anything: first give a typical description and then give details
in terms of how the actual thing deviates from that typical
value.
---
 When we predict a value, it is the typical value that we
predict. If we say that tomorrow's rainfall is predicted to be
2cm, we do not imply that it is going to be exactly 2 cm. It is
the central tendency value.
</SESS>
<JINGLE t="0.1">Robustness and outliers</JINGLE>
<SESS t="1.50" done="a" id="s2">
We are so fond of this typical value idea, and that we are
annoyed by anything markedly different from the typical
value. I am talking about outliers.
---
 There is no objective defintion of an outlier. They are points that do not behave like
the bulk of the points.  Nothing may be said in general about
outliers. Indeed, that's why they are outliers.
---
 Now central tendency is about the bulk behaviour of the data points. So
outliers should not have much influence on a good measure of
central tendency. This requirement is an example of robustness.
---
 A robust statistical method is one, that is not easily influenced by
outliers. Hence the commonly held belief that outliers
should be removed prior to analysis.
---
 This is a good principle as
long as the removal is termporary. Afterwards, you must inspect
the outliers individually. 
---
Mean is not robust at all. Median is much more robust. As is
trimmed mean. Indeed, a robust measure of central tendency may
actually help to detect outliers.
---
 You  first compute the true
centre of the data using some robust method, and then measure the
distances of all the points from that centre. The points too far
away from the centre are most likely to be the outliers.
</SESS>
<JINGLE t="0.1">No central tendency</JINGLE>
<SESS t="2.60" done="a" kf="10,20" id="s3">
Finally a word of warning about situations where there is no
central tendency. Consider this photo. Do you see a point of
light?<V>[shown trans]</V> Yes the bright spot.
---
How did you pick the point? Well to be entirely
honest you did not see a single point, you saw a blur. But still
you were happy to think that there is a just a single point of
light, which is possibly blured due to focusing problem.
---
 That's the spirit of central tendency. Now do a similar exercise with
this picture<V>[shown]</V>. Pin point the light source. Well, now you'll
hesitate, because you now see two points of light.
---
 Again both the points are blurred, and the blurs have overlapped to form a
single bright region. But still there is enough evidence of there
being two light sources, and not one.
---
 And that's why you
hesitated, and not simply put your finger on the centre of the
whitish region.
---
 You should remember to do this for central
tendency as well.<V>[clear]</V> At least plot the points along a number line or
make a histogram before blindly computing mean or median or some
other measure of central tendency.
---
 That's why we are discussing measures of central tendency after
discussing graphical representation of data. This is not to say
that you should make a plot everytime you need to compute a
mean.
---
 But when you encounter a new variable, you must frst explore  it graphically before
relying on any numerical measure like mean or median.
---
In statistics we have to be careful about this scenario, which appears
in many other contexts also. There is an intuitive concept, and a
mathematical way to measure it.
---
 Even if the concept is invalid in some
particular case, the mathematical formula may still provide a
number. You must not blindly report this number.
---
 Use your domain knowledge and common sense first to decide if the concept at all
applies to the case at hand. This is especially relevant in the modern
age of computers, when mathematical formulae may be applied very
easily using computers.
---
 Many budding statisticians fill
up their report with all these computer outputs, even when they are irrelevant.
Don't use a formula blindly!

Statistics is an extension of common sense, not a substitute!
</SESS>
</SCRIPT>
<R>
o(4,5,1,3)
png('light%d.png',bg='transparent')
x = seq(-20,20,len=1001)
y = dnorm(x)
mat = outer(y,y)
plot(as.raster(mat,max=max(mat)))
mat2 = mat[-(1:60),] + mat[-1002+(1:60),]
plot(as.raster(mat2,max=max(mat2)))
dev.off()
</R>
<TODO>Longitude: exr</TODO>

<STKY><HEAD3>Module 4, Lesson 5 ,  Video 2: Review</HEAD3></STKY>

<SCRIPT id="m4/l5/v2" t="2:13" done="k">
<SESS t="0.90" done="a" id="s1">
We have talked about mean. And also its brethren weighted mean
and trimmed mean. In the usual mean all the points contribute
equally, while in weighted mean, some have more weight than
others. 
---
A typical use case for weighted mean is when we are
averaging measurements of the same quantity made by two different
instruments, one more precise than the other.
---
 Then the measurmntns made by the more precise instrument shoulld be given
more weightage. The trimmed mean took this idea to the extreme,
where the peripheral points, the points near the two extremes are
not allowed to enter into the computation at all. 
---
Trimmed means are particularly useful when dealing with data
containing outliers. They combine the ease of mean with the
robustness of median.
</SESS>
<JINGLE t="0.1">Geometric mean, harmonic mean</JINGLE>
<SESS t="0" done="a" id="s2">
While we have talked about weighted mean and trimmed mean, the
more familiar geometric mean and harmonic mean are conspicuous by
their absence from our discussion.
---
 Indeed, these are not used
that much in statistics. First, the usual mean, or arithmetic
mean is meaningful for positive or negative values, while
geometric mean makes sense for only positive values.
---
 Similarly
harmonic mean is meaningless if the values are of mixed signs.

However, geomtric mean is sometimes used in econometric
data. Indirectly.
---
 There you have some positive values, say incomes of different
people, take their logarithms, and then 
compute their mean, arithmetic mean. Then what you get is
actually the logarithm of the geometric mean.
---
 Don't bother if you
could not follow this. You really don't need to. I just mentioned
this in passing. 
</SESS>
</SCRIPT>

<SCRIPT id="m4/l5/v3" t="2:30" done="k">
<SESS t="0.70" done="a" id="s1">
We have talked about medians quite a bit already. Let's quickly
summarise. Median is the centralmost data value. "Centralmost"
makes perfect sense if there is an odd number of values.
---
 For
even number the suggestion is to take the mean of the two
centralmost values. Another suggestion is to take any value
between the two centralmost values as a median.
---
Medians are robust, and that is thir greatst claim to
fame. However, they are not easy to compute without a computer,
and even then they take more time to compute than mean does. The
reason is that one needs to sort the data.
</SESS>
<JINGLE t="0.1">50% breakdown</JINGLE>
<SESS t="1.40" done="a" id="s2">
Median has 50% breakdown. What does that mean? This means you
need to contaminate 50% of the data before median gets
contaminated.
---
 Let's understand this with an example where we have
just 10 points. Suppose you take the maximum
value. Grab it and pull it higher and higher, make it approach
infinity.
---
 How does that influence the median? Doesn't influence at all! Median
simply does not care what you do to the maximum. OK, now that the
maximum is very large, take the second maximum, and send it on a
journey towards infinity.
---
 Does that affect the median? Nope!
Similarly, you can make the third maximum arbitrailty high, and
also the fourth. Now you come to the fifth maximum, which happens
to be one of the centralmost points.
---
 When you pull that up,
median starts to follow it. So you see you had to pull 50% of the
points (5 out of 10) before median could be influenced.
---
Compare this with the mean. Just pull the maximum to infinity,
and the mean follows it! If you work with 5% trimmed mean then
you have 5% breakdown.
---
Thus the concept of breakdown quantifies the level of robustness.
</SESS>
</SCRIPT>

<SCRIPT id="m4/l5/v4" done="k" t="5:18">
<SESS t="0.20" done="r" id="s1">
There are interesting ideas about how the concept of median may
be generalised. We shall discuss...some of them here.
</SESS>
<BC done="r" t="5" id="bc_mulmed_454">
Half-space depth, Simplicial depth,
</BC>
</SCRIPT>

<SCRIPT id="m4/l5/v5" t="7:21" done="k">
<SESS t="1.60" done="r" kf="30" id="s1">
If we consider in terms of the math involved, the mean is the
simplest measure of central tendency. But if you consider
pictorially, then mode is the most natural one.
---
 If the points<V>[numhist shown]</V> are shown along a line or
along a histogram with a peak with two 
tails tapering off on two sides of it, then mode is the value
where the peak is.
---
 If there are two or more peaks, then naturally we suspect where there is
any central tendency in the data at all.  
---
Despite its pictorial appeal mode is still not as popular a
measure of central tendency as mean or median. Why? Because
unless the variable is discrete there is no clear way to detect
the peak.
---
 If the variable is discrete, say categorical or
counting, then mode is just the value that occurs most
frequnetly. In this case it is simple. 
---
But problem occurs with continuous variables. The smooth curve that we have drawn here is
the limiting shape of the histogram. In practice you only have
finite amount of data,...
---
 and so the histogram is blocky in nature
with a jagged roof top made of flat pieces, there is no clear
peak there.
---
 However, if you really need to compute mode even
there, there is a way to approximate it. It is not used much, but
still it might be a good idea to know it.
</SESS>
<JINGLE t="0.1">Mode from grouped data</JINGLE>
<BC done="r" t="5" id="bc_modegp_455">
Mode for grouped data
</BC>
</SCRIPT>

<SCRIPT id="m4/l5/v6" t="1:20" done="k">
<SESS t="1.10" done="a" kf="30,60,90" id="s1">
We have talked a lot about how to measure central tendency, when
 a variable does have central tendency. What if it doesn't?
---
Well, the concept of mode sometimes helps in such a
situation. Suppose you expected a histogram shaped like this,<V>[shown]</V> but
your data histogram looks like this<V>[shown]</V>.
---
 There may be two reasons. First, your sample size is not large enough, so the
histogram shape is still fluctuating, and has not stabilised. In this case you should
probably not attach much importance to the histogram based on
your data.
---
 If however, your sample size is reasonably large, and
you still see this double peak, then you should suspect that what
you are seeing is a mixture of what you expected and some new
behaviour.
---
 Thus the shape is actually a superposition of two such
shapes<V>[shown]</V>, one per peak. Thus each mode is an
 indication of one component in the mixture. Such additional peaks often open up the
door to further research.  
</SESS>
</SCRIPT>

<FLD>

<EXRLIST id="m4_add.yml">
- If we have n numbers x1,...,xn with mean xbar, then show that
  sum (xi-xbar) = 0.

  Rubric:
    1) sum (xi-xbar) = sum(xi) - n*xbar = sum(xi) - sum(xi)=0.
    2) 1 point for doing just the first step.

- Consider the numbers 1,5,3,10. A new number x is appended to
this list. Let the median of the new data set be m (depends on
x). Sketch the graph of m vs x. 

   Rubric:
    1) Plot looks like this: [[./exraux/medplot.pdf]]
    2) 1 point if the graph is horizontal at the two ends.

- For the data set [m4_1.csv] find the 10% trimmed mean and
median.

- A  strange rumbling sound is heard regularly near the base of
the volcano in the fictitious island of Statistica. The time of
occurences have been recorded by the scientists. 
           | Date   |  Time | Intensity |
           |--------+-------+-----------|
           | Jan 01 | 23:45 |         3 |
           | Jan 02 | 00:02 |         3 |
           | Jan 03 | 00:05 |         4 |
           | Jan 03 | 23:56 |         3 |
           | Jan 05 | 00:32 |         5 |
Find the suitable measure of central tendency of the Time
variable. Justify your answer.

   Rubric: 
     1) 1 point if the student has understood that these times are
     very close together. 
     2) 1 point for considering offset from  midnight.

- We suspect that the data set [m4_bimod.csv] is the mixutre of
two data sets, each having a unique mode. Find the two modes
approximately by making a suitable plot.

   Rubric:
    1) 1 point for making a histogram.
    2) -1 to 0 for first mode, 3 to 4 second.
</EXRLIST>
<R>
cw('exraux')
set.seed(2352)
x = rnorm(200)
y = 4+rnorm(200)
dat = c(x,y)
hist(dat)
csv(dat,'m4_bimod.csv')
</R>
</FLD>
</LESSON>

<REF>
WW: Chapter 3
FPP: Chapter 4, parts 1--3.
</REF>

<HEAD1>Module 5: Dispersion</HEAD1>
<SCRIPT id="m5/intro" t="1:18" done="k">
<SESS t="1.30" done="n" id="s1">
We are starting our fifth week. This week is very similar in
structure to the last one. We are still continuing with 
descriptive statistics, that is, numerically capturing intuitive
aspects of a data set. 
---
As usual we have 4 lessons followed by a wrap up lesson. Plenty
of practice problems, plus a module test at the end. 

Let me quickly remind you what we have already learned.
---
 We learned about data and variables in the first week. In the second
week we learned about presenting data pictorially. The third week
taught us to summarise data through tables. These were the
non-mathematical ways to summarise data. 
---
From the last module onwards we have embarked upon mathematical
ways to summarise data. We talked about mean, median and
mode last week. All these were measures of central tendency. They helped us
to locate the centre of the data.
---
 Of course, data are random, and so quite unlikely to sit calmly
at the centre. The values are likely to fluctuate. This
fluctuation is what we shall focus in this week.

Let's get started!
</SESS>
</SCRIPT>

<HEAD2>Module 5: Lesson 1</HEAD2>


<LESSON>
<SCRIPT id="m5/l1/v1" done="k" t="5:29">
<SESS t="1.80" done="r" kf="0,60,120,130" id="s1">
In the last module we talked about central tendency, representing
a bunch of numbers by a single typical number. In this video we
shall go a bit deeper and talk about a concept called <B>dispersion. </B>
---
<V>First set of
firings. I duck. Second set of firings. Pause. I
reappear from below.</V>
---
Whew! Did you notice that? The guy  had two
revolvers in two hands, and fired 6 bullets from each. Any clue
about who the guy is?  May be we can infer
something from the bullet marks!
---
 6 From the left hand, 6 from the
right. All the marks are quite close together. Hmmm...a pretty
good shot. But the bullets from his left hand are more tightly
together, while the other 6 are somewhat more scattered.
---
 Well, that means he has a better aim with his left hand.
So he must be a left handed person. Aha, that's a good clue for the police. And
in the meantime that's a good clue for us, too, for our current
topic. 
---
The shots here are more scattered, or as we say in statistics,
these have higher <B>dispersion</B>, while these have lower
dispersion. Dispersion measures <B>the amount of scatter</B>, or how
loosely the values of a variable are together. That's our topic today.
</SESS>
<JINGLE t="0.1">Dispersion</JINGLE>
<SESS t="2.30" done="r" kf="10,20,30,40,50,110,120,130,140" id="s2">
If you have a bunch of values <V>[numberline]</V>, central
tendency is about finding   a typical representative
value<V>[arrow]</V>. But none of the values may be
exactly equal to that typical value.
---
 There is usually always some scatter. Measuring that scatter 
is the purpose of <B>dispersion</B>.

<B>Why do we care</B><V>[anim]</V> about this? 
---
For one thing,
 dispersion tells us <B>how
reliable the central tendency is</B>. For a variable with higher
dispersion, <V>points spread out, same centre]</V>,
 central tendency is of less use.
---
 For example,
when we talked about body weights of mammals there was an
enormous dispersion, so much so that there was no central
tendency left in the data.
---
Here is a second reason.  In many cases we predict a value like
tomorrow's rainfall or some future stock price. Here it is good
to have a kind of <B>error bar</B>, an interval rather than a single
value. Dispersion plays a crucial role behind designing such
intervals. 
---
A third reason is that dispersion helps us to <B>measure precision</B>
 of instruments. Ideally, the same machine should always produce
 the same output if given the same input. But in practice, there
 is always some fluctuation. The smaller its amount, the more precise
the machine. Dispersion is the key tool to measure this.
---
Often dispersion is used to <B>measure instability</B>. It could
 be volatility of the share market or motion in a room. Have you
 seen power saving gadgets that sometime people 
fit inside rooms? These can automatically switch lights and fans
on or off according as whether there is movement in the
room.
---
 These devices detect motion  by sensing sound or light
intensity changes and computing the
dispersion. If the dispersion is too low, then the machine infers
that there is no motion, while a dispersion value exceeding a
threshold triggers it. 
</SESS>
<JINGLE t="0.1">Math</JINGLE>
<SESS t="1.10" done="r" kf="10,20,30,40,50" id="s3">
Dispersion, like central tendency, is an intuitive concept. We
 want to capture its essence using some mathematical formula
that may be plugged into a computer for automated decision
making. 
---
We shall work with a  continuous variable, whose values may be
considered as points along a number line,<V>[shown]</V>. If the
points are close together then dispersion is low, and if the are
wider apart then dispersion is higher.
---
 We are looking for a
mathematical formula which will take the points as its input and
produce a single number as its output, which should indicate the
amount dispersion present. 
---
There are quite a few such measures. Here is a list of commonly
used ones:

*<B> Range</B>
* <B>Variance and standard deviation </B>
* <B>Median absolute deviation</B>
* <B>Interquartile range</B>
---
We shall start with range in the next video.
</SESS>
</SCRIPT>

<FLD>Dispersion in general

<EXRLIST id="m5l1_a.yml">
- typeName: checkbox
  prompt: >
      Which of the following is/are measure(s) of dispersion?

  shuffleOptions: true
  options:
  - answer: variance
    isCorrect: true
    feedback: >
      Yes, variance is indeed a measure of dispersion.
  - answer: range
    isCorrect: true
    feedback: >
      Yes, range is a measure of dispersion. 
  - answer: median
    feedback: >
      Oops, you seem to have confused central tendency with dispersion!
      
  - answer: mean
    feedback: >
      Oops, you seem to have confused central tendency with dispersion!      

- typeName: numeric
  prompt: >
    We have a data set with just three numbers. The first value
    is 23.4. The other two values are so that the 
    dispersion is the minimum possible. What is the sum of those 
    two values?
  shuffleOptions: true
  defaultFeedback: >
    No, dispersion is minimised when all the three numbers are 
    huddled together *as closely as possible*.
  answers:
  - value: 46.8
    isCorrect: true
    feedback: >
      Yes, all the values must be 23.4 to minimise dispersion.

- typeName: multipleChoice
  prompt: >
      Consider a variable with just the three values 500, 1000
      and 2000. If the number 500 is made smaller and smaller, then 
  defaultFeedback: >
      As 500 is replaced by a smaller number, the centre of the
      data shift to the left, and the numbers are further apart.

  shuffleOptions: true
  options:
  - answer: mean decreases, dispersion increases
    isCorrect: true
    feedback: >
      Yes, as one value decreases, the others remaining the same, 
      the centre of the data decreases. But the numbers also
      futher apart. Hence dispersion increases.      
  - answer: mean increases, dispersion decreases
    feedback: >
      
  - answer: mean and dispersion both decrease
    feedback: >
      
  - answer:  mean and dispersion both increase
    feedback: >
      
- typeName: multipleChoice
  prompt: >
      A man is shooting with a hand-held  video camera that he is
  trying to hold still. Then high dispersion in the position of
  the camera would result in
  defaultFeedback: >
    Higher dispersion means the camera is shaking a lot.      
  shuffleOptions: true
  options:
  - answer: shaky video
    isCorrect: true
    feedback: >
      
  - answer: shifted video
    feedback: >
      
  - answer: darker video
    feedback: >
      
  - answer: sharper video
    feedback: >
      


- typeName: textReflect
  prompt: >
    Write down two sets of numbers such that the mean of the
    first set is smaller,  but the dispersion is larger.
  defaultFeedback: >
    You can achieve this with just two numbers per set. 
    In the first set 0 and 10. In the second 10000 and 10001.
</EXRLIST>

</FLD>

<STKY>
<HEAD3>Module 5, Lesson 1,  Video 2: Dispersion in real life</HEAD3></STKY>
<SCRIPT  done="k" id="m5/l1/v2" t="6:19">
<SESS t="1" done="r" id="s1">
[Intro ramble]
</SESS>
<JINGLE t="0.1">Examples</JINGLE>
<SC t="5" done="r" id="vol_512">
audio noise, TV noise, handwriting, volatility
</SC>
</SCRIPT>

<FLD>Real life
<EXRLIST id="m5l1_b.yml">
- typeName: multipleChoice
  prompt: >
      For a stock price time series data, higher dispersion means
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: less certainty
    isCorrect: true
    feedback: >
      
  - answer: more certainty
    feedback: >
      
  - answer: higher central tendency
    feedback: >
      
  - answer: lower central tendency
    feedback: >
      
- typeName: multipleChoice
  prompt: >
      The graphs show a variable Y changing with a variable
      X. [[./exraux/dispscat.png]] The red lines show the
      relation predicted by theory.  
      In which case is the dispersion of Y values higher? In
      which case is the experimental values closer to the theory? 
  defaultFeedback: >
      The points are closer to the red line in general for
      I. However, if you just consider the vertical spread of the 
      points then I shows more scatter.
 
  shuffleOptions: true
  options: 
  - answer: II, I
    isCorrect: true
    feedback: >
      
  - answer: I, II
    feedback: >
      
  - answer: I, I
    feedback: >
      
  - answer: II, II
    feedback: >
      
- typeName: checkbox
  prompt: >
      In which of the following cases the three numbers shown
  have more dispersion than their squares?
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: -1,0,1
    isCorrect: true
    feedback: >
      The -1 will be wrapped to 1 on squaring.
  - answer: 0.2 0.4 0.9
    isCorrect: true
    feedback: >
      Numbers between 0 and 1 tend to crowd towards 0
      when squared.
  - answer: 1 2 3
    feedback: >
      These numbers will spread out on squaring.
  - answer: -1, 2 10
    feedback: >
      The -1 will become 1, but the 10 will go far out.

</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 5, Lesson 1,  Video 3: Range</HEAD3></STKY>

<SCRIPT id="m5/l1/v3" done="k" t="4:48">
<SESS t="0.90" done="r" kf="10,20,30,70,80,90,100,110" id="s1">
<B>Range</B> is the simplest measure of dispersion, simplest to
understand and simplest to compute. We again consider the values
of a variable along a number line <V>[shown]</V>.
---
 To compute the range, you look
at the two extremes<V>[shown]</V>, the minimum and the maximum. The range is
defined as the distance betwen
them<V>[shown, "range" comes down anim]</V>.
---
 More mathematically, if the values are 
<B><D>
x_1,...,x_n,
</D>
then the range is defined as
<D>
\max_i\{x_i\} - \min_i\{x_i\}.
</D></B>
---
For example, if the numbers are 
<B><D>
2.3, 4.6, 9.8, 2.4,
</D></B>
then the minimum is <M>2.3</M><V>[shown]</V> and the maximum is <M>9.8.</M><V>[shown]</V> So
the range is <B><M>9.8-2.3</M></B> which is <B><M>=7.5</M>.</B>
---
Let's quickly learn to compute it using LibreOffice.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="4" done="r" id="s1">
[Screencast: Compute range. by formula. by descriptive
statistics. Show that same formula is being used. Show dynamic
update. NA skipped]
land.csv
</SC>
</SCRIPT>

<FLD>Range simple and lab
<EXRLIST id="m5l1_c.yml">
- typeName: numeric
  prompt: >
    The range of some variable in a data set is 56.00, and
    minimum is 50.23.  A new case is
    added to the data set where the value of this variable is
    110.54. What will be the new range?
  shuffleOptions: true
  defaultFeedback: >
    First find the minimum and maximum *before* and *after* the new
    case is added.
  options:
  - value: 60.31 
    isCorrect: true
    feedback: >
      That's right! The old maximum was 50.23+56.00 =
      106.23. Since the new value exceeds this, the new
      maximum is 110.54. So the new range is 110.54 - 50.23.
  
- typeName: numeric
  prompt: >
     I have a data set consisting of 100 values. The minimum
     value is 121, and the range is 20. A new  value 130 arrives
     (making the new sample size 101). What is the new range?

  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - value: 20.
    isCorrect: true
    feedback: >
      
- typeName: numeric
  prompt: >
    Use LibreOffice to compute
    range of the Sales1 variable in [[./exraux/wmean.xlsx]]
  shuffleOptions: true
  defaultFeedback: >
    Minimum is 10, and maximum is 20.
  answers:
  - value: 10
    isCorrect: true

- typeName: textReflect
  prompt: >
      A data set consists of the values 2, 3, 4 and x. Find
      the number x   such that range equal four times the mean.
  defaultFeedback: >
      4 times the mean is 9+x. Also the range is x-2 if x > 4,
      4-x if x < 2, and 2 otherwise. So we need either 9+x=x-2
      (and x > 4), or 9+x = 4-x (and x < 2) or 9+x=2 (otherwise).
      Only the second case is possible. 
  shuffleOptions: true
  options:
  - answer: x = -2.5
    isCorrect: true
    feedback: >
      
  - answer: x = 3
    feedback: >
      
  - answer: x = 2.5
    feedback: >
      
  - answer: Any value greater than 4.
    feedback: >
      

</EXRLIST>
</FLD>


<SCRIPT id="m5/l1/v4" done="k" t="7:14">
<SESS t="0.30" done="r" id="s1">
In this video we shall explore the properties of the range. There
are some good properties and one seriously bad property. Let's
start with the good ones.
</SESS>
<JINGLE t="0.1">Good properties</JINGLE>
<SESS t="3.00" done="r" kf="10,70,80,90,150,160,170,230,240" id="s2">
Range is easy to compute, easy to understand. Good points. Now
here are a couple of more good things about range that show that
it captures the intuitive idea of dispersion.
---
 Suppose I take some
points,<V>[shown]</V> and the points are all squeezed down to a single
point<V>[shown]</V>. There is no dispersion among them now,
right?
---
 So desirable property number one for any measure of dispersion: 
<B>if all the values are equal then the measure should be 0.</B>
 Is it true about
range? If all the values are the same, then that same number is
both the minimum and maximum, and hence their difference is
zero. 
---
Here is another desirable property for a dispersion measure to
have. We again start with our set of values. <V>[shown]</V>. 
If all the points are just shifted by the same amount<V>[shown]</V>, then
do you think that dispersion has changed?
---
 Intuitively, it should not change, right? Because they have just
 moved,  not come closer
together or fallen further apart. So 
<V>[2. Dispersion should remain unchanged by constant shift.]</V>
---
Is it true about the range? Yes, because when you shift all the
numbers by some common amount, the min and max also get shifted
by the same amount. So their difference remains the same.
---
Next comes yet another desirable property. We again start with
values along a number line<V>[shown]</V>. They have some dispersion. Now we
multiply all the numbers by some constant, say <M>c.</M> For
instance if <M>c=2,</M> then we just double all the numbers<V>[shown]</V>.
---
 Then the dispersion
should also change according to that constant <M>c.</M>
 If <M>c>1</M> then the dispersion should increase, if <M>0< c< 1</M> then the
points are squeezed together, and hence dispersion should go
down.
---
 The sign of <M>c</M> should not matter. The sign merely controls
if the points just  flipped around 0. In short, <V>[shown]</V>a good
dispersion measure should get multiplied with <M>|c|</M> if all
the numbers are multiplied with <M>c.</M>
---
Does range satisfy this property? Let's see.
</SESS>
<JINGLE t="0.1">Proof</JINGLE>
<BC t="4" done="r" id="rpf_512">
[Boardcast: Proof]
</BC>
</SCRIPT>

<FLD>Range trans
<EXRLIST id="m5l1_d.yml">
- typeName: multipleChoice
  prompt: >
      A fixed length has been measured 10 times in inches. The
  range of the measurements is 0.1 in. If the measurements are
  converted to centimetres, then the range would be
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: 0.254 cm
    isCorrect: true
    feedback: >
      
  - answer: 0.1 cm
    feedback: >
      
  - answer: cannot answer based on the given information.
    feedback: >
      
  - answer: less than 0.1 in.
    feedback: >
      
- typeName: multipleChoice
  prompt: >
      If range of 10 values of a variable X is 2.3, then the
  range of 5-2*X is 
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: 4.6
    isCorrect: true
    feedback: >
      
  - answer: 0.4
    feedback: >
      
  - answer: 2.3
    feedback: >
      
  - answer: impossible to answer from the given information.
    feedback: >
      
</EXRLIST>
</FLD>


<SCRIPT t="1:49" done="k" id="m5/l1/v5">
<SESS t="0.50" done="r" id="s1">
So we have listed lots of good properties of the range. Easy to
understand, easy to compute, becomes zero when all the values
are the same, is not affected by constant shift, scales appropriately.
---
But still range is not a popular measure of dispersion. Why?
Because it has one particularly bad property.
</SESS>
<JINGLE t="0.1">Bad property</JINGLE>
<SESS t="1.10" done="r" kf="10,20,80" id="s2">
 <B>Range is not robust</B> against outliers. 
Let's quickly understand what that means. Suppose we have many
cases in a data set. So for each variable we have many values.
---
When there are many values<V>[shown]</V> it is quite likely to some stray
points, or outliers as they are called, that lie far away from
the bulk of the other points<V>[outlier moves out shown]</V>, like this.
---
These outliers completely determine the 
maximum or the minimum or both. So they have tremendous influence
on the range. Even if all the other points are tightly together,
just one  stray point may cause the range to shoot up. Thus, the
range is quite unstable, or non-robust.
---
In the following videos we shall look at other measures of
dispersion that are more robust than range. They look at data
more deeply, not just at the two extreme points.
</SESS>
</SCRIPT>

<FLD>Range plot
<EXRLIST id="m5l1_e.yml">
- typeName: multipleChoice
  prompt: >
      One new value x is added to a univariate data set. Let the
  new range be R (which depends on x). Then a plot of R versus x
  looks like which of the four plots below?
     [[./exraux/rngplot.png]]
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: C
    isCorrect: true
    feedback: >
      Yes, as long as x remains within the min and max of the
      existing data set, the range remains fixed. Beyond, that in
      increases. 
  - answer: A
    feedback: >
      If x becomes very very low, then range cannot remain unchanged.
  - answer: B
    feedback: >
      Range cannot go down if x is very large or small!
  - answer: D
    feedback: >
      If x changes within the min and max of the existing data
      set, then range should remain unchanged.
 

</EXRLIST>
</FLD>
</LESSON>

<HEAD2>Module 5: Lesson 2</HEAD2>


<LESSON>
<SCRIPT id="m5/l2/v1" done="k" t="7:54">
<SESS t="0.80" done="r" kf="10,20" id="s1">
We learned about the concept of dispersion in the last lesson,
and also one measure of dispersion, namely range. Range was easy
to compute, but suffered from lack of robustness. It uses the
data points too superficially. It is completely determined by the
two extreme values, and does not care about the other points in-between.
---
In this lesson we shall learn about two related measures of
dispersion that are free of this problem. The measures are
called <B>variance</B> and its square root the <B>standard
deviation</B>. These are the most popular measures of
dispersion. Let's learn about them step by step.
</SESS>
<JINGLE t="0.1">Variance</JINGLE>
<SESS t="2.40" done="r" kf="10,20,30,40,50,60,70,80,90" id="s2">
Let's take a moment to remember why we are caring about
dispersion. We have a bunch of numbers with central
tendency<V>[shown in number line]</V>, and
we want to represent the bunch with a single typical
value<V>[arrow shown]</V>.
---
 We are now wondering how well  this single number can represent the
data values.   The higher the dispersion, the less reliable is
the representation. This was
our motivation for considering dispersion. Let's
turn this  motivation into a measure of dispersion.
---
Let the numbers be called <M>x_1,x_2,</M> etc. So the <M>i</M>-th
number is <M>x_i.</M><V>[shown]</V> 
Let's use mean as our measure of central tendency. So the centre
is marked by <M>\bar x</M><V>[shown]</V>.
---
This single number <M>\bar x</M> is going to represent all
the <M>x_i</M>'s. For the values
close to the mean the representation is highly acceptable. For
points further away, the acceptability is more dubious. 
---
So the difference between a point and the mean plays a central role in
determining how well the mean can represent the point. Let's look
at the <M>i</M>-th point.
Its  difference from the mean is <B><M>x_i-\bar x.</M></B>
---
This is negative because the point is on that side<V>[finger]</V>. It would have
been positive if
the point were on this side. But we do not care about sides
here. So we want to get rid of the sign. One way to get rid of
the sign is to square the difference to get 
<B><M>(x_i-\bar x)^2.</M></B>
---
 For each point we get one such number. Now we want to
get a single number, a typical number to represent all these.
Aha, that again sounds like a central tendency
problem.
---
 So we can take the mean of all these numbers to get 
<B><D>
[[\sum (x_i-\bar x)^2][n]].
</D></B>
This might look complicated, and had we not followed its genesis,
it would have left us wondering, 
"How does this qualify as a measure of dispersion?". 
---
But now we know. This is called the <B>variance</B>. Its
square root, as we already know, is called the <B>standard
deviation</B>. 
Let's quickly digest
the definition with a small numerical example.
</SESS>
<JINGLE t="0.1">Numerical example by hand</JINGLE>
<BC t="4" done="r" id="bc_varcomp1_521">
[Boardcast: Show a computation.]
<Q>
3, 
5, 
4, 
5, 
1, 
7.
</Q></BC>
</SCRIPT>
<R>
x = c(3, 5, 4, 5, 1, 7)
(n = length(x))
(s = sum(x))
(m = mean(x))
(dev = x-mean(x))
(tmp = dev*dev)
(stmp = sum(tmp))
(ans = mean(tmp))
var(x) * (n-1)/n
</R>

<FLD> Variance and SD hand comp
<EXRLIST id="m5l2_a.yml">
- typeName: textReflect
  prompt: |-
    Find the variance and standard deviation of these numbers:
    43, 23, 34, 64, 50, 33, 12
  defaultFeedback:
    var = 254.29, sd = 15.95
    isCorrect: true

    
- typeName: textReflect
  prompt: >
    Let a variable take only two values p and q. Then what is its
    variance?
  defaultFeedback: >
    (p-q)^2/4.

</EXRLIST>
</FLD>


<SCRIPT id="m5/l2/v2" done="k" t="5:58">
<SESS t="1.00" done="r" kf="10,20,30,40,50" id="s1">
The formula that we used to define variance is not that easy to
use by hand. It requires a sort of two-stage
computation. Starting from the raw data <V>[shown as x_1...x_n in a column]</V> first
you compute mean <M>\bar x</M><V>[shown]</V>,
---
 then you compute
the <M>(x_i-\bar x)^2</M>'s<V>[shown as another column]</V>, 
and finally their mean <V>[shown]</V>.
---
There is another equivalent formula that is somewhat
easier in the sense that it only requires a one-stage
computation. Not that you'll typically do the computation by hand, but 
still it is good to know. 
---
The formula is 
<B><D>
[[\sum x_i^2][n]] - (*([[\sum x_i][n])*)^2.
</D></B>
---
So here you compute the sum of all the values as well as the sum
of their squares, and then plug them into the formula. Let's see
if we get the same answer.
</SESS>
<JINGLE t="0.1">Alternative formula</JINGLE>
<BC t="4" done="r" id="bc_varcomp2_522">
[Boardcast: Show the same data and last answer. Use alternative formula.]
</BC>
<SESS t="0.50" done="r" id="s2">
It is possible to prove that these two formulae will always
produce the same answer. Let's not bother about the proof
here. The reading material has the proof, anyway. And it is
nothing terribly important for learning statidtics.
---
 In fact, the alternative formula itself is not terribly
important, unless you are forced to do hand computation. 

In the next video we shall  learn what is important: computing
variance using LibreOffice.
</SESS>
</SCRIPT>


<FLD>Alternative formula
<EXRLIST id="m5l2_b.yml">
- typeName: numeric
  prompt: >
    If the mean and variance of 10 numbers are,  respectively,
    10 and 45,  and a new value 7 is introduced, what is the
    new variance?
  defaultFeedback: >
    Find the sum and sum of squares of the original 10 numbers.
    Then update these to incorporate the new value.
  shuffleOptions: true
  answers:
  - range: [171.77, 171.8] 
    isCorrect: true
    feedback: >
      Yes, the old sum was 450 and the old sum of squares was
      20655. After updating they became 457 and 20704,
      respectively. Also, sample size increased from 10 to 11.
    
- typeName: numeric
  prompt: >
    If the sum of squares of 5 numbers is 1004,  and the mean
    is 6,  then find the standard deviation.

  defaultFeedback: >
    The formula is sqrt((SS/n -  mean^2)).
  shuffleOptions: true
  answers:
  - range: [14.35,14.4]
    isCorrect: true
    feedback: >

</EXRLIST>
</FLD>


<SCRIPT id="m5/l2/v3" done="k" t="5:34">
<SC t="6" done="r" id="s1">
[Screencast: Compute for the same data. Var. Then explicit. Find
n-1 problem.]
var.csv
</SC>
</SCRIPT>

<STKY>
<HEAD3>Module 5, Lesson 2,  Video 4: Other ways to compute it</HEAD3></STKY>
<SCRIPT id="m5/l2/v4" done="k" t="2:25">
<SESS t="1.90" done="r" kf="10,20,30,40,50,60" id="s1">
Actually LibreOffice, like most other softwares, uses a slightly
different formula which is:
<B><D>
[[1][n-1]]\sum (x_i-\bar x)^2.
</D></B>
Notice the <M>n-1</M> in the deno.
---
Why <M>n-1,</M> you might naturally wonder, as all beginning
statisticans do.

 Well, thereby hangs a long
story. To cut that story short, here is a quick explanation.
---
Consider this math problem: <B><M>2 \times 4 + 5 \times 6=?</M>.</B>
The steps should be 
<B><MULTILINE>
& = & 8 + 5\times 6 \\
& = & 8 + 30 \\
& = & 38.
</MULTILINE></B>
---
Now suppose that a student has done the steps wrongly like this:
<B><MULTILINE>
& = & 9 + 5\times 6 \\
& = & 9 + 24 \\
& = & 33.
</MULTILINE></B>
---
How many steps do you see that do not match the corresponding
correct step? All the three steps. But how many
mistakes do we see? Now the answer is different: only two. This and
this. There is no fresh mistake in the last step.
---
 The reason behind this difference is that the
steps are interrelated. If one mistake  leads to
multiple incorrect steps, then they should not be counted separately. 
---
That is what is happening here. When we are considering the
differences <M>x_i-\bar x</M><V>[shown as column]</V>, there are <M>n</M> such
differences. But they are interrelated.
---
 In particular they must
add up to 0. So only <M>n-1</M> of them are actually free, the
remaining one is completely determined by them. So we are
dividing by <M>n-1.</M> 
---
This explanation is admittedly rather crude. It leaves many
gaps. But filling up those gaps will take us beyond the scope of
the present course. 
---
By the way this number 
of "free" things has a general name: <B>degrees of
freedom</B>. Thus here the degrees of freedom is <M>n-1.</M>
</SESS>
</SCRIPT>

<FLD>Variance n and n-1
<EXRLIST id="m5l2_c.yml">
- typeName: numeric
  prompt: >
      A statistician used the LibreOffice formula =var(a2:a101)
  to get the answer 34. Had she used the formula with n in the
  denominator, she would have obtained:
  defaultFeedback: >
      34 * (100-1)/100 = 33.66.
  shuffleOptions: true
  options:
  - value: 33.66
    isCorrect: true
      
- typeName: numeric
  prompt: >
      If for a univariate data set consisting of 5 cases, the sum of the values is 10 and
  sum of squares are 100, then the variance as computed by the
  LibreOffice var formula minus variance with n in the
  denominator is:
  defaultFeedback: >
     Mean is 10/5 = 2. Variance with n in the denominator is
  100/5-2*2 = 16. LibreOffice will report 16*(5/4) = 20. So the
  answer should be 20-16 = 4.      
  shuffleOptions: true
  options:
  - value: 4
    isCorrect: true
    feedback: >

</EXRLIST>
</FLD>

<FLD>
- typeName: textReflect
  prompt: >
      Here is a data set [[./exraux/gh.xlsx]] with two variables gender and
  height. Find the variance of height considering all cases,
  irrespective of gender. Use the default formula in LibreOffice.
  defaultFeedback: >
      Variance = 53.05

- typeName: textReflect
  prompt: >
      Again consider the same data set as in the last
      exercise. But this time compute the variance of the heights of
      men only. Use the default formula in LibreOffice.
  defaultFeedback: >
      Use =IF(A2="Male",B2,"") in cell C2, and drag.
      Variance  = 59.43
      
- typeName: textReflect
  prompt: >
      Again consider the same data set as in the last
      exercise. But this time compute the variance of the heights of
      women only. Use the formula with n in the denominator.

  defaultFeedback: >
      Use =IF(A2="Male",B2,"") in cell C2, and drag.
      Remember that here n = 10. So you need to multiply
      LibreOffice output by 9/10.

      Variance = 47.44

</FLD>



<SCRIPT id="m5/l2/v5" done="k" t="2:46">
<SESS t="2.60" done="r" kf="10,70,80,140,150,210,220" id="s1">
While discussing range, we had listed some desirable properties
that a measure of dispersion should have. <V>[data shown]</V>

 * if all the values are the same <V>[anim shown]</V>, the
dispersion should be 0.
---
The next proprty is<V>[data shown]</V>
 *  if all the values are shifted
together <V>[anim shown]</V> dispersion should not change.
---
The third proprty <V>[data shown]</V>
 * if the data values change unit
 <V>[anim shown]</V> so should the dispersion (except for the sign).
---
Let's see if variance and standard deviation have these
 qualities. Enough to work with variance <V>[formula shown]</V>,
 because standard deviation is just its square root. Don't worry
 about the <M>n</M> in the denominator. The results remain the
 same even if you put <M>n-1</M> there.
---
 If all the data points are the same, then<V>[finger]</V> that value
 is also the mean, so all the <M>x_i-\bar x</M>'s are zeroes, and
 hence variance is 0. 
---
If all the data points are shifted by a common amount,
 then<V>[finger]</V> <M>\bar x</M> is also shifted by the same amount. So all
 the <M>x_i-\bar x</M>'s remain unchanged. Hence so do variance
 and standard deviation.
---
If, however,  the values are all multiplied by a constant, then<V>[finger]</V>
 each <M>x_i</M> and <M>\bar x</M> get multiplied by the same
 constant, so <M>x_i-\bar x</M> is also multiplied by it. Now we
 have a square here. So 
 variance gets multiplied by the square of that constant.
---
 Standard deviation, however, has the right behaviour. In fact, this is
 the reason why we care about standard deviation. It has the same
 unit as the data. Variace has the square unit, like area.
---
OK, so we have checked the good properties. Now let's check
 robustness. We have already mentioned that variance and standard
 deviation are more robust than range.
---
 But you know what,
 even these are not sometimes robust enough for some purposes. So
 stay tuned for something more robust in the next video.
</SESS>
</SCRIPT>

<FLD>Var trans
<EXRLIST id="m5l2_d.yml">
- typeName: multipleChoice
  prompt: >
      Variance some lengths meansured in centimetres is V sq
  cm. Then the varince of the same lengths expressed in metres is 
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer:  V/ 10000 sq m
    isCorrect: true
    feedback: >
      
  - answer: 10000 V sq m
    feedback: >
      
  - answer: V/100 sq m
    feedback: >
      
  - answer: 100 V sq m
    feedback: >
      
- typeName: textReflect
  prompt: >
     If the variance of a variable X is 10, then the variance of 
     2-3X is: 
  defaultFeedback: >
     The added 2 has no effect. The multiplied -3 becomes
     (-3)^2=9. So the answer is 9*10 = 90. 

</EXRLIST>
</FLD>
</LESSON>

<HEAD2>Module 5: Lesson 3</HEAD2>
<STKY>
<HEAD3>Module 5, Lesson 3,  Video 1: Median absolute deviation</HEAD3></STKY>
<LESSON>
<SCRIPT id="m5/l3/v1" done="k" t="6:58">
<SESS t="1.90" done="r" kf="10,50,60,70,80,90,100" id="s1">
We use acronyms everywhere. Each field has its own world of
acronyms. But how many fields use <B>MAD</B> as an acronym? Well,
statisticians do. They are really mad guys!
---
 Of course, MAD does
not really mean mad in statistics, it stands for <B>Median Absolute Deviation</B>. And
its sole motivation is to create a more robust version of
variance. 

Let's understand this step by step.
---
When we created variance, we started with a measure of central
tendency.<V>[shown numberline with arrow]</V> We had chosen the
mean. Now mean is known to suffer from
lack of robustness. Median is a more robust alternative. So why
not start with the median, instead?<V>[shown]</V>
---
Next, we had computed the deviation of each point from the
centre<V>[finger]</V>. As
we have already mentioned, the sign does not matter.
So earlier we had squared the deviation. That did get rid of
the sign, but also contributed to its lack of robustness.
---
 If some <M>x_i</M> is far away, then its deviation. from the centre
is anyway somewhat large, and if you square the deviation. then it
becomes way larger, leading to non-robustness.
 So here we do not want to square, but still get rid
of the sign. How?
---
 Simple, we just drop the sign. In other words,
we take the absolute values.<V>[shown]</V> Finally, earlier
 we had taken mean, here we
shall take the median of these absolute deviations <V>[shown]</V>.
---
Now you can also see why it is called Median Absolute
Deviation. There is some method in the MADness after all. 

Computing median by hand is never fun, because it requires you to sort
the values. But just to remember the definition, let us toil
through a numerical example by hand.
</SESS>
<JINGLE t="0.1">Hand computation</JINGLE>
<BC t="4.7" done="r" id="madhand_531">
[Boardcast: compute MAD.]
var.csv
</BC>
</SCRIPT>

<FLD>Mad by hand
<EXRLIST id="m5l3_a.yml">
- typeName: textReflect
  prompt: >
      Compute MAD for this data set by hand:
       | X |
       |---|
       | 2 |
       | 5 |
       | 1 |
       | 4 |
       | 4 |
  defaultFeedback: >
      median = 4. MAD = 1.

- typeName: textReflect
  prompt: >
    Consider the data set:
      | X |
      |---|
      | 2 |
      | 6 |
      | 7 |
      | 9 |
    What is the MAD?
  defaultFeedback: >
      median = 6.5. MAD = 1.5.
      
- typeName: multipleChoice
  prompt: >
      A variable with 5 values has has MAD 10. The maximum value of the variable is
      increased by 100.  Then the new MAD is:
  defaultFeedback: >
      Median is unaffected by increasing the maximum value.
  shuffleOptions: true
  options:
  - answer: 10
    isCorrect: true
      
  - answer: 110
      
  - answer: 60
      
  - answer: cannot be computed based on the given information.
      
- typeName: multipleChoice
  prompt: >
      We have a univariate data set  having median m. 10 more cases
  are appended to the data set each with the same value m. Then
  how will the MAD change?
  defaultFeedback: >
      The median still remains m. In the list of absolute
      deviations the new values will all contribute 0, the least
      possible value.
  shuffleOptions: true
  options: cannot increase.
  - answer:
    isCorrect: true
    feedback: >
      
  - answer: cannot decrease.
    feedback: >
      
  - answer: must stay the same
    feedback: >
      
  - answer: none of the above may be said in general.
    feedback: >
      

</EXRLIST>
</FLD>
<SCRIPT t="4:55" done="k" id="m5/l3/v2">
<SESS t="0.40" done="r" id="s1">
Now let's see how to compute MAD using
LibreOffice. Unfortunately, LibreOffice or its paid analog Excel
does not have any readymade command for this. But they can
compute median and take absolute values. So it is not hard to
compute MAD with them. Let's see how.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="4.6" done="r" id="var_532">
[Screencast: Same data. Compute MAD]
var.csv
</SC>
</SCRIPT>

<FLD>Mad by LibreOffice
<EXRLIST id="m5l3_b.yml">
- typeName: numeric
  prompt: >
      Consider this [[./exraux/gh.xlsx]]. Compute MAD of the
  variable height considering both genders.

  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - range:
    isCorrect: true
    feedback: >
      
  - range:
    feedback: >
      
  - range:
    feedback: >
      
  - range:
    feedback: >
      
- typeName: multipleChoice
  prompt: >
      Here is a portion of a LibreOffice spreadsheet:
       [[./exraux/sheet.png]]
      In order to create a column of deviations from the median a
      statistician has writen an formula in the cell marked *, and
      then plans to drag the formula from cell B2 to B6. Which of 
      the following will work?
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: =A2-median(A$2:A$6)
    isCorrect: true
    feedback: >
      
  - answer: =A2-median($A2:$A6)
    feedback: >
      
  - answer: =A2-median(A2:A6)
    feedback: >
      
  - answer: =X2-median(X$2:X$6)
    feedback: >
      
- typeName: checkbox
  prompt: >
      Again consider the same spreadsheet as above. The cell C10
  contains the formula =median(A2:A6). Then which of the
  following formulae should be dragged from B2 to B6 in order to
  create the deviations of the values from their median?
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: =A2-$C$10
    isCorrect: true
    feedback: >
      
  - answer: =A2-C$10
    feedback: >
      
  - answer: =A2-$C10
    feedback: >
      
  - answer: =A$2-C$10
    feedback: >
      

</EXRLIST>
</FLD>

<SCRIPT id="m5/l3/v3" done="k" t="3:30">
<SESS t="1.20" done="r" kf="10,70,80,140,150,210" id="s1">
MAD has all the good properties of a dispersion measure that we
have learned<V>[data shown]</V>. If all the points are the
same<V>[anim shown]</V>,  then the median is
that common value, so the deviations are all 0, and so is MAD.
---
Similarly <V>[data shown]</V>, if you shift all the points by the same amount<V>[anim shown]</V>, then the median
also gets shifted by the same amount. So when we compute
deviations by taking differences, this common amount gets
cancelled. So MAD remains unchanged.
---
Finally <V>[data shown]</V>, if all the numbers are multiplied by some constant<V>[anim shown]</V>, the median
also gets multiplied by the same constant. So each of the
deviations <M>x_i-median</M> also gets multiplied by the same
constant. When you take absolute value, the effect of the sign
goes away. And so the MAD is also scaled appropriately.
</SESS>
<JINGLE t="0.1">Bad properties</JINGLE>
<SESS t="0.30" done="r" id="s2">
MAD cannot be computed easily by hand. That was the main reason
why people did not use it much before the advent of computers. Of
course, this is hardly a consideration in the modern age. 
</SESS>
<JINGLE t="0.1">Another MAD</JINGLE>
<SESS t="2" done="r" kf="10,40,70,80" id="s3">
Ramble: 
We defined MAD as a robust version of variance. <V>[var
formula]</V>

Present as mean sqd dev<V>[shown]</V>
---
The robust version was MAD.<V>[shown]</V>

Robustified twice. Second thing makes computation tough.
So combine.<V>[finger]</V>
---
The result is also called MAD.<V>[shown]</V>

But our defn is more common.
</SESS>
</SCRIPT>

<FLD>MAD trans
<EXRLIST id="m5l3_c.yml">
- typeName: textReflect
  prompt: >
      Some heights reported in centimetres have MAD 150.4 cm. If
      the same heights were reported in inches, then the MAD would
      have been 
  defaultFeedback: >
      MAD also changes unit, just like the data: 150.4/2.54 = 59.21 inches. 

      
- typeName: textReflect
  prompt: >
      Find the mean absolute deviation from mean for the
      following data: 
         |  X |
         |----|
         | 23 |
         | 14 |
         | 46 |
         | 27 |
         | 30 |
  defaultFeedback: >
      mean = 28. So mean absolute deviation from mean is 8.

</EXRLIST>
</FLD>
<SCRIPT done="k" id="m5/l3/v4" t="5:31">
<SESS t="0.9" done="r" id="s1">
Ramble intro
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="5" done="r" id="rob_534">
Robustness comparison between SD and MAD.
rob.csv
</SC>
</SCRIPT>
<FLD>
<EXRLIST id="m5l3_d.yml">
- typeName: multipleChoice
  prompt: |-
      We have two variables in a data set of equal size. Their
      MAD and SD are like these:
          |            |  MAD |   SD |
          |------------+------+------|
          | Variable 1 |  3.4 | 30.4 |
          | Variable 2 | 40.2 | 41.0 |
      Which variable is more likely to contain outliers?

  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: Variable 1.
    isCorrect: true
    feedback: >
      
  - answer: Variable 2.
    feedback: >

- typeName: multipleChoice
  prompt: >
      Which is expected to be less robust, mean absolute
  deviation abount mean, or median absolute deviation about median?
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: mean absolute deviation about mean
    isCorrect: true
    feedback: >
      
  - answer: median absolute deviation about median
    feedback: >
      
</EXRLIST>
</FLD>
</LESSON>

<HEAD2>Module 5: Lesson 4</HEAD2>


<LESSON>
<SCRIPT id="m5/l4/v1" done="k" t="6:51">
<SESS t="1.40" done="r" kf="10,20,30,40,50" id="s1">
We have already learned about quite a few dispersion
measures. These included the most popular variance and standard
deviation, and the robust MAD. So it might seem unnecessary to
learn about yet another measure of dispersion, the 
<B>interquartile range</B>.
---
 Just as MAD is a robustified version of standard
deviation,  interquartile range is a robustification of
range. Not that it is
used much. But still we should know it, because it is closely
connected with an important graphical representation, the
<B>box plot</B> or the <B>box-and-whiskers plot</B>. 
---
Let us understand  interquartile range pictorially in
relation with the range. Imagine the data points along a number
line, as usual<V>[shown]</V>.
---
 When we defined range, we looked at the two
extremes and took the distance between them. We noticed that the
two extremes are very likely affected by outliers, and so range
was not robust at all. So let's shave away part of the data from
both the extremes<V>[shown]</V>.
---
 This is just like trimmed mean. But here we
shall trim off 25% of the data from either end. So that leaves
50% data in the middle. Now we take the range of that. That
is the interquartile range.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="5" done="r" id="rob_541">
IQR computation. and robustness comparison.
</SC>
</SCRIPT>

<FLD>IQR hand and LibreOffice computation and properties
<EXRLIST id="m5l4_a.yml">
- typeName: textReflect
  prompt: >
      Compute IQR based on this data set:
       |   X |
       |-----|
       | 3.4 |
       | 2.8 |
       | 5.6 |
       | 6.1 |
       | 2.8 |
       | 0.5 |
       | 3.4 |
  defaultFeedback: >
      First sort the values: 0.5 2.8 2.8 3.4 3.4 5.6 6.1.
      Here Q1 is the second value: 2.8 and Q3 is the 6th: 5.6.
      So IQR = Q3-Q1 = 2.8.

- typeName: textReflect
  prompt: >
      Compute IQR of the Sales 1 variable using LibreOffice using
      this data set: [[./exraux/pvalcomp.xlsx]]

  defaultFeedback: >
      Q1 = 1.3 and Q3 = 3.9. So IQR = 2.6

- typeName: multipleChoice
  prompt: >
      By changing just a single value in a univariate data set
      with 10 cases, the IQR cannot change. True or false?
  defaultFeedback: >
      The value you change might be Q1 or Q3.      
  shuffleOptions: true
  options:
  - answer: False.
    isCorrect: true
    feedback: >
      
  - answer: True.
    feedback: >

</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 5, Lesson 4,  Video 2: Boxplot</HEAD3></STKY>
<SCRIPT id="m5/l4/v2" done="k" t="5:39">
<SESS t="0.70" done="r" kf="0,15,30,45,60,75,90,105" id="s1">
A box-and-whiskers plot (or a box plot, for short) is a quick summary picture
of a single continuous or count variable.
---
 It consists of a
box<V>[shown]</V>, a line somewhere in the middle through
it<V>[shown]</V>, and two whiskers<V>[shown]</V>.
---
 The box extends from the
first quartile to the third quartile<V>[Q1, Q3 shown]</V>. The
central line is through the median<V>[med shown]</V>.
---
 Different variants of the box
plot use different extents for the whiskers. The simplest is from
the minimum<V>[shown]</V> to the maximum<V>[shown]</V>
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="6" done="r" id="s1">
[Screencast: Use BoxplotR]
[cons.csv]
</SC>
</SCRIPT>

<FLD>boxplot interpret
<EXRLIST id="m5l4_b.yml">

- typeName: checkbox
  prompt: >
    Consider the  box plots for two variables. [[./exraux/bixinc.png]]
    Then which of the following statements is/are true?
  shuffleOptions: true
  options:
  - answer: >
      Male income has higher dispersion than female income.
    isCorrect: true
    feedback: >
      Yes, the first box is taller than the second.
  - answer: >
      There are two outliers for the male income that are
      too high. 
    feedback: >
      No, they are too low.
  - answer: The medians of the two variables are equal.
    isCorrect: true
    feedback: >
      Yes, the central lines are on the same level.

</EXRLIST>
</FLD>


<STKY>
<HEAD3>Module 5, Lesson 4,  Video 3: Lab 2</HEAD3></STKY>
<SCRIPT id="m5/l4/v3" done="k" t="3:46">
<SESS t="1.5" done="r" id="s1">
Ramble Intro about two tricks.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="2.5" done="r" id="s1">
[Screencast: Use LibreOffice stock plot]
cons.csv
</SC>
</SCRIPT>
<STKY>
<HEAD3>Module 5, Lesson 4,  Video 4: Lab 3</HEAD3></STKY>
<SCRIPT id="m5/l4/v4" done="k" t="6:04">
<SC t="6" done="r" id="constrick_544">
[Screencast: Use LibreOffice barplot trick]
cons.csv
</SC>
</SCRIPT>


<FLD>
<EXRLIST id="m5l4_c.yml">
- typeName: textReflect
  prompt: >
     Create a box plot of the data in [[./exraux/pvalcomp.xlsx]].  
  defaultFeedback: >
      min= 0, Q1 = 1.3, Q2 = 2.55, Q3 = 3.9, max = 5.

</EXRLIST>
</FLD>

</LESSON>
<HEAD2>Module 5: Lesson 5</HEAD2>
<LESSON>
<STKY>
<HEAD3>Module 5, Lesson 5 ,  Video 1: Review</HEAD3></STKY>
<SCRIPT id="m5/l5/v1" t="3:00" done="k">
<SESS t="2.60" done="a" id="s1">
We have arrived at the end of the fifth week. We are nearing the
end of our lectures. This week we have covered dispersion. While
discussing central tendency last week...
---
 we mentioned the typical distribution of values of a variable, a
dense cluster at the centre with two tapering tails on the two
sides. While summarising such a distribution, the very first quantity of
interest is the position of the centre.
---
 That's what central
tendency did for us. Once we have measured that, the next
question is how close to that ideal value we are on an
average. That's what is measured by dispersion. 
---
Indeed, there is a joke that if  a statistician has one foot 
in the freezer and another in the oven, then he would be comfortable on an
average.
---
 Well, the truth is: he won't be. Because the dispersion
is so high, that average will be meaningless in such a
situation. 
---
Most of the time dispersion is of secondary importance compared
to central tendency. Dispersion is quoted just to provide an idea
as to how much confidence we should repose in the central
tendency. 
---
However, there are situations where dispersion comes first. The
most prominent example is in measuring volatility of some stock
prices.
---
 A high amount of fluctuation in the price signifies lack
of stability in the market. The central tendency of the prices
tells us about the stock itself, while the dispersion tells us
something about the underlying market behaviour. 
---
Another situation is where we are measuring precision of an
instrument. A 3D printer, for example. You give it an instruction,
like move the head to such and such position.
---
 Does that take the
head to the exact position you wanted? Well, there's always some
variation, more precise the instrument the less is the
variation.
---
 When you are rating the precision of the instrument,
the exact position is not of much importance, the important  thing is 
how closely the machine carries out its orders. 
---
We have discussed quite a few measures of dispersion, starting
with the simple range, followed by variance and standard
deviation,...
---
 and finally we have talked about the interquartile
range. In passing we have mentioned a very useful grphical
device, the boxplot. We have also talked about robustness. 

Let's review these concepts one by one.
</SESS>
</SCRIPT>
<STKY>
<HEAD3>Module 5, Lesson 5 ,  Video 2: Review</HEAD3></STKY>

<SCRIPT id="m5/l5/v2" t="2:53" done="k">
<SESS t="5" done="a" kf="30" id="s1">
Boxplot.
We have talked quite a bit about it. It is certainly the most
sophisticated of all the graphical representations of data we
encounter in this course.
---
 Indeed, if you show a boxplot to
a layman, he would not be able to make any head or tail of
it.
---
 That is possibly the reason why Libreoffice does not offer a
ready made way to make a boxplot. 
---
But still the fact remains that a boxplot is a very informative
kind of plot, it gives all sorts of useful information about a
continuous or counting variable.
---
 Somewhat like a Swiss army knife
of charts. It tells us about the central tendency, dispersion as
well as warns us about potential outliers, provided the whiskers
are drawn appropriately.
---
 If you have a multivariate data, just
draw the boxplots side by side along the same axis, and you'll
get a good comparison. For example, here are the box plots of the
iris data.<V>[shown]</V> 
---
The iris data consist of 4 measurements of 150 iris flowers. The
flowers are of three diferent species of iris. The measurements
are sepal length, sepal width, petal length and petal width. <V>[discuss]</V>
</SESS>
</SCRIPT>
<R>
o(5,5,2,1)
png('irisbox.png',bg='transparent')
boxplot(iris[,-5],col='blue',lwd=3,lty=1)
dev.off()
</R>
<SCRIPT id="m5/l5/v3" t="3:27" done="k">
<SESS t="2.50" done="a" kf="30" id="s1">
What are the most popular measures of dispersion? The answer is
variance and its square root standard deviation.
---
 They strike a
good balance between ease of computation, and ease of
mathematical manipulation. We have really not talked much about
mathematical manipulation so far. Let me give the basic
idea. 
---
There are situations where you want to maximise
dispersion. Let me illustrate the need with a non-mathematical
example.
---
 Suppose you visit a new country for a few months. Your
natural tendency would be to visit as many different types of
places as possible to get a comprehensive taste of the
place.
---
 You'll visit the mountains there, and the sea, and the
desert. In other words, you want to maximise the
dispersion. Higher the dispersion the more extensive your
experience. 
---
Here is a more statistical example. Consider this
scatterplot<V>[shown]</V>. Imagine looking at it from this side, then the
dispersion is large.
---
 But if you look from this side, then the
dispersion is much smaller. To get a better view of data we
generally prefer to look at it from an angle like this,
maximising the dispersion.
---
  Here we found this  direction by
inspection. If we want to do it using statistical machine
learning, we need to do this automatically. Is that possible? Yes, by maximising the
dispersion mathematically.
---
When you want to maximise dispersion mathematically, the
technique is to take some measure of dispersion and maximise its
value.
---
 The formula of variance, being composed of simple things
like subtraction, squaring and summation , is particularly well
suited for that purpose.
---
 MAD or IQR involve complicated things
like sorting and absolute values, that are not very easy to work
with mathematically.
---
Thus, in this example, we express the variance of the observed points as a
function of the angle of viewing, and then maximise it
mathematically, using calculus or matrix algebra. We shall learn about the details
in a later course. 
---
This two dimensional example may not sound very exciting, because
why do calculus, matrix algebra and stuff when we can just use
visual inspection? Because
the math technique is more general and may be used even for
higher dimensional data.
---
 Suppose that you have 10 variables. That
means 10 dimensional data. Now you cannot create a
10-dimensonal scatterplot! But still the mathematical
technique works fine. 
---
Quite a few sophisticated statistical techniques are born out of
this approach. We shall learn about some of them later in the
different course.
</SESS>
</SCRIPT>
<R>
o(5,5,3,1)
png('scatproj.png',bg='transparent')
x = rnorm(30)
y = x + rnorm(30)/5
bareplot(x,y,pch=20,cex=2,col='blue')
abline(h=0,v=0,lwd=3)
dev.off()
</R>
<SCRIPT id="m5/l5/v4" t="2:54" done="k">
<SESS t="2.50" done="a" id="s1">
We have encountered the concept of outliers and robustness
already a number of times duing this course.  Outliers are the
far flung cases that do not conform to the general bulk behaviour
of the data.
---
 While each outlier deserves individual attention, we
generally agree that they should not be allowed to influence any
measure of central tendency, because central tendency deals with,
well, the centre of the data. 
---
But how should we deal with outliers while measuring dispersion?
Dispersion is about how far away the points may deviate from the
centre.
---
 So shouldn''t outliers be allowed to influence it? Well,
even here the answer is
no. Dispersion, just like central tendency, is about the bulk
behaviour of data.
---
 Outliers are not so much about being far
flung , as they are about being erratic.
---
 If only a few values lie
very far from the centre, that should not influence dispersion much. We do care about far
flung values, provided there are many of them.  
---
It is in this respect that variance and standard deviation get
beaten by MAD and IQR. Thus when we are reporting dispersion of a
variable (as oppposed to maximise it), then robust measures of
dispersion are prefered. That is why boxplot uses IQR. 
---
A robust measure of cntral tendency and a robust measure of dispersion together provide a
common way of detecting outliers. Start with a robust measure of
central tendency.
---
 So you have a point which should lie at the
centre of the good points, the bulk of the points. Then compute a robust measure of
dispersion.
---
 This gives an idea of how far a good point may be
expected to deviate from that centre. Now divide the deviation of
each point from the centre by this robust dispersion.
---
 In other words, express the actual deviation relatively in  units of
dispersion. The points with relative devitions exceeding 3 are
flagged as outliers.
---
 The cut off 3 is just a rule of thumb, but
the idea is that once you express the deviations in units of
dispersion, you may use some absolute cut off.
---
Indeed, certain variants of the boxplot uses this idea to define
the extent of the whiskers. 
</SESS>
</SCRIPT>

<SCRIPT id="m5/l5/v5" t="5:20" done="k">
<SESS t="0.5" done="n" id="s1">
We have seen that there are two different formulae for computing
variance of a bunch of numbers. One formula uses... n in the
denominator, and the other uses n-1. 
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="5" done="r" id="sc_varalt_555">
VAR.P VAR.S VARPOP (in pivot tables)
varalt.ods
</SC>
</SCRIPT>

<FLD>
<EXRLIST id="m5_add.yml">
- typeName: multipleChoice
  prompt: >
      Consider this stock price time series data [[./exraux/m5_1.csv]] of length thousand. Consider the first 100 values
only (ie 1st to 100th) , and find the variance, call it V1. Next, consider
the 100 values from the 2nd to the 101st, and find their
variance, V2. Continue shifting a window of width 100 over the entire
data in this way. In general Vk is the variance of
the k-th value to (99+k)-th value, for k from 1 to 901. 
Use a plot of the Vk values againt k  to find the time point
  when the volatility is maximum.
  defaultFeedback: >
      The Vk values give you an idea about the volatility. So you
  should look for the maximum Vk. 
  shuffleOptions: true
  options:
  - answer: Around time 250.  
    isCorrect: true
    feedback: >
      Yes. The maximum Vk is when k=200. Adding half the window
  length (100/2 = 50) to it, gives the centre of the most
  volatile window.
  - answer: Around time 500.
    feedback: >
            No, Vk values quite low there. 
  - answer: Around time 600.
    feedback: >
      No, Vk values quite low there. 
  - answer: Around time 200.
    feedback: >
      Well, the maximum Vk occurs for k=200. But as we are using
    a window of length 100, we should better add 100/2 = 50 to it
    in order to reach the centre the window.



- typeName: checkbox
  prompt: >
      There are three variables in the data set
  [[./exraux/m5_2.csv]]. Which of the following is/area true
  about this data set?

  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: > 
     It is meaningful to
  create a boxplot for only the Length1 and Length2 variables. 
    isCorrect: true
    feedback: >
      Yes, these are the only two continuous variables.
  - answer: Length2 has the longest box. 
    isCorrect: true
    feedback: >
      Yes. Length2 has maximum IQR.
  - answer: >
     It is meaningful to create a boxplot for all the three variables.
    feedback: >
      No, Metal Type is a categorical variable.
  - answer: >
      The Metal Type variable has the longest box.
    feedback: >
      Metal Type is not even a continuous variable. So boxplot
      does not make sense for it.


- typeName: checkbox
  prompt: >
       Which of the following statements is/are true about a continuous variable in a data
set with 11 cases: 

  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: >
     Just by changing a single value  we may   change IQR.
    isCorrect: true
    feedback: >
      Yes, changing Q1 or Q3 (ie the 3rd or 7th value in the
  ordered data set) would change the IQR.
  - answer: >
     Changing any single value in the data set would change the IQR.
    feedback: >
      No, you may reduce the minimum. That would not change the IQR.
  - answer: >
 It is impossible to change the IQR by changing only a
    single value in the data set.
    feedback: >
      No, if you change Q1 or Q3 the IQR would change.
  - answer: > 
      We may change a suitably chosen 9 out of the 11 values and
      still keep IQR unchanged.
    isCorrect: true 
    feedback: >
      Yes, just leave the 3rd and 7th values in the ordered data unchanged. 
  
- typeName: checkbox
  prompt: >
      Which of the following statements is/are true about a
  univariate data
  set with at least 10 cases.
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: >
     Presence a very high outlier would make
  standard deviation exceed IQR.
    isCorrect: true
    feedback: >
      Yes, standard deviation is less robust, and grows in
  presence of outliers.
  - answer: >
     Presence of  a very low outlier would make
  standard deviation exceed IQR.
    isCorrect: true
    feedback: >
            Yes, standard deviation is less robust, and grows in
  presence of outliers.
  - answer: >
     Presence of  a very low outlier would make
  standard deviation smaller than IQR.

    feedback: >
      No, an outlier (low or high) will always increase standard deviation.
  - answer: >
      IQR can never exceed standard deviation.
    feedback: >
      No, consider a data set with 10 values, half of which are
      at either extreme. 

- typeName: numeric
  prompt: >
   The variance (with n in denominator) of a variable in a data
set of size 10 is 20 and
mean 3. A new case 3 is appended to the variable. What is the new
variance?      
  defaultFeedback: |-
    Mean remains the same. 
      Sum of squares was 10*(20 + 3*3) = 290
      New sum of squares = 290 + 3*3 = 299
      New n = 11
      New variance = 299/11 - 3*3 = 18.18
      
  shuffleOptions: true
  options:
  - range: [18.1, 18.2]
    isCorrect: true

</EXRLIST>
<R>
cw('exraux')
set.seed(44636)
x = 10+rnorm(1000)
x[200:299] =  10+5*rnorm(100)
x = trim(x)
png('m5_1.png')
plot(x,ty='l')
dev.off()
ans = numeric(1000-99)
for(k in 1:(1000-99)) {
  ans[k] = var(x[k:(k+99)])
}
clos = 190:210
plot(clos,ans[clos],ty='l')
which.max(ans)
csv(x,'m5_1.csv')
</R>

<R>
cw('exraux')
x = iris[,c(1,3)]
y = c(rep(1,50),rep(2,50), rep(3,50))
x = cbind(x,y)
names(x) = c('Length1', 'Length2', 'Metal type')
csv(x,'m5_2.csv')
png('m5_2.png')
boxplot(x[,1:2])
dev.off()
</R>
</FLD>

</LESSON>
<REF>
WW: Chapter 4
FPP: Chapter 4, parts 4--6.
</REF>

<HEAD1>Module 6: Association etc</HEAD1>
<SCRIPT id="m6/intro" done="k" t="1:07">
<SESS t="1.20" done="r" id="s1">
We are nearing the end of our long journey. This is the last week
of lecture in this course. Last, but not the least. Indeed the
topic of this module will open up a whole new world, the world
where we explore relation between different variables. 
---
So far we have mostly focused on a single variable at a
time. We often had multiple variables in the same data set, but
we mostly worked with them one at a time. This week we shall consider
 two variables together.
---
 The discussion that we shall
start here will eventually culminate in the Multivariate
Statistics course in later semester, where we shall deal
with multiple variables simultaneously. 
---
This week's structure is basically the same as that of the
earlier ones. Four lessons followed by a review lesson. Practice
problems in between, and a weekly test at the very end. 

So let's get started!
</SESS>
</SCRIPT>

<HEAD2>Module 6: Lesson 1</HEAD2>

<STKY><HEAD3>Module 6, Lesson 1, Video 1: Bivariate data, The concept via plots</HEAD3></STKY>
<LESSON>
<SCRIPT id="m6/l1/v1" done="k" t="4:55">
<SESS t="2.40" done="r" kf="10,20,30,40" id="s1">
Nature around us obeys various laws, and scientists have been trying to
capture these laws in the language of mathematics and physics and
chemistry and what not. All those laws are precise. But nature
isn't. Nature does follow the  laws, but under a cover of
unpredictability.
---
 While other branches of science try to look
under this cover, statistics tries to study the cover itself. 

Now if you look at the laws of nature, be it Newton's laws of
motion or Darwin's theory of evolution, we notice that the laws
connect different quantities.
---
 How will this quantity, this
variable, change if that variable changes in a certain
way? 
---
How will blood pressure change with dose of a certain drug?
<V>[spring shown]</V> How will
the length of a spring change when the load hung from
it changes?
---
<P/>
To answer such questions based on data we need to observe both
the variables simultaneously. Like this weight dangling from
the end of a spring. I note the weight and record the length,
then change the weight and record the new length, and keep on
doing this a number of times.
---
 This gives rise
to bivariate data. This was an example of experimental data,
where I, the experimenter, am actively changing the weight. A
bivariate data may also result from an observational study. For
instance, I may measure the heights and weights of different
persons.<V>[hw shown]</V>
---
Another example, that we have already seen
is about educational level and income group,<V>[eduinc shown]</V> which leads to a
contingency table. In the earlier examples both the variables
were continuous. But in this example
both the variables are categorical.
---
 It is also possible to have a
mixture, like a study that wants to compare monthly income of rural
and urban population. Here we  would have two variables: <B>background
(rural/urban) and monthly income.</B>
---
We have encountered bivariate data already in our
course. In fact, we have learned some basic techniques to analyse
them as well. Let's start with a quick review. 
</SESS>
<JINGLE t="0.1">Scatterplot</JINGLE>
<SESS t="2.10" done="r" kf="0,10,70,130,140" id="s2">
When it comes to explore the relation between two continuous
variables, nothing beats a simple scatterplot<V>[linear pattern shown]</V>.
---
Later in this lesson, we shall learn  about various mathematical
formulae for quantifying such a relation. Those are impressive, but do not
reduce the power of the scatterplot. Two continuous variables may
be related in a myriad of complex ways.
---
 A dumb mathematical formula falls far too short of capturing all the
possibilities. The human eye (with a brain behind it) can capture
a far greater variety. If the relation is like this, somewhat
like a straight line, we can hope to capture it using a formula
like <B><M>y=m x+c.</M></B>
---
 But how would you even describe a relation
like this<V>[anim to complex]</V>? Or this<V>[another anim]</V>? 
In this second case<V>[trans and finger]</V>  you possibly have to choose two different
straight lines for the two different parts.
---
 Let's pretend you have a
software to fit the lines for you. So you have two softwares, one
fits a single line, another fits a double line.
---
 Even if both these softwares are very reliable, you still need to decide which
one of them to use for <I>your</I> data set, and there you'll
need a scatterplot. 
---
So never underestimate a scatterplot. If you are analysing
bivariate data with continuous variables, and you have not
plotted a scatterplot right at the outset, you are in a state of
unpardonable sin! 
---
If both the variables are categorical, then we usually resort to
<B>contingency tables</B>. So far we have not done much with
contingency tables, except just constructing them from raw
data. We shall learn to do things with them later this week.
</SESS>
</SCRIPT>
<FLD>*4

<EXRLIST id="m6l1_a.yml">

- typeName: multipleChoice
  prompt: >
    Here are two bivariate scatterplots. 
    [[./exraux/twoscat.png]]
    Which of the following is true about them?
  defaultFeedback: >
      Are you sure? An increasing relation means a south-east to
      north-west layout of the points.
  shuffleOptions: true
  options:
  - answer: >
      the first shows an increasing relation, the second a
      decreasing relation.
    isCorrect: true
    feedback: >
      Yes, that's correct. A   south-east to
      north-west layout of the points indeed 
      indicates an increasing relation.

  - answer: >
      the first shows a decreasing relation, the second an
      increasing relation.
  - answer: both show an increasing relation.
  - answer: both show a decreasing relation.
      
- typeName: multipleChoice
  prompt: >
     Consider the following 4 plots.
      [[./exraux/fourscat.png]]
     Which of these show(s) a nonlinear pattern?
  shuffleOptions: true
  options:
  - answer: C
    isCorrect: true
    feedback: >
      Yes, only these two cannot be captured via straight lines.
  - answer:
    feedback: >
      No, try to pass a straight line through the data cloud.
      Which two will not allow that?
  - answer:
    feedback: >
      No, try to pass a straight line through the data cloud.
      Which two will not allow that?
  - answer:
    feedback: >
      

- typeName: checkbox
  prompt: >
    Here is a scatter plot with a nonlinear relation. 
                      [[./exraux/onescat.png]]
    which of the following is/are true about it? 
  shuffleOptions: true
  options:
  - answer: First increasing, then decreasing
    isCorrect: true
    feedback: >
      Yes, the data cloud has an inverted U-pattern.
  - answer: First decreasing, then increasing.
    feedback: >
      But that would give a U-like pattern.
  - answer: >
      The relation becomes more obscure for larger
      value of x.
    isCorrect: true
    feedback: >
      Yes, if you imagine a curve through the center of the
      data cloud, the points are deviating more from it
      as x increases.      
  - answer: >
      The relation becomes more obscure for smaller values
      of x.
    feedback: >
      Hmmm...if we imagine a curve through the centre of the data
      cloud, then aren't the points actually tightly adhering
      to it when x is small?



- typeName: multipleChoice
  prompt: >
    Here are two scatterplots. 
               [[twomorescat.png]] 
    If you want to predict y from x,
    then which data will provide more reliable prediction? 
  defaultFeedback: >
    The tighter the points are along a line, the more reliable
    the prediction.
  shuffleOptions: true
  options:
  - answer: the first data.
    isCorrect: true
      
  - answer: the second data.
      
  - answer: both will provide equal amount of reliablilty. 
      
  - answer: cannot answer just based on the plots.
</EXRLIST>

</FLD>

<SCRIPT id="m6/l1/v2" done="k" t="3:10">
<SESS t="3.60" done="r" kf="10,20,30,40,70,80,120,140,150,160" id="s1">
Suppose we have a bivariate data set<V>[shown]</V>, heights and weights of some
adult males. Here both the variables
are continuous. The scatterplot looks like this<V>[shown]</V>. You can see that there
is an increasing relation between the two variables.
---
 A tall person
tends to be heavy. Now what exactly do we mean by a tall
person? We mean taller than average.
---
 Thus, if <B><M>x_i</M></B> denotes the height of the <M>i</M>-th guy,
and <B><M>\bar x</M></B> is the average, then a 
 tall guy is one for whom <B><M>(x_i-\bar x)</M></B> is a
large positive number.
---
 Similarly, if <M>y_i</M> denotes the
weight of the <M>i</M>-th guy,<V>[shown]</V>  then a
heavy guy is one who has large positive <M>y_i-\bar y.</M> Thus,
here positive values of <M>x_i-\bar x</M> tend to go with
positive values of <M>y_i-\bar y.</M>
---
 Similarly, shorter guys
tend to be lighter, i.e., negative values of <M>x_i-\bar x</M>
generally go with negative values of <M>y_i-\bar y.</M> 
---
This idea that <M>x_i-bar x</M> and <M>y_i-\bar y</M> generally
have the same sign is nicely captured by  their product 
<B><M>(x_i-\bar x)(y_i-\bar y).</M></B> If this is positive,
then <M>x_i-bar x</M> and <M>y_i-\bar y</M> have the same
sign.
---
 Hence this notion of an increasing relation may be
expressed as: <M>(x_i-\bar x)(y_i-\bar y)</M> values are
typically positive. Since there are many such  values 
(one for each guy), and we are talking about their
typical value, this is a case for central tendency.
---
 So we look at
the mean of these numbers:
<B><D>
[[1n]]\sum (x_i-\bar x)(y_i-\bar y).
</D></B>
---
This quantity has a special name, it is called the <B>covariance
between</B> height and weight, because it measures how the two
variables vary together. It is denoted by <M>\cov(x,y).</M>
---
 The hope is that if <M>\cov(x,y)>0</M> then cases with higher
values of <M>x</M> tend to have higher values of <M>y,</M> as
well. If, on the other hand, <M>\cov(x,y)<0</M>, then larger
values of <M>x</M> will tend to go with smaller values
of <M>y.</M>
---
 However, as I have said already, two variables may
be related in ways too complex to be just classified as
increasing or decreasing, and covariance is easily confused in
such complex cases. We shall see such examples soon. 
---
But before that we shall explore some mathematical properties of
covariance, some desirable, some not.
</SESS>
</SCRIPT>

<FLD>*4
<EXRLIST id="m6l1_b.yml">
- typeName: textReflect
  prompt: |-
    Compute the covariance between X and Y using the following
    bivariate data set: 
    |  X |  Y |
    |----+----|
    | 12 | 34 |
    | 56 | 23 |
    | 14 | 67 |
    | 23 | 60 |
    | 34 | 49 |
  defaultFeedback: >
    Roughly -348.8. 
      
- typeName: textReflect
  prompt: >
     If cov(X,Y) = 2.3, then what is cov(2*X,Y)? 
     Hint: Use the definition of covariance.
  defaultFeedback: >
     2.3 * 2 = 4.6.

- typeName: multipleChoice
  prompt: |-
     Consider this data set:
       |  X | Y |
       |----+---|
       | -2 | 4 |
       | -1 | 1 |
       |  0 | y |
       |  1 | 1 |
       |  2 | 4 |
     Find all possible values of y so that cov(X,Y)=0. 
  shuffleOptions: true
  options:
  - answer: 0.
    isCorrect: true
    feedback: >
      Yes, you can see this by writing cov(X,Y)=0
      as an equation in one unknown, y.
  - answer: 0 and 1.
    feedback: >
      Try writing cov(X,Y)=0
      as an equation in one unknown, y.
  - answer: all values of y.
    feedback: >
      Hmmm..., just compute cov(X,Y) using y=2000.
  - answer: no possible value of y.
    feedback: >
      Try writing cov(X,Y)=0
      as an equation in one unknown, y.      
      
- typeName: numeric
  prompt: >
    Find cov(X,Y), if X has variance 1,
    and Y = 2*X + 1.
  defaultFeedback: >
    Directly apply the definition. The answer is 2.
</EXRLIST>
<R>
fff
x = c(12,56,14,23,34)
y = c(34,23,67,60,49)
sum(x*y)/6-mean(x)*mean(y)
</R>
</FLD>

<SCRIPT id="m6/l1/v3" done="k" t="4:05">
<SESS t="3.20" done="r" kf="10,20,30,40,50,60,70,80,90" id="s1">
In this video we shall discuss some properties of 
<B><D>
\cov(x,y) = [[1n]]\sum (x_i-\bar x)(y_i-\bar y).
</D></B>
---
This number is designed to shed light on the relation
between <M>x</M> and <M>y.</M> A positive value is supposed to
imply an increasing relation, a negative value a decreasing
relation.
---
 Also, we would like to associate positive values much
above zero
with stronger increasing relations, and negative values much
below zero with stronger decreasing relations.
---
 That's what we
would like to have. Now let's see whether this magic formula
lives up to our expectations. 
---
Suppose that we add 3 to all the <M>x</M>'s and 7 to all
the <M>y</M>'s. Should the strength or direction of the relation between the
two variables change? No.
---
 Indeed, that is the case,<V>[finger]</V> because the
constants influence both the values and the means in the same
way, and hence gets cancelled during these subtractions. Good for
us:<B> data shift does not change covariance.</B>
---
Now suppose once again that the <M>x</M>'s denote heights
and <M>y</M>'s denote weights. Say the heights are measured in
inches and weights are measured in pounds. If we just change the
units, heights in cms and weights in kgs, do you expect the
strength and direction of  the relation to change? No!
---
 But here's
a bad news for us. Covariance does get changed here! Changing
units means multiplying <M>x</M>'s with some constant, and
the <M>y</M>'s with another constant.
--- 
Both <V>[finger]</V>the values and the
means get multiplied by the constants, and so the constants come
out. 
---
In order to rectify this defect: we propose a modified version of
the covariance, we divide the covariance by the standard
deviations of <M>x</M> and <M>y</M>:
<B><D>
[[\cov(x,y)][sd(x)\times sd(y)]].
</D></B>
---
 Since the standard
deviations also scale by the same amount as the data, the effect
of unit changes cancels out during the division. The resulting
formula is called <B>correlation</B>, one of the most frequently
used terms in statistics.
---
 This quantity always lies
between <M>-1</M> and <M>1.</M> 

It may be shown that correlation is 1 iff there is a perfect linear relation with a
 positive slope<V>[shown]</V> like this. Similarly, it is <M>-1</M> iff there is a
 perfect linear relation with negative slope.<V>[shown]</V>
---
Now we  hope that correlation being zero means no relation. 
But unfortunately that hope is
 not fulfilled. While a zero correlation may look like
 this <V>[shown]</V>, it may also look like
 this<V>[shown]</V>.
---
 Correlation fails to detect the relation
 between the variables here because the relation is
 nonlinear. The plot looks like a curve.
 And that is the greatest drawback of correlation. <B>It 
works only for linear relation.</B>
</SESS>
</SCRIPT>

<FLD>*2
<EXRLIST id="m6l1_c.yml">
- typeName: textReflect
  prompt: |-
    Compute correlation based on the following bivariate data
    set:
    |  X |  Y |
    |----+----|
    | 12 | 34 |
    | 56 | 23 |
    | 14 | 67 |
    | 23 | 60 |
    | 34 | 49 |
  defaultFeedback: >
    Roughly -0.6.
          
- typeName: textReflect
  prompt: |-
     Make a scatterplot for the following bivariate data. 
       |   X |   Y |
       |-----+-----|
       | 2.3 | 2.5 |
       | 1.4 | 1.6 |
       | 3.7 | 3.5 |
       | 4.2 | 3.9 |
       | 3.5 | 3.2 |
     Based on the scatterplot guess the sign of the correlation coefficient.
  defaultFeedback: >
    [[./exraux/scatcor.png]]
   Must be positive. In fact, pretty close to 1.
</EXRLIST>
<R>
x = c(2.3,1.4,3.7,4.2,3.5); y = c(2.5,1.6,3.5,3.9,3.2)
cor(x,y)
plot(x,y,pch=20,cex=3)
</R>
</FLD>


<SCRIPT id="m6/l1/v4" done="k" t="5:00">
<SC t="5" done="r">
[Screencast: anscombe.csv]
</SC>
</SCRIPT>

<FLD>*2
<EXRLIST id="m6l1_d.yml">
- typeName: textReflect
  prompt: |-
     Let's make our own Anscombe-like data. Here is a starting
     point: 
       | X | Y |
       |---+---|
       | 1 | 1 |
       | 2 | 2 |
       | 3 | 3 |
       | 4 | y |
       | 5 | 5 |
     Find a value of y such that the correlation becomes less
     than 0.5.
  defaultFeedback: >
     You may start by expressing the correlation in terms of the unknown
     y. But an easier way is to use LibreOffice. Actually plug
     various values in place of y and compute the correlation. In particular,
     y = 45 works:
      [[./exraux/funsol.png]]

- typeName: checkbox
  prompt: >
      Which of the following is/are reason(s) why you should not
      trust correlation coefficient blindly?
  shuffleOptions: true
  options: The relation may be nonlinear.
  - answer:
    isCorrect: true
    feedback: >
      
  - answer: The formula is complicated.
    feedback: >
      Why care about that? The computer takes care of that for you!
  - answer: There may be outliers.
    isCorrect: true
    feedback: >
      Even a single outlier may change correlation a lot!
  - answer: Making a little scatterplot beforehand never hurts.
    isCorrect: true
    feedback: >
      Aha! That's spoken like a wise statistician.
</EXRLIST>
</FLD>

<SCRIPT id="m6/l1/v5" done="k" t="6:36">
<BC t="6" done="r" id="corprop_615">
Transformation properties of correlation.
</BC>
</SCRIPT>

<FLD>*3
<EXRLIST id="m6l1_e.yml">
- typeName: textReflect
  prompt: >
     If correlation between X and Y is 0.9, then what will be 
     the correlation between 2+X and 1-2*Y?
  defaultFeedback: >
     The added constants have no effect. Neither do the
     multiplied constants. Only the signs of the multiplied
     constant matter. Here the sign before X is a plus, the 
     sign before Y is a minus. So the answer is -0.9.
      
- typeName: multipleChoice
  prompt: >
     If correlation between X and Y is -0.9, then what will be 
     the correlation between -X and -Y?
  defaultFeedback: >
     Both X and Y are negated. Since (-1)*(-1)=1, the correlation
     will remain unchanged: -0.9.
      
- typeName: multipleChoice
  prompt: |-
     Consider this data set:
      | X | Y |
      |---+---|
      | 1 | 3 |
      | 2 | 5 |
      | 3 | 7 |
      | 4 | 9 |
     Then which of the following must hold? [Hint: Don't start
     to compute right away. Think!]
  defaultFeedback: >
    X and Y are related by a perfect linear relation.
  shuffleOptions: true
  options:
  - answer: cor(X,Y) > cor(X,Y^2)
    isCorrect: true
    feedback: >
      Yes! Here Y = 2*X+1. Since we have a perfect linear
      linear relation with positive slope, cor(X,Y)=1. But
      clearly X, Y^2 are not related linearly. So cor(X,Y) < 1.
  - answer: cor(X,Y) < cor(X,Y^2)
      
  - answer: cor(X,Y) = cor(X,Y^2)
</EXRLIST>
</FLD>

<SCRIPT id="m6/l1/v6" done="k" t="6:39">
<SC t="7" done="r" id="sc_poolcor">
Idea of pooled mean, pooled variance. The shocking news for
pooled correlation.
poolcor.csv
</SC>
</SCRIPT>

<FLD>*2
<EXRLIST id="m6l1_f.yml">
- typeName: textReflect
    Construct two bivariate data sets such that  each has correlation
    1, but the pooled data has correlation less than 0.8.
    [Hint: Take the first data set (1,1), (2,2), (3,3), then
    shift these points by some amount (say add p to X-values, and
    q to all Y-values) to get (1+p,1+q), (2+p,2+q), (3+p,3+q).
    Find suitable p and q. LibreOffice might help.] 
  defaultFeedback: >
    Try these:
       [[./exraux/funsol2.png]]

- typeName: textReflect
  prompt: >
     Is it possible to have two biavariate data sets, each with
  correlation +1, but the pooled data has correlation <M>-1?</M> 
  defaultFeedback: >
     No. If the pooled correlation is -1, then the points must 
     all lie along a line of negative slope. So no subset can
     have positive correlation.
 
</EXRLIST>
</FLD>

</LESSON>

<HEAD2>Module 6: Lesson 2</HEAD2>

<STKY>
<HEAD3>Module 6, Lesson 2,  Video 1: Rank correlation</HEAD3></STKY>
<LESSON>
<SCRIPT id="m6/l2/v1" done="k" t="7:20">
<SESS t="1.80" done="r" kf="10,20,30,40,50,60" id="s1">
In the last lesson we saw that correlation coefficient or
<B>Pearson's correlation coefficient</B>, to be precise, is meant to
assess the direction and strength of <B>linear relation</B> only. It
gets confused if the relation is nonlinear.
---
 In this video we shall discuss a more general version of correlation called 
<B>Spearman's rank correlation</B> that will
measure the direction and strength of <B>monotonic relations</B>. Let us
understand what is meant by a monotonic relation. 
---
Here<V>[shown]</V> is a scatterplot showing a monotonic relation. When <M>x</M>
increases so does <M>y.</M> However, it is not linear, it looks
like a curve. Here<V>[shown]</V> is yet another example of a monotonic
relation, this time a decreasing one, when <M>x</M>
increases, <M>y</M> decreases.
---
The new correlation coefficient that we are going to learn about
will  measure the
strength and direction of the relation, assuming that the
relation is monotonic.  If the relation is not
monotonic, then the correlation coefficient will be confused, and
may give meaningless values.
---
 So we should first make a scatterplot to visually ascertain an overall
monotonic pattern before computing this new correlation coefficient. 
---
The new correlation coefficient uses the same idea as Pearson's
correlation, but with a twist. It first seeks to linearise the
relation before computing Pearson's correlation. Let's
understand this with a toy example.
</SESS>
<JINGLE t="0.1">An example</JINGLE>
<SESS t="2.30" done="r" kf="10,70,130,140,150,160,190,220,230" id="s2">
Consider <V>[shown]</V>this scatterplot. The relation is clearly
nonlinear. Consider the <M>x</M>-values alone. You can see that
they are not regularly spaced. Some are closer together, while
some are spread apart.
---
 We shall stretch out the <M>x</M>-axis
much like straightening out a crumpled handkerchief.<V>[anim]</V>
so that the x-values become regularly spaced.
---
Then we shall do the same thing with
the <M>y</M>-axis.<V>[anim]</V> 
As a result, the points on the graph have straightened themselves into a nice straight
line, except for a little hitch here. 
---
Now we may meaningfully apply  Pearson's correlation
coefficient formula.
---
 This idea of computing Pearson's
correlation coefficient after linearlising the data leads to the
concept of <B>Spearman's rank correlation.</B> 
---
The exact procedure is this. When we straighten out
the <M>x</M>-axis, we are basically making the <M>x</M>-values
regularly spaced while retaining their original order.
---
If we start from 1 <V>[finger]</V> and make the common gap also 1, then we
smallest <M>x</M>-value becomes <M>1,</M> the next
smallest <M>2</M> and so on. In other words, we are replacing the
<M>x</M>-values by their <B>rank</B>s.
---
 If the values of a variable are 
<B>4.5, 3.2, 4.2, 6.7</B>
then the ranks are ...<V>[say]</V>
We are doing the same thing with
the <M>y</M>-variable, as well.

 Let's  see a numerical example.
---
Here is a bivariate data set.<V>[hwraw shown trans]</V>. Consider
only the heights first. This
height <V>[finger]</V>
 is the smallest. So it
gets rank 1. This is the next minimum, and hence gets rank 2. In
this way we replace all the values by the ranks.<V>[hrank
shown]</V>
---
 Again we do this
seperately for the weight variable.<V>[wrank shown]</V> 

Now we compute Pearson's
correlation coefficient. The result is called <B>Spearman's rank
correlation</B> for the original data. 
---
The next video will teach us how to do this using LibreOffice.

For now let's quickly look at the properties of rank correlation.
</SESS>
<JINGLE t="0.1">Properties</JINGLE>
<SESS t="1.30" done="r" kf="10,20,30,40,50,60" id="s3">
 Since Spearman's
rank correlation coefficient is after all a Pearson's correlation
coefficient applied to linearised data, so Spearman's coefficient
inherits the mathematical properties of Pearson's coefficient: 
---
  * It <B>lies between -1 and 1</B>
---
  * It is <B>+1 in case of perfect increasing relation</B> (ie, y
increases iff x increases)
---
  * It is -<B>1 in case of perfect decreasing relation</B> (ie y
decreases iff <M>x</M> increases)
---
  * It remains <B>unchanged if either variable is transformed in any 
    way that preserves the ranks.</B> This is of course as
    expected. After all we are using just the ranks.
---
  * It <B>gets confused if the relation is far from monotonic</B>.
---
Incidentally, do not get carried away too much by the idea of
linearlising the data before applying Pearson's
correlation. Linearisation  modifies the data, and whenever 
you do that, you must make sure that you are not losing
important information. 
---
 So Spearman's
rank correlation is to be used only when the main information is
contained only in the order of the values, and not the values
themselves. In other words, this is applicable to only <B>ordinal
variables.</B> 
</SESS>
</SCRIPT>
<STKY>

<FLD>*2
<EXRLIST id="m6l2_a.yml">
- typeName: textReflect
  prompt: >
    Create a bivariate data set with Spearman's rank correlation 1,
    but Pearson's correlation less than 1.
  defaultFeedback: |-
    Think in terms of a scatterplot. the points must all lie on
    an exact increasing relation, but not on a line. For example, 
       | X |  Y |
       |---+----|
       | 1 |  1 |
       | 2 |  4 |
       | 3 |  9 |
       | 4 | 16 |
- typeName: multipleChoice
  prompt: > 
    A teachers were rated in 10-point Likert scale by the same set of students before
    after the final examination. We want to measure the
    correlation between these two ratings. Then:
  shuffleOptions: true
  options:
  - answer: we should use Spearman's rank correlation.
    isCorrect: true
    feedback: >
      Yes, we basically have ordinal data here.
  - answer: we should use Pearson's correlation.
    feedback: >
      Well, you may, but note that the data are ordinal in nature.
</EXRLIST>
</FLD>

<HEAD3>Module 6, Lesson 2,  Video 2: Rank correlation lab</HEAD3></STKY>

<SCRIPT id="m6/l2/v2" done="k" t="6:00">
<SC t="6" done="r">
[Screencast:Computation of rank correlation.]
hw2.dat: (with repetion) use =rank.avg(a1, a$1:a$100, 1) First
find rank for variable without repetition (height).
</SC>
</SCRIPT>
<FLD>*3
<EXRLIST id="m6l2_b.yml">
- typeName: textReflect
  prompt: >
     Which of the following two scatterplots show a monotonic relation? 
       [[./exraux/monscat.png]]
  defaultFeedback: >
    The second one. The first one doubles back on itself.

- typeName: textReflect
  prompt: |-
     Compute Spearman's rank correlation from the following data
     set. 
       |   X |   Y |
       |-----+-----|
       | 1.2 | 5.3 |
       | 2.3 | 4.5 |
       | 5.1 | 4.1 |
       | 6.1 | 8.8 |
  defaultFeedback: >
      Answer is 0.2.
      
- typeName: numeric
  prompt: |-
     Compute Spearman's rank correlation from the following data
     set. 
       |   X |   Y |
       |-----+-----|
       | 1.2 | 5.3 |
       | 2.3 | 4.3 |
       | 5.1 | 4.3 |
       | 2.3 | 8.8 |
  defaultFeedback: >
    Here we have a tie. Answer is -0.63.

</EXRLIST>
<R>
x = c(1.2,2.3,5.1,6.1); y = c(5.3, 4.5, 4.1,8.8)
x1 = c(1.2,2.3,5.1,2.3); y = c(5.3, 4.5, 4.1,8.8)
gg
cor(rank(x1),rank(y))
</R>
</FLD>

<STKY>
<HEAD3>Module 6, Lesson 2,  Video 3: Alternative formula for rank correlation</HEAD3></STKY>

<SCRIPT id="m6/l2/v3" done="k" t="5:52">
<BC t="6" done="r" id="dicor_623">
The d_i formula. No tie, tie.
</BC>
</SCRIPT>

<FLD>*2
<EXRLIST id="m6l2_c.yml">
- typeName: multipleChoice
  prompt: |-
     Here are two bivariate data sets. For which one would you
     use the alternative formula discussed in the video to
     compute Spearman's rank correlation? Compute it for that
     data set using the alternative formula.

       |   X |   Y |
       |-----+-----+
       | 2.3 | 3.7 |
       | 5.4 | 8.9 |
       | 2.3 | 7.0 |
       | 4.8 | 3.4 |
     and
       |   X |   Y |
       |-----+-----+
       | 2.3 | 3.7 |
       | 5.4 | 8.9 |
       | 2.4 | 7.0 |
       | 4.8 | 3.4 |
  defaultFeedback: |-
    For the second one, because there is no tie there.
    Here the ranks and di's are 
      | Rx | Ry |  d |
      |----+----+----|
      |  1 |  2 | -1 |
      |  4 |  4 |  0 |
      |  2 |  3 |  1 |
      |  3 |  1 |  2 |
    Spearman's rank correlation = 0.4.

- typeName: textReflect
  prompt: >
     If  Pearson's correlation coefficient between two 
     positive variables is 1, then what can you say about 
     Spearman's rank correlation between X and Y^2?
  defaultFeedback: >
     Must also be 1, because for positive numbers squaring is an
     increasing function.

</EXRLIST>
<R>
cor(c(1,4,2,3),c(2,4,3,1))
</R>
</FLD>

<STKY>
<HEAD3>Module 6, Lesson 2,  Video 4: Phi coefficient for binary data</HEAD3></STKY>

<SCRIPT id="m6/l2/v4" done="k" t="3:28">
<SESS t="2.90" done="r" kf="10,20,30,40" id="s1">
The idea of replacing the actual data by something convenient is
appealing, as long as no valuable information is lost. Here is
another such example. Suppose that we have a bivariate data set
where both the variables are binary, i.e., take only two
values.
---
 One example is gender vs handedness data.<V>[shown]</V> The gender
variable takes only 2 values Male and Female, and the handedness
variable takes two values Left and Right.
---
 In order to apply
Pearson's correlation formula we first encode the two values as 0
and 1.<V>[shown]</V> 
---
Call the resulting correlation
coefficient the <B><M>\phi</M>
coefficient</B>. Of course, the sign depends on which value we call 0 and
which value 1.
---
 Since we have assigned that arbitrarily, the sign
of the computed correlation coefficient has no importance. So we
interpret only its absolute value. 
---
Computing this by LibreOffice is not much difficult, and we shall
do that in the next video. But for now let's take a second look
at the 
procedure.
---
Here we chose the values 0 and 1 arbitrarily. They have no
significance. We could as well have chosen 100 and 117. But wouldn't
that change the value of <M>\phi?</M>
---
 The answer is: No, it won't. Because remember that if a variable <M>x</M> is
transformed to <M>ax+b</M> for some constants <M>a</M>
and <M>b,</M> where <M>a>0</M>, then correlation computed based
between <M>x</M> and some other variable, remains unchanged, if
we replace <M>x</M> by <M>ax+b.</M>
---
 Here you can map 0, 1 to 100, 117, using a straight line,<V>[shown]</V> like this.

From this discussion it should be apparent why this trick works
only for binary data.
---
 Because given any two distinct points you
can always draw a line through them. This cannot be guaranteed
for three distinct points.
---
A quick word about interpretation of the <M>\phi</M>
coefficient. If it is <M>\pm1</M> then there is perfect relation between
the two variables (i.e., given the value for one variable, you
can exactly predict the other).
---
 Here the variables are nominal,
so we cannot talk about the relation being increasing or
decreasing. As the value of <M>\phi</M> goes towards zero,
the strength of the relation weakens. At 0 there is no relation
at all.
---
OK, now let's see how LibreOffice can help us to compute the <M>\phi</M> coefficient.
</SESS>
</SCRIPT>

<FLD>*2
<EXRLIST id="m6l2_d.yml">
- typeName: textReflect
  prompt: |-
     Compute phi-coefficient based on the following data:
         | Drug | Status |
         |------+--------|
         | A    | Dead   |
         | A    | Dead   |
         | B    | Dead   |
         | B    | Alive  |
         | A    | Alive  |
         | B    | Alive  |
  defaultFeedback: >
- typeName: textReflect
  prompt: >
     How will the answer to the above problem change if A and B
  are interchanged? 
  defaultFeedback: >
      The sign will reverse. Of course, interpretation will
      remain the same, as the interpretation depdends only on the
      absolute value.

</EXRLIST>
<R>
tt
x = c(0,0,1,1,0,1)
y = c(0,0,0,1,1,1)
cor(x,y)
</R>
</FLD>
<STKY>
<HEAD3>Module 6, Lesson 2,  Video 5: Phi lab</HEAD3></STKY>

<SCRIPT id="m6/l2/v5" done="k" t="4:48">
<SC t="6" done="r">
[Screencast: LibreOffice phi computation.]
lr.csv:
Save whorl.csv for exercises.
</SC>
</SCRIPT>

<FLD>*1
<EXRLIST id="m6l2_e.yml">
- typeName: textReflect
  prompt: >
     Compute phi coefficient using this data set: [[./exraux/phicomp.csv]]
  defaultFeedback: >
     Roughly 0.11. Use the LibreOffice switch function to convert
     the values to 0 and 1.
</EXRLIST>
<R>
set.seed(4643)
cw('exraux')
gender = sample(2,100,rep=T)
handedness = sample(2,100,rep=T)
g = c('male','female')
h = c('left','right')
csv(data.frame(g[gender], h[handedness]),'phicomp.csv')
cor(gender, handedness)
</R>
</FLD>

</LESSON>
<HEAD2>Module 6: Lesson 3</HEAD2>

<STKY>
<HEAD3>Module 6, Lesson 3,  Video 1: Contingency table measures</HEAD3></STKY>
<LESSON>
<COMMENT>https://en.wikipedia.org/wiki/Contingency_table</COMMENT>
 Odds ratio
 Phi coefficient
 Cramer's V and the contingency coefficient C

<SCRIPT id="m6/l3/v1" done="k" t="2:04">
<SESS t="1.90" done="r" kf="10" id="s1">
In the last lesson we were discussing how Pearson's correlation
formula may be adapted to situations where the variables are not
continuous, say ordinal or even nominal. We talked
about the <M>\phi</M> coefficient, which works with bivariate
data, where both the variables are binary.
---
 Now notice that such a data set may be nicely presented as a <M>2\times2</M> contingency
table. There are four possible combinations (Male, Left), (Male,
Right) etc, that may be neatly laid out as a table.<V>[shown]</V>
---
 We just
count the number cases under each combination, and populate the
table with those frequencies. Thus, the <M>\phi</M> coefficient
may be considered as a measure of association for
a <M>2\times2</M> contingency table. 
---
In this lesson we shall take a look at some other popular
measures of association for contingency tables. Some will be
for <M>2\times2</M> tables only, like the <M>\phi</M>
coefficient, while others may be used for larger tables, as well. 
---
Unlike the way we presented the <M>\phi</M> coefficient, our
approach in this lesson will be different. We shall not try to
use Pearson's correlation formula here.
---
 Instead, we shall think
intuitively about what is meant by there being "no association"
between the two variables, take that as a benchmark, and then
compare our actual contingency table with that benchmark.
---
 The distance of our
table from that benchmark will provide a measure of
association. Well, that is the basic idea. There are a number of
possible ways to go about it, as we shall now see.
</SESS>
</SCRIPT>

<FLD>1
<EXRLIST id="m6l3_a.yml">
- typeName: textReflect
  prompt: |-
     Compute phi coefficient using this 2 by 2 contingency table:
       |        | Alive | Dead |
       |--------+-------+------|
       | Drug A |    37 |   23 |
       | Drug B |   123 |   57 |
  defaultFeedback: >
    Let X = 0 for A, 1 for B. Similarly, let Y = 0 for Alive, 1
    for Dead. 

</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 6, Lesson 3,  Video 2: Odds ratio</HEAD3></STKY>

<SCRIPT id="m6/l3/v2" done="k" t="4:41">
<SESS t="1.30" done="r" kf="9,10,50,90,130,140" id="s1">
The first approach will be like this. Again consider the gender
vs handedness data.<V>[shown]</V> What do I mean when I say that there is no
association between gender and handedness?
---
 I mean a male person
is as likely to be left handed as a female one. Assuming that we
have a data set that well represents the population, it goes like
this:
---
 Look at only the females in the data set, find the <B>odds</B>
of being a lefty among them. What is meant by odds
here?<V>[trans]</V> It is<V>[finger]</V>
the ratio of lefties to righties among the females, i.e.,  this
number by this number.<V>[anim]</V>
---
 <V>[transoff]</V>Now carry out the same
exercise for the males.<V>[anim]</V> The male odds is 5/48.
---
 In case of no
association, both the odds should be the same. So one way to
measure departure from that benchmark situation is to take the
ratio of the two odds.<V>[anim]</V>
---
 It is called the <B>odds ratio</B>. Values close to 1 signify low association,
while values away from 1 indicate high association. 

It's pretty easy to compute this using LibreOffice. Let's see how.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="4" done="r">
[Screencast: Compute odds ratio.]
lr.csv:
</SC>
</SCRIPT>

<FLD>*3
<EXRLIST id="m6l3_b.yml">
- typeName: textReflect
  prompt: >
     Which of the following statements is true about the set of
     all possibe values an odds ratio can take?
  defaultFeedback: >
     Remember that odds may take any nonegative value. 
  shuffleOptions: true
  options:
  - answer: >
       Odds ratio can take any nonnegative value, but cannot
       be negative.
    isCorrect: true
    feedback: >
      
  - answer: >
       Odds ratio can take any real number as its value.
    feedback: >
      
  - answer: Odds ratio must lie in [0,1].
    feedback: >
      
  - answer: Odds ratio must lie in [-1,1].
    feedback: >
      
- typeName: textReflect
  prompt: |-
     Compute odds ratio from this table. 
       |               | Cured | Not cured |
       |---------------+-------+-----------|
       | Physiotherapy |    34 |        98 |
       | Chemotherapy  |    57 |        29 |

  defaultFeedback: >
    (34*29)/(57*98). 
      
- typeName: multipleChoice
  prompt: >
     How will the odds ratio change if the rows of a 2 by 2
     contingency table are swapped? How will it change if the
     columns are swapped (keeping the rows unaffected)?
  defaultFeedback: |-
     If the contingency table is like
       | a | b |
       |---+---|
       | c | d | 
     then odds ratio is (ad)/(bc).  
  shuffleOptions: true
  options: Will become reciprocal of the original value in both cases.
  - answer:
    isCorrect: true
      
  - answer: Will change sign in both cases.
      
  - answer: > 
       Will become reciprocal for row swap, but change sign
       for column swap.
      
  - answer: >
       Will become reciprocal for column swap, but change sign
       for row swap.
</EXRLIST>
</FLD>
<STKY>

<HEAD3>Module 6, Lesson 3,  Video 3: Chisquare</HEAD3></STKY>

<SCRIPT id="m6/l3/v3" done="k" t="4:57">
<SESS t="3.40" done="r" kf="10,20,30,40,50,60,90,100" id="s1">
We have already seen one way of quantifiying "no association". 
Our next approach will be based on a more subtle notion of 
the same "no association" concept. 
---
It wil have the advantage of being applicable to
even larger contingency tables. Consider this table for
example.<V>[shown trans]</V>
---
 The variables are education level and income
groups. Suppose I tell you that for this data set at least there
is no association between education level and income group (oh,
terrible!).
---
Now I am giving you these marginal values. Can you tell
me this value?<V>[point]</V> At first you might wonder how to find it. But
remember I told you that there is no association between the two
variables.
---
 So if I consider each row separately then the
proportional distribution of the numbers in them must be the
same in each row.  And if the same proprtions prevail in each row,
they must also prevail in these marginals.
---
 Now from these totals I can see that 60 is one fifth of 300.
So this cell must be one fifth of 40, ie, 8.<V>[shown]</V>
Understand this carefully.
---
Let's make a formula out of it. It is the <B>row total times the
column total by the grand total</B>. Repeating this for all the
cells, we have the expected cell frequencies, expected under the
assumption of no association. So that's our benchmark.
---
 Now comes
the question of comparing our observed cell frequences with these
expected values.
---
First we do the obvious: forming the difference between the
observed frequency and the expected frequency in each cell.<V>[shown]</V> Some
of these numbers will be positive, some will be negative.
---
 We do not care about the sign. To get rid of the sign, we just square the
differences.<V>[shown]</V> Next we do something that might come as a
surprise. We divide this number by the expected
frequency.<V>[shown]</V>
---
 This is like forming the relative error. To appreciate this imagine
that some one has a salary hike of Rs 1000. If the original
salary was Rs 2000, then a hike of Rs 1000 is appreciable. But if
the original salary were Rs 100000, then a hike of Rs 1000 is
hardly perceptible.
---
 Thus the importance of the hike is to be
measured relative to the base amount. In this case wrt the
expected frequency. Now using this formula  you get a number for
each cell. 
---
The total of all these numbers is a rather famous quantity in
statistics. It is called <M>\chi^2 </M>-statistic. The formula is
<B><D>
\chi^2 = \sum[[(m_{ij}-n_{ij})^2][n_{ij}]].
</D></B>
---
The different measures of association that we are going to learn
about now are all based on this. But perhaps it would be better
to go over this computation using LibreOffice before discussing
those measures.
</SESS>
</SCRIPT>

<FLD>*2
<EXRLIST id="m6l3_c.yml">
- typeName: textReflect
  prompt: |-
     Compute the expected frequency for the marked cell under the
     assumption of no association. 
       |        |   A | B |  C | Total |
       |--------+-----+---+----+-------|
       | Male   |     |   |    |   439 |
       | Female |     | * |    |       |
       |--------+-----+---+----+-------|
       | Total  | 231 |   | 48 |  1000 |
  defaultFeedback: >
     (1000-231-48)*(1000-439)/1000.
      
- typeName: textReflect
  prompt: |-
     Compute the chi-square statistic for the following
     contingency table. 
       |        |   A |   B |  C |
       |--------+-----+-----+----+
       | Male   | 476 | 346 | 98 |
       | Female |  24 |  43 | 43 |
  defaultFeedback: >
      Roughly 76.22. The steps are shown below:
       [[./exraux/chistep1.png]]
       [[./exraux/chistep2.png]]
       [[./exraux/chistep3.png]]

      

</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 6, Lesson 3,  Video 4: Chisquare lab</HEAD3></STKY>

<SCRIPT id="m6/l3/v4" done="k" t="4:11">
<SC t="5" done="r">
[Screencast: Computation of <M>\chi^2.</M>]
eduinc.csv
</SC>
</SCRIPT>



<STKY>
<HEAD3>Module 6, Lesson 3,  Video 5: Chisquare-related measures</HEAD3></STKY>
<SCRIPT id="m6/l3/v5" done="k" t="1:31">
<SESS t="1.30" done="r" kf="10,20,30" id="s1">
The first <M>\chi^2</M>-based measure of association is called
the <B>contingency coefficient</B>. It is defined as
<B><D>
C = \sqrt{[[\chi^2][N+\chi^2]]},
</D></B>
where <M>N</M><V>[finger]</V> is the grand total.
---
So if you have a contingency table<V>[shown]</V> like this, then
you first compute <M>\chi^2 </M> and use this <V>[finger]</V>
for <M>N.</M>
---
 Its problem is that it does
not reach <M>1</M> even for a perfect relation. Indeed, the
maximum that it can reach depends on the size of the table. So it
should not be used to compare the levels of association of two
tables of different sizes.
---
 Another related measure, which is free
of this problem is <B>Cramer's <M>V.</M></B> Its definition is
<B><D>
V = \sqrt{[[\chi^2][N(k-1)]]},
</D></B>
where <M>k</M> is the minimum of the numbers of rows and columns.

Thus for our example <M>k</M> is 3.
</SESS>
</SCRIPT>



<FLD>*2
<EXRLIST id="m6l3_e.yml">
  
- typeName: textReflect
  prompt: |-
    Here is a 2 by 2 contingency table:
      |----+----|
      | 23 | 34 |
      |----+----|
      | 56 | 20 |
      |----+----|
    Compute the contingency coefficient.
  defaultFeedback: >
    Here chisquare is 15.01. So the contingency coefficient =
    0.32.

- typeName: textReflect
  prompt: >
    Consider the same contingency table as above. Compute
    Cramer's V.
  defaultFeedback: >
    Here chisquare is 15.01. So Cramer's V = 
    0.34.

</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 6, Lesson 3,  Video 6: Lab</HEAD3></STKY>
<SCRIPT id="m6/l3/v6" done="k" t="4:18">
<SC t="5" done="r">
[Screencast: Compute starting from chisquared.]
eduinc.csv:
</SC>
</SCRIPT>

<FLD>*2
<EXRLIST id="m6l3_f.yml">
- typeName: textReflect
  prompt: >
      Compute contingency coefficient based on [[./exraux/phicomp.csv]]
  defaultFeedback: >
    [[./exraux/contsol.png]]
- typeName: textReflect
  prompt: >
      Compute Cramer's V based on [[./exraux/phicomp.csv]]
  defaultFeedback: >
     [[./exraux/cramsol.png]]

</EXRLIST>
</FLD>
</LESSON>

<HEAD2>Module 6: Lesson 4</HEAD2>

<STKY>
<HEAD3>Module 6, Lesson 4,  Video 1: Moments</HEAD3></STKY>
<LESSON>
<SCRIPT id="m6/l4/v1" done="k" t="2:53">
<SESS t="2.90" done="r" kf="10,20,30,40,50,60,70,80,90,100" id="s1">
The methods we shall learn here are of limited practical use
because of their lack of robustness. But nevertheless this lesson
will introduce the concept of moments, which enjoys an 
important position in the theory of statisitcs. 
---
We start by showing the <M>x_i</M>'s as points along the number
line<V>[shown]</V>. Imagine that the line is actually a see-saw, and the data points
are point masses placed on it, each of weight <M>[[1n]].</M>  Let's
imagine the pivot at the 0 mark<V>[shown]</V>.
---
 Here <B><M>x_i</M></B> is the position of the <M>i</M>-th
point. Since 0 is not at the centre, the see-saw will  tilt. 
 You may know from physics, that each point applies a turning force to turn the
see-saw in its direction.
---
 The turning force is called the <B>moment</B> and is given by
the product of the weight and its distance from the pivot. The total moment therefore is 
 <B><M>[[1n]]\sum x_i.</M></B>
---
This terminology has entered into statistics from physics. What a
physicist calls "the moment of the point masses around 0" is
called "the <B>first raw moment</B> of the variable" in statistics.
---
The word "raw" signifies that the moment is taken around 0. 
The word "first" implies that there are second, third and possibly
higher ordered moments in use. And indeed there
are. The <B><M>k</M>-th raw moment</B> is defined as <B><M>[[1n]]\sum x_i^k.</M></B> 
---
Now let's recall the  definition of
variance:
<B><D>
[[1n]]\sum (x_i-\bar x)^2.
</D></B>
---
This quantity is also called the <B>"second central moment"</B> of the
variable. "Second" because the exponent is 2, and "central"
because we have subtracted <M>\bar x</M> from each <M>x_i</M>
before computing the moment.
---
 In general the <B><M>k</M>-th central moment</B> is defined as
<B><D>
[[1n]]\sum (x_i-\bar x)^k.
</D></B>
---
Why do we care about these moments? Mostly because they play
an important role in the theory of statistics. But there are a
couple of practical uses as well. 

The next video will discuss them. 
</SESS>
</SCRIPT>

<FLD>*3
<EXRLIST id="m6l4_a.yml">
- typeName: multipleChoice
  prompt: >
     If the <M>k</M>-th central moment is denoted by <M>c_k</M> and
     the <M>k</M>-th raw moment by <M>r_k</M>, then which of the
     following always equals <M>c_2?</M>
  defaultFeedback: >
     Here c_2 is just the variance. Remember its alternative formula.
  shuffleOptions: true
  options:
  - answer: <M>r_2-(r_1)^2.</M>
    isCorrect: true
    feedback: >
      
  - answer: <M>r_1-(r_2)^2.</M>
    feedback: >
      
  - answer: <M>(r_2)^2-r_1.</M>
    feedback: >
      
  - answer: <M>(r_1)^2-r_2.</M>
    feedback: >
      
- typeName: multipleChoice
  prompt: >
     If we add 5 to all the values of a variable, then which of
     the following will be true? 
  defaultFeedback: >
     When we add 5 to all the values, the mean also gets 5 added
     to it. So the central moments do not change.
  shuffleOptions: true
  options:
  - answer: The raw moments will change, but not the central moments.
    isCorrect: true
      
  - answer: Both the raw and the central moments will change.
      
  - answer: The central moments will change, but not the raw moments.
      
  - answer: Neither the raw nor the central moments will change.
      
- typeName: multipleChoice
  prompt: >
     Let the values of a variable be symmtric around some
     point. Then which of the following statements is true?
  defaultFeedback: >
     Symmetric means the values are as likely to be on one
     side of the mean as the other. So all the odd central 
     moments become zero. 
  shuffleOptions: true
  options:
  - answer: The 3rd central moment must be zero.
    isCorrect: true
      
  - answer: The 3rd raw moment must be zero.
      
  - answer: The 4th central moment must be zero.
      
  - answer: The 4th raw moment must be zero.
</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 6, Lesson 4,  Video 2: Concept of moments: skewness and kurtosis</HEAD3></STKY>
<SCRIPT id="m6/l4/v2" done="k" t="4:36">
<SESS t="0.60" done="r" kf="10,20" id="s1">
We have already seen some uses of moments. The first raw moment
is the mean, which is the most commonly used moment. Next comes
the second central moment, the variance. The second raw moment
occurs in the alternative formula of variance.
---
In this video we shall learn about two more moments that are
used:

  * The <B>third central moment, used to measure skewness</B> of
    a variable.
---
  * The <B>fourth central moment, used to measure kurtosis</B> of
    a variable.

Let's start with skewness.
</SESS>
<JINGLE t="0.1">Skewness</JINGLE>
<SESS t="2.80" done="r" kf="10,20,30,40,70,80" id="s2">
Skewness is a form of assymmetry in the values of a
continuous variable. Consider these three histograms.<V>[shown]</V> This one is
symmetric, while these two are asymmetric. Anything that is not
symmetric is asymmetric. But these two are asymmetric in a
special way.
---
 There are two tails in all the cases. Here the right
tail is longer than the left. And here it is the opposite. This
special types of asymmetry is seen in many real life data
sets. It is this type of asymmetry that is called skewness.
---
 It may be measured by comparing the
lengths of the two tails. If the right tail is longer, we call
the variable positively skewed, if the left tail is longer then
we have negative skewness. A symmetric case has zero skewness. 
---
Now the tails are only an intuitive
description. There is no clearly defined start of the tails. So
we cannot just measure its length from start to end. Then how do
we compare the lengths of the tails?
---
 Well, that's precisely where
the third central moment comes in.
<B><D>
[[1n]]\sum (x_i-\bar x)^3.
</D></B>
---
Think of the number line as a see-saw pivoted at <M>\bar x.</M><V>[shown]</V>
Then the (signed) distance of the <M>i</M>-th point from the
pivot is <M>x_i-\bar x.</M> Think of <M>[[1n]](x_i-\bar x)^3</M> as 
<B><D>
[[1n]](x_i-\bar x)^3 = [[1n]] (x_i-\bar x)^2\times (x_i-\bar x).
</D></B>
---
Then this is like the moment of a mass <M>[[1n]](x_i-\bar
x)^2</M> placed at <M>x_i.</M> Notice how the masses increase
rapidly as you move away from the pivot. 
---
Thus the tip of the
longer tail will exert a much greater moment than that of the
shorter tail. This will cause the see-saw to tilt in the
direction of the longer tail<V>[anim]</V>.
---
 By the direction of the tilt and
strength, we can then measure the skewness present in the
variable.
---
Just to make the skewness free of the unit of the data, we divide
by the cube of the standard deviation:
<B><D>
[[\sum (x_i-\bar x)^3][sd(x)^3]].
</D></B>
This is called the <B>coefficient of skewness</B>.
---
But be warned. If the data is not having two tails tapering away
from a central peak, then the third central moment may be
misleading. So it is awlays a good idea to draw a histogram
first.
---
 And when you draw the histogram, you'll anyway have a good idea
about the skewness present just by looking at it. 
As a result the skewness coefficient is not used too commonly. 
</SESS>
</SCRIPT>

<FLD>3
<EXRLIST id="m6l4_b.yml">
- typeName: multipleChoice
  prompt: >
     Consider this histogram. [e1a.png] 
     Classify it in terms of skewness.
  shuffleOptions: true
  options:
  - answer: Positively skewed.
    isCorrect: true
    feedback: >
      
  - answer: Negatively skewed.
    feedback: >
      
  - answer: Not skewed.
    feedback: >
      
- typeName: multipleChoice
  prompt: >
     Consider a negatively skewed data set with a unique mode and
  whose histogram has two tails and a peak in the middle. Then
  which of the following is true? [Think pictorially in terms of the histogram.]
  shuffleOptions: true
  options:
  - answer: Mode > Median > Mean
    isCorrect: true
    feedback: >
      
  - answer: Mean > Mode > median
    feedback: >
      
  - answer: Mean > Median > Mode
    feedback: >
      
  - answer: Median > Mean > Mode
    feedback: >
      
- typeName: multipleChoice
  prompt: >
     Income distribution in a capitalist country should be ... 
  shuffleOptions: true
  options:
  - answer: positively skewed.
    isCorrect: true
    feedback: >
      
  - answer: negatively skewed.
    feedback: >
      
  - answer: zero skewed.
    feedback: >
      
  - answer: cannot answer in general.
    feedback: >
      

</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 6, Lesson 4,  Video 3: Skewness lab</HEAD3></STKY>
<SCRIPT id="m6/l4/v3" done="k" t="5:56">
<SC t="6" done="r" id="sc_skew">
[Screencast: 3 variables for skewness. Start with  histograms.]
skew.csv
</SC>
</SCRIPT>

<FLD>*1
<EXRLIST id="m6l4_c.yml">
- typeName: textReflect
  prompt: >
     Compute skewness based on this data set. [[./exraux/skewkurt.csv]]
  defaultFeedback: >
    Roughly 0.03.
</EXRLIST>
</FLD>

<SCRIPT id="m6/l4/v4" done="k" t="3:53">
<SESS t="2.20" done="r" kf="10,20,30,40,50,60,70,80,90,100" id="s1">
The 4th central moment<V>[shown]</V> is used to measure what is called
the <B>kurtosis</B> of a variable. Just as central tendency,
dispersion and skewness it is also a characteristic of a
variable.
---
 It is somewhat more subtle than these, though. Here again
we are working with a variable with two tails tapering off from a
central peak.<V>[shown]</V> Skewness was concerned with asymmetry
 of the tails. Kurtosis is
about how far the tails go in relation to the peak. 
---
A data set with higher kurtosis is more likely to have far flung
outliers. This histogram corresponds to medium kurtosis, the
tails are not too long.
---
To appreciate the role of the 4th central moment here,
consider the histogram as balanced on a pivot at its mean.<V>[shown]</V>
Now think of the terms in the sum as
<B><D>
[[1n]] (x_i-\bar x)^3\times (x_i-\bar x).
</D></B>
---
In other words, a point of weight  <M>[[1n]] (x_i-\bar x)^3</M> is applied
at <M>x_i.</M> The resulting moment is always nonnegative. If the
tails are even slightly long, their tips will contribute
tremendously to the moment. 
---
How does it help to detect the behaviour of the tails?. 
If the peak is rather steep, then the tails become short
and thin. So the fourth central moment remains small.
---
 But if the peak is somewhat flat, then the tails grow fat and long,
causing the fourth central moment to increase. To keep it free of
unit we divide it by the fourth power of the standard deviation
to get this measure of kurtosis:
<B><D>
[[1n]] \sum (x_i-\bar x)^4/sd(x)^4
</D></B>
---
It is customary to
consider the value 3 as a benchmark. It corresponds to kurtosis
present in this bell shape<V>[shown]</V>. This is
called <B>mesokurtic</B>.
---
 If the peak is more steep<V>[shown]</V>, then the kurtosis drops
below 3, and we called it <B>leptokurtic</B>. If the peak is
flatter<V>[shown]</V>, then the tails dominate, and we
get <M>>3,</M> called <B>platykurtic</B>.
</SESS>
<SESS t="0.60" done="r" kf="10,20,30,40" id="s2">
As I have already mentioned skewness and kurtosis do not play a
major role in practical data analysis. There are three main
reasons:
---
 * Unlike central tendency and dispersion, they often do 
   <B>not have much practical interpretation. </B>
---
 * They presuppose a certain <B>two tailed</B> form of the
variable, ie a form like this<V>[shown]</V>. In 
   practice a variable may not have such a histogram.
---
 * As they involve cubes and fourth powers, they are easily
   confused by a few extreme outliers.<V>[not robust]</V> 
---
The coming videos will show skewness and kurtosis in action using LibreOffice.
</SESS>
</SCRIPT>

<FLD>*3
<R>
x = c(3, 5, 7, 1, 0, 1, 3)
m = mean(x)
mean((x-m)^4)
(mean((x-m)^2))
</R>
<EXRLIST id="m6l4_d.yml">
- typeName: numeric
  prompt: >
     Compute kurtosis based on the following values of a
     variable: 3, 5, 7, 1, 0, 1, 3.
  defaultFeedback: >
    Mean = 2.86. Second central moment = 5.27, fourth central moment
  = 58.01. Kurtosis = 2.09.

- typeName: multipleChoice
  prompt: >
     If kurtosis of a variable <M>X</M> based on a data set is
     4.5, then what should be the kurtosis of <M>2x-4</M> based
     on the same data set?
  defaultFeedback: >
     Think about the formula for kurtosis coefficient. 
     It is made of central moments, and hence is unaffected
     by the -4. Also since we are taking a ratio, the 2 is
     knocked off. 
  shuffleOptions: true
  options:
  - answer: 4.5
    isCorrect: true
      
  - answer: less than 4.5
      
  - answer: more than 4.5
      
  - answer: cannot answer in general.
      
- typeName: multipleChoice
  prompt: >
     If the population kurtosis is high, then a random sample is  
  shuffleOptions: true
  options:
  - answer: more likely to have outliers.
    isCorrect: true
    feedback: >
      
  - answer: less likely to have outliers.
    feedback: >
      
  - answer: more likely to have high variance.
    feedback: >
      
  - answer: less likely to have high variance.
    feedback: >
</EXRLIST>
</FLD>

<STKY>
<HEAD3>Module 6, Lesson 4,  Video 5: Kurtosis lab</HEAD3></STKY>
<SCRIPT id="m6/l4/v5" done="k" t="6:06">
<SC t="6" done="r" id="sc_kurt">
[Screencast: 3 variables for kurtosis. Start with  histograms.]
kurt.csv
</SC>
</SCRIPT>

<FLD>*1
<EXRLIST id="m6l4_e.yml">
- typeName: numeric
  prompt: >
     Compute kurtosis from this data set. [[./exraux/skewkurt.csv]]
  defaultFeedback: >
    Roughly -1.2.
      
</EXRLIST>
</FLD>

</LESSON>
<HEAD2>Module 6: Lesson 5</HEAD2>
<LESSON>
<STKY>
<HEAD3>Module 6,  Lesson 5 ,  Video 1: Moments</HEAD3>
</STKY>
<SCRIPT id="m6/l5/v1" done="k" t="5:37">
<SESS t="1.30" done="a" kf="30" id="s1">
<TODO>Two different videos (take the second, first cue overwritten)</TODO>
So we have come to the very end of our lectures. This is the last
lesson of the last module. 
---
We had discussed earlier how central tendency and dispersion
provide the first two steps of summarising the distribution of a
variable that consists of a central peak and two tapering
tails.
---
 While these two steps often provide an adequate summary,
we may like to delve deeper. The next step is skewness, which we
have discussed in this lesson.
---
 It is about the asymmetry of the
distribution around the centre. Zero skew means symmetric,
positive skew means a longer right hand tail, while a negative
skew is the opposite, a longer left hand tail.
---
 Skewness coefficient, as defined through the third moment suffers a lot
from lack of robustness, and hence is of limited use in
practice. However, as a concept, skewness still remains
important.
---
 Let me point out a couple of facts about skewness that
may be discerned easily from the data without having to worry
about outliers. 
---
The first is using boxplots. Here are the boxplots of the iris
data.<V>[show & discuss]</V>
---
Pay more attention to the box than the
whiskers, and you get a robust way of assessing skewness.
</SESS>
<R>
o(6,5,1,1)
png('irisbox.png',bg='transparent')
boxplot(iris[,-5],col='blue',lwd=3,lty=1)
dev.off()
</R>
<JINGLE t="0.1">Mean, median, mode relation</JINGLE>
<SESS t="1.90" done="a" kf="30,60,90" id="s2">
Here is another way to think about skewness. It is more of a
consequence than a measure of skewness. Consider this
histogram shape.<V>[shown]</V> I am showing a smooth curve,
because it is the overall shape that I am interested in. 
---
It is positively skewed. Let's identify the three
measures of central tendency here. The peak gives you the
mode.
---
 Is that the median as well? Well, the median should be
halfway through the data. So half the area of the histogram
should be to its left, half to its right.
---
 Mind it well. I am not
splitting this horizontal range in half, but the area. If I split
the histogram through its peak<V>[shown]</V>, then thanks to this long tail,
the right hand part will have greater area.
---
 So the median should
be more towards the right. Thus median here is more than the
mode.
---
 Now for the mean. The mean is not robust, and so far flung
values have more influence on it than on the median. So it
gets pulled closer towards the far away points than the median is.
---
 The far away points here are
in this tail. So the mean is even further right. Thus for a
positively skewed data the order is like this: <B>first mode, then
median and then mean. </B>
---
Obviously the order would get reversed for a negatively skewed
distribution.

What happens for a symmetric distribution? Well, that's the simplest
of all, mode mean and median are all the same. 
---
Of course, we are always supposing that our hisrogram has that shape,
peak in centre, tails on two sides. If it is like that,
then the order of mean median and mode sheds light on the
skewness of the data. 
</SESS>
<JINGLE t="0.1">Kurtosis</JINGLE>
<SESS t="0.70" done="a" id="s3">
Kurtosis. We have introduced it in one of the lessons in this module. But possibly the
most important thing to remember about it, is not to care much
about it.
---
 First, it has no clear interpretation in most
cases. Second, the coefficient of kurtosis gets easily affected
by outliers. 
---
Indeed, the higher order moments suffer from these problems
even more. Still they are of theoretical importance. They help us
to prove results that provide theoretical underpinnings behind
useful statistical techniques. 
---
However, a practising statistician rarely needs to work with
moments beyond the first three, in the forms of mean, variance,
and skewness coefficient. 
</SESS>
</SCRIPT>


<STKY>
<HEAD3>Module 6,  Lesson 5 ,  Video 2: Correlation</HEAD3>
</STKY>
<SCRIPT id="m6/l5/v2" t="2:38" done="k">
<SESS t="2.30" done="a" id="s1">
Correlation coefficient is a number lying between -1 and 1. The
sign determines the direction, ie, whether the linear relation is
increasing or decreasing, and the absolute value determines the
strength of the relation.
---
 So it is natural to think that a
correlation coefficient close to 1 in absolute value is a strong
relation, while values close to 0 imply weak relation.
---
 However, the cut off depends very much on the application domain. In various social
studies, and consumer surveys, and psychometric studies
correlation to the tune of 0.4 is considered high. In a physics
experiment a high correlation may very well shoot up above 0.9. 
---
The best way to calibrate an observed correlation value is to
compare against the standard set by that particular domain. Let's
illustrate with an example, why sometimes a value as low as 0.4
may be considered significant. 
---
Suppose that a car manufacturer wants to determine optimal
values for different features of a car in order to maximise its
appeal.
---
 For this purpose data have been collected from
prospective buyers regarding these values as well as how much
they like different cars. 
---
Now one typical feature may be the
colour of the car, while another is the available leg
space. The manufacturer hardly cares about the colour decision,
because any colour costs more or less the same,
---
 and so the customer's choice is the only criterion there. Leg space, on the
other hand, is intimately connected with other engineering details, and is not easy to
modify.
---
 So even a mild correlation between appeal and colour
would be considered significant. But the threshold for leg space
correlation would be set higher. 
---
In many psychometric or social surveys there are many explanatory
variables, none of which is strongly correlated with the variable
of interest. So we can hope to get something useful only by
allowing many weakly correlated variables.
---
 In a physics expriment on the other hand,
much stronger relations are expected, and so we expect higher
correlation values.
</SESS>
</SCRIPT>

<STKY>
<HEAD3>Module 6,  Lesson 5 ,  Video 3: Spurious correlation</HEAD3>
</STKY>
<SCRIPT id="m6/l5/v3" t="5:20" done="k">
<SESS t="2.10" done="a" kf="30,60" id="s1">
Correlation is an important concept in statistics, and is a much
misinterpreted one. Often we seem to see correlation where there isn't
really one. Let me give you two examples of such <B>spurious
correlation</B>. 
---
The first example is about astrology and palmistry. Palmists claim that one's
life span may be predicted using measurement of the palm.
---
 One version takes this length divides it by this, and if this ratio
is small then you are going to die young, if this is large then
you will live long.
---
 Some scientists wanted to verify this. They
went to various crematoriums and cemeteries, made measurements of the dead
bodies and also recorded their age at death.
---
 Then they computed
correlation between the two, and lo the correlation was pretty
high. So they infered that there is some justification behind
palmistry, after all.
---
 Two famous statisticians heard this, and
wanted to look at the data. They made a scatterplot and found
something like this<V>[shown]</V>. 
---
The data also contained the genders of the
dead persons, though the scientists had made no use of that in
their claim. Here we have shown genders as colours. We see two
clusters, one for males and the other for females. 
---
Neither cluster shows any coorelation between the two
variables. Then where does the correlation come from when we
consider both the genders together?
---
Well, women tend to have more slender palms than men, and as a
result the ratio of this to this  will generally be
smaller for women than for men. 
---
Also the data were collected in India during a period when
female mortality rate was high during giving birth. So there were
more women dying young than men.
---
These two factors working together places the two clusters as you
see them. Hence there seems to be a icreasing relation in the scatterplot.
</SESS>
<R>
o(6,5,3,1)
png('palm.png',bg='transparent')
set.seed(45434)
x1 = 10+rnorm(30)
y1 = 10+rnorm(30)

x2 = 4+rnorm(30)
y2 = 4+rnorm(30)

x = c(x1,x2)
y = c(y1,y2)
col = c(rep('red',30),rep('blue',30))

plot(x,y,col=col,pch=20,cex=3,xaxt='n',yaxt='n',xlab='',ylab='')
box(lwd=3)
dev.off()
</R>
<JINGLE t="0.1">Hidden variable</JINGLE>
<SESS t="1.90" done="a" kf="30,60,70,100" id="s2">
In this example the two variables originally reported were the
<B>palm quotient and the life span</B>. They seemed strongly
correlated. But it turned out that the
presence of a 
third variable, <B>gender</B>, which was not reported, turned the table. 
---
Such hidden variables are often the cause behind spurious
correlation. Here is yet another example. Consider a departmental
store with lots of sales persons.
---
 We collect two pieces of
information about each sales person: <B>age and the amount of sales</B>
done by that person over the last month.
---
 If we make a scatterplot
or compute the correlation between these two variables we are
likely to see a strong positive correlation. 
---
Suppose that the manager of the store infers from these that only
old people should be recruited as sales persons. Is this
justified? 
---
Not really. Because here there is a hidden variable,
<B>experience</B>. Typically, the older sales persons did not start their
sales career as old persons.
---
 They were much younger when they had
joined. Over the years they have accumulated experience, and
that's why they are better at their job. It is experience that
the manager should be looking for, not age.
---
How to avoid such mistakes as the manager made? Well, common sense and domain
knowledge are the best antidotes. The way to use common sense
here is to collect data regarding all the relevant variables, and
make scatter plots of all the variables. 
---
In our case, for example, the manager should have collected the
numbers of years of sales experience, and immediately it would
have been apparent that experience is more strongly correlated with
sales, than age is.
---
In the next video we shall see a remarkable example of a hidden
variable in a categorical set up.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 6,  Lesson 5 ,  Video 4: Review</HEAD3></STKY>
<SCRIPT id="m6/l5/v4" t="6:05" done="k">
<SESS t="0.30" done="n" id="s1">
In this video we shall a see rather surprising effect that hidden
variables may have. Indeed, it is so very surprising, that it is
called a paradox, Simpson's paradox.
</SESS>
<JINGLE t="0.1">Simpson's paradox</JINGLE>
<SC t="6" done="r" id="sc_simp_654">
simp.csv
</SC>
</SCRIPT>
<R>
o(6,5,4)
repmat = function(rw, n) matrix(rep(rw,n),n,byrow=T)
x = rbind(
     repmat(c('white','white','yes'), 53),
     repmat(c('white','white','no'), 414),
     repmat(c('black','white','no'), 16),
     repmat(c('black','black','yes'), 4),
     repmat(c('black','black','no'), 139),
     repmat(c('white','black','yes'), 11),
     repmat(c('white','black','no'), 37))

csv(x,'simp.csv')
</R>

<FLD>
<EXRLIST id="m6_add.yml">
- typeName: numeric
  prompt: >
  Here is a contingency chi square data [[./exraux/m6_1.csv]]. 
  Compute chisqure value.      
  defaultFeedback: >
    No, that does not look correct. May be you should watch the
  video once again.     
  shuffleOptions: true
  options:
  - range: [472,472.23)
    isCorrect: true
    feedback: >
     The value computed by LibreOffice Calc in my machine is 472.225.
      



- typeName: multipleChoice
  prompt: >
      30 online sales were considered where 5-point Likert  feedback was
available on both the quality of delivery and the quality of the
product. The resulting data set is in [[./exraux/m6_2.csv]].
Which measure of correlation is more suitable here,  Pearson's or
Spearman's? Also, compute the value (rounded to two decimal places).
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: Spearman. Value is -0.30.
    isCorrect: true
    feedback: >
     Good! Since the variables are ordinal in nature, Spearman's
     rank correlation is the way to go!     
  - answer: Spearman. Value is  -0.27.
    feedback: >
      Oops, you computed the Pearson's coefficient!
  - answer: Pearson. Value is -0.30.
    feedback: >
      We are working with ordinal data here! So Pearson's
    correlation is not the best thing to use here.
    
  - answer: Pearson. Value is -0.27.
    feedback: >
      We are working with ordinal data here! So Pearson's
      correlation is not the best thing to use here.
      


- typeName: 
  prompt: >
       Here is a trivariate data set with three categorical variables 
  [[./exraux/simp2.xlsx]]. 
  Which of the following is true here?
  defaultFeedback: >
Here are the odds:   [[./exraux/simp2sol.png]]      
  shuffleOptions: true
  options:
  - answer: >
    For the Male and Female layers separately the A/B
  odds is higher for the poor, and for the  pooled table it is
  higher for the rich. So we have Simpson's paradox.
    isCorrect: true
    feedback: >
      
  - answer: >
    For the Male and Female layers separately the A/B
  odds is higher for the rich, and for the  pooled table it is
  higher for the poor. So we have Simpson's paradox.
      
  - answer: >
    For the Male and Female layers separately the A/B
  odds is higher for the poor, and for the  pooled table it is
  higher for the poor. So we don't have Simpson's paradox.
      
  - answer: >
    For the Male and Female layers separately the A/B
  odds is higher for the rich, and for the  pooled table it is
  higher for the rich. So we don't have Simpson's paradox.


- typeName: peerReview
  prompt: >
      Construct two bivariate data sets (choose number of cases to
suit yourself), each with correlation above
0.9, so that the combined data set has negative correlation.

  Rubric:
   1) Two data sets with correlation > 0.9 (1 point)
   2) Combined data set has negative correlation (1 point)

- typeName: checkbox
  prompt: >
       Consider the following boxplot. [[./exraux/m6_box.png]] Assuming that  the
histogram has a single peak with a tapering tail on either side of
it, which of the following would you conclude?
your answer.

  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: Mean < Median < Mode 
    isCorrect: true
    feedback: >
      Correct. There are more extreme small values than large ones. That
  pulls the mean down.
  - answer: Mean > Median > Mode 
    feedback: >
      There are more extreme small values than large ones. That
  should pulls the mean down, not **up**!
  - answer: Positively skewed
    feedback: >
      A positively skewed boxplot would have a longer upper half.
  - answer: Negatively skewed
    isCorrect: true
    feedback: >
      Correct! The longer lower half indicates negative skew in
    the data.
 </EXRLIST>

<R>
cw('exraux')
set.seed(34636)
x = sample(1:5,30,rep=T)
y = sample(1:5,30,rep=T)
csv(data.frame(Delivery=x,Product=y),'m6_2.csv')

cw('exraux')
repmat = function(rw, n) matrix(rep(rw,n),n,byrow=T)
x = rbind(
     repmat(c('male','rich','A'), 105), #53
     repmat(c('male','rich','B'), 829), #414
     repmat(c('female','rich','B'), 32),  #16
     repmat(c('female','poor','A'), 9),  #4
     repmat(c('female','poor','B'), 278), #139
     repmat(c('male','poor','A'), 22), #11
     repmat(c('male','poor','B'), 74),  #37
     repmat(c('female','rich','A'), 1))  #0
csv(x,'simp2.csv')
</R>

</FLD>
</LESSON>

<REF>
FPP: Chapter 8, parts 1,2,4
     Chapter 9, parts 1,3,4,5
WW: Chapter 6
</REF>

<COMMENT>
Local Variables:
 two-part1: ("<V>[shown]" "</V>")
 two-part2: ("<B>" "</B>")
</COMMENT>
</NOTE>@}

