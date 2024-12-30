/*
[Update:[Thu Oct 26 IST 2017]]
**Tue Oct 24 2017
Started
**Thu Oct 26 2017
Now can handle <M> environments broken over lines.
Also <../> tags now count as a single tukro.
*/
import java.util.*;

%%

%class TukroLex

%type PosBag
%standalone
%column

%{
PosBag bag = new PosBag();
%}

%eofval{
return bag;
%eofval}

%%
"</M>" {bag.clear();bag.add(0);}
"<M>"~"</M>" {bag.add(yycolumn);}
"</E>" {bag.clear();bag.add(0);}
"<E>"~"</E>" {bag.add(yycolumn);}
"<"IMREF">"[a-z]+"</"IMREF">" {bag.add(yycolumn);}
[a-zA-Z+,~.]+ {bag.add(yycolumn);}
"<"[^>]+"/>" {bag.add(yycolumn);}
. {}