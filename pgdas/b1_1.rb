@{<NOTE>
<HEAD1>Module 1: Data types</HEAD1>

<HEAD2>Lesson 1, Video 1: Data--what and why</HEAD2>
This is a lecture on basic statistics. Statistics is the science
of learning from experience, and as such is the most fundamental 
tool behind human existence. Whether we are trying to predict 
tomorrow's weather, or the third wave of COVID, we are using
statistics. Most often we learn from experience even without
knowing it.  When we do something unconsciously, out of reflex,
without really thinking about, we tend to lose
efficiency. Take high jumping, for instance. Most of us can jump
over a fence. We hardly need to think about it. Our muscles
somehow move on their own and we end up on the other side. But if
one considers the process  consciously, one can see many subtle
ways of improvement, and the sum total of all those may lead to a
rather surprising improvement in efficiency!

Well, the same is true about learning from experience. 
Statistics is a conscious and careful way of going about
this. Let's start by carefully looking at the word
"experience". Let's take a simple example. Suppose we want to tap
the experience of our friends about some movie. If ask them
about what they think about it, we shall get responses like
"Good", "so-so", "Ok", "Hey you must watch it"! Yet another may
give you a long description about what she liked the
most. Informative as such informal comments are, they are
difficult to summarise efficently. Webpages like
Roten Tomato does the same thing, but in a more systematic
way. They provide a 5-star rating, which provides a common
denominator and provides a better scaling than mere "Good" and
"so-so", because one person's "Good" may very well be another
person's "so-so". When we collect experinence in such a systematic
way we get <B>data</B>. And this is the first point where
statistics differs from the common man's way of learning from
experience.  Statistics systematically collects and  stores the experience in a
cut-and-dried fashion before proceeding to glean information from
it. Data is  that cut-and-dried experience. 

The term data conjures up the vision of numbers...zillions of
figures stored in computer disks to be processed by gigantic
supercomputers. Well, while it is true to some extent, data need not
always be numbers. They may take other forms. In order to learn
statistics effectively, it is imperative that we know what data
are. 

And yes, "data" is a plural word. Its singular "datum" is rarely
used. A common mistake found in many reports is to say things
like "This data says ...". It should be either "These data say
..." or "This data set says ...". But knowing the word "data"
grammatically is not enough. We need to take a deeper look, and
that's what we are about to do next.

<EXR>
Which of the following is the best description of  "statistics"
as a subject?
<OL>
<LI>Science of learning from experience.</LI>
<LI>Number crunching.</LI>
<LI>Prediction of future</LI>
<LI>Worse than damned lie!</LI>
</OL>
</EXR>

<EXR>
We want to collect first hand data about villagers' condition after a
natural calamity. Which is the best way to go about it?
<OL>
<LI>Chat with the villagers informally</LI>
<LI>Prepare a list of questions before visiting the village, and
present that  list to each villager</LI>
<LI>Same as above but with questions prepared after an informal
chat with the villagers</LI>
<LI>Ask only the head of the village.</LI>
</OL>
</EXR>

<EXR>
An NGO wants to assess the effect of a health benefit scheme
introduced by the government. 
For this some villagers are chosen who has enrolled for the
scheme, and some others who have not. Then data are collected
about there monthly health related expenditure. This is an
example of 
<OL>
<LI>a controlled experiment</LI>
<LI>a designed experiment</LI>
<LI>observational study</LI>
<LI>none of the above.</LI>
</OL>
</EXR>

<EXR>
A student wants to judge if joining a coaching class is effective
for admission to a particular institute. Which of the following
is the more stronger evidence of the coaching class?
<OL>
<LI>out of all students admitted to the institute, 95% had gone
to that coaching class.</LI>
<LI>out of all students going to the coaching class, 95% got
admission to the institute.</LI>
</OL>
</EXR>

<EXR>All farmers were requested to write to the minister about
their daily expenses. A report was constructed based on the
responses obtained. Is this a reliable data set? </EXR>

<EXR>
Health conditions have deteriorated over the last 10 years. 1000
people died to cancer 10 years ago. This year the figure is 2000.
</EXR>

<HEAD2>Lesson 1, Video 2: Case, variable and rectangular structure</HEAD2>

All data are results of measurements. The measurement may be made
by a scientific instrument like a measuring tape or a therometer
or telescope, or simply by asking a verbal question, or merely by
inspection. Of course, judging a person's gender by merely looking
at the person hardly deserves to be called a measurement. So
statisticians prefer to use the term <B>variable</B>. The result
of each measurement gives a single outcome called
the <B>value</B>. 
<P/>
When we make a measurement, we are are measuring <I>something</I>
or <I>somebody</I>. That something or somebody is called
a <B>case</B>. When you are recording a patient's body
temperature, the patient is a case, "temeperature"  is the
variable, and the number itself is the value of that variable for
that case. Typically, a statical data set consists of a number of
variables and a number of cases. The corresponding values are
laid out in a rectangular structure, where the rows denote the
cases and the columns denote the variables. All standard
statistical softwares excpect the data to be in this rectangular format.

<P/>
Sometimes beginners fail to create this rectangular format. For
this, it helps to imagine a <B>report sheet</B> with fields like
"temperature" "patient's name" to be filled in. Everytime you
have a occasion to fill up a copy of this report sheet, you get a
case. Each field in the sheet is a variable, and everything you
write while filling it up is a value.

<TODO>No information is row/col heads or table headings.</TODO>

<EXR>We are collecting household level data from 5 different
villages. From each  villages  10 random  households are selected.
For each selected household we collect data on monthly
income, main source of income, and the number of people. If the
resulting table has <M>n</M> rows and <M>p</M> columns, then 
<OL>
<LI><M>n=10</M> and <M>p=4</M></LI>
<LI><M>n=50</M> and <M>p=3</M></LI>
<LI><M>n=50</M> and <M>p=4</M></LI>
<LI><M>n=10</M> and <M>p=3</M></LI>
</OL>
</EXR>

<EXR>Consider the following data set. What is the value of
income in the 3rd case?</EXR>

<EXR>
The following data set has one suspicious case. Which case?
</EXR>

<EXR>Identify the variable which is derived from the other
variables.</EXR>


<EXR>
We have 2, 4 and 3 plots in the villages Abid, Belkhas and
Chimpani. The following three tables provide data about
these. Cast it as a single table.
</EXR>

<HEAD2>Lesson 2, Video 1: Continuous, discrete, counting and categorical</HEAD2>

Different variables 
 may be of different types. Some may be numbers, others may be
 like names. All values belonging to the same variable must be of
 the same type.  Thus, if we have a variable like a person's
 height, then either all of the values are in numbers (e.g., in
 cm) or in words  like "tall", "medium" and "short". But not a
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
children, some have 3, while others may have 4 or none. Can a
family have 2.5 children? No! Thus, here the
values in-between are not valid. The possible values stand apart
with some gaps between them. 
 This is a <B>counting</B> variable. Examples of other variables of
this type include <B>count of trees in an area</B>, 
<B>number of COVID infections in a district</B>. 

<P/>

A different type of variable
is <B>gender</B>, which typically takes
three values <B>Male</B>, <B>Female</B> and <B>Others</B>.
Unlike the counting variables, here we know exactly all the
possible values. This is what is called a <B>categorical</B>
variable. 

<P/>


A fourth type of variable may be called the <B>interval</B>
type. Examples are like income group or age group. These are
basically low resolution versions of continuous variables. The
range of values of a continuous variable is split into a number
of adjacent intervals, and only the interval in which a number
falls is recorded. Like for age, we could have the age groups
20--40, 45--60, above 60. Here we need to be careful about the
boundary values. Usually, names are associated with each
interval, e.g., Young, Middleage and Senior. Similarly, for LIG,
MIG and HIG for income. 

<P/>


A fifth type is called a <B>Likert scale</B> variable.

<P/>
<B>Numerical measurements</B> constitute the most important type
of variable. Examples include temperature, blood pressure, area
of plots, yield of plots. 

<EXR>
In a financial data set the annual turnover of small businesses
are expressed as slabs like 1lakh to 2lakhs, 2 lakhs to 3lakhs,
etc. In this data set annual turnover is 
<OL>
<LI>an interval variable</LI>
<LI>a categorical variable</LI>
<LI>a Likert-type variable </LI>
<LI>an indentifier variable</LI>
</OL>
</EXR>

<EXR>
A data set has a variable "gender" that encodes male as 1, female
as 2 and others as 3. This variable is an example of a 
<OL>
<LI>measurement variable</LI>
<LI>categorical variable</LI>
<LI>a Likert-type variable</LI>
<LI>an identifier variable</LI>
</OL>
</EXR>

<EXR>
A variable which gives the number of road accidents in a
particular month  at a particula crossing is 
<OL>
<LI>a counting variable</LI>
<LI>a categorical variable</LI>
<LI>a Likert-type variable</LI>
<LI>an identifier variable</LI>
</OL>
</EXR>

<EXR>
If we record the height of a person to the nearest inch then the
variable is an example of 
<OL>
<LI>a counting variable</LI>
<LI>a categorical variable</LI>
<LI>a Likert-type variable</LI>
<LI>a measurement variable</LI>
</OL>
</EXR>

<EXR>The number of new occureences of COVID in each district of a
state is recorded over a month. Then 
<OL>
<LI>district is an identifier variable, covid is a counting variable</LI>
<LI>district is a categorical variable, covid is a Likert-type variable</LI>
<LI>district is a categorical variable, covid is a measurement variable</LI>
<LI>district is an identifier variable, covid is an interval variable</LI>
</OL>
</EXR>

<HEAD2>Lesson 2, Video 2: Continuous, discrete, counting and categorical</HEAD2>
One might easily get confsed with so many different types of
variables! To ease the pain, statiticians have reduced the number
to just four
<UL>
<LI>COntinuous:
<UL>
<LI>Difference type</LI>
<LI>Ratio type</LI>
</UL>
</LI>
<LI>Discrete
<UL>
<LI><B>Nominal</B></LI>
<LI><B>Ordinal</B></LI>
<LI><B>Counting</B></LI>
</UL>
</LI>
</UL>
we split all such measurements into two types: <B>continuous</B>
and <B>discrete</B>. Continuous means a measurement that takes
values in a continuum, a range of values without any gap. Like a
measuring people's heights. When you measure heights of a bunch
of people you will get a few numbers like these. While these are
only some distinct points along the number line, the points
between them are also valid values. It is not that people either
have this height or they jump to that height without ever taking
the values in-between. All possible human heights form a
continuum, a range without any gap. So height is a continuous
variable. 

<P/>


Some variables are clearly not continuous, like gender. However,
for some others the distinction is less prominent. Take for
example area of agricultural plots. One would typically measure
it up to the nearest square metre. So the values are all
integers. While area is definitely continuous, the "reported
area" is obviously like a counting variable! However, here we
still consider it continuous. This decision is based on two
considerations: 
<UL>
<LI>First, "area" itself is continuous.</LI>
<LI>Second, one square metre is much too small compared to the
total area.</LI>
</UL>
The same idea applies to any measurement. All measurements are
made by finite precision instruments, and hence can take only
finitely many values. Yet we consider the measurement to be
continuous if the resolution is sufficiently high. 

<EXR>
A counting variable is 
<OL>
<LI>a discrete variable</LI>
<LI>a difference-type continuous variable</LI>
<LI>a ratio-type continuous variable</LI>
<LI>none of these</LI>
</OL>
</EXR>

<EXR>
Temperature is a 
<OL>
<LI>a discrete variable</LI>
<LI>a difference-type continuous variable</LI>
<LI>a ratio-type continuous variable</LI>
<LI>none of these</LI>
</OL>
</EXR>


<EXR>
Temperature is a 
<OL>
<LI>a discrete variable</LI>
<LI>a difference-type continuous variable</LI>
<LI>a ratio-type continuous variable</LI>
<LI>none of these</LI>
</OL>
</EXR>

<EXR>
If gender is encoded as 1 for male, 2 for female and 3 for
others, then it is  
<OL>
<LI>a nominal variable</LI>
<LI>an ordinal variable</LI>
<LI>a counting variable</LI>
<LI>a difference-type continuous variable</LI>
</OL>
</EXR>

<EXR>
PAN of a person  is an example of 
<OL>
<LI>a nominal variable</LI>
<LI>an ordinal variable</LI>
<LI>a ratio-type continuous variable</LI>
<LI>none of these</LI>
</OL>
</EXR>


<HEAD2>Lesson 3, Video 1: Univariate and multivariate</HEAD2>

<EXR>
For 50 households data have been collected on the number of
members. The resulting data set has two columns, a serial number
and the number of members. This data set is 
<OL>
<LI>univariate</LI>
<LI>bivariate</LI>
<LI>multivariate</LI>
<LI>neither</LI>
</OL>
</EXR>

<EXR>
For 50 rural  and 50 semi-urban households we have collected the
monthly income and expenditure data. 
The aim is to study the effect of the background on the
income-expenditre relation. The data set here is
<OL>
<LI>univariate</LI>
<LI>bivariate</LI>
<LI>trivariate</LI>
<LI>none of these</LI>
</OL>
</EXR>

<EXR>
We have collected data on the severrity of road accidents (as
Likert-type variable) along with the exact time of occurence
along with type of traffic (rush or slack). This is a 
<OL>
<LI>univariate data set</LI>
<LI>bivariate data set</LI>
<LI>trivariate data set</LI>
<LI>none of these</LI>
</OL>
</EXR>

<EXR>
For each person registering for a government health benfit
scheme, we have collected the person's name, phone number, age,
income, type of benefit (individual/family). Is this a univariate
data set:
<OL>
<LI>Yes</LI>
<LI>No</LI>
</OL>
</EXR>

<EXR>
For each agricultural  plots in a village we record the area,
crop sown, and income per season. The resulting data set is
<OL>
<LI>univariate</LI>
<LI>multivariate</LI>
</OL>
</EXR>

<HEAD2>Lesson 3, Video 2: IID, time series and spatial</HEAD2>

<HEAD2>Lesson 4, Video 1: File formats: Excel</HEAD2>

<HEAD2>Lesson 4, Video 2: File formats: CSV</HEAD2>

In olden days people used to store data on paper. Now computer
disks provide the main storage. Data sets are stored as files,
be it in the hard drive of a computer or removable devices like a
USB drive. A file in a computer is just a collection of 0's and
1's. When we store data  in a file, they first need to be
converted into 0's and 1's. When we read the data back from the
file, the 0's and 1's are converted back into the original
form. This two-way conversion process is mostly done
automatically without our intervention. Now, this process may be
done in different ways, and each such way is called a <B>file
format</B>. 
There are quite a few file formats that are used in
statistics. Some are free, while others are propreitary and
require paid softwares to write or read. Some formats are good
for sending data files over the email, while some formats are
optimised to hold a large amount of data in a small space. 


<P/>

In this course we shall use the MS Excel software, which
understands various file formats. We shall discuss only two of
them. Every file format has its specific file name extension. The
first format has the extension <B>.xlsx</B>. This is the default
file format used by MS Excel. While this is adequate for most
purposes, there are a couple of drawbacks. First, you need to
have MS Excel in order to view the data in the file, or even to
make minor modifications. Second, the file may be easily
corrupted if you send it by email. Third, in case you want to
process the data by some other software, this format may not be
recognised by that software. So it is a good idea to know about a
universally understood format, called
the <B>comma-separated-values</B> format, with file
extension <B>.csv</B>. In this format each case is represented by
a line and the values in each line are separated by a comma. This
format is particularly useful when a value may have a space in
it, e.g. <B>West Bengal</B> or <B>Ram Singh</B>. Sometimes a
value may be missing. Such missing values may be easily marked by
two consecutive commas. 
<P/>
On most computers a file with <B>.csv</B> format is automatically
opened in MS Excel, if the software in installed. However, the
CSV format has one downside. It cannot hold anything other than
a single data table, while the XLSX format can hold multiple
tables, as well as graphs and reports.

<HEAD2>Lesson 5 (review), Video 1</HEAD2>
<HEAD2>Lesson 5 (review), Video 2</HEAD2>
<COMMENT>
Local Variables:
 two-part1: ("<B>" "</B>")
 two-part2: ("<V>" "</V>")
End:
</COMMENT>
</NOTE>@}
