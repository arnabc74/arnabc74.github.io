import java.util.*;
%%

%state COMMENT, DRAMA
%class EDictLex
%standalone

%{
   TreeSet<String> wordList = new TreeSet<String>();

   Vector<String> sentence = new Vector<String>();

   Vector<String> skipList = new Vector<String>(
         new String[] {"of","to","in","at","on"}
   );
   
   void addWord(String word) {
     sentence.add(word);
     wordList.add(word.toLowerCase());
   }

   void dump() {
     System.out.print("@{<SENTENCE>");     
     for(String word: sentence) System.out.print((word.length()>1?" ":"")+word);
     System.out.println("\n</SENTENCE>@}\n\n<DICT>");     
     for(String word: wordList) 
        if(!skipList.contains(word)) System.out.println("nv "+word);
     System.out.println("</DICT>");     
     wordList.clear();sentence.clear();
   }   
%}


%%

<COMMENT> {
  . {}
  \n {yybegin(YYINITIAL);}
}

<YYINITIAL> {
^shuru$ {yybegin(DRAMA);}
}

<DRAMA> {
^# {yybegin(COMMENT);}
[a-zA-Z]+ {addWord(yytext());}
[.?!]'* {sentence.add(yytext());dump();}
^sheS$ {yybegin(YYINITIAL);}
.|\n {sentence.add(yytext());}
}
