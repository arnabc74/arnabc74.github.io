%%

%class DictLex
%type Position
%standalone

%{
   int count;
%}

%state SKIP

%eofval{
  return null;
%eofval}

%%
<YYINITIAL> {
  "@{" {count += yylength(); yybegin(SKIP);}
  [a-zA-Z][a-zA-Z+~),(\\.]*[a-zA-Z] {
        int oldCount = count;
        count += yylength();
        System.out.println(yytext()+" "+oldCount+" "+count);
        return new Position(yytext(),oldCount, count);
  }
  \<[^\>]+> {count += yylength();}
  .|\n {count += yylength();}
}

<SKIP> {
  "@}" {count += yylength(); yybegin(YYINITIAL);}
  .|\n    {count += yylength();}
}
