%%

%class TagLex
%type Object
%standalone

%{
  TagEditor te;
  public void setEdtr(TagEditor t) {
    te = t;
  }
%}

%eofval{
  return null;
%eofval}


%%
"<HEAD"[123]">" {te.handleTxt(yytext()); te.startSpl("","magenta");}
"</HEAD"[123]">" {te.endSpl("");te.handleTxt(yytext());}
"@{<M>" {te.startSpl(yytext(),"red");}
"</M>@}" {te.endSpl(yytext());}
"@{<D>" {te.startSpl(yytext(),"red");}
"</D>@}" {te.endSpl(yytext());}
"@{" {te.startSpl(yytext(),"blue");}
"@}" {te.endSpl(yytext());}
"@{{\\rm" {te.startSpl(yytext(),"blue");}
"}@}" {te.endSpl(yytext());}
"@{<E>" {te.startSpl(yytext(),"blue");}
"</E>@}" {te.endSpl(yytext());}
\r {}
.|\n {te.handleTxt(yytext());}
