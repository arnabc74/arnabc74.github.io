@{<NOTE>
<TITLE>Course: Basic 1: Basic Statistics</TITLE>
<UPDT>WED OCT 06 IST 2021</UPDT>
This course consists of 6 modules,  each spanning one week. Each
module is made of 5 lessons,  which in their turn are split into
2 (or in some cases 3) videos. Each of the first 4 lessons in a
module has around 5 formative quizzes. The last lesson is a
review lesson and has 8 summative quizzes,  where 2 are taken from
each of the preceding lessons in that module. In this file I am
providing only the formative quizzes,  as the summative ones are
essentially of the same type.

<STKY><HEAD1>Module 1: Data types</HEAD1></STKY>

<STKY><HEAD2>Module 1,  Lesson 1,  Video 1: Data--what and why</HEAD2></STKY>
Hello,  and welcome to the PGDAS course on basic statistics. This
is the first lecture in the very first module. <V>Name enters.</V>As you should know
already,  the course consists of 6 modules,  each of one week
duration,  followed by 2 weeks of live online classes.<V>Name leaves.</V> This is
the very first lecture of module 1. 
<P/>
We hear about statistics a lot. But what is it? Well,  there are
various ways to define it. Possibly the simplest,  and most
comprehensive way,  is to say that <B>statistics</B> is the <B>science
of learning from experience</B>,  and as such is the most fundamental 
tool behind human existence. Whether we are trying to predict 
tomorrow's weather,  or the next wave of COVID,  we are using
statistics.
<P/>
 Most often we learn from experience even without
knowing it.  When we do something unconsciously,  out of reflex, 
without really thinking about it,  we tend to do it
inefficiently. Take high jumping,  for instance. Most of us can jump
over a fence. We hardly need to think about it. Our muscles
somehow move on their own and we end up on the other side. But if
one considers the process  consciously,  one can see many subtle
ways of improvement,  and the sum total of all those may lead to a
quite different technique and 
rather surprising improvement in efficiency!

<P/>

Well,  the same is true about learning from experience. 
Statistics is a conscious and careful way of going about
this. Let's start by carefully looking at the word
"<B>experience</B>". Let's take a simple example. Suppose we want to tap
the experience of our friends about some movie. If ask them
about what they think about it,  we shall get responses like
"<B>Good</B>",  "<B>so-so</B>",  "<B>Ok</B>",  "<B>Hey you must watch it</B>"! Yet another may
give you a long description about what she liked the
most. <V>Blah blah</V> Informative as such informal comments are,  they are
difficult to summarise efficiently. One person's "Good" may very well be another
person's "so-so". Webpages like
Rotten Tomato does the same thing,  but in a more systematic
way. They provide a 5-star rating,  which provides a common
scale and provides a more uniform data than a mere haphazard
collection of "Good" and
"so-so". When we collect experience in such a systematic
way we get <B>data</B>. And this is the first point where
statistics differs from the common man's way of learning from
experience.  Statistics systematically collects and  stores the experience in a
cut-and-dried fashion before proceeding to glean information from
it. Data are  that cut-and-dried experience. 


<P/>

The term data conjures up the vision of numbers...zillions of
figures stored in computer disks to be processed by gigantic
supercomputers. Well,  while it is true to some extent,  data need not
always be numbers. They may take other forms. In order to learn
statistics effectively,  it is imperative that we know what data
are. 

<P/>

And yes,  "data" is a plural word. Its singular "datum" is rarely
used. A common mistake found in many reports is to say things
like "This data says ...". It should be either "These data say
..." or "This data set says ...". But knowing the word "data"
grammatically is not enough. We need to take a deeper look,  and
that's what we are about to do next.

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
Before we start talking abou the details,  let's take a quick look
at some different ways one may go about collecting data. When you
are collecting data,  there is a scenario. Like a village,  and you
plan to collect data on the agriculatural land holding. There are
basically two ways: you may actually measure the land yourself, 
or get the information from the existing government records. In
the first first case,  the data set is called <B>primary
data</B>. In the second it is <B>secondary data</B>. Thus, 
primary data are what the agency has collected afresh for the
current purpose. Secondary data mean data that were collected
earlier (possibly by another agency for a different purpose).
<P/>
There is another way to classify the data collection
procedure. If you are interested in the monthly expendicure of
the houselholds in a village and the village has just 30
houselholds,  then you can indeed visit each and every houselhold
to collect the data. This is called <B>complete
enumertion</B>. But imagine doing the same thing for every
household in a large city! Then we have to resort to take
a <B>sample</B>,  <B>a representative subset of all the households, </B>
and collect data from only those households. 
<P/>
There is yet another way to classify data
collection. <B>Observational study</B> and <B>designed
experiment</B>.  In an observational study,  you are merely a
passive observer,  collecting information about a system as you
find it,  without trying to modify the system. In a designed
experiment,  by contrast,  you are deliberately trying to disturb
the system,  and collecting data about how it responds to the
change. Let me give a very simple mundane example. You see
something longish lying on the way. Is it a rope? Or a snake? You
want to find out. You may go about this in two ways: you way just
wait and watch it behaviour (that's observational study). Or you may just throw a stone at it, 
and see how it reacts (that would be a designed experiment).

<P/>
Well,  that's quite a bit of jargon for a single video. Confusing
as they might see at first,  these concepts are important ones
when yoy work with data. Each has its advantages and
disadvantages. Primary data,  for example,  are the only option if you are
conducting study about something not explored before. But they
also happen to be very expensive. Secondary data are easier to
get,  but may be dated,  or not exactly suited for a particular
study. The choice is somewhat like choosing a readymade dress or
a custommade dress. 
<P/>

A comparison between complete enumeration and sampled data is
similar. Complete enumeration gives you,  well,  the complte
information. What can be better? But then it comes at a great
price. It is enormously more expensive and time
consuming. Indeed,  so much so it might just be infeasible in many
cases. But samplined data have their own pain. Is the sample
really representative of the entire population? That's a question
that continues to bug all conclusons that you draw from such
data. 
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

<STKY><HEAD2>Module 1, Lesson 1,  Video 3: Case,  variable and rectangular structure</HEAD2></STKY>

All data are results of measurements. The measurement may be made
by a scientific instrument like a measuring tape or a therometer
or telescope,  or simply by asking a verbal question,  or merely by
inspection. Of course,  judging a person's gender by merely looking
at the person hardly deserves to be called a measurement. So
statisticians prefer to use the term <B>variable</B>. The result
of each measurement gives a single outcome called
the <B>value</B>. 
<P/>
When we make a measurement,  we are are measuring <I>something</I>
or <I>somebody</I>. That something or somebody is called
a <B>case</B>. When you are recording a patient's body
temperature,  the patient is a case,  "temeperature"  is the
variable,  and the number itself is the value of that variable for
that case. Typically,  a statical data set consists of a number of
variables and a number of cases. The corresponding values are
laid out in a rectangular structure,  where the rows denote the
cases and the columns denote the variables. All standard
statistical softwares excpect the data to be in this rectangular format.

<P/>
Sometimes beginners fail to create this rectangular format. For
this,  it helps to imagine a <B>report sheet</B> with fields like
"temperature" "patient's name" to be filled in. Everytime you
have a occasion to fill up a copy of this report sheet,  you get a
case. Each field in the sheet is a variable,  and everything you
write while filling it up is a value.

<TODO>No information is row/col heads or table headings.</TODO>

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

<STKY><HEAD2>Module 1, Lesson 2,  Video 1: Continuous,  discrete,  counting and categorical</HEAD2></STKY>

Different variables 
 may be of different types. Some may be numbers,  others may be
 like names. All values belonging to the same variable must be of
 the same type.  Thus,  if we have a variable like a person's
 height,  then either all of the values are in numbers (e.g.,  in
 cm) or in words  like "tall",  "medium" and "short". But not a
 mixture of both.  

The simplest type of variable is an <B>identifier</B> variable. These
are used to identify something. They could be names or roll
numbers or EPIC or PAN or something similar.

<P/>

Another simple type is a <B>timestemp</B> variable. 
<P/>


Contrast this with another scenario. Suppose that we are visiting
a village and asking each family about the number of children
they have. There the data may be like this. Some family has 2
children,  some have 3,  while others may have 4 or none. Can a
family have 2.5 children? No! Thus,  here the
values in-between are not valid. The possible values stand apart
with some gaps between them. 
 This is a <B>counting</B> variable. Examples of other variables of
this type include <B>count of trees in an area</B>,  
<B>number of COVID infections in a district</B>. 

<P/>

A different type of variable
is <B>gender</B>,  which typically takes
three values <B>Male</B>,  <B>Female</B> and <B>Others</B>.
Unlike the counting variables,  here we know exactly all the
possible values. This is what is called a <B>categorical</B>
variable. 

<P/>


A fourth type of variable may be called the <B>interval</B>
type. Examples are like income group or age group. These are
basically low resolution versions of continuous variables. The
range of values of a continuous variable is split into a number
of adjacent intervals,  and only the interval in which a number
falls is recorded. Like for age,  we could have the age groups
20--40,  45--60,  above 60. Here we need to be careful about the
boundary values. Usually,  names are associated with each
interval,  e.g.,  Young,  Middleage and Senior. Similarly,  for LIG, 
MIG and HIG for income. 

<P/>


A fifth type is called a <B>Likert scale</B> variable.

<P/>
<B>Numerical measurements</B> constitute the most important type
of variable. Examples include temperature,  blood pressure,  area
of plots,  yield of plots. 

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
<HEAD2>Module 1, Lesson 2,  Video 2: Continuous,  discrete,  counting and categorical</HEAD2></STKY>
One might easily get confsed with so many different types of
variables! To ease the pain,  statiticians have reduced the number
to just four
<UL>
   - answer: COntinuous:
<UL>
   - answer: Difference type
   - answer: Ratio type
</UL>

   - answer: Discrete
<UL>
   - answer: <B>Nominal</B>
   - answer: <B>Ordinal</B>
   - answer: <B>Counting</B>
</UL>

</UL>
we split all such measurements into two types: <B>continuous</B>
and <B>discrete</B>. Continuous means a measurement that takes
values in a continuum,  a range of values without any gap. Like a
measuring people's heights. When you measure heights of a bunch
of people you will get a few numbers like these. While these are
only some distinct points along the number line,  the points
between them are also valid values. It is not that people either
have this height or they jump to that height without ever taking
the values in-between. All possible human heights form a
continuum,  a range without any gap. So height is a continuous
variable. 

<P/>


Some variables are clearly not continuous,  like gender. However, 
for some others the distinction is less prominent. Take for
example area of agricultural plots. One would typically measure
it up to the nearest square metre. So the values are all
integers. While area is definitely continuous,  the "reported
area" is obviously like a counting variable! However,  here we
still consider it continuous. This decision is based on two
considerations: 
<UL>
   - answer: First,  "area" itself is continuous.
   - answer: Second,  one square metre is much too small compared to the
total area.
</UL>
The same idea applies to any measurement. All measurements are
made by finite precision instruments,  and hence can take only
finitely many values. Yet we consider the measurement to be
continuous if the resolution is sufficiently high. 

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

<STKY>
<HEAD2>Module 1, Lesson 3,  Video 1: Univariate and multivariate</HEAD2></STKY>

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

<STKY>
<HEAD2>Module 1, Lesson 4,  Video 1: File formats: Excel</HEAD2></STKY>


In olden days people used to store data on paper. Now computer
disks provide the main storage. Data sets are stored as files, 
be it in the hard drive of a computer or removable devices like a
USB drive. A file in a computer is just a collection of 0's and
1's. When we store data  in a file,  they first need to be
converted into 0's and 1's. When we read the data back from the
file,  the 0's and 1's are converted back into the original
form. This two-way conversion process is mostly done
automatically without our intervention. Now,  this process may be
done in different ways,  and each such way is called a <B>file
format</B>. 
There are quite a few file formats that are used in
statistics. Some are free,  while others are propreitary and
require paid softwares to write or read. Some formats are good
for sending data files over the email,  while some formats are
optimised to hold a large amount of data in a small space. 


<P/>

In this course we shall use the MS Excel software,  which
understands various file formats. We shall discuss only two of
them. Every file format has its specific file name extension. The
first format has the extension <B>.xlsx</B>. This is the default
file format used by MS Excel. 

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
<HEAD2>Module 1, Lesson 4,  Video 2: File formats: CSV</HEAD2></STKY>
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

<STKY>
<HEAD2>Module 1, Lesson 5 (review),  Video 1</HEAD2></STKY>
<STKY><HEAD2>Module 1, Lesson 5 (review),  Video 2</HEAD2></STKY>

<STKY><HEAD1>Module 2: Presentation of data (part 1)</HEAD1></STKY>

<STKY><HEAD2>Module 2, Lesson 1,  Video 1: Graphical: exploratory and pedagogic</HEAD2></STKY>
In the year 1958,  a war took place between the British and the
Russian. A particularly infamous battle fought in it was the
battle of Crimea,  where  a young nurse named Florence Nightingale,  along with a
small group of friends,   was providing
voluntary service at the battlefield. She was shocked to find
that more soldiers died of disease than in actual
fighting. She saw this clearly,  as did many others present at the
battlefield. But unfortunately the policy makers sitting in
London did not see this as clearly. Fortunately for the soldiers
and the posterity,  Florence Nightingale was not just a dedicated
nurse. She was also a statistician at heart,  one who knew how to
convince others using data. Data,  as a dumb jumble of numbers, 
were not appealing. She knew that. So she improvised a colourful
way to bring her point home. For each month she had the numbers
of deaths due to different causes. She gave a sector to each
month,  and split the sector into a number of parts,  one for each
cause. The resulting diagram is called Nighingale Rose Chart. It
indeed had so much impact on the policymakers that sanitary
condition of the soldiers improved considerably. 
<P/>
This example shows the power of pictures. We use our eyes to
decide about our surroundings. Graphical representation of data
allows our eyes to perform quick statistical analysis. 
<P/>
One may,  like Florence Nightingale,  improvise one's own way of
representing data graphically. But there are certain standard
methods,  which every statistician should know about. 

<STKY><HEAD2>Module 2, Lesson 1,  Video 2: Line diagram</HEAD2></STKY>
The data used by Florence Nightingale are tim series data. The
most common way to depict such data is the <B>line chart</B>. 
This is just a graph with time shown in the <M>x</M>-axis,  and
the quantity of interest in the <M>y</M>-axis. If our data set
looks like this <V>table shown</V>,  then each row gives us a
point. We join them with piecewise straighlines to get a line
chart. 
If we multiple quantities of interest,  then we vave multiple
lines that may be plotted separately or,  to facilitate comarison, 
overlaid on the same plot. For instance,  Florence Nightingale
could have produced this plot to convey the same information as
her rose chart. However,  notice that her plot highlighted her
contension that diseases were the greatest killer more
forcefully.  This is an importnt consideration when choosing one
graphical technique over another: which is
more <B>convincing</B>? Unfortunatley,  it is easy to go
overboard,  and produce plots that almost present a distorted
version of trth. We shall talk more abot this later. 

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

<STKY>
<HEAD2>Module 2, Lesson 1,  Video 3: Lab</HEAD2></STKY>

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

<STKY>
<HEAD2>Module 2, Lesson 2,  Video 1: Scatter plot</HEAD2></STKY>
Scatter plot is a close kin of the line chart. Here we just show
the points without joining them with lines. Consider a height
weight data set. Here each case is a point. Typically,  the
variable which is less in our ontrol,  and is more relieably
measured,  is shown in the <M>x</M>-axis. If there are more than
two variables,  then we can use a scatter plot matrix,  sometimes
also called a pairs plot. 

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

<STKY>
<HEAD2>Module 2, Lesson 2,  Video 2: Lab</HEAD2></STKY>
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

<STKY>
<HEAD2>Module 2, Lesson 3,  Video 1: Bar,  pie</HEAD2></STKY>

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

<STKY>
<HEAD2>Module 2, Lesson 3,  Video 2: Lab</HEAD2></STKY>
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

<STKY>
<HEAD2>Module 2, Lesson 4,  Video 1: Pitfalls</HEAD2></STKY>

<EXRLIST id="M2L4V1.yml">

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

<STKY>
<HEAD2>Module 2, Lesson 5 ,  Video 1: Review</HEAD2></STKY>
<STKY><HEAD2>Module 2, Lesson 5 ,  Video 2: Review</HEAD2></STKY>

<STKY><HEAD1>Module 3: Presentation of data (part 2)</HEAD1></STKY>

<STKY><HEAD2>Module 3, Lesson 1,  Video 1: Frequency distribution</HEAD2></STKY>

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

<STKY>
<HEAD2>Module 3, Lesson 1,  Video 2: Lab</HEAD2></STKY>

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

<STKY>
<HEAD2>Module 3, Lesson 2,  Video 1: Tabular: Pivot table and pivot chart</HEAD2></STKY>
In this video we shall talk about a representation of data that
is definitely the one most commonly used: <V>tabular
format</V>. Be it a telephone directory or a dictionary or a
railway timetable,  tables are everywhere around us. Even when we
use a computer to look up information,  the underlying data base
is basically a collection of tables. 
<P/>
A table,  as we all know,  presents data in a rectangular
format. Well,  we have already used them earlier in this course, 
where columns represent variables and row represent cases. Those
tables were meant primarily to be fed into a computer
program. But human-readbale tables can be (and should be) more
varied. They allow for various embellishments,  <B>nested rows</B>, 
<B>nested columns</B>,  <B>marginal summaries</B> <B>etc</B>.
Such fancy tables are often called <B>pivot tables</B>.
<P/>
Let's start with an example.
[Grading multiple values]
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

<STKY>
<HEAD2>Module 3, Lesson 2,  Video 2: Lab</HEAD2></STKY>

<EXRLIST id="M3L2V2.yml">

- typeName: multipleChoiceCreate a pivot table based on given data.

- typeName: multipleChoiceModify the layout of an existing pivot table.

- typeName: multipleChoiceChange the  original data and report the change in the
pivot table.

- typeName: multipleChoiceMake a pivot chart
</EXRLIST>

<STKY>
<HEAD2>Module 3, Lesson 3,  Video 1: Histogram</HEAD2></STKY>

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
<HEAD2>Module 3, Lesson 3,  Video 2: Lab</HEAD2></STKY>

<EXRLIST id="M3L3V2.yml">

- typeName: multipleChoiceMake histogram based on data.

- typeName: multipleChoiceMake histogram and identify a 5% cut-off.

- typeName: multipleChoiceMake histogram and match its shape from among some given
shapes.


</EXRLIST>

<STKY>
<HEAD2>Module 3, Lesson 4,  Video 1: Contingency table</HEAD2></STKY>

<EXRLIST id="M3L4V1.yml">

- typeName: multipleChoice<M>2\times2</M> table. Only row totals and a single column total are given. Find
the other column total.

- typeName: multipleChoiceGive a contingency table. Ask to merge two rows.

- typeName: multipleChoiceMake a contingency table by hand from toy data.

- typeName: multipleChoiceDescribe a 3-way table set up. Ask to identify the correct
dimension.

</EXRLIST>

<STKY>
<HEAD2>Module 3, Lesson 4,  Video 2: Lab</HEAD2></STKY>

<EXRLIST id="M3L4V2.yml">

- typeName: multipleChoiceCreate a pivot table from frequency data.

- typeName: multipleChoiceCreate a pivot table from raw data (where the 1 column needs
to be added manually).

- typeName: multipleChoiceRectify data and update the table.

</EXRLIST>

<STKY>
<HEAD2>Module 3, Lesson 5 ,  Video 1: Review</HEAD2></STKY>
<STKY><HEAD2>Module 3, Lesson 5 ,  Video 2: Review</HEAD2></STKY>


<STKY><HEAD1>Module 4: Central tendency</HEAD1></STKY>

<STKY><HEAD2>Module 4, Lesson 1,  Video 1: The concept and mean</HEAD2></STKY>
Let me ask you a simple question: <B>what is the average life span
of Indians?</B> You may not know the exact answer,  but you'll guess
that it is around 70. Now let me ask you another question: <B>what
is the average body weight of an adult male dolphin?</B> Possibly you
have no idea,  and may turn to Google for an answer. Now comes the
last question: <B>what is the average weight of a mammal?</B> I am sure
you do not know! I am sure you've never heard this question
before. Will you turn to Google for an answer? No,  this question
is absurd! There are so many different types of mammals ranging
from tiny rodents to enormous blue whales. What do you mean by
"average" here? Well,  we learned in school 

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

<STKY>
<HEAD2>Module 4, Lesson 2,  Video 1: Median</HEAD2></STKY>

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
<HEAD2>Module 4, Lesson 2,  Video 2: Lab</HEAD2></STKY>

<EXRLIST id="M4L2V2.yml">

- typeName: multipleChoiceFind median of the numbers using Excel.

- typeName: multipleChoiceSort the column.

- typeName: multipleChoiceSort one column by another.

</EXRLIST>

<STKY>
<HEAD2>Module 4, Lesson 3,  Video 1: Mode and others</HEAD2></STKY>

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
<HEAD2>Module 4, Lesson 3,  Video 2: Lab</HEAD2></STKY>

<EXRLIST id="M4L3V2.yml">

- typeName: multipleChoiceFind mode of a column.

- typeName: multipleChoiceFind quartiles.

</EXRLIST>

<STKY>
<HEAD2>Module 4, Lesson 4,  Video 1: Robustness</HEAD2></STKY>

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

</EXRLIST>

<STKY>
<HEAD2>Module 4, Lesson 4,  Video 2: Lab</HEAD2></STKY>

<EXRLIST id="M4L4V2.yml">

- typeName: multipleChoiceCompute 10% trimmed mean.

- typeName: multipleChoiceCompute difference of mean and median.

</EXRLIST>

<STKY>
<HEAD2>Module 4, Lesson 5 ,  Video 1: Review</HEAD2></STKY>
<STKY><HEAD2>Module 4, Lesson 5 ,  Video 2: Review</HEAD2></STKY>



<STKY><HEAD1>Module 5: Dispersion</HEAD1></STKY>

<STKY><HEAD2>Module 5, Lesson 1,  Video 1: The concept</HEAD2></STKY>

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

<EXRLIST id="M5L1V2.yml">
- typeName: multipleChoiceCompute range of the column.

- typeName: multipleChoiceIf the range of some number is 56,  and a new number is
added,  then how will it change?

</EXRLIST>

<STKY>
<HEAD2>Module 5, Lesson 2,  Video 1: Variance and standard deviation</HEAD2></STKY>
Mention the alternative formula.

<EXRLIST id="M5L2V1.yml">
- typeName: multipleChoiceFind the variance and standard deviation of these
numbers.

- typeName: multipleChoiceIf the sum of squares of some numbers is 100,  and the mean
is 5,  then find the standard deviation.

- typeName: multipleChoiceIf the mean and variance of 10 numbers are,  respectively,  10
and 45,  and a new
value 7 is introduced,  what is the new variance?

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
<HEAD2>Module 5, Lesson 2,  Video 2: Lab</HEAD2></STKY>

<EXRLIST id="M5L2V2.yml">

- typeName: multipleChoiceCompute using Excel.

- typeName: multipleChoiceCompute for multiple columns simultaneously.

- typeName: multipleChoiceAdd one outlier and see the effect.

</EXRLIST>

<STKY>
<HEAD2>Module 5, Lesson 3,  Video 1: Mean absolute deviation</HEAD2></STKY>

<EXRLIST id="M5L3V1.yml">

- typeName: multipleChoiceFind MAD for these numbers.

- typeName: multipleChoiceIf the median is ... and MAD is ...,  then find the new MAD
when a new value 7 is introduced.

</EXRLIST>

<STKY>
<HEAD2>Module 5, Lesson 3,  Video 2: Lab</HEAD2></STKY>

<EXRLIST id="M5L3V2.yml">
- typeName: multipleChoiceCompute using Excel.

- typeName: multipleChoiceCompute for multiple columns simultaneously.

- typeName: multipleChoiceAdd one outlier and see the effect.


</EXRLIST>

<STKY>
<HEAD2>Module 5, Lesson 4,  Video 1: Semi-interquartile range and boxplot</HEAD2></STKY>

<EXRLIST id="M5L4V1.yml">
- typeName: multipleChoiceShow box plot and ask to interpret.

</EXRLIST>

<STKY>
<HEAD2>Module 5, Lesson 4,  Video 2: Lab</HEAD2></STKY>

<EXRLIST id="M5L4V2.yml">
- typeName: multipleChoiceCompute semi-interquartile range for the data.

- typeName: multipleChoiceMake box plots.

- typeName: multipleChoiceCompare box plots.

- typeName: multipleChoiceCompute trimmed variance.


</EXRLIST>

<STKY>
<HEAD2>Module 5, Lesson 5 ,  Video 1: Review</HEAD2></STKY>
<STKY><HEAD2>Module 5, Lesson 5 ,  Video 2: Review</HEAD2></STKY>


<STKY><HEAD1>Module 6: Association etc</HEAD1></STKY>

<STKY><HEAD2>Module 6, Lesson 1,  Video 1: Bivariate data,  The concept via plots</HEAD2></STKY>

<EXRLIST id="M6L1V1.yml">

- typeName: multipleChoiceShow plots and ask for pattern.

- typeName: multipleChoiceTight and loose patterns.

- typeName: multipleChoiceNonlinear pattern. Ask to describe like "first decreasing,  then increasing."

</EXRLIST>

<STKY>
<HEAD2>Module 6, Lesson 1,  Video 2: (Rank) correlation</HEAD2></STKY>

<EXRLIST id="M6L1V2.yml">

- typeName: multipleChoiceCompute correlation.

- typeName: multipleChoiceCompute rank correlation.

- typeName: multipleChoiceCreate data set with correlation 1.

- typeName: multipleChoiceAnscombe.

</EXRLIST>
<HEAD2>Module 6, Lesson 2,  Video 1: Contingency table measures
(part 1)</HEAD2>
<COMMENT>https://en.wikipedia.org/wiki/Contingency_table</COMMENT>
 Odds ratio
 Phi coefficient
 Cramer's V and the contingency coefficient C

<EXRLIST id="M6L2V1.yml">

- typeName: multipleChoiceCompute by hand
- typeName: multipleChoiceCompute by hand
- typeName: multipleChoiceCompute by hand
- typeName: multipleChoiceCompute by hand

- typeName: multipleChoiceInterpret

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

- typeName: multipleChoiceCompute by hand
- typeName: multipleChoiceCompute by hand
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
 two-part1: ("<B>" "</B>")
 two-part2: ("<V>" "</V>")
End:
</COMMENT>
</NOTE>@}


