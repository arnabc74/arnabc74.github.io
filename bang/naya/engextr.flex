import java.util.*;
%%

%state ENG, TAG

%implements Common
%class EngExtr
%type Object
%standalone
%line
%column

%{
boolean dotsDone = false;
%}

%eofval{
  return null;
%eofval}

%yylexthrow BadInputException


%%
<YYINITIAL> {
  "@{" {yybegin(ENG);}
  \n {System.out.println();}
  "<" {yybegin(TAG); System.out.print("<");}
  " " {System.out.print(" ");}
  . {if(!dotsDone) {System.out.print(" ... "); dotsDone = true;}}
}

<ENG>{
  "@}" {yybegin(YYINITIAL); dotsDone = false;}
  .|\n {System.out.print(yytext());}
}

<TAG>{
  ">" {System.out.print(">");yybegin(YYINITIAL); dotsDone = false;}
  .|\n {System.out.print(yytext());}
}

