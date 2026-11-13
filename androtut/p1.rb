@{<NOTE prev="index" next="p2">
<TITLE>Android programming</TITLE>

<HEAD1>An overview of the entire process</HEAD1>

Our aim is to create an app, that should show up as Hello World
on the mobile screen, and when tapped will display the message
"Hello World" on screen. Later we shall learn how to add more
interesting thing to it.

Here are the main steps:
<OL><LI>The first step is writing the program. There
 is nothing unexpected
 in this. What <I>is</I> 
 unexpected, however, is that here we have to create at least two text files, a java file containing the
 main program and an xml file
 containing certain overall information about the program. 
</LI>
<LI>The second step is to compile the program, i.e., converting
 our source code to a binary format suitable for Android.
</LI>
<LI>The third step is to sign the app. Yes, you have to sign it,
even if the app is intended for just your own phone.</LI>
<LI>The final step is to download the code into the mobile and install it. Of course, we may
 consider the downloading and the
 installing as different phases. But we shall use a single command that will do both the things in one go.</LI></OL>

<HEAD2>The tools that you will need</HEAD2>

Before starting writing our code, let me give you a few more details regarding the last two phases. The compilation turns
 your source files into binary files suitable for your mobile. Clearly, this binary depends on the version of Android running
 in your mobile. So you need have  in your laptop some build tools specific to the Andorid running in your mobile. 

In the third phase the mobile needs to be put into a programmable mode which is called "debug mode". 

We shall start by making sure that we have all the build-tools ready. The build-tools are of two
 flavours: those which depend on the Android version running on your mobile, and those that don't.
 First, the ones that don't. They are jdk, zip and latest-commandline-tools. The versions of
 these are not crucial, but good to have recent versions. The first two are already familiar.  
 The last one you can get from here. 

Next for the platform specific tools. Before obtaining them you need to know the Android version in your phone. Then translate
 that version to another number called the build number using the mapping in this page. Google has made the next step tricky.
The platform specific tools are in two zip files at public URLs. But Google keeps these URLs secret. In fact, it stores these
URLs in a publicly available xml file, whose name is not public. This name is hardcoded in an indirect way in one of the
 platform independent files. However, there is a script called the sdkmanager which can supposedly be used to download both
 these zip files without having to explicitly specify the URLs. But this script is buggy. It claims
 to be deprecated, while
 its suggested relacment also claims itself to be deprecated. However, a little patient querying will cause ChatGPT to yield
 the correct URLs, and you can download them. 

Place them in their proper places, and you are all set. 
</NOTE>@}
