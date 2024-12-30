/*[Update:[Fri Sep 23 IST 2016]]
**Sat Sep 17 2016
   First useable version.
**Fri Sep 23 2016
   Added title extraction.
*/
import java.util.regex.*;
%%


%state SKIP, LYRIC, NOTES

%class ScoreLex

%standalone
%unicode
%line
%column

%{
  boolean first=false, drama=false;
  int count=0;
  Pattern p = Pattern.compile("([_^a-gA-G,]+)[/0-9]*");
  String filter(String s) {
    Matcher m = p.matcher(s);
    if(m.find()) {
       return m.group(1);
    }
    System.err.println("Problem matching:["+s+"]");
    return null;
  }
%}

%eofval{
if(drama) System.out.println(")");  return 0;
%eofval}




%%
^w: {yybegin(LYRIC); drama=first = true;}
^[ ] { count++; yybegin(NOTES); first = true;}
^T:.+ {System.out.println("name = \""+yytext().substring(2)+"\"");}
^[^w] {yybegin(SKIP);}

<LYRIC> {
  [^ \n\r\t]+ {
    if(first) {
      first=false;
      System.out.print("lyric[["+count+"]] = c("); 
    }
    else {
      System.out.print(","); 
    } 
    System.out.print("'"+yytext()+"'");
  }
}

<NOTES> {
  ")"|"(" {}
  z[0-9] {}
  [^ \n\r\t|:]+ {
    if(first) {
      drama=true;
      first=false;
      System.out.print("notes[["+count+"]] = c("); 
    }
    else {
      System.out.print(","); 
    } 
    System.out.print("'"+filter(yytext())+"'");
  }
}

<SKIP> {
.|\n {}
}

\n {if(drama) {System.out.println(")"); drama=false;}}
. {}