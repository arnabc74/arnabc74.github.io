@{<NOTE>
<TITLE>Course: Basic 1: Basic Statistics</TITLE>
<UPDT>FRI NOV 05 IST 2021</UPDT>


<STKY><HEAD1>Module 1: Data types</HEAD1></STKY>
<STKY><HEAD2>Module 1,  Introductory video: About the
course</HEAD2></STKY>
<SCRIPT>
<SESS id="" t="0.3">
Hello,  and welcome to the PGDAS course on <B>Basic Statistics</B>. This
is our very first lecture, and I am your
instructor. <V>Name enters.</V> First let me tell you something
about the structure of our course.
</SESS>
<SESS t="0.5" cu="y">
The <B>course</B> consists of <B>6 modules</B>,  each of <B>one week</B>
duration,  followed by <B>2 weeks</B> during which you get to <B>study</B> on your
own (digesting all the pieces of information I bombard at you)
and within the same 2 two weeks you also appear for a <B>final
exam</B>. And that brings us to the important question: How are
you going to be graded?
</SESS>
<JINGLE t="0.1">Grading</JINGLE>
<SESS t="0.2">

Each week we shall discuss four topics, and these will be
followed by practice
problems. The points from these will not be considered for final
grading.</SESS>
<SESS t="0.2" cu="y">
The week's grade will come from a unit test at the end
of the week. It will consist of 8 exercies
(2 taken from each of the 4 topics learned in the week). The
marks you get here will be added to your marks from the final
exam.

<P/>
Next let's talk about the software we are going to use for this course.
</SESS>
<JINGLE t="0.1">Software</JINGLE>
<SESS t="1.10">
Modern day statistics is impossible without statistical
softwares. There are quite a few softwares out there in the market.
starting from quite easy ones with gentle
learning curves to extremely expensive and sophisticated ones with
steep learning curves. We shall naturally start with a software
that is not too difficult to learn, and yet is capable of doing a
good number of data manipulation activities. And just to keep it accessible
to everybody, we shall use a free software that you can download
from the web. We shall use LibreOffice. "What's that?" you may
ask. Well, it is a free alternative to the  popular MS-Excel
software. They have very similar interfaces. If you learn
LibreOffice you can take your skills to use MS-Excel. Of course,
LibreOffice will not be enough for some ambitious  analyses, but
then we shall learn R and Python for them in a different course. 
</SESS>
<SESS t="0.1">
 Well,
that's about it! Now let's get started with the lessons.
</SESS>
</SCRIPT>


<STKY><HEAD2>Module 1,  Lesson 1,  Video 1: Data--what and why</HEAD2></STKY>
<LESSON>

<SCRIPT>
<SESS t="0.2">
This is a course on <B>Basic Statistics</B>.
We hear about <B>statistics</B> a lot. But what is it? Well,  there are
various ways to define it.
</SESS>
<SESS cu="t" t="0.5"> Possibly the simplest,  and the most
comprehensive way,  is to say that is is the <B>art and science
of learning from experience</B>,  and as such is the most fundamental 
tool behind human existence. Whether we are trying to predict 
tomorrow's weather <V>Google weather icons</V>,  or the next wave
of COVID <V>A plot</V>,  we are using
statistics.
</SESS>
<SESS t="0.8">
 Most often we learn from experience even without
knowing it.  When we do something unconsciously,  out of reflex, 
without really thinking about it,  we tend to do it
inefficiently. Take high jumping,  for instance. Most of us can jump
over a fence. <V>Jump</V> We hardly need to think about it. Our muscles
somehow move on their own and we end up on the other side. But if
one considers the process  consciously,  one can see many subtle
ways of improvement,  and the sum total of all those may lead to a
quite different technique <V>fosbury flop glides past</V> and 
a rather substantial  improvement in efficiency!
</SESS>
<SESS t="1.3">

Well,  the same is true about learning from experience. 
Statistics is a conscious and careful way of going about
this. Let's start by carefully looking at the word
"<B>experience</B>". Let's take a simple example. Suppose we want to tap
the experience of our friends about some movie. If we ask them
about what they think about it, we shall get responses like
"<B>Good</B>",  "<B>so-so</B>",  "<B>Ok</B>",  "<B>Hey you must watch it</B>"! Yet another may
give you a long description about what she liked the
most. <V>Blah blah</V> Informative as such informal comments are,  they are
difficult to summarise efficiently. For one thing, they lack a common scale. One person's "Good" may very well be another
person's "so-so". The very first thing we might do to rectify
this is consciously provide a common scale. <V>Likert scale
appears.</V> Webpages like
Rotten Tomato does precisely this. They provide a 5-star rating.  This common
scale brings more uniformity in the responses than a mere haphazard
collection of "Good" and
"so-so".
</SESS>
<JINGLE t="0.1">Data</JINGLE>
<SESS t="0.6">
 When we collect experience in such a systematic
way we get <B>data</B>. And this is the first point where
statistics differs from the common man's way of learning from
experience.  Statistics systematically collects and  stores the experience in a
cut-and-dried fashion before proceeding to glean information from
it. Data are  that cut-and-dried experience.
<P/>
It might interest you to learn about the different ways data are
collected. So let's get a taste of that before delving deeper. 
</SESS>
<JINGLE t="0.1">Data collection devices</JINGLE>
<SESS t="1.00">
There are basically five types of devices for data collection
depending on the scenario. 
Measure, Observe, Lookup, Ask, and Derive. If we want data about some
physical quantity that is accessible to us, like the area of
land, height of a person, intensity of sound, temperature of a
green house, the most direct way is to just measure it.
Sometimes, however, merely observing is enough, for instance, a
person's gender. In many cases, especially for data of social
importance, we may get them from records. For instance, income amounts
for employees may be obtained from pay registers. In some
situations asking a knowledgeable person is the only way to get
information. This is particularly true if the information is
about a mental state (like satisfaction level, or
smartness). Finally, certain data are obtained directly by are derived from
other related quantities. Examples include total expenditure or a
student's marks.
</SESS>
<JINGLE t="0.1">Looking at data</JINGLE>
<SESS t="1.00">
Statisticians have to work with data just chemists have to work
with chemicals. When you see a data set for the first time, it is
like entering an unknown dark room. Your eyes will need time to
adjust to it. Similarly, one needs some time to understand what
a data set is about. A good mental exercise to facilitate this
process is to quickly classify the various pieces of information
present in the data set in terms of how they were
collected. Let's consider this: the number of female headed rural
households having 4 rooms in
West Bengal's Malda district. Let's think for a moment how this
number was arrived at. It involved measurement in the form of
counting, involved asking (how many rooms are there in the
house?). But how was the "female headed" attribute decided? Was
it the result of asking? Or is it based on some government record
backed by a precise definition? Thinking about such points may
appear unnecessary, but is a good way to warm up.
<P/>
This excercise is not only good for warming up, but may throw
light on the reliability of the information present. For
instance, if you ask a person about his/her monthly income data,
you are more likely to get an underestimate. However, if the data
were obtained from his pay slip, then the amount is
accurate.
</SESS>

<SESS t="0.5">

Ah yes,  "data" is a plural word. Its singular "datum" is rarely
used. A common mistake found in many reports is to say things
like "This data says ...". It should be either "These data say
..." or "This data set says ...". But knowing the word "data"
grammatically is not enough. We need to take a deeper look,  and
that's what we are about to do next.
</SESS>
</SCRIPT>
<EXRLIST id="M1L1V1.yml">
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
</EXRLIST>

<STKY><HEAD2>Module 1, Lesson 1,  Video 2: Data--types</HEAD2></STKY>
<SCRIPT>
<SESS t="0.40">
In the last video we learned about the various instruments to get
data. These instruments may be used in different ways in a
real scenario. In this video we shall take a look at some of these. 
First, a few terms:
</SESS>
<JINGLE t="0.1">A few terms</JINGLE>
<SESS t="2.40">
In any data collection scenario we have an
<B>agency</B> that collects the data. It could be the government, a
private organisation, or even an investigator in invididual
capacity. Then there is a <B>scope</B>. For example, the agency
may be interested in only rural households having income from
agriculture, or it could be only urban household with at least
one earning female member. The scope also specifies the <B>time
frame</B>. Jst imagine how meaningless it would be to refer to
census data without mentioning the year of the census! Finally,
we have the concept of a <B>unit</B>. If you are colelcting data
about households, then each household is a unit, if you are
collecting data about districts, then each distrct is a unit. 
<P/>
Multiple agencies may be responsible for various parts of a data
set. For instance, an agency may take the data from some
existing record, created by some other agency in the past. Such 
data are called <B>secondary data</B>. If the agency reporting
the data is also responsible for collecting the data, then we
have <B>primary data</B>.
<P/>
Whether to use primary or secondary data is an important decision
that one has to make right at the outset.
Each has its advantages and
disadvantages. Primary data,  for example,  are the only option if you are
conducting study about something not explored before. But they
also happen to be very expensive. Secondary data are easier to
get,  but may be dated,  or not exactly suited for a particular
study.
<P/>
It is somewhat like buying a dress. You may buy a custom-made
dress to suit your exact requirements, or you may just buy a
ready-made one. The advantages and disadvantages are
similar. Primary data is more expensive and time-consuming to
collect, but if you can manage to get them, they will give you
the exact information you want. Secondary data, on the other
hand, are , if  available, easier to get, but may only be an
approximation to the information that you are actually seeking.
</SESS>
</SCRIPT>
<EXRLIST>

</EXRLIST>

<STKY><HEAD2>Module 1, Lesson 1,  Video 3: Data--Census/sample, Observational/experiment</HEAD2></STKY>
<SCRIPT>
<SESS t="2.50">
We have talked about the <B>scope</B> of a data, and also
mentioned the concept of <B>units</B>. All the units coming under
the scope constitute the <B>population</B>. For example, if we
are dealing with household level rural data for a district, then
the set of all rural households in the district is the
population. If the population is small, then you can actually
collect the data from each and every unit. This is called <B>complete
enumertion</B>.
As an example,  if you are interested in the monthly expenditure of
the houselholds in a village and the village has just 30
households,  then you can indeed visit each and every household
to collect the data.  But imagine doing the same thing for every
household in a large city! Then we have to resort to take
a <B>sample</B>,  <B>a representative subset of all the households, </B>
and collect data from only those households. 
<P/>
How to choose the sample appropriately is a vast topic in
itself. You'll learn more about it later in the course Sample
Survey. For now, let it suffice to know that most of the time we
select the sample as a random subset of the population. Such a
sample is naturally called a <B>random sample</B>. 

<P/>
How to compare between complete enumeration data and data
obtained from a sample?
Complete enumeration gives,  well,  the complte
information. What can be better? But then it comes at a great
price. It is enormously more expensive and time
consuming. Indeed,  so much so it might just be infeasible in many
cases. Even a country can hardly afford to perform complete
census frequently. But sampling is almost inevtiablle in most
situations. But samples have their own pain. Is a sample
really representative of the entire population? That's a question
that continues to bug all conclusons that you draw from such
data. The larger the sample size, the greater chance that it will
explore the nooks and corners of the population. But larger
sample size means greater expense in data collection as
well. Balancing that trade-off is an important cosideration in
sample survey, as you will learn later.
</SESS>
<JINGLE t="0.1">Observational study and designed experiment</JINGLE>
<SESS t="2.70">
There is yet another way to classify data
collection. <B>Observational study</B> and <B>designed
experiment</B>.  In an observational study,  you are merely a
passive observer,  collecting information about a system as you
find it,  without trying to modify the system. In a designed
experiment,  by contrast,  you are deliberately trying to disturb
the system,  and collecting data about how it responds to the
change. Let me give a very simple mundane example. You see
something like a rope lying on the way. Is it really a rope? Or a snake? You
want to find out. You may go about this in two ways: you way just
wait and watch its behaviour (that's observational study). If it
stays in the same posture for 10 minutes, then possibly it is
just a piece of rope. But if it starts slithering away, then
definitely it is a snake. Here is an alternative way of going
about this:  you  throw a stone at it, 
and see how it reacts. This would be a designed experiment,
because you deliberately chnged the system in order to learn how
the system reacts to the change.
<P/>
Designed experiments are used more frequently in clinical
trials to assess effectiveness of drugs, or deciding about optimal
settings in a production process. In a social study, on the other
hand, we generally cannot or do want to disturb the system, and
hence have to rely on observational study. If we want to relate
educational level to income, then observational study od the only
way to go about it. 
<P/>
Let's now compare observational study with designed
experiment. Most scientific studies that deal with causality ie, 
tries to conclude things like "this causes that",  must rely on
designed experiment. To conclude things like "This causes that", 
you have to really do "this" and see if "that" occurs,  and then
not do "this" and make sure that "that" also does not occur. In
other words,  you have to modify the system according to a
design. As you might guess,  this involves a lot of extra effort,  
not present in observational study. However,  there are many
situations where observational study is the only way to go. To
check if smoking causes cancer,  you cannot really ask a person to
start smoking! Most social science data are collected by
observational study.
</SESS>

</SCRIPT>
<EXRLIST id="M1L1V2.yml">
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
    "1000 people died of cancer 10 years ago. 
    This year the figure is 2000." Can we 
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

<STKY><HEAD2>Module 1, Lesson 1,  Video 4: Case,  variable and rectangular structure</HEAD2></STKY>
<SCRIPT>
<SESS t="0.5">
The term data conjures up the vision of numbers...zillions of
figures stored in computer disks to be processed by gigantic
supercomputers. Well,  it is true to some extent,  all data
are encoded as numbers when stored in computers, but the data
themselves need not
always be numbers. They may take other forms. In order to learn
statistics effectively,  it is imperative that we know how data set
looks inside a computer. It looks like a rectangle, what is
called a data matrix.
</SESS>
<JINGLE t="0.1">Data matrix</JINGLE>
<SESS t="1.30">
Let's start with an example. Here is a data set stored shown in a
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
 </SESS>
<JINGLE t="0.1">From data to data matrix</JINGLE>
<SESS t="0.40">
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
</SESS>
<SESS t="2.00">
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

<TODO>Mention example from table on page 116 of nss68/report/*.pdf</TODO>
</SESS>
</SCRIPT>

<EXRLIST id="M1L1V3.yml">
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
    feedback: _-
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
</LESSON>

<STKY><HEAD2>Module 1, Lesson 2,  Video 1: Types of variables (Users' perspective)</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="1.10">
In the last lesson we have learned about types of data, and have
acquired a basic understanding of how they are collected. We
learned about cases and variables. Now it is time to take a
closer look at variables.
<P/>
Variables are to statisticians what  colours are to a
painter. You may look at colours from the viewers' perspective,
and talk about dreamy sunset colour, or the warm colour of roses. But
all this wide variation is basically made by mixing colours in a
restricted pallete. So from the painter's perspective the colours
are more prosaically named as burnt sienna and carmine. The
description of the colours from the viewers' perspective are more
intuitive and often lack clear distincttion. But the painter's
terminology is more precise and technically oriented. 
<P/>
Similar is the case with variables. We can classify them in terms
of usage, and also in terms of their techical nature. Let's learn
about them one by one.
</SESS>
<JINGLE t="0.1">Types of variables (by usage)</JINGLE>
<SESS t="0.9">
 As we
already know the columns in a data matrix denote variables. The names of the
variables are given at the very top. A quick look at the values
show that some of them are numbers, while  others are
textual. Some values may be dates. Also some values may be
missing. Some values may be like "<12" or "negligible". 
The first point to know is that all values belonging to the same
variable (i.e., in the same column) must be of
 the same type.  Thus,  if we have a variable like a person's
 height,  then either all of the values are in numbers (e.g.,  in
 cm) or in words  like "tall",  "medium" and "short". But not a
 mixture of both.  
</SESS>
<JINGLE t="0.1">Identifier variable</JINGLE>
<SESS t="1.9">
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
</SESS>
<JINGLE t="0.1">Timestamp</JINGLE>
<SESS t="0.80">
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
</SESS>
<JINGLE t="0.1">Counting variables</JINGLE>
<SESS t="0.7">
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
</SESS>
<JINGLE t="0.1">Categorical variables</JINGLE>
<SESS t="0.60">
Let's look at this example. Here we have two types of houses:
Kuccha (i.e., made of mud) and Pukka (made of concrete). 
Unlike the counting variables,  here we know exactly that these
are the only 
possible values. This is what is called a <B>categorical</B>
variable, because it denotes categories. Each value is the name
of a category.

<P/>
Next we shall learn about variables that denote outcomes of measurements.
</SESS>
</SCRIPT>
<STKY><HEAD2>Module 1, Lesson 2,  Video 2: Types of variables (Users' perspective) (contd)</HEAD2></STKY>
<SCRIPT>
<JINGLE t="0.1">Measurement variables</JINGLE>

<SESS t="2.30">
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
</SESS>
<JINGLE t="0.1">Interval variables</JINGLE>
<SESS t="2.40">
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
</SESS>
<JINGLE t="0.1">Likert variables</JINGLE>
<SESS t="1.10">
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
</SESS></SCRIPT>
<EXRLIST id="M1L2V1.yml">
- typeName: multipleChoice
  prompt: >
    In a financial data set the annual turnover of small businesses
    are expressed as slabs like 1lakh to 2lakhs,  2 lakhs to 3lakhs, 
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

<STKY>
<HEAD2>Module 1, Lesson 2,  Video 3: Types of variables (technical perspective)</HEAD2></STKY>
<SCRIPT>
<SESS t="0.60">
In one of the earlier videos we mentioned how variables are some
what like coulours to a painter. There seem to be so many
different colours in the world. Yet to the painter everything
boils down to a surprising simple pallette consisting of only a
few colours. Similarly, from a technical perspective there are
only two different types of variables. Yes, you have heard that
right, just two: <B>continuous</B>
and <B>discrete</B>. 
</SESS>
<JINGLE t="0.1">Continuous</JINGLE>
<SESS t="1.20">
Continuous means a measurement that takes
values in a continuum,  a range of values without any gap. We
have already seen this when we talked about 
measuring people's heights. When you measure heights of a bunch
of people you will get a few numbers like these. While these are
only some distinct points along the number line,  the points
between them are also valid values. It is not that people either
have this height or they jump to that height without ever taking
the values in-between. All possible human heights form a
continuum,  a range without any gap. So height is a continuous
variable. 
<P/>
Most measurement variables are continuous. Here we are not taking
approximation into account, we are talking about the true
underlying value. It is quite possible that you are reporting the
figures rounted of to one decimal place, so no value between
150.3 and 150.4 can appear in the reported data, but actually the
value 150.32 is quite possible. It just gets reported as 150.3,
that's all! 
</SESS>
<JINGLE t="0.1">Discrete</JINGLE>
<SESS t="1.30">To understand easily remember a discrete variable as one which
can take only finitely many values.
All the categorical variables are of this type. For instance,
gender can take only three values Male, Female and
others. Counting variables are also considered discrete, though
they can in principle go on and on. All identifier variables are
discrete, as well. So are Likert type variables. Variables whose
values use numbers  at
nominal or ordinal levels are all discrete. As you can
understand, almost all variables execept measurement variables are
discrete. The mathematics to handle all discrete variables is
quite similar. But that is no comfort for the practising
statistician, because the intepretation of the result will
crucially depend on whether a variable is Likert variable or a
Categorical variable. 

<P/>
By the way, even a measurement variable may appear discrete due
to approximation. However, discrete or continuous refers to the
true values, and not the approximate values. Thus, even if
monthly income is reported to the nearest thousand, it is
considered continuous. However, if we use only income slabs,
which is a interval variable, then we have a discrete variable.
</SESS>
</SCRIPT>
<EXRLIST id="M1L2V2.yml">
- typeName: multipleChoice
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

<STKY><HEAD2>Module 1, Lesson 2,  Video 4: Uses of numbers</HEAD2></STKY>
<SCRIPT>
<SESS t="1.20">
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
</SESS>
<JINGLE t="0.1">Nominal</JINGLE>
<SESS t="1.10">
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
</SESS>
<JINGLE t="0.1">Ordinal</JINGLE>
<SESS t="1.10">
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
</SESS>
<JINGLE t="0.1">Interval/ratio level</JINGLE>
<SESS t="1.00">
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
</SESS>
</SCRIPT>
</LESSON>
<STKY>
<HEAD2>Module 1, Lesson 3,  Video 1: Univariate and multivariate</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="0.80">
Welcome back! We have learned quite a bit of stuff in the videos
so far. We have a basic idea about how data are collected, and
what are the different types of variables we are interested
in. So far we are looking at the variables one at a time. But in
most real life scenario we have more than one variable of
interest in the
data. I said "variable of interest" to exclude any identifier
variable that might be present. This is because we collect
different pieces of information for the same unit. Typically we
are interested in the interplay between these variables. Let's
take a toy example to understand this.
</SESS>
<JINGLE t="0.1">A toy example</JINGLE>
<SESS t="1.70">
Quantities in the real world are related in various ways, and one
of the aims of science is explore them. While some of the laws are
obtained by purely logical thinking, most others are ascertained
empirically based on data. In this toy example suppose we are
interested in exploring the relation between the sides of a right
angled triangle. Of course, we know that they are linked by 
Pythagoras' theorem, but like many such relations in nature let's
pretend that this is also initially unknown to the researcher. 
We start with this random collection of right angled triangles.
and  measure the lengths of their sides.
Thus, we have 4
variables, of which the very first one is an identifier. Now
these 6 triangles are just 6 random triangles, and so their order in the
data set is not important. Suppose we focus our attention on only
the hypotenuse. No information is lost about it if I 
reshuffle the numbers in its column.
And this is true about each the variables
individually. But does that mean that  I can reshuffle the numbers in each column
independently, and still not lose any information? Well,
no. Because then I shall end up with triangles like these, which
are not even  right angled!
Thus, important information like Pythagoras' theorem 
is lost! Reshuffling is OK, as long as we reshuffle entire
rows, and not merely the values in the columns
independently. Otherwise, we have no hope to recover the
inter-relation between the variables.
</SESS>
<SESS t="0.70">
Well, this brings us to the distinction between
a <B>univariate</B> and <B>multivariate</B> data set. A
univariate scenario is where we are focusing our attention on
only one variable. There may be other variables also, but we are
interested in only one of them. A multivariate scenario, on the
other hand, involves more than one variable, and we are
interested in exploring their inter-relation. As the triangle example
showed, a multivariate data set is not merely just a collection
of some univariate data sets. All the variables need to be
considered together.
</SESS>
<SESS t="1.40">
Here's a more practical example of a bivariate
scenario. "Bivariate" as you have no doubt guessed is a pecial
case of multivariate, where we have only <I>two</I> variables of
interest. Similarly, <B>trivariate</B> is where the focus is on
only three variables. Anyway, our example is a bivariate one. The
units are schools, and we are interested in checking if a certain school
nurtures academic and physical skills in a balanced way. We draw a
random sample of students
 and
conduct two tests, one on academic skills and the other on
physical skills. Ths we get two variables, academic and
physical. There are students with high and low values in either
variable. But looking at each variable <I>separately</I> will not
let us answer our question. In this data set, for example, we
have a high scorer in academics, but they are in poor physical
training. The guys who are physically well-trained are flunking
in academics. Now let's just reshuffle the numbers in each
column. The new data set shows much better balance between
academic and physical training, as a students with high marks in
one are pypically getting high marks in the othr, as well. 
</SESS>
</SCRIPT>

<EXRLIST id="M1L3V1.yml">
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


- typeName: multipleChoice
  prompt: >
    We have collected data on the severity of road accidents (as
    Likert-type variable) along with the exact time of occurence
    and type of traffic (rush or slack). This is a 
  shuffleOptions: true
  options:
  - answer: univariate data set
    feedback: >
      There are at least two variables: severity and time of
      occurence. May be even more.
  - answer: bivariate data set
      Just two? No, I can see more variables.
  - answer: trivariate data set
    isCorrect: true
  - answer: none of these



- typeName: multipleChoice
For each person registering for a government health benfit
scheme,  we have collected the person's name,  phone number,  age, 
income,  type of benefit (individual/family). Is this a univariate
data set:
shuffleOptions: true
options:
   - answer: Yes
   - answer: No



- typeName: multipleChoice
For each agricultural  plots in a village we record the area, 
crop sown,  and income per season. The resulting data set is
shuffleOptions: true
options:
   - answer: univariate
   - answer: multivariate



</EXRLIST>

<STKY>
<HEAD2>Module 1, Lesson 3,  Video 2: Cross-sectional,  time
series, panel and spatial</HEAD2></STKY>

<SCRIPT>
<SESS t="1.80">
In the last few videos we have talked a lot about variables,
i.e., the columns in the data matrix. But what about the rows,
i.e., the cases? Well, that's what we are going to talk about
now. But first, when we think about cases, stop thinking of them
as a row of values, but as the totality of information about a
single unit. Visualise a unit as a single object, like a patient,
or a plot of land, a household, a student in a particular class,
and so on. When you do so, you might detect some layout of
these units that has bearing on the object of your study. Like,
they may be measurements of depth of a river at different points
along the river. Each point is then a unit, and they are laid out
spatially. A point near the source of the river may behave
differently from one near the estuary. In fact, the variation of
depth along the river may be the focus of attention in the
study. As yet another example, we might count number of COVID
infected persons in each month for an entire year. Here each
month is a unit, and the months are laid out uniformly along a
time line. This temporal layout is important because we may hope
to predict future values based on such a data set. Based on the
layout of the units we classify data in a number of ways:
  * Time series and panel data
  * Cross-sectional data
  * Spatial data
Let's discuss these one by one.
</SESS>
<JINGLE t="0.1">Time series and panel data</JINGLE>
<SESS t="0.90">
If the cases are each marked with a time stamp, and we are
interested in the temporal evolution of the data, i.e, how the
values are changing over time, then we have a <B>time
series</B>. If we imagine time flowing down a pipe, then it is
like following a flow longitudinally through the pipe. Hence
another name for such data is <B>longitudinal data</B>. Stock
market data is a common example. The most important aim behind
analysing such data is prediction of the future.
<P/>
In most scenarios, the cases of a time series data set are
collected uniformly over time. However, in a bugeoning field of
statistics, astrostatistics, where we observe celestial bodies
over time, the sampling time points are necessarily irregular, as
certain bodies are not visible a certain time. It is remarkable
how time series analysis helps NASA to look for extrasolar
planets (i.e., planets around stars other than the sun) that
might be inhabitable! 
<P/>
Commonly when we use the term time series or longitudinal data,
we think of just a single variable, or univariate data. But of
course we may like follow the temporal evolution for a
multivariate data as well. Then it is called <B>panel data</B>.
</SESS>
<JINGLE t="0.1">Panel data</JINGLE>
<SESS t="0">
Panel data, as I said just now, are basically multivariate time
series data. These are very common in econometric studies, where
we follow the interplay among different economic factors over
time. 
<P/>
In all these cases we are considering time as flowing down a
pipe, and we are following along longitudinally. If, on the other
hand, our data consist of just  a single snap shot of all the
variables at a single time point, we get a <B>cross-sectional</B>
data set.
</SESS>
<JINGLE t="0.1">Cross-sectional data</JINGLE>
<SESS t="0.70">
 The term cross-sectional comes from the fact
that a snapshot at a single time point is like  a cross-sectional
view of the pipe.  In a sense this is the simplest possible scenario, where there is no particular
layout of the units. If we visit the households of a village and
collect some information from them, the resulting data set is
will be cross-sectional. When a country conducts a census of its
population, the result is a cross-sectional data set.

<P/>
In a cross-sectional data set you may reshuffle the cases (entire rows)
without destroying any important information. A special case is
where all the cases are
independent and as far as the study area is concerned are
expected to behave identically, all variations being due to
chance only. Such a cross-sectional data set is 
called an IID data set. IID is an acronym for Independent and
Identically Distributed. Typical examples are data from a random
sample. 
</SESS>
<JINGLE t="0.1">Spatial data</JINGLE>
<SESS t="0.70">
When the units are laid out geographically ocer space, and we are
interested in the spatial positionings of the units, we
have <B>spatial data</B>. A good example is weather data (e.g.,
rainfall and temperature) or environment data (e.g. pollution
level) collected from different centres. Often we want to
approximate the values of the variables at other nearby points
based on the data from the given locations. Geostatistics is the
branch of statistics that deal spcially with spatial data.
<P/>
With the wide availability of satellite imagery, spatial data are
now assuming great importance.  
</SESS>
<JINGLE t="0.1">Other layouts</JINGLE>
<SESS t="0.90">
We have learned about various ways units may be laid out in a
data set. A great deal has been written about analysing spatial data, and
an even greater amount of literature exists for cross-sectional
and time series data. 
Still these by no means exhaust the possibilities. It is quite
possible to have other, more complicated layouts. For instance we
may have both spatial and temporal structures. e.g., how railfall
pattern is changin over time in different parts of the globe. 
<P/>
Another example could be data from social media, where the units
are the people, and the layout is provided by their
intercommunication like Facebook friendship. 

<P/>
In this course we shall not consider these layouts.
</SESS>
</SCRIPT>
<EXRLIST id="M1L3.yml">
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

- typeName: checkbox
  prompt:  A line plot is most suitable for:
  shuffleOptions: true
  options:
  - answer: time series data
    isCorrect: true
    feedback: >
      Since time is continuous, it makes sense to joint the
      values with a line.
  - answer: cross-sectional data
    feedback: >
      The different cases are not linked in any continuous way. In
      fact they may not even be ordered.
  - answer: spatial data
    feedback: >
      Spatial data are better shown in a map. 
  - answer: panel data
    isCorrect: true
    feedback: >
      Here each column in the data matrix gets its own line. 
  

</EXRLIST>
</LESSON>
<STKY>
<HEAD2>Module 1, Lesson 4,  Video 1: Using a computer</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="2.80">
As we have already mentioned at the very outset of the course, we
need a software to play with data. There are many to choose
from. Some softwares like Microsoft Excel are relatively easy to
learn, while others like SPSS or SAS have a steeper learning
curve. All these softwares are proprietary, and you need to pay
money in order to own a legal copy. There are also some excellent
free softwares. One is LibreOffice, which provides much the same
experience as Microsoft Excel, and is quite easy to learn. The R
language and RStudio provide a very sophisticated statistical
computational environment that is completely free but requires
quite a bit of time to master. There is now a formidable array of
statistical analysis tools in the vastly popular Python language,
which is also free. 
<P/>
This course is not about
learning some software. We need just a simple software
that will enable us to try out the concepts that we are
learning. Also to keep financial burden to a minimum on the
learner, we shall use LibreOffice. It has an interface extremely
similar to that of Microsoft Excel, and expertise in using one
easily translates to the other. LibreOffice is available for free
for Windows, Linux as well MacOS. 
<P/>
Now, here is a little point that I should mention. Since
LibreOffice is free, it is possible to run it on cloud for free,
and Coursera already set up such a cloud version for use with
course. If you use it, there is no need to install anything in
your personal computer. 
<P/>
While that may sound great, it comes with a downside. The ability
to install a software yourself, and then run it is very much part
of the skill you need to acquire. If you are afraid of installing
the software, then all your expertise will vanish once the course
is over, because the cloud version will cease to be available to
you! So my advise is to tak the time to try to install the
software in your local machine. It is easy and generally proceeds
without any hitch. But in case there is a problem you can get
help from the course community. 
<P/>
So for a solid knowledge, do please install LibreOffice in your
local machine. In case you are really not in a position to do so,
use the cloud version as a fallback option.
</SESS>
</SCRIPT>

<STKY>
<HEAD2>Module 1, Lesson 4,  Video 2: Local installation</HEAD2>
</STKY>

<SCRIPT>
<SESS t="2.00">
[Screencast:  download and installation, show in windows and ubuntu]
</SESS>
</SCRIPT>

<STKY>
<HEAD2>Module 1, Lesson 4,  Video 3: Getting started</HEAD2>
</STKY>

<SCRIPT>
<SESS t="4.00">
[Screencast: Getting started]
</SESS>
</SCRIPT>

<STKY>
<HEAD2>Module 1, Lesson 4,  Video 5: Some tasks already seen</HEAD2>
</STKY>

<SCRIPT>
<SESS t="4.00">
[Screencast: Renaming categories]
</SESS>
<SESS t="4.00">
[Screencast: Combining and reshaping tables]
</SESS>
</SCRIPT>


<STKY>
<HEAD2>Module 1, Lesson 4,  Video 6: File formats: Excel</HEAD2></STKY>

<SCRIPT>
<SESS t="1.60">
In olden days people used to store data on paper, and perform all
the computations by hand. Now of course computers
provide both  the  storage as well as the processing. Data sets are stored as files, 
be it in the hard drive of a computer or removable devices like a
USB drive.

<P/>
Now,  a file in a computer is just a collection of 0's and
1's. When we store data  in a file,  they first need to be
converted into 0's and 1's. When we read the data back from the
file,  the 0's and 1's are converted back into the original
form. This two-way conversion process is mostly done
automatically without our intervention. Now,  this process may be
done in different ways,  and each such way is called a <B>file
format</B>. 
<P/>

There are quite a few file formats that are used in
statistics. Some are free,  while others are propreitary and
require paid softwares to write or read. Some formats are good
for sending data files over the email,  while some formats are
optimised to hold a large amount of data in a small space. 


<P/>

In this course we shall use the LibreOffice software,  which
understands various file formats. We shall discuss only two of
them. Every file format has its specific file name extension. The
first format has the extension <B>.xlsx</B>. This is one of the main
file format used by MS Excel. 
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="2.00">
[Screencast: Saving and loading xslx]
</SESS>
</SCRIPT>
<EXRLIST id="M1L4V1.yml">
- typeName: multipleChoice
  prompt: |-
    Enter the following  data in the LibreOffice spreadsheet.
    | Name    | Age | Income (Rs.) |
    |---------+-----+--------------|
    | Ram     |  45 | 23,456       |
    | Rakibul |  29 | 12,452       |
  shuffleOptions: true
  options:
  - answer: >
      Yes, I could do it. All the numbers are aligned with the
      right margin.
    isCorrect: true
    feedback: >
      Great! Data entry is an important (though tedious) part of
      any real life statistical exercise.
  - answer: >
      Yes, I could do it. Some of the numbers are aligned with the
      left margin.
    feedback: >
      Oh, no! Looks like LibreOffice has failed to recognise
      those "numbers" as numeric. Possible reasons are typing the
      letter o in place of a zero, or typing the letter I or l in
      place of a one.
  - answer: No, I cannot do it.
    feedback: >
      Oops, that worries me. Please let me know what went wrong. 

- typeName: checkbox
  prompt: >
    Consider the following screenshot:
    [Screenshot of Libreoffice with the above data set. A cell is
    marked A, the textfield is marked B]
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
    You want to get from:
    [Screenshot of Libreoffice with the above data set. A row is
    marked A]
    You want to delete the marked row to arrive at:
    [Screenshot of Libreoffice with the same data set, but the
    row has vanished.]
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
    

- typeName: multipleChoice
  prompt: >
    You want to get from:
    [Screenshot of Libreoffice with the above data set. A row is
    marked A]
    You want to delete the marked row to arrive at:
    [Screenshot of Libreoffice with the same data set, but the
    row has vanished.]
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
    following spreadsheet. 
      [Screenshot]
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

<STKY>
<HEAD2>Module 1, Lesson 4,  Video 7: File formats: CSV</HEAD2></STKY>
<SCRIPT>
<SESS t="1.50">
While the Excel format is adequate for many elementary
purposes,  there are a couple of drawbacks. First,  you need to
have MS Excel in order to view the data in the file,  or even to
make minor modifications. Second,  the file may be easily
corrupted if you send it by email. Third,  in case you want to
process the data by some other software,  this format may not be
recognised by that software. So it is a good idea to know about a
universally understood format,  called
the <B>comma-separated-values</B> format,  with file
extension <B>.csv</B>. In this format each case is represented by
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

</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="0">
[Screencast: Saving and loading as csv]
</SESS>
</SCRIPT>
<EXRLIST id="M1L4V2.yml">
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
</LESSON>
<STKY>
<HEAD2>Module 1, Lesson 5 (review),  Video 1</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="3.70">
So we have come the very last lesson of the week. We have 
had an exciting week with already 4 lessons. This last lesson is
just for review purposes. We have discussed many terms and
concepts. Don't blame yourself, if you are feeling a bit confused
with all these, especially if this is your first brush with
statistics. 
<P/>
Let me highlight the take away message from this week's
lessons. Whether you are planning your own data collection or
just looking at somebody else's data, the very first thing that
you should think about is "What is a unit here?" Unit does not
mean cm or miles or gram or kg. Unit means the basic entities
that the data are about. Are they households or patients or plots
or something else? Pretend that each unit is a human being and
you are asking questions. Each answer gives you a single
entry in the data matrix. The entity that gives you a single
answer is one unit. Take an example. An anti-pollution campaign
has been launched, and the ambient pollution levels are reported
at four places both before and after the campaign. Then a unit is
a (place, time) pair. So certain variables are needed to just
identify the unit, even before we have started collecting any
actual data. Take a moment to figure out these variables. In this
example they are the place names and the timestamps (before and
after). 
<P/>

Once you finish locating these variables, your next aim should be
to locate the questions that were put to these units. Each
question is a single variable. In this example, they are the
amount of different pollutants.
<P/>
I sometimes like to think of the former set of variables as inputs
and the latter set as outputs. Once you get this input-output
view of the data clearly in your mind, you should then visualise
how these units were chosen. The first point is the scope. 
Suppose that in a study of households in a village, you find that
every household in the data set has income from
agriculture. Can you readily conclude that most households in the village
have agricultural income? To answer this you need to know about
the scope. If the scope is <I>all</I> the households, then
yes. But if the scope is confined to <I>only</I> the households
with agricultural income, then no. It is here that you also start
thinking about how the sample was drawn (or whether the data are
from a complete enumeration). 
<P/>
The next exercise is to ask about the measurement units (not to be
confused with the units we talked about earlier). Many practising
statisticians are only too eager to get on with the analysis to
take the time to notice the measurement units. I have seen
wellknown statistician working with a variable with an
unfamiliar name, and he had no clue whether it was measured in
kilograms or light years! Not knowing your variables well leads
to serious loss of intuition, and lowers the quality of your
final analysis. 
<P/>
In the next video we shall go through the exercise of
familirising ourselves with a data set using a real life example.
</SESS>
</SCRIPT>

<SCRIPT>
<SESS t="5">
[Screencast: Getting started with NSS Hugli data.]
</SESS>
</SCRIPT>
<STKY><HEAD2>Module 1, Lesson 5 (future directions),  Video 2</HEAD2></STKY>
<SCRIPT>
<SESS t="2.90">
Statistics is a vast subject, and there is so much to say even
about just basic structure of data. We have mostly covered
whatever basic notion about data we shall need for our
course. But there are other things that are also worth having an
idea about. That's what we plan to do now.
<P/>
Measurement is a major way to get hold of data. When we think of
measurement, we think of measuring tapes and weighing
machines. But in the modern era of microcontrollers measurements
extend much beyond those traditional devices. You may be
surprised if I tell you that in your pocket you have a data
collection device
that makes 40,000,000 high precision measurements in a fraction
of a second! It is just your mobile phone camera. When you take a
picture it is basically a matrix of tiny tiles,
called <B>pixels</B>. There are three sensors per pixel measuring
the intensities of red, green and blue lights falling there. So
if you have a 13 megapixel camera then each snap is the result of 
13 times 10^20 times 3 measurements! Indeed, an important branch
of statistics and machine learning works with such data. If you
take 10 such snaps, then your data matrix is 10 times 4000000. 
Such data sets where columns far outnumber rows are getting so
very common nowadays that newer methods are being developed to
deal with them. Most traditional statistical methods like the
ones we shall learn in thiis course are meant for data sets where
we have many more rows than columns.  
<P/>
We have mentioned time series data, where the cases are arranged
chronolgically. Such data occur frequently when monitoring some 
situation (like number of COVID infected persons, value of some
stock). I have also mentioned that irregularly spaced time series
analysis is used by NASA in search for extrasolar planets. Now I
am about to tell you about another type of time series data that
we can collect ourselves: audio. Yes, when we record audio (say
at 48 K Hz) we are actually making 48000 measurements per second!
Since the measurements are made chronolgically, and time plays an
important role in playback, the resulting data are a time series
data. That analysis of sound is an important application area
goes without saying. But it might come as a surprise scientists
try to predict the future values of a recorded sound in order to
produce a "opposite sound" to 
cancel noise in air crafts. This is called active noise
cancellation. 
</SESS>
<SESS t="0">
<TODO>H5 data format and others (e.g. sav)</TODO>
</SESS>
</SCRIPT>
</LESSON>

<STKY><HEAD1>Module 2: Presentation of data (part 1)</HEAD1></STKY>
<STKY><HEAD2>Module 2, Introductory Video: Peer review</HEAD2></STKY>
<SCRIPT>
<SESS t="1.60">
So we have finished one week of our course, and are now about to
start the second week. This week our focus will be on 
presentation of data, mainly graphical presentations.
<P/>
The structure of this week will remain basically the same as that
of the last week. Four lessons plus practice problems, and then a
review lesson followed by a weekly test. There is, however, one
new element. The weekly test will contain some peer review
problems. This is an important aspect of this course, and your
final exam will also have a significant amount of peer review. So
we should better get accustomed to it. Unlike the problems in the
last week's exam, where the answers were rather objective and
hence auto-gradable, the peer review problems require more
complex answers, and human grading. After all of you finish
submitting your answers, each student will be graded by three
other randomly selected students. The process will be conductd
blindly, i.e., the graders will not know the
identity of the student whose answers they are grading, and the
student will not know who the graders are. The
median grade (i.e., the central grade) will be taken (after
possibly an additional check by the instructor). 
<P/>
Don't worry if this your first time grading experience. We shall provide you
with the correct answers plus a rubric, i.e., a scheme for how much marks to
give for different aspects of the solution. 
</SESS>
</SCRIPT>
<STKY><HEAD2>Module 2, Lesson 1,  Video 1: Graphical: exploratory and pedagogic</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="1.50">
In the year 1858,  a war took place between the British and the
Russian. A particularly infamous battle fought in it was the
battle of Crimea,  where  a young nurse named Florence Nightingale,  along with a
small group of friends,   was providing
voluntary service at the battlefield. She was shocked to find
that more soldiers died of disease than in actual
fighting. She saw this clearly,  as did many others present at the
battlefield. But unfortunately the policy makers sitting in
London did not see this as clearly. Fortunately for the soldiers
and the posterity,  Florence Nightingale was not just a dedicated
nurse. She was also a passionate statistician at heart,  one who knew how to
convince others using data. She knew that data, as a mere
collection of numbers, did not appeal to non-statisticians. So
she designed a way to present her data through pictures. Her
graphic, which she called the wedges, and more commonly known as the
Nightingale Rose Chart or the Coxcomb has gone down in history
as one of the most famous data charts ever made. She included it
in a privately published report, which she circulated among
powerful politicians. This eventually led to significant
improvement in the sanitary conditions of the army hospitals.
<P/>
Let's take a closer look at the chart. <V>[Chart
appears]</V>. Her data set was a monthly 
trivariate time series, collected from 1854 to 1855. The three
variables were the numbers of deaths due to three causes:
epidemic, preventable reasons, and others. She split the central
360 degree angle of circle
into 12 equal parts and devoted one to each month. For each of
the causes of death, 
she constructed one sector in each wedge with area proportional to the mortality
rates.  Thus, in each wedge she had three sectors (all
overlapping near the centre), and colour coded by the cause of
death, red for ... blue for ... and black for the others. As one
can easily see the blue parts dominate the entire chart, driving
her point home that deaths due to preventable reasons were the
most significant. To make the direness of the situation all the
more vivid, she added a dashed circle <V>[shown]</V> with area
proportional to the mortality rate in the London hospitals at
that time.
</SESS>
<SESS t="1.40">
This is a classic example showing the power of pictorial
representation of data. We use our eyes to
decide about our surroundings. We are extremely adept at grasping
visual patterns.  Graphical representation of data
just converts patterns in the data into visual patterns, which
even a layman can quickly detect. 
<P/>
Now graphically representaing data does not mean converting a
jumble of numbers into a riot of colours. It must be
done with two basic points in view: <B>comparability</B> and <B>contrast</B>.
In his book Speaking of Graphics, the author tells us how
Nightingale achieved these using her Rose Chart. Though her
original data were the numbers of deaths, she did not actually
make the area proportional to that. Instead she projeccted
everything to the  mortality rate. This allowed her to
compare different months, without having to worry about the
different numbers of patients in different months. Also, she was
comparing the sectors with that of the dashed circle. As the
dashed circle denoted the annual value, she projected her monthly
rates to the annual rates before drawing the sectors. The idea of
comparability is like bringing fractions on a common denominator
before comparing them by the numerators.
</SESS>
<SESS t="0.80">
The next point is that of contrast. In her Rose chart,
Nightingale presented two different contrasting pairs. First,
between the different causes of mortality, and then between
mortality in the army hospitals and that in the London
hospitals. Contrast appeals to the human mind. Do you have a
favourite Bond movie? When you discuss it, you'll be inevitably
drawn towards comtrasting it with the other Bond movies you have
watched. You'll talk about where this Bond differed from that
Bond. A description without contrast is as uninteresting as a
musical piece where the same sound is produced again and again
without variation.
</SESS>
<SESS t="0.20">
One may,  like Florence Nightingale,  improvise one's own way of
representing data graphically. But there are certain standard
methods,  which every statistician should know about. 
</SESS>
</SCRIPT>
<STKY><HEAD2>Module 2, Lesson 1,  Video 2: Line diagram</HEAD2></STKY>
<SCRIPT>
<SESS t="2.10">
When we present data, there are two conflicting aims. One is to
present it as is, in an objective way. The other is to highlight
what we feel is worth seeing, possibly downplaying other
aspects. This is somewhat like writing a  review for a book.
An editorial review imapassively lists the salient features of
the book, leaving the final judgement to the reader. But a
customer review is more passionate, it seeks to present a
personal view more than a comprehensive picture. In the world of
modern statistics, the latter is generally frowned upon. Though
such presentations are frequently used in advertisements and
similar places.

<P/>

The data used by Florence Nightingale were time series data. The
most common way to depict such data is the <B>line chart</B>. 
This is just a graph with time shown in the <M>x</M>-axis, and
the quantity of interest in the <M>y</M>-axis. Let's consider a
data set used by Florence Nightingale about the monthly
mortalities in the army hospital at Scutari. <V>table shown</V>.
This is a monthly data. So we label the horizontal axis with the
months. The first value is ..., which gives us a point like this.
Similarly, each row gives us one
point <V>Points are shown</V>. We join the consecutive points
with straighlines. The resulting plot is a line
chart. 

<P/>
Why did we join the points with straight lines? Because, time
flows continuously, even though we are oberving our series at
only some discrete points. Also the valriable shown along the
vertical axis is also continuous. Thus, it is quite meaningful to ask
for the value of the series inbetween two observations. A simple
way to approximate such intermediate values is by linear
interpolation. This is what is achieved by joining consecutive
points with straigh lines.
<P/>
But if the variable shown along the vertical axis were
categorical, then joining the points with a straighlines like
this will not make any sense. Then we could use only vertical or
horizontal lines, much like a staircase.
<P/>

If we multiple quantities of interest,  then we vave multiple
lines that may be plotted separately or,  to facilitate comarison, 
overlaid on the same plot. 
</SESS>
</SCRIPT>

<STKY><HEAD2>Module 2, Lesson 1,  Video 3: Line diagram (lab)</HEAD2></STKY>
<SCRIPT>
<SESS t="0.20">
Remember that softwares are stupid. We shall learn with toy
examples. Get into real data at the very end.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="2">
[Screencast: making a line diagram, overlay, labeling]
ts1: Single series, works out of box.
</SESS>
<JINGLE t="0.1">ts2</JINGLE>
<SESS t="3">
[Screencast: making a line diagram, overlay, labeling]
ts2: Multiple series, works out of box.
</SESS>
</SCRIPT>

<STKY><HEAD2>Module 2, Lesson 1,  Video 4: Line diagram (lab)</HEAD2></STKY>
<SCRIPT>
<SESS t="5.5">
[Screencast: ts3: Time as numbers, Needs "First column as
labels", missing?]
</SESS>
</SCRIPT>

<STKY><HEAD2>Module 2, Lesson 1,  Video 5: Line diagram (lab)</HEAD2></STKY>
<SCRIPT>
<SESS t="7">
[Screencast: ts4: Details of the chart wizard.]
<TODO>Combine this and the next video.</TODO>
</SESS>
</SCRIPT>

<STKY><HEAD2>Module 2, Lesson 1,  Video 6: Line diagram (lab)</HEAD2></STKY>
<SCRIPT>
<SESS t="6">
[Screencast: ts5: Details of the chart edit mode.]
<TODO>Combine this and the last video.</TODO>
</SESS>
</SCRIPT>

<STKY><HEAD2>Module 2, Lesson 1,  Video 7: Line diagram (interpretation)</HEAD2></STKY>
<SCRIPT>
<SESS t="0.70">
What are line charts good for? 
Line charts show the ups and downs of the values over time. A
plot like this, for example, indicates a steady growth, while
a plot like this shows a steady decline. Often we see a periodic
behaviour, like a weekly or yearly cycle. Such periodic
behaviour is often difficult to discern otherwise. Let's look at
the famous sunspot data as an example. First a little bit of
background. Just as the
moon has spots on it, the Sun also has spots on it. Of course, we
cannot see them with the naked eye, but astronomers manage to
count these spots using solar telescopes. They find that this the
number of sunspots vary from year to year. If we plot the yearly
numbers of sunspots as
 a line chart, then we discern a periodic behaviour. The period
is roughly 11 years. 
<P/>
Let us go through an example. Consider this line chart. If I ask
the value for time 34, the answer is this height, which is
roughly ... What is the maximum value? It is ...
</SESS>
</SCRIPT>

<EXRLIST id="M2L1V2.yml">
- typeName: numeric
  prompt: |-
    Here is a line plot of sales. 
       [Plot here]
    What is the value for Jan?
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
      

- typeName: numeric
  prompt: > 
    This plot shows a periodic fluctuation. What is the length
    of a single period?
    [Plot here]
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
      

- typeName: numeric
  prompt: > 
    From this time series plot of revenue guess the next
    peak value. 
    [Plot here]
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

<EXRLIST id="M2L1V3.yml">
- typeName: multipleChoice
  prompt: > 
    Make a line plot of this data set. [Link] How many peaks are
    there? 
  shuffleOptions: true
  options:
  - answer:
    isCorrect: true
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      

- typeName: numeric
  prompt: >
    Make an overlaid line plot of the two variables in this data set.[Link]
    What is the first point where the first curve goes over the
    second?
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
</LESSON>

<STKY>
<HEAD2>Module 2, Lesson 2,  Video 1: Scatter plot</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="2.60">
Line charts are primarily used for univariate data, though
multivariate data could be accommodated using multiple line
charts overlaid on top of one another. The next graphical device
that we are going to learn about is primarily for bivariate data,
though it may also be used for trivariate data. It is called a
<B>scatter plot</B>. 
<P/>
Scatter plot is a close kin of the line chart. Here we just show
the points without joining them with lines. Sort of a line chart,
without the lines! Let's understand this with an example. 

<P/>
Consider a fictitious height-weight data set. Here each case is a
person, and we have measured the height and weight of each
person. To present this data set as a scatterplot, we take two
axes, one for each variable. Typically,  the
variable which is less in our ontrol,  and is more relieably
measured,  is shown in the <M>x</M>-axis. For example, here
height is shown in the horizontal axis, and weight in the
vertical axis. This choice is taken from mathematics. If you plot
the graph of some formula like <M>y = \sin x</M>, where <M>y</M>
is a given in terms of <M>x,</M> then <M>x</M>, the independent
variable,  is shown along the
horizontal axis, while the dependent variable <M>y</M> is shown
in the vertical axis. Similarly, here height is like the
independent variable, it depends on fewer things than weight
does. We seem to just get our height genetically, and it becomes
fixed once we are adults. Weight, on the other hand,
depends and fluctuates based on lots of factors, food,
exercise. As a result, we talk about the ideal weight of a a
person with a given height, but not about the ideal height for a
person with a given weight. Thus judging the weight in terms of
the height is a natural tendency, and this is why we shall show
height along the horizontal axis and weight along the vertical axis.
<P/>
The first case has this height,  weight pair. This corresponds to
this point. Similarly, each case gives us a point. 
<P/>
The resulting diagram is called a scatterplot. Let's go through a
little lab session before discussion further details.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="2">
[Screencast: making a scatterplot for the height-weight data.]
hw1: simple 
</SESS>
<SESS t="0.20">
In the next video we shall look at a little variation of this.
</SESS>
</SCRIPT>
<STKY>
<HEAD2>Module 2, Lesson 2,  Video 2: Closer look at scatterplots</HEAD2></STKY>

<SCRIPT>
<SESS t="0.20">
Sometimes we may accommodate a third (categorical) variable in a
scatterplot. Let's see how.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="7">
[Screencast: hw2: Gender: Split using gender, plot both.]
</SESS>
</SCRIPT>
<STKY>
<HEAD2>Module 2, Lesson 2,  Video 3: Closer look at scatterplots</HEAD2></STKY>

<SCRIPT>
<SESS t="0.60">
Let's now take a closer look at scatterplots. First, these are
mainly used when both the variables are continuous. They are sometimes
used even when one variable is discrete. Like plotting yields of
crops for different fertilisers. But if you try to use them for
situations where both the variables are discrete, you may have
many cases piling up at the same point, and the scatterplot will
not be able to distinguish them. 
</SESS>
<JINGLE t="0.1">Interpretation</JINGLE>
<SESS t="0.50">
How to intepret a scatterplot? Well, a scatterplot shows the
relation (or lack thereof) between two variables. Our eyes are
extremely adept at discerning patterns in 2 dimensional
pictures. Scatterplots harness that power by converting the
values to points in the plane. Here are some commonly encountered
patterns.  
 * Linear increasing
 * Linear decresing
 * Constant
 * Linear loose
 * Linear tight
 * Nonlinear increasing
 * Nonlinear decresing
 * Nonlinear max
 * Independent 
</SESS>
<JINGLE t="0.1">Outliers</JINGLE>
<SESS t="0.80">
If finding overall patterns in a data set is the most important
use of scatterplots, the second most important use is just its
opposite: detecting points that do not conform to the general
pattern. These are called <B>outliers</B>. 
<P/>
Real life data abound in outliers. There are two types of
outliers:
  * Result of data error (typo, power outages)
  * Indication of inadequacy of the model.
Whatever the type, the scatterplots are quite useful to detect
them. Here are a few examples:
  * Independent with one point far off.
  * Linear with one point not along the line.
  * Linear with one point one the line but far from others.
</SESS>
<SESS t="6">
Outliers always deserve special attention. Ozone holes. Challenger.
</SESS>
<SESS t="0.60">
What to do if we have a third variable? One solution (which is
not available in Libreoffice) is to make a 3D scatterplot, where
the points are floating a 3D space. Even if you can make them,
they are difficult to interpret unless you can move them
interactively with the mouse.
<P/>
Libreoffice provides a different solution, called a bubble
plot. Here a third variable (and even  a fourth variable) may be
accommodated as the size (and colour) of the bubbles. We shall
learn how to create them in the next video.
</SESS>
</SCRIPT>
<STKY>
<HEAD2>Module 2, Lesson 2,  Video 4: Closer look at scatterplots</HEAD2></STKY>

<SCRIPT>
<SESS t="1">
[Bubble intro]
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="5">
[Screencast: bubble plot]
bubble.csv: Need of the first column as label. Try without making
colours, then make colours.
</SESS>
</SCRIPT>


<EXRLIST id="M2L2V1.yml">
- typeName: checkbox
  prompt: > 
    Which of the following scatterplots is/are possibly a weight vs
    height scatterplot for a random sample of adult men?
  shuffleOptions: true
  options:
  - answer:
    isCorrect: true
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      

- typeName: numeric
  prompt: > 
    The following scatterplot shows an outlier. Its <M>x</M>-value is:
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
      

- typeName: multipleChoice
  prompt: > 
    How many clusters can you see in the following scatterplot?
  shuffleOptions: true
  options:
  - answer:
    isCorrect: true
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      

</EXRLIST>

<EXRLIST id="M2L2V2.yml">
- typeName: multipleChoice
  prompt: >
    Make a scatterplot based on the following data[link]. One
    point is slightly away from the bulk of the points. Which case?
  shuffleOptions: true
  options:
  - answer:
    isCorrect: true
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      


- typeName: multipleChoice
  prompt: > 
    Repeat the same exercise,  but now colour-code the points
    using gender. Use red for male and blue for female. There 
    is one blue point somewhat inside the bulk of the cluster of
    red points. Which point?
  shuffleOptions: true
  options:
  - answer:
    isCorrect: true
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      

</EXRLIST>
</LESSON>

<STKY>
<HEAD2>Module 2, Lesson 3,  Video 1: Bar chart</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="2.30">
The two graphical representations that we have learned so far were
both meant primarily for continuous variables. Take line chart
for example. The justification behind joining successive points
by lines came from the continuity of the two variables. It made
sense to talk about the values inbetween two observed points. But
there are situations where this is not the case. Suppose that we
want to present the populations of five different states. Using a
data set like this. Here state is a discrete variable. If we make
a line plot like this, then the lines will be meaningless.
What is the intepretation of this point, for example? It is the
population half-way between Bihar and Orissa? What is 
"half-way between two states"? It is not that the the states are
two points and population is something that changes continuously
between them. Also, the states are not ordered. So why should we
joint Bihar and Orissa, and not, say, Bihar and West Bengal? 
<P/>
It is in such a situation that we need a discrete version of the
line chart. Of course, we may just leave the points as they are,
and omit the lines. But then the points look very
inconspicuous. You can hardly see them, right? So instead we draw
bars like this. The heights of the bars represent the
variable. This is called a <B>bar chart</B>. If the variable in
the horizontal axis is unordered (as is the case here), then the
order of the bars are not important. For example, both this, and
this, may be used. However, if the horizontal variable is
ordered, then it is natural to present them according to that
order. For example, if we are representing counts of people in
different educational levels, then this is meaningful, but not
this, since college should come after high school.

<P/>
Another similar example, is from Amazon's review summary.
<P/>
Before going into further details. It is time to get our hands
dirty with some lab work.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="6">
[Screencast: Make a simple bar chart. Play with labels legends
etc]
bar.csv: Go slow.
</SESS>
</SCRIPT>

<STKY>
<HEAD2>Module 2, Lesson 3,  Video 2: Bar chart variants</HEAD2></STKY>
<SCRIPT>
<SESS t="1.50">
Now that we have learned how to make a basic bar chart, it is
time to take a look at some of its variants. The basic bar chart
for bivariate data only, where the variable shown along the
horizontal axis is a categorical one.
What if we have more candidate variables for the vertical axis?
For example, to modify our population for states example, suppoe
that we have the male and female populations reported
separately. 
Of course, we may just want to make two separate bar charts. But
what if we also want to compare them? Then we can place the bars
side by side. While this faciliates comparison between the male
and female populations, it makes it difficult to compare the
total poplations between states. So we may use a subdivided bar
chart. Here it is easier to compare totals over states, males
over states, males with females for each state. But comparing the
female poplations over state is less easy, because those
rectangles do not start from a common level. This is a common
situation encountered when using a graphical representation of
data. Certain choices make certain aspects of the data to stand
out. While this is desirable in some cases, this may also end up
presenting a biased view of the data. 
<P/>
Anyway, before talking further it is time to go to the lab.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="5">
[Screencast: side-by-side and subdivided (also show 3D)]
bar3.csv: Side by side. Change colour.
bar2.csv: First side by side. Diffeence and subdivided. Show
3d with 3d options.
</SESS>
</SCRIPT>




<STKY>
<HEAD2>Module 2, Lesson 3,  Video 3: Pie</HEAD2></STKY>
<SCRIPT>
<SESS t="1.50">
Bar charts are good for showing values of one variable (typically
a continuous one) in relation to a categorical variable. Often,
however, we are interested in showing the values as fraction of
a whole. For instance, to get a quick idea of the COVID infection
situation in a state, we might report the number of COVID
infected persons for each district. But this will not be adequate
for providing contrast between the districts in relation with the
whole state. For this we should divide the number for each
district by the total for the state. A good way of representing
such fractions that add up to 1 is the <B>pie chart</B>. 
<P/>
Here is a pie chart for our data. It shows the whole state as a
circle. We know that the central angle is 360 degrees. Also the
total fraction is 1. This known total is naturally mapped to the
known central angle. Then we split the circle into sectors whose
central angles (or equivalently the area) are proportional to the
fractions to be depicted. Notice that the radius contains no
information. Also, the actual value denoted by each sector cannot
be recovered from the pie chart, only the fractions. 
<P/>
Let's learn making a pie chart using Libreoffice.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="5">
[Screencast: Make a simple pie chart. Play with labels etc.]
pie.csv: Tools > Options > Charts > Default colours (in chart
edit environment) <TODO>Chop some excess audio near the end.</TODO>
</SESS>
</SCRIPT>
<STKY>
<HEAD2>Module 2, Lesson 3,  Video 4: Pie (variants)</HEAD2></STKY>

<SCRIPT>
<SESS t="0.80">
There are not too many variants possible for a pie chart. Of
course, you may make it look like a 3D disk. But that is only a
cosmetic thing, which may actually interfere with
interpretability, as in a 3D view the circle looks distorted into
an ellipse. So the sectors to the sides get more prominence. 
<P/>
Pie charts are not good for multivariate data. If you have more
than variable, you have to make a separate pie chart for
each. Libreoffice does have an option for incorporating multiple
variables in the same pie chart using concentric rings, but that
is quite confusing to the eye, and should be avoided. 
</SESS>

</SCRIPT>
<EXRLIST id="M2L3V1.yml">

- typeName: multipleChoice
  prompt: > 
    Consider the following bar chart. 
    [Fig here]
    Two values are roughly the
    same. Which two?
  shuffleOptions: true
  options:
  - answer:
    isCorrect: true
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      

- typeName: multipleChoice
  prompt: Who has the lion's share in this pie chart? [fig here]
  shuffleOptions: true
  options:
  - answer:
    isCorrect: true
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      

</EXRLIST>


<EXRLIST id="M2L3V2.yml">

- typeName: multipleChoice
  prompt: > 
    Make a bar chart from the following data. One bar does not
    follow the general pattern. Which one?
  shuffleOptions: true
  options:
  - answer:
    isCorrect: true
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      

- typeName: multipleChoice
  prompt: > 
    Make a pie chart from the same data. One value accounts for
    about 25% of the total? Which one. Also, how many values
    exceed 234? Answer *based on the pie chart only*, and not the
    original data. 
  shuffleOptions: true
  options:
  - answer: 13, cannot answer.
    isCorrect: true
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      


</EXRLIST>
</LESSON>
<STKY>
<HEAD2>Module 2, Lesson 4,  Video 1: Pitfalls</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="5.80">
Charts are more colourful than numbers. But we do not add charts
in a report just to make the report colourful. Charts must help
in interpreting data. Sometimes people use charts wrongly,
deliberately or inadvertently. It is important to acquaint
ourselves with such misuses, both to avoid committing these
mistakes ourselves, as well as to safeguard against others
deliberately trying to distort our view of data. 
<P/>
The very first point to remember is that charts show values of
variables, and every chart should be clearly labelled with the
names of variables it is depicting. It is not uncommon to find
plots like this accompanying a claim like our brand of nutrition
drink is 30% more helpful for building muscles. Such a plot is
meaningless because it is not telling us what  the variable
along the vertical axis is. 
<P/>
The next important point is to mention the scale. When you draw
two axes like this, an unsuspecting
viewer is led to believe that this is the origin. However, it is
quite possible that the scales do not start from 0. In that case
values that seem to double, may not actually double. So never produce
and always suspect charts that do not show scales along the
axes depicting continuous variables. Also, be careful about
interpreting scales that do not start from zero.
<P/>
These are gross mistakes. Next we shall discuss errors that are
more subtle. These are often deliberately planted in propaganda
reports. When we use charts we are converting patterns in the
data to visual patterns, patterns that appeal to the eye. Now
there are various things that appeal to the eye, some more than
others. If you use a chart that maps to a more conspicuous
feature, then the viewer will find it more convincing. And there
is a pitfall for the unwary here. Suppose that we have a
univariate data set, about populations in a district. Instead of
making a bar chart, we want to be playful, and replace the drab
rectangles with little human figures with sizes proportional to
the population. Problem! What do we mean by "size" here? Length
or area? Now it is a property of the human eye that it is more
attracted by the area than by linear dimensions. This square
seems to be 4 times that square, though in terms of linear
dimension it is only doubled! So if you are showing the
population as proportional to the length, you'll make a much
greater (and false) impact on the viewer. 
<P/>
Indeed Florence Nightingale's original chart could have been made
more visually powerful by making the <I>radius</I> instead of the
area of a
sector proportional to the value. [Suggest what is bad if we make
outer layer areas proportional.]
<P/>

3D graphics look cool in a report. Realistically rendered 3D
graphics employ perspective distortion, the distortion that makes
circles look like ellipses, and make far away trees appear
smaller than those close at hand. Now depth added to a chart is
mainly to make it look cool, and hence be applied in different
ways. But depending on how you apply it, the part of the chart
closer to the eye will get more emphasis than the part away from
it. As this interferes  with an objective interpretation
the data, serious statistiians strongly disparage the use of the
pseudo 3D plots. 3D plots are OK, only when the user is allowed
to view it from different angles (typically using some
interactive software). 
<P/>
Finally we come to the sublest mistake: forgetting the two basic
principles behind graphical representations:

Graphical representations like most statistical procedures are
dumb procedures that work on data. I cal them dumb, because they
do not care about whether they produce meaningful results or
not. It is your duty as the analyst to make sure that the outcome
is meaningful. This reponsibility is apparent even in as simple a
plot as a bar chart. Remember what we had said about Florence
Nightingale's approach. She had in mind the two most important
principles:
  * Comparability 
  * Contrast

Let's see how these two principles are to be followed while
making a bar chart. 
When you make a bar chart of values, the eye of the viewer is
naturally drawn towards  comparing the
heights of the bar. So the quantities represented by the heights
should better be comparabale. The software will not guarantee
this for you. It is a dumb piece of algorithm that has no sense
of the domain, and does not know what is comparable and what
isn't. Suppose that I have 5  agricultural plots. I have sown
5 different crops and measured the revenue earned from them. Here
is the hypothetical data set. Our aim is to compare the revenues
from different crops (possibly to motivate growing a particular
crop more than others).  Would you go about making a bar
plot like this? 
<P/>
No, because here the revenues are not comparable, as they depend
not only on the types of crops, but also on the area. So it would
be better to make a bar plot of revenue per unit area. Let's see
how this may be done.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="4">
[Screencast: Bar chart of derived quantities.]
bar4.csv: GDP inflation. Time series is better. 
</SESS>
<SESS t="1.10">
So much for comparability. Now for contrast. Most graphical
representations are used as part of a report. A report should
tell a story, and the charts should fit into that story. Just
presenting charts after charts, may leave the viewer
bewildered. It is contrast (or a sriking lack thereof) that fits
a chart into a report. If there is one crop that markedly stands
out over the rest, then that contrast should make the chart
relevant. If your contetion is that the crops are basically all
similar in terms of the revenue they bring, then a bar chart with
all bars more or less of the same height is relevant. In other
words, before you you include a chart in your report, make sure
that you can write a one-line highlight that fits into the flow
of the report. If you cannot, then possibly you should better
omit the plot.
</SESS>
</SCRIPT>
<EXRLIST id="M2L4V1.yml">

- typeName: multipleChoice
- prompt: Difference between rose chart and pie chart.

- typeName: multipleChoice
  prompt: > 
    Here is a plot of the sales of a company over the
    years.[plot]
    Can we claim that the company had a significant amount of
    growth during this period? [No, axis scales
    unmarked]
  shuffleOptions: true
  options:
  - answer:
    isCorrect: true
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      

- typeName: multipleChoice
  prompt: >
    Here is a 3D pie chart. [fig] Which has the bigger share, the
  red one or the blue one?
  shuffleOptions: true
  options:
  - answer:
    isCorrect: true
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >

- typeName: multipleChoice
  prompt: > 
    The income from excise duty from different states of a country 
    are shown as bottles with area proportional to the
    value. [fig] Is the maximum value more than 
    double the minimum value? 
  shuffleOptions: true
  options:
  - answer:
    isCorrect: true
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      



</EXRLIST>

<STKY>
<HEAD2>Module 2, Lesson 4,  Video 2: Real life examples</HEAD2></STKY>

<EXRLIST id="M2L4V2.yml">

- typeName: multipleChoice
  prompt: > 
    Ask to repeat some activity shown in the video with some
    different variable.
  shuffleOptions: true
  options:
  - answer: Yes, I could do this.
    isCorrect: true
    feedback: >
      That's great!
  - answer: No, I could not. 
    feedback: >
      Oops, sorry to hear that. Please watch the video from ...
      to ..., and let me know how you fared.

- typeName: multipleChoice
  prompt: > 
    Ask to repeat some activity shown in the video with some
    different variable. 
  shuffleOptions: true
  options:
  - answer: Yes, I could do this.
    isCorrect: true
    feedback: >
      That's great!
  - answer: No, I could not. 
    feedback: >
      Oops, sorry to hear that. Please watch the video from ...
      to ..., and let me know how you fared.

- typeName: multipleChoice
  prompt: >
    Ask to repeat some activity shown in the video with some
    different variable.
  shuffleOptions: true
  options:
  - answer: Yes, I could do this.
    isCorrect: true
    feedback: >
      That's great!
  - answer: No, I could not. 
    feedback: >
      Oops, sorry to hear that. Please watch the video from ...
      to ..., and let me know how you fared.

</EXRLIST>

</LESSON>
<STKY>
<HEAD2>Module 2, Lesson 5 ,  Video 1: Review</HEAD2></STKY>
<STKY><HEAD2>Module 2, Lesson 5 ,  Video 2: Review</HEAD2></STKY>

<STKY><HEAD1>Module 3: Presentation of data (part 2)</HEAD1></STKY>
<SCRIPT>
<SESS t="0.70">
Here we are at the start of week 3 of our course. We have already
mae quite a bit of progress. We have learned about data and
related concepts. We have learned about some basic graphical
representation of data. This week we shall learn about tabular
representation of data and a very important graphical device
called the histogram. 
<P/>
The structure will remain as the last week. Four topics, along
with practice problems, followed by a review session and the
week's test. And as before we have some peer review problems. 
<P/>
OK, enough introduction. Let's get started!
</SESS>
</SCRIPT>

<STKY>
<HEAD2>Module 3, Lesson 1,  Video 1: Tabular: Pivot table and pivot chart</HEAD2>
</STKY>
<LESSON>
<SCRIPT>
<SESS t="2.60">
In this video we shall talk about a representation of data that
is definitely the one most commonly used: <V>tabular
format</V>. Be it a telephone directory or a dictionary or a
railway timetable,  tables are everywhere around us. Even when we
use a computer to look up information,  the underlying data base
is basically a collection of tables. 
<P/>
A table,  as we all know,  presents data in a rectangular
format. Well,  we have already used them earlier in this
course. When we first learned
about data in week 1, we talked about a data matrix, which is an
example of a table. 
There columns represented variables and rows represented cases. Those
tables were meant primarily to be fed into a computer
program. Such a table did not allow information to be attached to
row headings. But human-readbale tables can be (and should be) more
varied. They allow for various embellishments, like 
<B>row headings</B>,   <B>nested rows</B>, 
<B>nested columns</B>,  <B>marginal summaries</B> <B>etc</B>.
Such fancy tables are often called <B>pivot tables</B>.
<P/>
When we learned about bar chart and pie chart, we often needed a
summary table to start with. Those were also examples of pivot
tables. Let's understand how to arrive at these starting the data
matrix. 
<P/>
Let's start with an example. Suppose that there are a 1000
students who have been given letter grades A, B, C, D, and F. We
want to represent the data as a bar chart like this. As you may
guess we need a summary table like this to produce the
chart. However, most likely the original data was laid out like a
data matrix where each row corresponded to a single student, and
there was a column with the grades. Thus, if there are 1000
students we have as many rows. To arrive at the summary table we
basically have to count the numbers of A's and B's etc. Of
course, it is tedious to do by hand. We shall learn how to make
Libreoffice do this for us. In the process we shall also learn
how the same technique may be modified to produce more varied
pivot tables. 
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="4">
[Screencast: Create a letter grade frequency distribution.]
letgrad.csv:
</SESS>
</SCRIPT>

<STKY>
<HEAD2>Module 3, Lesson 1,  Video 2: Tabular: Pivot table and pivot chart</HEAD2>
</STKY>
<SCRIPT>
<SESS t="1.30">
The example that we saw in the last video was possibly the
simplest type of pivot table. More generally a pivot table (also
called a cross-tabulation) takes a raw data matrix, with at least
one categorical variable. To make a pivot table you need to
select one or more of these categorical variables. Based on 
the combinations of values of these variables the cases get
grouped into subsets. For instance, if there is a column called
gender (taking values Male and Female) and another column called
handedness (taking values Left and Right), then there will be
four subsets (Male, Left), (Male, Right), (Female, Left) and
(Female, Right). Of course, one or more of these subsets may
actually be empty, i.e. ,there may not be any row corresponding
to that particular combination. The next thing you need to
specify is some kind of summary value to be applied to the
subsets. The summary value could just be the size of the
subset. This is hat we did in the letter grade example. Or it
could be average or sum or something else. 

<P/>
Let's see a detailed example to understand this.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="5">
[Screencast: Make a pivot table, and play with settings]
lr.csv, count and avg iq, decimal places.
</SESS>
</SCRIPT>
<STKY>
<HEAD2>Module 3, Lesson 1,  Video 3: Tabular: Pivot table and pivot chart</HEAD2>
</STKY>

<SCRIPT>
<SESS t="0.40">
Pivot tables allow some additional embellishments to be added to
the basic summary table. In fact, the marginal totals that we
were seeing all along, are examples of this. We can remove them,
if we please.
<P/>
Let's see how we can do this using Libreoffice.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="5">
[Screencast: Marginals off from last example.]
</SESS>
</SCRIPT>

<STKY>
<HEAD2>Module 3, Lesson 1,  Video 4: Tabular: Pivot table and pivot chart</HEAD2>
</STKY>
<SCRIPT>
<SESS t="0.80">
Pivot tables have two major uses in a report. One is as
themselves. Most tables that we see in a report are actually
pivot tables generated from the original data matrix which is
typically very huge. The second use of pivot tables is as an
intermediate step towards producing grphical representations
like bar charts or pie charts. So the entire route from the raw
data matrix to such a chart basically consists of two steps: raw
data to pivot table, and then pivot table to the chart. Both
these steps may be conveniently packed into a single thing in
LibreOffice. This single thing is called a <B>pivot chart</B>. 
Let's see an example.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="5">
[Screencast: Pivot chart]
letgrad.csv: pie chart
</SESS>
</SCRIPT>
<EXRLIST id="M3L3V1.yml">

- typeName: multipleChoice
  prompt: >
    We have constructed this pivot
    table. 
    |              | Male | Female | Total |
    |--------------+------+--------+-------|
    | Left-handed  |   29 | ??     | ??    |
    | Right-handed |   34 | 45     | ??    |
    |--------------+------+--------+-------|
    | Total        |   ?? | ??     | 200   |

  What should the value in the marked cells be?

- typeName: multipleChoice
  prompt: > 
    Here are two pivot tables claimed to be derived from the
    same data set. Is the claim justified?


- typeName: multipleChoice
  promot: >
    Here are two different layouts for the same pivot
    table. Which one is better suited for a newspaper report?
    |      | Urban | Urban  | Rural | Rural  |   |
    |------+-------+--------+-------+--------+---|
    |      | Male  | Female | Male  | Female |   |
    | High |       |        |       |        |   |
    | Med  |       |        |       |        |   |
    | Low  |       |        |       |        |   |
    and 
    |        | Urban | Urban | Urban | Rural | Rural | Rural |
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
       Well, they both contain the same information. But the aim
       here is to related the income group with the background.

</EXRLIST>


<EXRLIST id="M3L2V2.yml">

- typeName: multipleChoiceCreate a pivot table based on given data.

- typeName: multipleChoiceModify the layout of an existing pivot table.

- typeName: multipleChoiceChange the  original data and report the change in the
pivot table.

- typeName: multipleChoiceMake a pivot chart
</EXRLIST>
</LESSON>

<STKY>
<HEAD2>Module 3, Lesson 2,  Video 1: Contingency table</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="1.10">
In the last video we talked about pivot tables, and mentioned how
they may be used in a report. There is one type of pivot table
which has a much more important use, and goes deeper in terms of
theory. 
<P/>
A pivot table requires specification of two things:
 * One or more categorical variables.
 * Some summary measure.

<P/>
To get a contingency table, we need to choose exactly two
categorical variables, and count as the summary measure. Let's
take an example.
<P/>
Here is a table with two categorical variables gender
(Male/Female) and Handedness (Left/Right). The corresponding
contingency table is 2 by 2, where each cell has the
corresponding count. [Explain by pointing].
<P/>
It should be quite easy to create a contingency table in
LibreOffice, as we have already learned how to create a general
pivot table. Anyway, here is a little lab session, in case you
need one.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="4">
[Screencast: Make contingency table.]
lr.csv: Don't use iq
</SESS>
</SCRIPT>

<STKY>
<HEAD2>Module 3, Lesson 2,  Video 2: Contingency table</HEAD2></STKY>
<SCRIPT>
<SESS t="1.70">
We mentioned just now that contingency tables are very
important in statistics. Why is that? The most important reason
is that they help us to explore relation between two categorical
variables. Let's take an example.
<P/>
We often want to answer questions like is smoking related to
cancer? Or what is the relation between education level and
income level? Does the chance admission to an edicational
institute depend on one's gender? All these questions are trying
to connect two categorical variables. In the first case smoking
habit (Y/N) with cancer (Y/N). In the second case, educational
level (preschool, primary school, high school, college and above)
and income level (low, middle, high). In the third case admission
status (admitted / rejected) and gender (male /
female). Interesting heredity questions may also be couched in
the form of contingency tables. Fingerprints may be roughly
classified into two patterns whorl and no whorl. We may ask the
question: Is there any relation between mother having whorl and
her baby having whorl? Here the two categorical variables are:
Mother's whorl (Y/N) and baby's whorl (Y/N). 
<P/>
Contingency tables have been known to  play important role in
legal suits as well. 
</SESS>
</SCRIPT>

<STKY>
<HEAD2>Module 3, Lesson 2,  Video 3: Contingency table</HEAD2></STKY>
<SCRIPT>
<SESS t="2.30">

We shall return to contingency tables near the end of this
course, and later in other courses as well. There we shall see
how we exactly process a contingency table numerically to derive
answers to important questions. For now let have an intuitive
feel for how a contingency table may shed light on the relation
between two categorical variables. 
<P/>
Suppose that we are interested in knowing whether there is any
relation  between income level and gender in a particular job sector. For this
we draw a random sample of individuals from that sector and
record their gender as well as their income group. For the sake
of simplicity suppose that there are only three income groups:
low, middle and high. The resulting raw data will look something
like this. We convert this to a contingency table like this. Just
by looking at it, do you think that there is any relation between
gender and income group. Well, even a cursory glance will show
that the row for Male is basically the same as the row for
Females. So there is no reason to believe that gender matters in
determining the income group. Now suppose the values in the
Female row  are like this.  Here the Female row differs quite a
lot from the Male row. Does that mean that Gender influences
Income group here? Well, no. Because the values are
proportionally reduced. It is just that the the total number
females are smaller in our sample. But among the females the
proportions of the three income groups are the same as those for
Males. So here also we conclude that gender is not associated
with income group. 
<P/>
If however, the table were like this, then definitely. the
proportions are widely different fro the two genders. Now there
is indeed reason to suspect a strong relation between gender and
income group.
<P/>
This is the basic idea behind using a contingency table for
assessing relation. More details will come later.
<TODO>Include an example of guessing expected frequency based on marginals.</TODO>
</SESS>
</SCRIPT>

<STKY>
<HEAD2>Module 3, Lesson 2,  Video 4: Contingency table</HEAD2></STKY>
<SCRIPT>
<SESS t="2.90">
We have mentioned how we may construct  contingency table from
raw data. When we collect raw data with the aim of creating a
contingency table, there are two major ways to go about it. Let's
understand this with an example. 
<P/>
Suppose that our population consists of employees from a
particular job sector. We are interested in two variables gender
and responsibility levels. Let's say there are four
responsibility levels: Manager,
Engineer, Clerk and  Support staff. Our final aim is to get a
contingency table like this, that shows genders in the tows
and the designations in the columns. 
<P/>
How should we go about collecting data for this. One method could
be to select 100 employees randomly from the entire populartion,
and collect observe the gender and responsibility levels for
each. In this scheme we have no control on how many men and how
many women will be in our sample. Neither do we have any control
on the counts for the responsibility levels. So both the row
marginals and the column marginals are random.
<P/>
An alternative approach is to draw a random sample of 50 men and
50 women, and then observe the responsibility levels for each of
them. Here there are 50 men and 50 women by design. So the row
marginals are fixed, not random. However,  the row marginals
continue to the random as before.
<P/>
Of course, we could have done it the other way around, fixing the
column marginals first. Then we should have chosen in advance the number of
persons in each responsibility level, say 25 each, and randomly
chosen that many employees from each level. Finally, we observe
the genders of these selected employees. 
<P/>
Why are we bothering about these different forms? Because the
different sampling schemes will let us make different types of
inferences. Take a very simple example. Suppose that we want to
know the proportion of male employees versus female
employees. Then the second scheme is not suitable, because there
we deliberately chose an equal number of men and women. However,
if we are interested in comparing the responsibility levels for
the two genders, i.e., trying to check if the responsibility
level distribution for men differ significantly from that for
women. Then the third scheme is not suitable, as there we are
starting by fixing the responsibility level counts.  The first
scheme may also not be suitable if there happen to be too few men (or two
few women) in the sample. Here the second scheme is the best
suited for the purpose.
</SESS>
</SCRIPT>

<STKY>
<HEAD2>Module 3, Lesson 2,  Video 5: Contingency table</HEAD2></STKY>
<SCRIPT>
<SESS t="1.60">
All the contingency tables discussed so far were 2-way or
2-dimensional. It is quite possible to have higher dimensional
contingency tables. For example if we want to study relation
between 3 categorical variables, e.g., gender (M/F), educational
level (Preschool, School, College, University)
and income group (Low, Middle, High), then we shall have a 3-way
contingency table,which <M>2\times4\times 4</M> in size. In such
a case it ia customary to refer to the first variable as the
layer, the second as the row, and last as the column. Here, for
example, gender is the layer variable, educational level is the
row variable, and income group is the column variable. When
printing the table is printed layer by layer, where each layer is
a 2-way table. 

<P/>
Most of the concepts that we have learned about 2-dimensional contingency
tables readily generalise for higher dimensional contingency
tables, as well. For example, we may talk about association
between the variables. However, a higher dimensional contingency
table allows more variety. For instance, 
income group and educational level may be associated in
one way in the male layer, but they may be associated differently
 in the female layer. 
<P/>
Statisticians often build elaborate models called log-linear
models to capture such complex relations. But we shall not go
into this any further in this course.
<P/>
In the nexr video we shall see how we may construct a 3-way contingency
table from raw data in LibreOffice.
</SESS>
</SCRIPT>

<STKY>
<HEAD2>Module 3, Lesson 2,  Video 6: Contingency table</HEAD2></STKY>
<SCRIPT>
<SESS t="6">
[Screencast: 3-way toy example as described.]
gei.csv: gender, edu, income
</SESS>
</SCRIPT>


<EXRLIST id="M3L4V1.yml">

- typeName: multipleChoice<M>2\times2</M> table. Only row totals and a single column total are given. Find
the other column total.

- typeName: multipleChoiceGive a contingency table. Ask to merge two rows.

- typeName: multipleChoiceMake a contingency table by hand from toy data.

- typeName: multipleChoiceDescribe a 3-way table set up. Ask to identify the correct
dimension.

</EXRLIST>


<EXRLIST id="M3L4V2.yml">

- typeName: multipleChoiceCreate a pivot table from frequency data.

- typeName: multipleChoiceCreate a pivot table from raw data (where the 1 column needs
to be added manually).

- typeName: multipleChoiceRectify data and update the table.

</EXRLIST>
</LESSON>
<STKY><HEAD2>Module 3, Lesson 3,  Video 1: Frequency distribution</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="1.90">
Out of all the topics we are  learning this week, frequency
distribution is perhaps the most important. It is quite quite
humble to look at, and yet its roots go to the very core of
statistical theory. We have already seen one example of frequncy
distribution. We had counted the number of A's , B's etc in the
letter grade example. Well, the resulting pivot table was an
example of a frequency distribution. But not frequency
distributions are just pivot tables like this. Pivot tables do
the subsetting based categorical variables only. But a frequency
distribution applies to all variables, categorical, counting or
continuous. 
<P/>
Let's understand with an example. Suppose we have a variable. We
consider the set of all possible values it can take, and split it
into some mutually exclusive and exhaustive subsets. If the
variable is a categorical one, then this is trivial, just use the
values temselves. We have already seen this inthe letter grade
example. But if the variable is continuous, then we have
to introduce some binning. For example, if we are taking about
areas of farmlands, then we may use the bins: below 1 hectare,
between 1 and  hectares, etc. Now we just find the frequncies in
the data set of those subsets, i.e., we count the number of cases
landing in each subset. When you write down these frequncies
against each subset, you get a frequency distribution table.
<P/>
Similalry, for a counting valriable the bins counld be 0, 1, 2,
 3 or more.
<P/>
Nothing impressive so far. Before we start the impressive news,
let's quickly see how frequency distributions may be created in LibreOffice.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="5">
[Screencast: Create a frequency distribution table.]
land.csv
</SESS>
</SCRIPT>

<STKY><HEAD2>Module 3, Lesson 3,  Video 2: Frequency distribution</HEAD2></STKY>
<SCRIPT>
<SESS t="2.90">
Now that we have learned what is frequency distribution is, you
might naturally wonder what is so special about them! Indeed,
this humble thing is central to the very idea of statistics.  To
appreciate this it will help if you carry out a simple (if a bit
tedious) experiment. The experiment goes like this: take a coin,
toss it 50 times, record the outcomes. So you get a list of 50
heads and tails. You already know how to work out the frequency
distribution from this raw data: just count the number of heads
and number of tails. But for this experiment we need something a
bit more complex. We need the relative frequencies, i.e.,  the
frequencies divided by the total number tosses. We want to
compute these after each toss. 
<P/>
Let me explain with a typical run. You take out the coin. Toss it
for the first time, and you get a head. So 1 head out of 1
toss. So relative frequency of head is 1/1 = 1. Relative
frequency of tail is 0/1. Toss it again. SUppose that now you get
a tail. So 1 head so far out of 2 tosees. Hence relative
frequency of head slips down to 0.5, while the relative frequency
of tails go up to 0.5. You g oon like this for 50 tosses. Yo can
easily see that the relative frequencies of heads and tails must
add up to 1. So keeping track of any one of them is enough. Just
to fix ideas, let's keep track of the relative frequencies of heads.

<P/>
Now make a line chart of these. The horizontal axis should show
the number of tosses, the vertical axis shows the relative
frequencies of heads. Though the coin was an arbitrary one, each
toss was random and one toss had no effect on the other tosses,
yet you'll be surprised to see that the resulting plot shows a
very predictable pattern. It fluctuates for some time initially,
and then mysteriously becomes rather steady and approaches a
fixed number (in the vicinity of 0.5). Just try this at home with
your own coin. You'll see that your coin behaves in the way I
predicted. 
<P/>
While I strongly urge you to carry this experiment out with a
real coin. In the next video  I shall provide a LibreOffice version of the
experiment, which will show the same result, much more easily,
albeit much less dramatically, because a computer can only
<I>simulate</I> a coin toss. Here we shall see how LibreOffice
can simuate data. 
</SESS>
</SCRIPT>

<SCRIPT>
<SESS t="6">
[Screencast: experiment]
Show simul randomness. Split. Do cumsum.
</SESS>
</SCRIPT>

<STKY><HEAD2>Module 3, Lesson 3,  Video 3: Frequency distribution</HEAD2></STKY>
<SCRIPT>
<SESS t="1.80">
What you experienced just now is the key idea behind the whole of
statistics. It is called statistical regularity: lots of
randomness accumulating in a way so that the randomness seems to
cancel itself out, and a regular behavior emerges. This was first
observed by gamblers in the middle ages. There have been
innumerably many mathematical results that try to capture its
essence in various contexts. The first such theorem was proved by
Bernoulli in .... It is said that it took 25 years from the first
concept of the theorem to the finished proof. 
<P/>
Why is statistical regularity important? Because it seems to
offer a clue to the working of nature. There are many natural
things around us that show surprising similariries and yet are
completely distinct. One example is fingerprints. All finger
prints look deceptively similar, and yet are distinct. All the
leaves of the same tree are very much similar to each other, and
yet no two leaves are exactly identical. It is undeniable that
the variation is random, but then what is the source of the
similarity? Statistical regularity is one way to explain this. 
<P/>
One way (if not the only way) to harness the idea of statistical
regularity is via the frequency distribution, or to be precise
relative frequency distribution. If you repeat the same random
experiment again and again, the relative frequency distribution
starts showing statistical regularity, i.e., starts approaching
something fixed. This fixed limit is called the probability
distribution for that random experiment. The entire theory of
statistics hinges on that. 


<P/>
<TODO>Introduce class, class width, class boundary</TODO>
</SESS>
</SCRIPT>
<EXRLIST id="M3L1V1.yml">
- typeName: numeric
  prompt: |-
    Here is a frequency distribution.
    |  Class | Frequency |
    |--------+-----------|
    | 10--19 |       329 |
    | 20--29 |       294 |
    | 30--39 |       298 |
    | 40--69 |       198 |
    | 70--99 |       231 |
    Find the lower limit of the class with the maximum frequency.
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


<EXRLIST id="M2L3V2.yml">

- typeName: multipleChoice
  prompt: |-
    Make a frequency distribution from this data set [link] using
    these classes. 
    | Classes    |
    |------------|
    | 0 -- 0.1   |
    | 0.1 -- 0.2 |
    | 0.2 -- 0.5 |
    | 0.5 -- 0.7 |
    | 0.7 -- 0.9 |
    | 0.9 -- 1.0 |
    What is the class with the maximum frequency? Number of the
    classes as 1, 2, 3, 4, 5 and 6.
  shuffleOptions: true
  options:
  - answer:
    isCorrect: true
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      
  - answer:
    feedback: >
      

- typeName: multipleChoice
  prompt: > 
    Find relative frequency densities of all the classes in the
    given frequency distribution table.
    [How to check an array of numbers?]
</EXRLIST>
</LESSON>
<STKY>
<HEAD2>Module 3, Lesson 4,  Video 1: Histogram</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="0.90">
We have already seen some ways to graphically represent
data. Most of them were pretty self-evident. Indeed, that was one
of their main qualities, because they are meant to present data
to laymen. In this course we shall also discuss two graphical
devices to represent data, that are more sophisticated, and
primarily used by statisticians themselves for understanding
data. These are 
  * histogram
  * box plot
The first of this will be discussed here. The other will come
later this week.
<P/>
Histograms are not frequently used in reports meant
for laymen. However, they are extremely useful for understanding
the behaviour of data, and have a rich theory underlying
them. But since they are not used much for report generation,
neither LibreOffice nor MS Excel has full support for them.
</SESS>
<SESS t="0.60">
The histogram is extremely similar to bar charts. However, bar
charts are for categorical variables, while histograms  may be
used  for both discrete and
continuous ones. The histogram is a graphical way of
demonstrating statistical regularity based on a frequency
distribution. Histograms come in two major varieties, depending
on whether the variable is discrete or continuous. The discrete
case is the easier of the two, and we shall start with that.
</SESS>
<JINGLE t="0.1">Discrete histogram</JINGLE>
<SESS t="2.80">
Consider a household level data set where household size is a
variable. It is a counting variable, and hence discrete. We shall
first obtain its frequency distribution, i.e., how many times
each possible value has occured in the data set. Then we compute
the relative frequency for each value, i.e., the frequency
divided by the total number of cases. If we now create
a bar chart with bars showing these relative frequencies, we get the histogram
for the variable. Since the bars depict relative frequencies, so
the sum of the lengts of the all the bar <V>[animation]</V>  must
be 1.
<P/>
While this is the precise definition of the histogram of a discrete
variable, sometimes it is slightly simplified and uses the
frequencies themselves rather than the relative frequencies. This
does not change the overall shape of the histogram, only the
labelling of the vertical axis.

<P/>
Let's look at various possible shapes of a discrete
histogram. 

<P/>
* This histogram has a peak at the centre, tapering off
towards the two ends. This peak gives the value that the variable
is taking most frequently. These extreme values occur more
rarely. The overall shape is symmetric around the centre.
<P/>
* This histogram, on the other hand, is quite skewed towards the
right. The most frequently occuring value is near the left
extreme. 
<P/>
* This histogram is skewed towards the right. The most frequently
occuring value is near the right.
<P/>
* Here is yet another pattern with multiple peaks. 
<P/>
* In this histogram all the values are more or less the same.
<P/>

Next let us look at histograms of continuous variables. 
A discrete variable takes a some discrete values <V>[show]</V>. A
continuous variable takes values continuously over a
line. [*]. In order to create bars, we need to subdivide the line
into classes, and consider the corresponding frequency
distribution. As before we compute the relative frequencies and
erect rectangles over each class with area equal to the relative frequency.
<P/>

Note  two important
differences of continuous histograms with discrete ones.
<P/>

* First. each bar sits on its own class. So if the
classes have different widths, then the bars may have different
widths. Also the bar are all adjacent to each other.
<P/>
* The second
difference is more subtle. The height of a bar is not proortional
to the relative frequency of its class, but the area is.
This makes the total area of the histogram equal to 1.
</SESS>
<TODO>Explore opendata.org</TODO>
</SCRIPT>
<STKY>
<HEAD2>Module 3, Lesson 4,  Video 2: Shape of histogram</HEAD2></STKY>

<SCRIPT>
<SESS t="4.20">
The shape of the histogram reveals interesting facts about a
variable, and has profound implication for the statistical
analysis of data.
The variables  in a data set take values randomly. For instance,
if height is our variable, and each case is a person, then we
shall have random variation among the values, because different
persons have different heights, and there is known formula
explaining this variation perfectly. Any statistical analysis
presupposes that there is some underlying (unknown) random
process of nature that produces these values. Just like rolling a
die, subtle variations in the forces, the angle of launch,
rotations determine the final outcome in some complex a way that
we have to consider it as a blackbox. Since we cannot figure out
the exact working of the blackbox, we have to satisfy ourselves
with the overall behaviour. And that's where histograms come to
our help. If we run the blackbox a large number of times, and
make the histogram of its random output, then quite surprisingly
the effect of the randomness magically vanishes and we arrive at
a shape that depends only on the process, and not on the
outputs. In other words, if you run the same process again a
large number of times, then the shape of the new histogram will
be essentially the same as the earlier one. This magical
behaviour, as you might have guessed, already is a consequence of
statistical regularity, and is utilised by statisticians to
detect the unobserved process behind the observed data. It is
much like fingerprint analysis. Fingerprints that all appear
similar to the layman uniquely identify different persons in the
hands of the expert. Similarly, values that appear as jumbles of
numbers to the layman reveal interesting tell-tale shapes to the
statistician who constructs a histogram out of them!
<P/>
Here's a discrete toy example. Suppose I  a given a die and asked
to check if it is fair. Then I can roll it a large number times
and construct a histogram. After a few hundred tosses the
histogram stabilises to a shape. If the die were a fair one, then
all the bars should have equal heights. But the heights are quite
unequal, we know that the die is loaded.

<P/>
Of course, this was a rather artificial example. Let's now look
at a more practical example. Suppose we draw a huge random sample
across all the strata of the Indian population, and collect data
about their monthly income. Even without carrying out the
sampling let's see whether we can guess the shape of
histogram. Can it be like this [flat]? No [explain], Can it be
like this [left skew]? No [explain]. Can it be like this [right
skew]. This looks better. Indeed, this is the typical shape for
income distribution of most countries. Notice how the shape of
the histogram shows the underlying process, namely how the
economic structure of the country.
<P/>
Certain shapes of histograms occur so frequently in diverse
situations, that statisticians have given them special names, and
created mathematical formula to descibe the shapes. Each such
shape is called a distribution, and faimiliarity with these is
one important pillar of statistical expertise.
<P/>
Here is the most popular one: the bell-shape. If you make it
skewed to the right, you get this shape. We saw it just now in
the income example. If we skew it in the other direction, we get
this shape. Of course, we can create variations of each. Like we
can start with the bell shape, and just move it around, or make
the peak sharper or flatter. 
<P/>
We shall more occasion to visit these shapes throughout statistics.
</SESS>
</SCRIPT>
<EXRLIST id="M3L3V1.yml">

- typeName: multipleChoice
  promShow a histogram and ask for relative frequency density for
a particular class.

- typeName: multipleChoiceShow a histogram, give sample size, and ask for frequency  for
a particular class.

- typeName: multipleChoiceShow a histogram give a value, and ask for propportion to
its left.


- typeName: multipleChoiceShow a histogram give a proportion, and ask for cut-off value.



</EXRLIST>

<STKY>
<HEAD2>Module 3, Lesson 4,  Video 3: Lab</HEAD2></STKY>

<SCRIPT>
<SESS t="5">
[Screencast: Discrete histogram]
Reuse the earlier data.
</SESS>
</SCRIPT>
<STKY>
<HEAD2>Module 3, Lesson 4,  Video 4: Lab</HEAD2></STKY>

<SCRIPT>
<SESS t="7">
[Screencast: Continuous histogram]
Reuse the earlier data.
</SESS>
</SCRIPT>


<EXRLIST id="M3L3V2.yml">

- typeName: multipleChoiceMake histogram based on data.

- typeName: multipleChoiceMake histogram and identify a 5% cut-off.

- typeName: multipleChoiceMake histogram and match its shape from among some given
shapes.


</EXRLIST>
</LESSON>

<STKY>
<HEAD2>Module 3, Lesson 5 ,  Video 1: Review</HEAD2></STKY>
<STKY><HEAD2>Module 3, Lesson 5 ,  Video 2: Review</HEAD2></STKY>


<STKY><HEAD1>Module 4: Central tendency</HEAD1></STKY>
<SCRIPT>
<SESS t="2.30">
We are starting our fourth week. In the first two weeks we have
learned about data and their graphical representations. The idea
was like this: we wanted information, so we collected data, lots
of values of lots of variables for lots of cases. And we could
not digest all those data by just looking at them. But our eye
can take in a lot of pictorial details easily. So we devised a
way to convert numerical patterns to visual patterns. And that
was graphical representation. That's what we learned in the
second week. Pictures are great when they can be used, but it is
difficult to convert all types of patterns to pictures. So we
explored a different approach in the  third week:
cross-tabulation. Here we summarised a possible huge data matrix
to much more managable tables. But howsoever we summarise data,
by pictures or tables, the end product still needs to be
intepreted by human brain. It would be great if we can come up
with ways to summarise data using some mathematical formula, that
would capture various intuitive aspects of the data. Then the
process may be completely automated. This is an ambitious demand,
and no body till date can claim to have developed mathematical
formulae for capturing all intuitive aspects of a data set. But
still many aspects can be captured mathematically.  These result inwhat
are called summary statistics. More precisely, we shall
compute certain numbers based on the data, that will tell us
important intuitive aspects of the data. Any number computed based
on data is called a <B>statistic</B> (no 's' at end). It is a
singular noun. Since we are using a statistic to cature one
aspect of data, it is a form of summarisation. Hence the term
summary statistic. They are also called <B>descriptive statistics</B>
<P/>
As is our
norm, we shall learn 4 new lessons this week also. Each lesson
will introduce one class of summary statistics:
 * Central tendency
 * Dispersion
 * Association
 * Skewness, kurtosis etc.
<P/>

Let's get started.
</SESS>
</SCRIPT>
<STKY><HEAD2>Module 4, Lesson 1,  Video 1: The concept and mean</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="2.60">
Let me ask you a simple question: <B>what is the typical life span
of Indians?</B> You may not know the exact answer,  but you'll guess
that it is around 70, and you'll be right. Now let me ask you another question: <B>what
is the typical length of an adult male dolphin?</B> Possibly you
have no idea,  and may turn to Google for an answer. Now comes the
last question: <B>what is the typical weight of a mammal?</B> I am sure
you do not know! I am sure you've never heard this question
before. Will you turn to Google for an answer? No,  this question
is absurd! There are so many different types of mammals ranging
from tiny rodents to enormous blue whales. What do you mean by
"typical" here? 

<P/> Look at the three questions carefully. All the three mentions a
set of numbers (lifespans of Indians in the first case, lengths of
dolphins in the second, and body weights of mammals in the
third). They we are asked to provide a "typical" value that represents
that set. In the first two cases such "typical" values made sense. But
in the last it didn't.  <P/> This is a common situation in real
life. Sometimes we feel that a bunch of numbers are close enogh
together, that their essence may be captured by a single "typical"
value. In some cases, no single "typical" value can represent all the
numers meaningfully. Of course, it is somewhat subjective, and it may
be hard to draw a line where a typical value starts becomeing
meaningless, but intuitively we can all feel this. Right? If a bunch
numbers may be reasonably represented by a single typical value, we
say that those numbers have a <B>central tendency</B>. Notice the use
of the word "tendency". It correctly captures the somewhat intuitive
and subjective flavour of the situation. If we have a valriable whoe
values have central tendency, i.e., a single typical representative
value makes sense, then we would naturally be interested in finding
one. Any such way is called a measure of central tendency. And our
first lesson is devoted to just this. The most popular in the list is
arithmetic mean. That's what we shall discuss next.
</SESS>

<JINGLE t="0.1">Arithmetic mean</JINGLE>
<SESS t="2.20">
We talked about a "representative typical value". Commonly people
loosely refer to it as "the average value" as in "What is the average
cost of a 2 bedroom flat in central Kolkata?" or "What is the average
time needed for delivery?"  The term "average" also appears in a
precise sense in school text books: the average of a bunch of numbers
<M>a_1, ..., a_n</M> is defined as their sum divided by the number of
numbers. i.e., <M>[[\sum_{i=0}^n a_i][n]].</M>
<P/>
We use the bar notation to denote mean.
<P/>
Now there is am important difference between these two usages of the
term "average". In the first sense it conveys the somewhat intuitive
notion of "representative typical value", and is not even uniquely
defined. In the second sense it is just a mathametical formula. To
avoid any possible confusion between the two concepts we use two
different terms to convey these two meanings:
  * When we want to mean "representative typical value" we say "a
    measure of central tendency".
  * When we want to refer to that math formula, we say arithmetic mean
    or just simply the mean. 
<P/>
Now the fact that common man uses the same term "average" for both
purposes has its origin in the fact that arithmetic mean is indeed the
most popular measure of central tendency. But be careful
here. Arithmetic mean is just a formula, it is always defined for any
bunch of numbers, whether or not they show central tendency. Thus, if
I ask "What is the avrage body weight of mammals?" then you can in
principle just
list the body weights of all the mammals and find their arithmetic
mean. While that will definitely produce a number, that number will
not be a meaningful answer to the original question. In fact, the
question is absurd, because how can you measure central tendency,
where there is no central tendency?
</SESS>
<SESS t="1.00">
In statistics we have to be careful about this scenario, which appears
in many other contexts also. There is an intuitive concept, and a
mathematical way to measure it. Even if the concept is invalid in some
particular case, the mathematical formula may still provide a
number. You must not blindly report this number. Use your domain
knowledge and common sense first to decide if the concept at all
applies to the case at hand. This is especially relevant in the modern
age of computers, when mathematical formulae may be applied very
easily using computers, and long list of output may be produced in no
time. Many budding statistician, unable to fathom the situation, fills
up the report with all these numbers, even when the numbers are
meaningless. 
<P/>
Think of statistics as an extension of common sense, not an
alternative to it.
</SESS>
</SCRIPT>
<EXRLIST id="M4L1V1.yml">

- typeName: multipleChoice
  prompt: >
    Two sets of  numbers are shown using two diffeent colours along a number line: [fig]
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

- typeName: multipleChoice
  prompt: >
    The mean height of 10 students is 164.6 cm. If the heights
    were measured in inches then the mean would have been:
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

<STKY>
<HEAD2>Module 4, Lesson 1,  Video 2: Lab</HEAD2></STKY>
<SCRIPT>
<SESS t="0.50">
Computing mean is conceptually easy. We learn do this in school. But
there we work with only a few numbers, may be at most 10 of them. But
in statistics when we compute mean of a variable, we need to work with
as many values as there are cases, which may easily range into
thousands. So use of softwares is imperative. Let's learn how to do
this using LibreOffice.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="6">
[Screencast: Different techniques-- =average, right click summary bar, --
                                -- =averageif, rubbish values skipped,
                                descriptive statistics]
</SESS>
</SCRIPT>
<EXRLIST id="M4L1V2.yml">

- typeName: numeric
  prompt: |-
    Compute mean of these numbers using Excel.
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
    This LibreOffice spread sheet [link] has numbers in 3
    columns. What is their  *overall* mean?
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

<SCRIPT>
<SESS t="1.30">
<TODO>Sum of deviations frm mean must be 0.</TODO>
Mean is a measure of central tendency. But central tendency is a
subjective, intuitive concept, while mean has a precise mthematical
definition. It is quite difficult (if not impossible) to come with a
mathematical definition that fully captures human intuition. Mean is
no exception. Before you use mean to measure central tendency, it is
important to know what aspects of the intuition are captured by mean,
and what are not. 
<P/>
Suppose a typical height of a adult females in a certain community is
5.5 feet. What should be a typical height in inches? Intuition tells
us to just convert 5.5 feet to inches to get 66 inches. This is
intuitive. Is this really true for mean. If the mean of some heights
expressed in feet is 5.5, then is the mean of the same heights
expressed in inches be 66? Well, yes. As may be easily seen from the
formula. The common multiplier just comes out of the sum. Indeed, we
can have this formula which you can prove similarly.

<P/>

Theorem: am(a*x_i+b) = a*am(x_i)+b.
<P/>
Here the mathematics went hand in hand with intuition. Now let's see
where things go wrong.
</SESS>
<JINGLE t="0.1">Problem</JINGLE>
<SESS t="1.10">
Consider these squares. What is a typical side length of these
squares? What is a typical area of these squares? Intuition says that
if L is an answer to the first question, then L^2 should be an answer
to the second. 
<P/>
Let's see if the arithmetic mean formula conforms to this.
<P/>
am of the lengths is this, but am of the areas is this, which is not a
square of that!
<P/>
Indeed, this is not just for squaring. If you take any transformation
of the values oter than the simple ax+b type, then the am will not
transform in the same way!
<P/>
It is hard to live with this fact. But it is a fact nonetheless. If
you feel very unhappy with this, don't worry. The  measure of
central tendency that we shall discuss in the next video is free of
this problem to a great extent!
</SESS>
</SCRIPT>

<SCRIPT>
<SESS t="1.90">
So far we are talking about computing arithmetic mean for raw data,
where all the observed values of a variable are available. Sometimes
we have to work with a frequency distribution table. This is
particularly the case when using secondary data, which we have to
retrieve from printed reports. Few printed reports contain the raw
data, which are often pretty huge. Reports contain only summary
tables, e.g. frequency distribution tables. So its important to know
how to compute arithmetic mean from frequency distribution tables.
<P/>
Let's start with am example. Suppose that we have 10 values, with
artihmetic mean .... Now  suppose we make a frequency distribution
like this: The first point that you should understand that we have
have lost soe information when we passed from the raw table to this
table. We could construct the frequency distribution from the raw
data, but we cannot construct the raw table back from the frequency
distribution. For example, we know that there are 3 values in this
class, but do not know where in the interval those 3 numbers lie. So
precisely speaking we cannot compute the arithmetic mean of the
original 10 values using only the frequency distribution. However, we
can do an approximation. For each class we choose its mid point as its
representative. It is called the <B>class mark</B>. We shall assume that all values in a class are
actually equal to the class mark. Now we can apply our formula. This
produces:
<D>
[[\sum f_i m_i][\sum f_i]].
</D>
Unfortunatly LibreOffice does not provide any easy short cut. Let's
learn the longhand way.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="4">
[Screencast: Mean for grouped data]
</SESS>
</SCRIPT>
</LESSON>
<STKY>
<HEAD2>Module 4, Lesson 2,  Video 1: Median</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="1.80">
We have learned about one measure of central tendency already in the
last lesson, arithmetic mean. We have also seen one undesirable
property of that, it does not transform intuitively: e.g., square of
mean need not be mean of squares. We are going to propose another
measure that is somewhat free of this problem, and has also some other
desirable properties.
<P/>
It is called <B>median</B>. It is defined as the centrsl most
value. Here is a quick example. Consider these numbers. Imagine them
along a number line, pick the middlemost. Here we have 7 numbers (two
of which are the same, but still we count them as two numbers). The
middlemost means the third number, third when you show them ordered
like this, i.e., this one.
<P/>
Here we had an odd number of values, so we could get a middlemost
value. What if we had 6 values? Then there are two middlemost
values. Well, median needs to be a single number. There is a little
bit controversy about how to choose a single value. Some people
maintain that median is not uniquely defined here, any value in this
interval should be called a median. But most peope agree to call the
point exactly midway between these as the mdeian. All softwares follow
this definition, and so shall we.
<P/>
Computing median is bit more work that computing mean, because we have
to first sort the values. Sorting is one thing that computers do quite
well. So let's learn how to compute median using LibreOffice.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="6">
[Screencast: compute median. Mention rubbish avoidance. Status bar
click. Descriptive statistics menu.]
</SESS>
</SCRIPT>
<EXRLIST id="M4L2V1.yml">

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
      



- typeName: plugin
  prompt: >
    Write down 3 numbers such that their median is less than
    their mean. 

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

<STKY>
<HEAD2>Module 4, Lesson 2,  Video 2: Transformation</HEAD2></STKY>
<SCRIPT>
<SESS t="2.10">
We have already seen how arithmetic mean behaves nicely when we change
units or shift origin. Well, the same good quality is shared by median
as well. If you measure the heights of 10 persons in metres and get
these values, then the median is. It depends only on the ordering. So
when you change the unit of centmetres, i.e., multiply all the values
by 100 (or any other constant for that matter) the order remains the
same, and so does the central most value. Similarly if you shift all
the values by the same amount, the median remains changes
accordingly. So we have this theorem.

<P/>
Theorem: median(a*x_i+b) = a*median(x_i)+b
<P/>
Now let's revisit that example of squares. We have 7 squares, and want
to know the typical length of side, and also the typical area. We
hoped that the typical area to be the square of the typical length. This
hope was belied by arithmetic mean. But let's see what happens for the
median. Let us order the squares by lengths of sides. The middle most
length is this. Now to find median of area, we have to sort the
sqaures by the areas. Since a square with longer sides must also have
larger area, so the same ordering would work here as well. Thus, we
again pick the area of this square. So the median area is indeed the
square of the median side length. In fact, the same thing is true
about any transformation that preserves the order. 
<P/>
A similar argument may also be used had there been 
an even number of squares. Only then we would have to deal with
nonuniuness of medians: the square of a median = a median of the squares.
</SESS>
</SCRIPT>

<SCRIPT>
<SESS t="6.00">
Just as for mean, we may need to compute median from a frequency
distribution table. The need of this arises mainly when you are using
secondary data, where summary tables are more readily available than
raw data. 
<P/>
As we have already mentioned earlier, grouped data
contain less inforation than the raw data. So we may not be able to
get back the median of the raw data using onl the grouped data. But
still we can try to approximate it following the same line as we did
for mean. There we assued all values insie a class to be exactly equal
to the class mark value. Once we get this proxy raw data, we can use
our formula. 
<P/>
Let's see this with an example.
<P/>
[raw example here]

<P/>
However, we can do it more smartly. First find the half of the sample
size. Then locate the class where the median falls using cumulative
frequency. Now do linear interpolation. Give the formula.
<P/>
Unfortunately, LibreOffice (or no other software for that matter, as
far as I know) implements this.
</SESS>
</SCRIPT>
<EXRLIST id="M4L2V2.yml">

- typeName: multipleChoiceFind median of the numbers using Excel.

- typeName: multipleChoiceSort the column.

- typeName: multipleChoiceSort one column by another.

</EXRLIST>
<STKY>
<HEAD2>Module 4, Lesson 2,  Video 3: Robustness</HEAD2></STKY>
<SCRIPT>
<SESS t="1.50">
This course uses peer review: one student's answers are graded by
three randomly selected students. So each student basically has three
candidate grades, hopefully more or less similar.  And we have to
choose a typical value. Aha, isn't that a central tendency problem?
Yes, it is. And this is how I shall proceed. First I need to make sure
that the three grades are indeed similar, i.e., they have a central
tendency. If not, then I need to intervene. Otherwise, I need to
choose a measure of central tendency. SHould I choose arithmetic mean?
Let's see what may go wrong if I do.
<P/>
Suppose the grades are shown in a number line. Two are close together,
while one is much lower. If it is very low, then of course, I shall
flag it as a "no central tendency" case and intervene. But suppose it
is quite low, but yet not too low. If I take the arithmetic mean, that
will be somewhere here. You see how it got influenced that far off
value. Such far off values, as you already know are called
outliers. Mean has this problem: it gets affected too much by outliers. 
<P/>
So we do not use mean here. We use median, which is the central most
value.
</SESS>
</SCRIPT>
</LESSON>
<STKY>
<HEAD2>Module 4, Lesson 3,  Video 1: Mode and others</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="4.50">
In the last two lessons we have learned about two most popular
measures of central tendency: mean and median. These were
applicable primarily for continuous variables, and also for
counting variables and certain ordinal variables. Next we shall discuss a
measure of central tendency that is primarily for categorical
variables and counting variables, though sometimes also used for
continuous variables.
<P/>
Let's start with an example. Suppoe that there are three
different types of dress, and 100 different people, among whom 
the first type fits 40, the second type fits 35 and the third
type fits the rest. Now due to some constraint you have to order
the same type of dress for all the 100 people. Which type would
you order? 
<P/>
If you order type 1, then 40 will be happy, the remaining 60 has
to wear something they do not fit into.
<P/>
If you order type 2, instead, then only 35 will be happy.
<P/>
If type 3 is ordered, then the number of happy persons will be
even smaller, just 25.
<P/>
So you should order the first type for everybody.
<P/>
Notice how the categorical nature of the variable (type of dress)
played a role here. Either one gets the right type or not. Either
wrong type is bad. In such a case, the best representative value
is the one which occurs the maximum number of times. This value
is called the <B>mode</B>. This is basically how one makes a selection
by majority vote. Of course, you may run into the problem of
ties. There may be two candidates both attaining the same maximum
frequency. Such a data set is called <B>multimodal</B> as opposed
to <B>unimodal</B>, which means having a unique mode. In a
multimodal situation mode is not very useful as a measre of
central tendency. Indeed, being multimodal may even imply lack of
central tendency.
<P/>
Mode may be considered  as a  way to choose a
representative value by minimising the overall unhappiness.
This idea of minimising the overall unhappiness was actually present even for
mean and median. Only the definition of unhappiness was different
in those cases. Let's take an example to understand this. Here are some
points along the number line. Suppose we decide to choose this point as
their representative. We shall see how unhappy each of the data
points is with this decision.  Clearly, the further a point is from the
representative, the unhappier it is. He is like: "Oh that guy is so far
away from me. He cannot represent me well!" So here is one way to measure the
unhappiness: the geometric distance between the point and the
line, or the absolute value <M>|x_i-a|.</M> So the total
unhappiness is a <M>\sum|x_i-a|.</M> This of course depends
on <M>a.</M> If you choose <M>a</M> to
minimise this, then one can show that <M>a</M> must be median of
the points.
<P/>
Another similar, but different way to do measure unhappiness is
by considering the squared distance: <M>(x_i-a)^2</M> leading to
the total distance <M>\sum(x_i-a)^2.</M> Minimising this
w.r.t. <M>a</M> leads to <M>a</M> being the mean. 
<P/>
Thus, you see, all the measures of central tendency that we have
discussed so far can be considered from a common view point:
minimising unhappiness. In fact, this idea pervades much of
statistics beyond just central tendency. What we called
unhappiness is more technically referred to as
the <B>loss</B>. Many statistical methods are motivated by trying
to minimise some suitable notion of loss.
<P/>
So far we have presented mode as a measure of central tendency
for categorical and counting variables. Indeed, that's what mode
is used for most often. However, we do sometimes talk about mode
for continuous variables. The next video will talk about that.
</SESS>
</SCRIPT>

<SCRIPT>
<SESS t="1.40">
Mode as we defined it in the last video was the value (or values) with the
highest frequency. This made sense for categorical data or count
data, as there the same value is usually repeated many times. But
a continuous data, the same values are repeated more rarely, if
at all. However, lots of values may be very close together. For
example, if you report body weights of 100 persons to the nearest 10th of a kg,
you may hardly get any exact repetion, while many weights will
lie tightly together. A typical case may be shown along a number
line. 
Naturally you'll like to say that the most frequntly occuring
weights are near here. So we should call the center of this
cluster the mode. To make this idea somewhat precise, we
construct a histogram, and look at the class with the maximum
area. We expec tthe mode to lie there. If the classes are taken
with sufficiently small width, then we can narrow down on the
mode more and more precisely. 
<P/>
However, this procedure requires a huge amount of data, and whike
it works in principle, is not a practicable way. So people do not
talk much about modes for continuous variables.
</SESS>
</SCRIPT>

<SCRIPT>
<SESS t="0.30">
Finding the mode for a categorical variable or count variable is
quite easy. Let's work with toy data of hourly counts of traffic rule
violations over at a fictitious crossing.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="5">
[Screencast: traffic poisson mode.]
</SESS>
</SCRIPT>
<EXRLIST id="M4L3V1.yml">
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


- typeName: numeric
  prompt: |-
    Find mode from this frequency distribution table.
    |  Class | Frequency |
    |--------+-----------|
    | 10--20 |        34 |
    | 20--30 |        45 |
    | 30--40 |        51 |
    | 40--60 |        44 |
    |  60-90 |        57 |
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

<STKY>
<HEAD2>Module 4, Lesson 3,  Video 2: Other measures</HEAD2></STKY>
<SCRIPT>
<SESS t="1.90">
We have talked about the three major measures of central
tendency: mean, median and mode. Each has its own advantages and
disadvantages. Sometimes we want to retain the advantages of one,
and yet avoid its disadvantages. This leads to other measures of
central tendency that are obtained by tweaking these basic
measures. We shall see two such. Both are obtained by tweaking
the definition of mean. 
<P/>
The first is called <B>weighted mean</B>. When we compute the
mean by the formula <M>[[1n]]\sum x_i,</M> we are giving equal
importance to all the <M>x_i</M>'s. Sometimes that is
undesirable. Here is  a simple example. Suppose that we have many
agricultural plots of different productivity levels, and we want
to find the average productivity level for all the
plots. Productiity level for a plot is measred as yield per unit
area for a single season. If we merely add all the productiity
levels of the inididual plots and divide by the number of plots,
then we shall arrive at a meaningless figure. Because  a
very small plot with high productiity may not offset the effect
of a huge plot with a low productivty. So we should take areas of
the plots int account. How should we do that? Well, we first
multiply the productivty level of each plot with its area to get
the yield of that plot, sum these to get the total yield and then
divide by the total area to get the overall productivity
level. This formula is called the weighted mean.
<P/>
Let's see this in action.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="4">
[Screencast: Above example.]
</SESS>
</SCRIPT>

<SCRIPT>
<SESS t="1.20">
We saw how weighted mean is sometimes better than usual
mean. Well, the next measure of central tendency that we are
going to discuss is an extreme application of this idea. It just
gives  zero weights to some of the points in order to achieve
robustness. It is called <B>trimmed mean</B>.
<P/>
We have seen that mean is not very robust, because extreme
observtions can easily pull it towards themselves away from the
true centre of the bulk of points. One way to rectify this is to
first trim away the extreme points and then compute the mean of
the rest. This is the same as attaching zero weights to those
discarded extreme poits. Depending on how far we trim, we have
different versions of trimmed mean, e.g., 10% trimmed mean or 5%
trimmed mean. A 10% trimmed mean will first discard the most
extreme 10% of the points (5% from either end) and then compute
the usual mean of the rest. 
<P/>
Let's look at the computation using LibreOffice.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="4">
[Screencast: 10%-trimmed mean of 90 numbers.]
</SESS>
</SCRIPT>
<EXRLIST id="M4L3V2.yml">

- typeName: multipleChoiceFind mode of a column.

- typeName: multipleChoiceFind quartiles.

</EXRLIST>
</LESSON>

<EXRLIST id="M4L4V1.yml">
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
<STKY>
<HEAD2>Module 4, Lesson 4,  Video 1: Quantiles and p-values</HEAD2></STKY>
<LESSON>
<SCRIPT><SESS t="4.30">
This lesson is not about any more measures of central
tendency. However, the idea is somewhat related, so I am
discussing it this week. This topic will prove essential in the
Statistical Methods course when we shall learn about test of
statistical hypotheses. 
<P/>
Let's start with something we have already seen: median. It is
the most central point among all the values. [*] We may think it
as the point which splits the all the values into two parts, with
exactly half the values to its left. Well, this is not entirely
precise if we have an odd numer of values, but you get the general
idea.
<P/>
 Now, there is nothing special about the proportion half. We might as well think
of a point that <M>[[13]]</M>-way into the data set from the
left, i.e., exactly <M>[[13]]</M> of the values lie to its left
(again allow a little rounding off if the number of points is not
exactly divisible by 3). In general for any
fraction <M>p\in(0,1)</M> we can consider a point such that
exactly <M>[np]</M> of the values lie to its left. This point is
called the <B><M>p</M>-th quantile</B>.
<P/>
In particular, median is the <M>p</M>-th  quantile for <M>p=[[12]].</M>
<P/>
While this is the most popular quantile in use, some other
quantiles also deserve mention. If you take <M>p=[[14]]</M> you
get the first quartile. Note the spelling, it is <B>quartile</B>
and not <B>quantile</B>. If you take <M>p=[[34]]</M>, you get the
third quartile. Clearly, the second quartile corresponds
to <M>p=[[24]]=[[12]]</M>, and so is the same as the median. 
<P/>
Another type of quantile that has a special name is
the <B>percentile</B>. For <M>k=1,...,99</M> the <M>k</M>-th
percentile is the <M>[[k][100]]</M>-th quantile. Sometimes you
may hear about <B>deciles</B>, which refer to <M>[[k][10]]</M>-th
quantiles, for <M>k=1,...,9.</M> However, the term decile is
rarely used.
<P/>
Why are quantiles useful? Just as central tendency measures seek
to capture the notion of the centre of data, quantiles are often
used to capture the idea of the border of data. Most quantities
in real life vary randomly. If we hold our finger steadily in
midair, we can see it shake a little. This random variation is natural as
long as it remains within a threshold. Crossing the threshold
might signal a change of regime, causing us to make a remark
like: "Hey your finger is shaking too much, are you ill?"
There is some inevitable variation among bloodpressures of
healthy persons. Thus, though 120/80 is nominally the standard
for healthy blood pressure a bloopd pressure like 125/76 is no
cause of worry. It is within the acceptable threshold of variation.  How
does one decie upon such a threshold? Well, quantiles come in
handy for this purpose. A typical exercise that is followed to
come up with such thresholds often boils down to this: First
measurements are made for a random sample of  individuals who are
known to be healthy. Then the 5% and 95% quantiles (i.e., 5-th
and 95-th percentiles, respectively) are computed. These are
considered as the lower and upper thresholds. Values falling
beyond these are suspicious, as only 5% of the healthy cases fall
below this lower threshold and only 5% exceed the upper one.
<P/>
Thus quantiles help to provide hard boundaries allowing for some
margin. Later in this lesson we shall discuss a similar concept
called <B>p-value</B>, that provides a soft boundary.
<P/>
But for now let's see how quartiles are  computed using LibreOffice.
</SESS>
</SCRIPT>

<SCRIPT>
<SESS t="2">
[Screencast: Computation of quantiles.]
</SESS>
<JINGLE t="0.1">Visualisation</JINGLE>
<SESS t="4">
[Screencast: Visualize quantiles using histogram.]
</SESS>
</SCRIPT>

<SCRIPT>
<SESS t="0">
We have already mentioned p-values as a soft boundary for a
data. In this video we shall learn the details. If I ask you "Is
2 greater than 5?" then answer is "No". If I ask you "Is 100 more
than 80?" then answer is "Yes". These are objective questions
with objective answers irrespective of the context. But if I ask
you "Is 15 a large number?", then as an objective question it is
meaningless. It needs some context to have a meaningful
answer. Say I have a pet animal aged 15 years, and I am asking
"Is it too old?" The answer depends on the species of the
animal. If it is a cat, then it is old indeed. But if it is a
turtle, then it is just a baby. 
</SESS>
</SCRIPT>
<STKY>
<HEAD2>Module 4, Lesson 4,  Video 2: Lab</HEAD2></STKY>

<EXRLIST id="M4L4V2.yml">

- typeName: multipleChoiceCompute 10% trimmed mean.

- typeName: multipleChoiceCompute difference of mean and median.

</EXRLIST>
</LESSON>
<STKY>
<HEAD2>Module 4, Lesson 5 ,  Video 1: Review</HEAD2></STKY>
<TODO>Longitude</TODO>
<STKY><HEAD2>Module 4, Lesson 5 ,  Video 2: Review</HEAD2></STKY>



<STKY><HEAD1>Module 5: Dispersion</HEAD1></STKY>

<STKY><HEAD2>Module 5, Lesson 1,  Video 1: The concept</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="1.60">
In the last lesson we talked about central tendency, representing
a bunch of numbers by a single typical numbers. In this video we
shall go a bit deeper and talk about dispersion. 
<P/>
<V>First set of
firings. I move. Second set of firings.</V>
<P/>
Whew! Did you notice that? The guy who fired just now? He had two
revolvers in two hands. We must report this o the police. But I
do not know anything about the guy. But wait! May be we can infer
something! Look at the bullet marks. 6 From left hand, 6 from the
right. All the marks are quite close together. Hmmm...a pretty
good shot. But the bullets from his left hand are more tightly
together, while the other 6 are somewhat more scattered. Well,
what can that mean. He has better aim with his left hand? At
least he has more consistent aim with his left hand. He must be a
left handed person. Aha, that's a good clue for the police. And
in the meantime that's a good clue for us, too, for our current
topic. The shots are more scattered, or as we say in statistics,
these have higher <B>dispersion</B>, while these have lower
dispersion. Dispersion measures the amount of scatter, or how
loosely the points are together. That's our topic today.
</SESS>
<JINGLE t="0.1">Dispersion</JINGLE>
<SESS t="2.50">
Central tendency gives  a typical representative
value for a bunch of values. But none of the values may be
exactly equal to that representative value. There is bound to be
some scatter. Measuring that scatter is the purpose of
dispersion. Dispersion is useful because it tells us how
relieable the central tendency is. For a variable with high
dispersion, central tendency is not of much use. For example,
when we talked about body weights of mammals there was an
enormous dispersion, so much so that there was no central
tendency left in the data. In many cases we predict a value say
tomorrow's rainfall or some future stock price. Here it is good
to have a kind of error bar, an interval rather than a single
value. Dispersion plays a crucial role behind desgning such
intervals. 
<P/>
Dispersion, like central tendency, is an intuitive concept. We
shall want to capture its essence using some mathematical formula
that may be plugged into a computer for automated decision
making. Have you seen power saving gadgets that sometime people
fit inside rooms. These can automatically switch lights and fans
on or off according as whether there are people in the
room. These devicec actually detect motion, and that is done by
sensing sound or light intensity change and computing the
dispersion. Is the dispersion is too low, then the machine infers
that there is no motion, while a dispersion value exceeding a
threshold triggers it. 
<P/>
OK, let's start learning about measures of dispersion. Here we
shall work with a single continuous variable, whose values may be
considered as points along a number line, like this. If the
points are close together then dispersion is low, and if the are
wider apart then dispersion is higher. We are looking for a
mathematical fomula which will take the points as its input and
produce a single number as its output, which should indicate the
amount dispersion present. 
<P/>
There are quite a few such measures. Here is a list of commonly
used ones:

<P/>
* Range
* Variance and standard deviation 
* Median absolute deviation
* Semi-interquartile range
<P/>
We shall start with range in the next video.
</SESS>
</SCRIPT>

<EXRLIST id="M5L1V1.yml">
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

- typeName: plugin
  prompt: >
    Write down two sets of numbers such that the mean of the
    first set is smaller,  but the dispersion is larger.

</EXRLIST>

<STKY>
<HEAD2>Module 5, Lesson 1,  Video 2: Range</HEAD2></STKY>

<SCRIPT>
<SESS t="0.90">
Range is the simplest measure of dispersion, simplest to
understand and simplest to compute. Here suppose are the values
of a variable along a number line. To compute the range, you look
at the two extremes, the minimum and maximum. The range is
defined as the distance betwen
them. More mathematically, if the values are 
<D>
x_1,...,x_n,
</D>
then the range is defined as
<D>
\max_i\{x_i\} - \min_i\{x_i\}.
</D>
For example, if the numbers are 
<D>
2.3, 4.6, 9.8, 2.4,
</D>
then the minimum is <M>2.3</M> and the maximum is <M>9.8.</M> So
the range is <M>9.8-2.3 = 7.5.</M>
<P/>

Let's quickly learn to compute it using LibreOffice.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="4">
[Screencast: Compute range. by formula. by descriptive
statistics. Show that same formula is being used. Show dynamic update.]
</SESS>
</SCRIPT>

<STKY>
<HEAD2>Module 5, Lesson 1,  Video 2: Properties of range</HEAD2></STKY>

<SCRIPT>
<SESS t="0.30">
In this video we shall explore the properties of the range. There
are some good properties and one seriously bad property. Let's
start with the good ones.
</SESS>
<JINGLE t="0.1">Good properties</JINGLE>
<SESS t="3.00">
Range is easy to compute, easy to understand. Good points. Now
here are a couple of more good things about range that show that
it captures the intuitive idea of dispersion. Suppose I take some
points, and the points are all squeezed down to a single
point. There is no dispersion among them now, right? So desirable
property number one for any measure of dispersion: if all the
values are equal then the measure should be 0. Is it true about
range? If all the values are the same, then that same number is
both the minimum and maximum, and hence their difference is
zero. 
<P/>
Here is another desirable property for a dispersion measure to
have. If all the points are just shifted by the same amount, then
do you think that dispersion has changed? Intuitively, it should
not change, right? Because they have just moved not come closer
together or fallen further apart. So if we have some values 
<D>
x_1,...,x_n
</D>
and add a constant, say <M>c</M> to all of them to get
<D>
x_1+c, ..., x_n+c,
</D>
then both these set of numbers shoud have the same dispersion. 
<P/>
Is it true about the range? Yes, because when you shift all the
numbers by some common amount, the min and max also get shifted
by the same amount. When you take their difference, this common
amount just cancels out. 
<P/>
Next comes yet another desirable property. We again start with
values along a number line. They have some dispersion. Now we
multiply all the numbers by some constant, say <M>c.</M> For
instance we just double all the numbers. Then the dispersion
should also change according to <M>c,</M> right. If <M>c>1</M>
then the dispersion should increase, if <M>0< c< 1</M> then the
points are squeezed together, and hence dispersion should go
down. The sign of <M>c</M> should not matter. If if <M>c < 0</M>
then the points just get flipped around 0. In short, a good
dispersion measure should get multiplied with <M>|c|</M> if all
the numbers are multiplied with <M>c.</M>
<P/>
It is not hard to see that range satisfies this property, as
well. [Insert proof here.]

<P/>
So we have listed lots of good properties of the range. Easy to
understand, easy to computes, becomes zero when all the values
are the same, is not affected by constant shift, scales appropriately.
<P/>
But still range is not a popular measure of dispersion. Why?
Because it has one particularly bad property. It is not robust
against outliers. 

</SESS>
<JINGLE t="0.1">Bad property</JINGLE>
<SESS t="1.10">
Let's quickly understand what that means. Suppose we have many
cases in a data set. So for each variable we have many values.
When there are many values it is quite likely to some stray
points, or outliers as they are called, that lie far away from
the bulk of the other points. In one dimension, along a number
line, these outliers are the extreme points, and become the
maximum or the minimum or both. So they have tremendous influence
of the range. Even if all the other points are tightly together,
just one  stray point may cause the range to shoot up. Thus, the
range is quite unstable, or non-robust, to use a technical term. 
<P/>
In the following videos we shall look at other meeasures of
dispersion that are more robust than range. They look at data
more closely, not just at the two extreme points.
</SESS>
</SCRIPT>
<EXRLIST id="M5L1V2.yml">
- typeName: numeric
  prompt: >
    This file [link] gives a data set. Use LibreOffice to compute
    range of the income variable.
  shuffleOptions: true
  defaultFeedback: >
    No, may be you should just eyeball the values to find the
    minimum and maximum, and to see why your answer is wrong.
    Watch the video once again to learn using LibreOffice to
    compute the range.
  answers:
  - range:
    isCorrect: true
    feedback: >
      Great!


- typeName: multipleChoice
  prompt: >
    The range of some variable in a data set is 56.00.  A new case is
    added to the data set where the value of this variable is
    100.54. What will be the new range?
  shuffleOptions: true
  defaultFeedback: >
    You cannot be sure. You need to know the current minimum and the
    maximum to be able to update the range.
  options:
  - answer: Cannot compute based on the given information.
    isCorrect: true
    feedback: >
      Correct. You need to know the current minimum and the
      maximum to be able to update the range.
  
  - answer: 100.54

  - answer: 156.54
      
  - answer: 56.00
  
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
  
    
</EXRLIST>

<STKY>
<HEAD2>Module 5, Lesson 2,  Video 1: Variance and standard deviation</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="0.80">
We learned about the concept of dispersion in the last lesson,
and also one measure of dispersion, namely range. Range was easy
to compute, but suffered from lack of robustness. It uses the
data points too superficially. It is completely determined by the
two extreme values, and does not care about the other points in-between.
<P/>
In this lesson we shall learn about two related measures of
dispersion that are free of this problem. The measures are
called <B>variance</B> and its square root the <B>standard
deviation</B>. These are the most popular measures of
dispersion. Let's learn about step by step.
</SESS>
<JINGLE t="0.1">Variance</JINGLE>
<SESS t="2.20">
Let's take a moment to remembr why we are caring about
dispersion. We have a bunch of numbers with central tendency, and
we want to represent the bunch with a single typical value. We
are now wondering how reliable this representation is.  The higher
the dispersion, the less reliable is the representation. This was
our motivation for considering dispersion. Let's
turn this  motivation into a measure of dispersion.
<P/>
Here is our bunch of values. 
We start with a measure of central tendency, say mean. This
number is going to represent each of these values. For the values
close to the mean the representation is highly acceptable. For
points further away, the acceptability is more dubious. So the
difference between a point and the mean plays a central role in
determining how well the mean can represent the point. If the
point is <M>x_i</M> then the difference is <M>x_i-\bar x.</M>
This is positive if the point is on this side, and negative if
the point is on that side. But we do not care about sides
here. So we want to get rid to the sign. One way to get rid of
the sign is to square the difference to get the number <M>(x_i-\bar
x)^2.</M> For each point we get one such number. Now we want to
get a single number, a typical number to represent all these
numbers. Ah, that again sounds like a central tendency
problem. So we can take the mean of all these numbers to get 
<D>
[[\sum (x_i-\bar x)^2][n]].
</D>
This might look complicated, and had we not followed its genesis,
it would have left us wondering, 
"How does this qualify as a measure of dispersion?". 
But now we know. This is called the variance. It
square root is called the standard deviation. Let's quickly digest
the definition with a small numerical example.
</SESS>
<JINGLE t="0.1">Numerical example by hand</JINGLE>
<SESS t="4">
[Boardcast: Show a computation.]
</SESS>
</SCRIPT>


<EXRLIST id="M5L2V1.yml">
- typeName: multipleChoice
  prompt: |-
    Find the variance and standard deviation of these numbers:
    43, 23, 34, 64, 50, 33, 12
    Use n-1 in the denominator.
  shuffleOptions: true
  options:
  - answer: var = 296.67, sd = 17.22
    isCorrect: true
    feedback: >
      
  - answer: var = 17.22, sd = 296.67
    feedback: >
      Hey, that can't be. Variance should be square of the
      standard deviation.
  - answer: var = 254.29, sd = 15.95
    feedback: >
      Hmmm...I askd you to use n-1 in the denominator. Looks
      like you used n.
  - answer: var = 260.98, sd = 16.15
    feedback: >
      Nope. You may like to watch the video to brush up the
      formula.
    
- typeName: numeric
  prompt: >
    If the sum of squares of 5 numbers is 1004,  and the mean
    is 6,  then find the standard deviation (use n-1 in the
    denominator).
  defaultFeedback: >
    The formula is sqrt(n/(n-1)*(SS/n -  mean^2)).
  shuffleOptions: true
  answers:
  - range: [14.35,14.4]
    isCorrect: true
    feedback: >

- typeName: numeric
  prompt: >
    If the mean and variance of 10 numbers are,  respectively,
    10 and 45,  and a new value 7 is introduced, what is the
    new variance? We are using n-1 in the denominator.
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
  prompt: |-
    Consider this data set:
    | values |
    |--------|
    |     51 |
    |     34 |
    |     ?? |
    |     45 |
    Find the  value marked with ??  to achieve 
    the smallest possible variance. 
  defaultFeedback: >
    No, the variance can be reduced even further. In fact, it can
    be made 0.
  shuffleOptions: true
  answers:
  - value: 65
    isCorrect: true
    feedback: >
      Yes, you have chosen the mean of the available values.

</EXRLIST>

<STKY>
<HEAD2>Module 5, Lesson 2,  Video 2: Other ways to compute it</HEAD2></STKY>
<SCRIPT>
<SESS t="1.00">
The formula that we used to define variance is not that easy to
use by hand. It requires a sort of two-stage computation, first
you compute mean <M>\bar x</M>, then you find the mean of
the <M>(x_i-\bar x)^2</M>'s. 
<P/>
There is another equivalent formula that is somewhat
easier in the sense that it only requires a one-stage computation. Not that you'll typically do the computation by hand, but
still it is good to know. 
<P/>
The formula is 
<D>
[[\sum x_i^2][n]] - (*([[\sum x_i][n])*)^2.
</D>
So here you compute the sum of all the values as well as the sum
of their squares, and then plug them into the formula. Let's see
if we get the same answer.
</SESS>
<JINGLE t="0.1">Alternative formula</JINGLE>
<SESS t="4">
[Boardcast: Show the same data and last answer. Use alternative formula.]
</SESS>
<SESS t="0">
It is possible to prove that these two formulae will always
produce the same answer. Let's not bother about the proof
here. The reading material has the proof, anyway. And it is
nothing terribly important for learning statidtics. In fact, the
alternative formula itself is not terribly important, unless you
are forced to do hand computation. 
<P/>
Now let's learn what is important: computing using LibreOffice.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="4">
[Screencast: Compute for the same data. Var. Find n-1 problem.]
</SESS>
<JINGLE t="0.1">The mystery</JINGLE>
<SESS t="1.90">
Actually LibreOffice, like most other softwares use a slightly
different formula which is different:
<D>
[[1][n-1]]\sum (x_i-\bar x)^2.
</D>
Why <M>n-1,</M> you might naturally wonder, as all beginning
statisticans do. Well, thereby hangs a long
story. To cut that story short, here is a quick explanation.
Consider this math problem: 2 * 4 + 5 * 6.
The steps should be 
<MULTILINE>
2\times 4 + 5\times 6 
& = & 8 + 5\times 6 \\
& = & 8 + 30 \\
& = & 38.
</MULTILINE>
Suppose that a student has done the steps like this:
<MULTILINE>
2\times 4 + 5\times 6 
& = & 9 + 5\times 6 \\
& = & 8 + 24 \\
& = & 32.
</MULTILINE>
How many steps do you see that do not match the corresponding
correct step? The answer is 3. But how many
mistakes do we see? Now the answer is 2. The reason is that the
steps are interrelated. If one mistake  leads to
multiple incorrect lines, then they should not be counted separately. 
<P/>
That is what is happening here. When we are considering the
differences <M>x_i-\bar x</M> there are <M>n</M> such
differences. But they are interrelated. In particular they must
add up to 0. So only <M>n-1</M> of them are actually free, the
remaining one is completely determined by them. So we are
dividing by <M>n-1.</M> 
<P/>
This explanation is admittedly rather crude. It leaves many
gaps. But filling up those gaps will take us beyond the scope of
the present course. By the way this number 
of "free" things has a general name: <B>degrees of
freedom</B>. Thus here the degrees of freedom is <M>n-1.</M>
</SESS>
</SCRIPT>

<STKY>
<HEAD2>Module 5, Lesson 2,  Video 2: Properties</HEAD2></STKY>
<SCRIPT>
<SESS t="3.30">
While discussing range, we had listed some desirable properties
that a measure of dispersion should have. 
<P/>

 * should be 0 if all the values are the same
 * should not change if all the values are shifted together
 * should scale as the data (unaffected by the direction of scaling).
<P/>
Let's see if variance and standard deviation have these
 qualities.
<P/>
 If all the data points are the same, then that value
 is also the mean, so all the <M>x_i-\bar x</M>'s are zeroes, and
 hence variance is 0. 
<P/>
If all the data points are shifted by a common amount,
 then <M>\bar x</M> is also shifted by the same amount. So all
 the <M>x_i-\bar x</M>'s remain unchanged. Hence so do variance
 and standard deviation.
<P/>
If, however,  the values are all scaled by a common amount, then
 variance gets scaled by the square of that amount. Standard
 deviation, however, has the right behaviour. In fact, this is
 the reason why we care about standard deviation. It has the same
 unit as the data. Variace has the square unit, like area.
<P/>
OK, so we have the good properties. Now let's check
 robustness. We have already mentioned that variance and standard
 deviation are more robust than the range. But you know what,
 even these are not sometimes robust enough for some purposes. So
 stay tuned for something more robust in the next video. But
 despite there being even more robust alternatives, nothing
 really beats variance and standard deviation in popularity. The
 reason behind this may appear a bit confusing at our level, but
 I shall let you see them anyway. 
<P/>
The first reason is that variance is a smooth function of
 the <M>x_i</M>'s. What's that? A smooth function, i.e., a
 function that you can differentiate. "What's the big deal about
 differentiation here?" you naturally wonder. Well, often times
 we want to minimize or maximize dispersion. And you might recall
 from your calculus classes that differentiation plays an
 important role in maximization and minimisation. What, never had
 a calculus course? Don't worry! Just forget what I said, you'd
 never need calculus here. 
 
<P/>
The second reason is possibly a bit less mysterious. Let me explain with just
two numbers <M>x_1</M> and <M>x_2.</M> Think of them as a single
point on a graph paper. You want to replace both of them with a
typical representative value, which is <M>\bar x.</M> So instead
of <M>(x_1,x_2)</M> you have <M>(\bar x,\bar ),</M> which is just
another point on the graph paper. What is the distance of the
original point from this proxy point? Well, it is ..., and that
is just the standard deviation (except for the constant
denominator). This geometric interpretation helps statisticians
in many ways.
</SESS>
</SCRIPT>
<EXRLIST id="M5L2V2.yml">

- typeName: multipleChoiceCompute using Excel.

- typeName: multipleChoiceCompute for multiple columns simultaneously.

- typeName: multipleChoiceAdd one outlier and see the effect.

</EXRLIST>
</LESSON>
<STKY><HEAD2>Module 5, Lesson 3,  Video 1: Median absolute deviation</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="1.90">
We here acronyms everywhere. Each field has its own world of
acronyms. But in how many fields use MAD as an acronym. Well,
statisticians do. They are really mad guys! Of course, MAD does
not really mean mad, it stands for Median Absolute Deviation. And
its sole motivation is to create a more robust version of
variance. 
<P/>
Let's understand this step by step.
<P/>
When we created variance, we started with a measure of central
tendency. We had chosen the mean. Now mean is known suffer from
lack of robustness. Median is a more robus alternative. So why
not start with median, instead. Well, that's precisely what MAD
does. Next, we had computed the differences <M>x_i-median.</M> As
we have already mentioned, we want to get rid of its
sign. Earlier we had squared the quantity. That did get rid of
the sign, but also contributed to its lack of robustness. If
some <M>x_i</M> is far away, then its deviation from the centre
is anyway somewhat large, and if you square the deviation then it
becomes way larger. We do not want to square, but still get rid
of the sign. How? Simple, we just drop the sign. In other words,
we take the absolute values. Finally we had taken mean, here we
shall take the median. 
<P/>
Now you can also see why it is called Median Absolute
Deviation. There is some method in the MADness after all. 
<P/>
Computing median by hand is never fun, because it requires you to sort
the values. But just to remember the definition, let us toil
through a numerical example by hand.
</SESS>
<JINGLE t="0.1">Hand computation</JINGLE>
<SESS t="3">
[Boardcast: compute MAD.]
</SESS>
<SESS t="0.40">
Now let's see how to compute MAD using
LibreOffice. Unfortunately, LibreOffice or its paid analog Excel
does not have any readymade command for this. But they can
compute median and take absolute values. So it is not hard to
compute MAD with them. Let's see how.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SESS t="5">
[Screencast: Same data. Compute MAD]
</SESS>
</SCRIPT>

<STKY>
<HEAD2>Module 5, Lesson 3,  Video 1: Properties of MAD</HEAD2></STKY>
<SCRIPT>
<SESS t="1.00">
MAD has all the good properties of a dispersion measure that we
have learned. If all the points are the same, then the median is
that common value, so the deviations are all 0, and so is MAD.
<P/>
If you shift all the points by the same amount, then the median
also gets shifted by the same amount. So when we compute
deviations by taking differences, this common amount gets
cancelled. So MAD remains unchanged.
<P/>
If all the numbers are multiplied by some constant, the median
also get multiplied by the same constant. So each of the
deviations <M>x_i-median</M> also gets multiplied by the same
constant. When you take absolute value, the effect of the sign
goes away. And so the MAD is also scaled appropriately.
</SESS>
<JINGLE t="0.1">Bad properties</JINGLE>
<SESS t="0.70">
MAD cannot be computed easily by hand. That was the main reason
why people did not use it much before the advent of computers. Of
course, this is hardly a consideration in the modern age. So the
only criticism that may be leveled against MAD now is that it is not
a smooth function the data. The absolute value function is not
differentiable, and that troubles people who try to do
mathematical manipulations with the MAD formula. But we do not
need to worry about that in this course.
</SESS>
<JINGLE t="0.1">Geometry</JINGLE>
<SESS t="1.50">
We had seen one geometric interpretation of standard
deviation. We can give a geomtric interpretation of MAD as well
along a similar vein. Again we consider just two
numbers, <M>x_1</M> and <M>x_2,</M> and consider them as a
point <M>(x_1,x_2)</M> on the graph paper. Earlier we
used <M>\bar x</M> as a proxy for the <M>x_i</M>'s, and
thus <M>(\bar x, \bar x)</M> was a proxy for <M>(x_1, x_2).</M>
For MAD the role of <M>\bar x</M> is played by the median. So the
proxy point is <M>(median, median).</M> Now we want to think of
MAD as the distance between the actual point and this
proxy. Since MAD is
<D>
|x_1-median|+|x_2-median|,
</D>
it can be visualised as a sort of horizontal-vertical
distance. In mathematics we call this
the <M>L_1</M>-distance. According to this distance, if you want
to go from one point to another, you have to move either
horizontally or vertically. This is, for example, the distance you
have to travel in a city where the roads are all north-south or
east-west. As Manhattan is one such place, people sometimes call
this the Manhattan distance. We shall discuss this any further,
as we shall not need this here any more.
</SESS>
</SCRIPT>

<EXRLIST id="M5L3V1.yml">
What signals outliers: MAD diffeernet from standard deviation.
- typeName: numeric
  prompt: |-
    Find MAD for these numbers.
    23, 56, 67, 45, 23, 34, 20
  defaultFeedback: >
    You may like to watch the video once again. First find the median.
  shuffleOptions: true
  answers:
  - range: [16.3, 16.31]
    isCorrect: true
    feedback: >
      

- typeName: multipleChoice
  prompt: >
    If the median is 6 and MAD is 3,  then find the new MAD
    when a new value 7 is introduced.
  defaultFeedback: >
    You do not have all the values. So you do not have enough
    information to update the median.
  shuffleOptions: true
  options:
  - answer: Cannot answer with this information.
    isCorrect: true
      
  - answer: 3
      
  - answer: 4
      
  - answer: 7
      

</EXRLIST>


<EXRLIST id="M5L3V2.yml">
- typeName: multipleChoiceCompute using Excel.

- typeName: multipleChoiceCompute for multiple columns simultaneously.

- typeName: multipleChoiceAdd one outlier and see the effect.


</EXRLIST>
</LESSON>
<STKY>
<HEAD2>Module 5, Lesson 4,  Video 1: Interquartile range and boxplot</HEAD2></STKY>
<LESSON>
<SCRIPT>
<SESS t="1.40">
We have already learned about quite a few dispersion
measures. These included the most popular variance and standard
deviation, and the robust MAD. So it might seem unnecessary to
learn about yet another measure of dispersion, the 
interquartile range. Just as MAD is a robustified version of standard
deviation,  interquartile range is a robustification of
range. Not that it 
used much. But still we should know it, because it is closely
connected with an important graphical representation, the
boxplot or the box-and-whiskers plot. 
<P/>
Let us understand  interquartile range pictorially in
relation with the range. Imagine the data points along a number
line, as usual. When we defined range, we looked at the two
extremes and took the distance between them. We noticed that the
two extremes are very likely affected by outliers, and so range
was not robust at all. So let's shave away part of the data from
both the extremes. This is just like trimmed mean. But here we
shall trim off 25% of the data from either end. So that leaves
50% data in the middle. Now take the range of that. 
<P/>
Let's look at an example. 
</SESS>
</SCRIPT>


<EXRLIST id="M5L4V1.yml">
- typeName: checkbox
  prompt: >
    Consider the  box plots for two variables. [fig]
    Then which of the following statements is/are true?
  shuffleOptions: true
  options:
  - answer: >
      The first variable has higher dispersion than the second.
    isCorrect: true
    feedback: >
      Yes, the first box is taller than the second.
  - answer: >
      There are two outliers for the male income that are
      too high. 
    feedback: >
      No, they are too low.
  - answer: The medians of the two variable are equal.
    isCorrect: true
    feedback: >
      Yes, the central lines are on the same level.
  - answer: The means of the two variables are equal.
    feedback: >
      No, it seems that mean of the first variable is more.


</EXRLIST>

<STKY>
<HEAD2>Module 5, Lesson 4,  Video 2: Boxplot</HEAD2></STKY>
<SCRIPT>
<SESS t="0">
Explain box plot.
</SESS>
</SCRIPT>
<STKY>
<HEAD2>Module 5, Lesson 4,  Video 2: Lab 1</HEAD2></STKY>
<SCRIPT>
<SESS t="4">
[Screencast: Use BoxplotR]
</SESS>
</SCRIPT>

<STKY>
<HEAD2>Module 5, Lesson 4,  Video 2: Lab 2</HEAD2></STKY>
<SCRIPT>
<SESS t="6">
[Screencast: Use LibreOffice]
</SESS>
</SCRIPT>

<EXRLIST id="M5L4V2.yml">
- typeName: multipleChoiceCompute interquartile range for the data.

- typeName: multipleChoiceMake box plots.

- typeName: multipleChoiceCompare box plots.

- typeName: multipleChoiceCompute trimmed variance.


</EXRLIST>
</LESSON>

<STKY>
<HEAD2>Module 5, Lesson 5 ,  Video 1: Review</HEAD2></STKY>

<STKY><HEAD2>Module 5, Lesson 5 ,  Video 2: Review</HEAD2></STKY>

</LESSON>
<STKY><HEAD1>Module 6: Association etc</HEAD1></STKY>

<STKY><HEAD2>Module 6, Lesson 1, Video 1: Bivariate data, The concept via plots</HEAD2></STKY>

<EXRLIST id="M6L1V1.yml">

- typeName: multipleChoice
  prompt: >
    Here are two bivariate scatterplots. 
    [fig]
    Which of the following is true about them?
  defaultFeedback: >
      Are you sure? increasing relation means a south-east to
      north-west layout of the points.
  shuffleOptions: true
  options:
  - answer: >
      the first shows an increasing relation, the second a
      decreasing relation.
    isCorrect: true
      
  - answer: >
      the first shows a decreasing relation, the second an
      increasing relation.

  - answer: both show an increasing relation.
      
  - answer: both show a decreasing relation.
      


- typeName: multipleChoice
  prompt: >
    Here are to scatter plots. [fig] If you want to predict y from x,
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
      

- typeName: checkbox
  prompt: >
    Here is a scatter plot with a nonlinear relation. [fig]
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
      Hmmm...if we imagine a curve through the center of the data
      cloud, then aren't the points actually tightly adhering
      to it when x is small?



</EXRLIST>

<STKY>
<HEAD2>Module 6, Lesson 1,  Video 2: (Rank) correlation</HEAD2></STKY>
Mention Anscombe data.

<EXRLIST id="M6L1V2.yml">

- typeName: numeric
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
  shuffleOptions: true
  defaultFeedback: >
    Oops! A correlation cannot be outside [-1,1]. Please review
    the material.
  answers:
  - range: [-0.61, -0.6]
    isCorrect: true
    feedback: >
      Good job!
  - range: [-1,-0.61)
    feedback: >
      You may like to check the formula once again.
  - range: (-0.6,1]
    feedback: >
      You may like to check the formula once again.
      

- typeName: multipleChoice
  prompt: >
    Again consider the same toy data set as in the last
    exercise. But this time compute Spearman's rank correlation.
  shuffleOptions: true
  defaultFeedback: >
    Oops! A correlation cannot be outside [-1,1]. Please review
    the material.
  answers:
  - value: -0.4
    isCorrect: true
    feedback: >
      Good job!
  - range: [-1,-0.4)
    feedback: >
      You may like to check the formula once again.
  - range: (-0.4,1]
    feedback: >
      You may like to check the formula once again.

- typeName: plugin
  prompt: >
    Create a bivariate data set with Spearman's rank correlation 1,
    but Pearson's correlation less than 1.

- typeName: checkbox
  prompt: > 
    This file [link] contain the Anscombe data set. Compute
    correlation in each case. Also plot them. Now choose the mos
    approapriate answer below.
   shuffleOptions: true
  options: 
  - answer: The correlations are all the same.
    isCorrect: true
    feedback: >
      Yes, in fact the sum and sum of squares and sum of products
      are all  same across the data sets.
  - answer: The plots show completely different patterns.
    isCorrect: true
    feedback: >
      Yes, that's plots are great for detecting patterns.
  - answer: The correlations are different. 
    feedback: >
      Oops! Are you sure that you computed the correlation
      *separately* for the four data sets?
  - answer: The plots show more or less similar patterns.
    feedback: >
      No, some are linear, while some are nonlinear.

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
<HEAD2>Module 6, Lesson 2,  Video 1: Contingency table measures
(part 1)</HEAD2>
<COMMENT>https://en.wikipedia.org/wiki/Contingency_table</COMMENT>
 Odds ratio
 Phi coefficient
 Cramer's V and the contingency coefficient C

<EXRLIST id="M6L2V1.yml">

- typeName: numeric
  prompt: |-
    Here is a 2 by 2 contingency table:
    |----+----|
    | 23 | 34 |
    |----+----|
    | 56 | 20 |
    |----+----|
    Compute odds-ratio from this table.
  defaultFeedback: >
    Something wrong. Please review the formula.
  shuffleOptions: true
  answers:
  - range:
    isCorrect: true
    feedback: >
      Great job!      
  
- typeName: numeric
  prompt: >
    Consider the same contingency table as above. Compute the Phi
    coefficient.
  defaultFeedback: >
    Something wrong. Please review the formula.
  shuffleOptions: true
  answers:
  - range:
    isCorrect: true
    feedback: >
      Great job!

- typeName: numeric
  prompt: >
    Consider the same contingency table as above. Compute
    Cramer's V.
  defaultFeedback: >
    Something wrong. Please review the formula.
  shuffleOptions: true
  answers:
  - range:
    isCorrect: true
    feedback: >
      Great job!


- typeName: numeric
  prompt: >
    Consider the same contingency table as above. Compute the 
    contingency coefficient.
  defaultFeedback: >
    Something wrong. Please review the formula.
  shuffleOptions: true
  answers:
  - range:
    isCorrect: true
    feedback: >
      Great job!


- typeName: multipleChoice
  prompt: >
    Can odds-ratio be negative? Can it be more than 1?
  shuffleOptions: true
  options:
  - answer: No. Yes.
    isCorrect: true
    feedback: >
      That's right!
  - answer: No. No.
    feedback: >
      Well, you are dividing one odds by another. An odds can be
      very close to 0. 
  - answer: Yes. No.
    feedback: >
      All entries in a contingency table are frequencies and
      hence non-negative.
  - answer: Yes. Yes.
    feedback: >
      All entries in a contingency table are frequencies and
      hence non-negative.
      

- typeName: multipleChoice
  prompt: >
    A person's finger print may be classified as whorl and
    no-whorl. 100 mother-child pairs 
    The following contingency table gives mother Interpret relation between mother's whorl and child's whorl.

</EXRLIST>

<STKY>
<HEAD2>Module 6, Lesson 2,  Video 2: Lab</HEAD2></STKY>

<EXRLIST id="M6L2V2.yml">

- typeName: multipleChoiceCompute from data
- typeName: multipleChoiceCompute from data
- typeName: multipleChoiceCompute from data
- typeName: multipleChoiceCompute from data

</EXRLIST>

<STKY>
<HEAD2>Module 6, Lesson 3,  Video 1: Contingency table measures (part 2)</HEAD2></STKY>

Tetrachoric correlation coefficient
 Lambda coefficient
 Uncertainty coefficient
Kendal's tau_a and tau_b
gamma test

<EXRLIST id="M6L3V1.yml">

- typeName: numeric
  prompt: >
    Compute the tetrachoric correlation coefficient from the
    following table.
  defaultFeedback: No, that does not look right.
- typeName: numeric
  prompt: >
    Compute the lambda coefficient from the above table.
- typeName: multipleChoiceCompute by hand
- typeName: multipleChoiceCompute by hand

- typeName: multipleChoiceInterpret

</EXRLIST>

<STKY>
<HEAD2>Module 6, Lesson 3,  Video 2: Lab</HEAD2></STKY>

<EXRLIST id="M6L3V2.yml">

- typeName: multipleChoiceCompute from data
- typeName: multipleChoiceCompute from data
- typeName: multipleChoiceCompute from data
- typeName: multipleChoiceCompute from data

</EXRLIST>

<STKY>
<HEAD2>Module 6, Lesson 4,  Video 1: Concept of moments: skewness and kurtosis</HEAD2></STKY>
<EXRLIST id="M6L4V1.yml">

- typeName: multipleChoiceVisually from histogram (clear)

- typeName: multipleChoiceVisually from histogram (unclear)

- typeName: multipleChoiceIncome distribution in captalist countries.
</EXRLIST>

<STKY>
<HEAD2>Module 6, Lesson 4,  Video 2: Lab</HEAD2></STKY>

<EXRLIST id="M6L4V2.yml">

- typeName: multipleChoiceCompute.

- typeName: multipleChoiceEffect of outlier.

</EXRLIST>

<STKY>
<HEAD2>Module 6,  Lesson 5 ,  Video 1: Review</HEAD2></STKY>
<STKY><HEAD2>Module 6,  Lesson 5 ,  Video 2: Review</HEAD2></STKY>

<COMMENT>
Local Variables:
 two-part1: ((format "%cSESS t=\"0\">\n" 60) (format "\n%c/SESS>" 60))
 two-part2: ("<B>" "</B>")
End:
</COMMENT>
</NOTE>@}


