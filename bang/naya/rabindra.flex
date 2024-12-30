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
  "clm1" {yybegin(GRAB);}
  .|\n {}
}

<GRAB> {
  \"[-a-z]+\.html\" {count += yylength(); yybegin(YYINITIAL);}
  .|\n    {count += yylength();}
}
