import java.util.*;

%%


%class PairChecker

%state ERRSTATE
%standalone


%{
  class StringPos {
    String str; int pos; 
    StringPos(String s, int p) {
      str = s;
      pos = p;
    }
  }
  int where;
  Stack<StringPos> stk = new Stack<StringPos>();

  boolean matches(String a, String b) {
    return 
      (a.equals("(") && b.equals(")")) ||
      (a.equals("{") && b.equals("}")) ||
      (a.equals("[") && b.equals("]"));
  }
%}

%eofval{
   return 0;
%eofval}


%%
<YYINITIAL> {
  "("|"{"|"[" {stk.push(new StringPos(yytext(),where)); where++;}
  ")"|"}"|"]" {StringPos found = stk.pop(); where++;
             if(!matches(found.str,yytext())) {
                System.err.println("Error between "+found.str+"@"+found.pos+" and "+yytext()+"@"+where);
                yybegin(ERRSTATE);
             }
            }
  . {where++;}
}

<ERRSTATE> {
. {} 
}