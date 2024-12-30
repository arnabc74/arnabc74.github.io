%%

%state TEX1, TEX2

%implements Common
%class BengLex
%type Symbol
%standalone
%line
%column

%{
  int yylval;
  boolean start=true;

  void sh() {/*System.err.print(yytext());*/}
%}

%eofval{
  return null;
%eofval}

%yylexthrow BadInputException

ws1= [ \t]+
ws= [ \t]*



%%
<TEX1>{
  "@}" {yybegin(YYINITIAL); sh(); return new Symbol(EOT, yytext());}
  "@{" {throw new BadInputException(yytext(),yyline,yycolumn);}
  .|\n|\r {sh(); return new Symbol(SPL,yytext());}
}

<TEX2>{
  ">" {yybegin(YYINITIAL); sh(); return new Symbol(EOT, yytext());}
  [^>]+ {sh(); return new Symbol(SPL,"<"+yytext()+">");}
}

<YYINITIAL> {
\n\r {start = true; sh(); return new Symbol(NL, PUNCT, yytext());}
\r\n {start = true; sh(); return new Symbol(NL, PUNCT, yytext());}
\n|\r {start = true; sh(); return new Symbol(NL, PUNCT, yytext());}
"\\\\" {start = true;sh(); return new Symbol(NEWLINE, PUNCT, yytext());}
[ \t] {start = true;sh(); return new Symbol(WS, PUNCT, yytext());}
/*{ws1} {start = true;sh(); return new Symbol(WS, PUNCT, yytext());}
{ws}"\\"n{ws} {start = true;sh(); return new Symbol(NEWLINE, PUNCT, yytext());}
{ws}"\\"p{ws} {start = true;sh(); return new Symbol(NEWPARA, PUNCT, yytext());}*/
"," {start = true;sh(); return new Symbol(COMMA, PUNCT, yytext());}
"." {start = true;sh(); return new Symbol(DNARI, PUNCT, yytext());}
";" {start = true;sh(); return new Symbol(SEMICOLON, PUNCT, yytext());}
"-" {start = true;sh(); return new Symbol(HYPHEN, PUNCT, yytext());}
"-""-" {start = true;sh(); return new Symbol(DASH, PUNCT, yytext());}
"(" {start = true;sh(); return new Symbol(LPAR, PUNCT, yytext());}
")" {start = true;sh(); return new Symbol(RPAR, PUNCT, yytext());}
"?" {start = true;sh(); return new Symbol(QN, PUNCT, yytext());}
"!" {start = true;sh(); return new Symbol(EXCLAM, PUNCT, yytext());}
"`" {start = true;sh(); return new Symbol(LQUO, PUNCT, yytext());}
"'" {sh(); return new Symbol(RQUO, PUNCT, yytext());}


0 {sh(); return new Symbol(SHUNYA, NUM, yytext());}
1 {sh(); return new Symbol(EK, NUM, yytext());}
2 {sh(); return new Symbol(DUI, NUM, yytext());}
3 {sh(); return new Symbol(TIN, NUM, yytext());}
4 {sh(); return new Symbol(CHAR, NUM, yytext());}
5 {sh(); return new Symbol(PNACH, NUM, yytext());}
6 {sh(); return new Symbol(CHHAY, NUM, yytext());}
7 {sh(); return new Symbol(SAT, NUM, yytext());}
8 {sh(); return new Symbol(AT, NUM, yytext());}
9 {sh(); return new Symbol(NAY, NUM, yytext());}


"+" { start = false; sh(); return new Symbol(PLUS, yytext());}
"~" { start = false; sh(); return new Symbol(TILDE, yytext());}


a {start = false; sh(); return new Symbol(A, SWAR, yytext());}
o {start = false; sh(); return new Symbol(O, SWAR, yytext());}
  

aa {start = false; sh(); return new Symbol(AA, SWAR, yytext());}
A {start = false; sh(); return new Symbol(AA, SWAR, yytext());}
i {start = false; sh(); return new Symbol(I, SWAR , yytext());}
I {start = false; sh(); return new Symbol(II, SWAR, yytext());}
u {start = false; sh(); return new Symbol(U1, SWAR, yytext());}
U {start = false; sh(); return new Symbol(UU, SWAR, yytext());}
rri {start = false; sh(); return new Symbol(RRI, SWAR, yytext());}
e {start = false; sh(); return new Symbol(E, SWAR, yytext());}
"\\"oi {start = false; sh(); return new Symbol(OI, SWAR, yytext());}
O {start = false; sh(); return new Symbol(O, SWAR, yytext());}
"\\"ou {start = false; sh(); return new Symbol(OU, SWAR, yytext());}
yy {start = false; sh(); return new Symbol(AYA, SWAR, yytext());}

k {start = false; sh(); return new Symbol(K,  BYAN, yytext());}
kh {start = false; sh(); return new Symbol(KH,  BYAN, yytext());}
g {start = false; sh(); return new Symbol(G,  BYAN, yytext());}
gh {start = false; sh(); return new Symbol(GH, BYAN , yytext());}
ch {start = false; sh(); return new Symbol(CH,  BYAN, yytext());}
chh {start = false; sh(); return new Symbol(CHH,  BYAN, yytext());}
j {start = false; sh(); return new Symbol(J,  BYAN, yytext());}
jh {start = false; sh(); return new Symbol(JH,  BYAN, yytext());}
"\\"N {start = false; sh(); return new Symbol(ENA,  BYAN, yytext());}
T {start = false; sh(); return new Symbol(TT,  BYAN, yytext());}
Th {start = false; sh(); return new Symbol(TTH,  BYAN, yytext());}
D {start = false; sh(); return new Symbol(DD,  BYAN, yytext());}
Dh {start = false; sh(); return new Symbol(DDH,  BYAN, yytext());}
N {start = false; sh(); return new Symbol(NN,  BYAN, yytext());}
t {start = false; sh(); return new Symbol(T, BYAN , yytext());}
th {start = false; sh(); return new Symbol(TH,  BYAN, yytext());}
d {start = false; sh(); return new Symbol(D, BYAN , yytext());}
dh {start = false; sh(); return new Symbol(DH,  BYAN, yytext());}
n {start = false; sh(); return new Symbol(N,  BYAN, yytext());}
p {start = false; sh(); return new Symbol(P,  BYAN, yytext());}
f {start = false; sh(); return new Symbol(PH, BYAN , yytext());}
ph {start = false; sh(); return new Symbol(PH, BYAN , yytext());}
b {start = false; sh(); return new Symbol(B,  BYAN, yytext());}
w {start = false; sh(); return new Symbol(B,  BYAN, yytext());}
v {start = false; sh(); return new Symbol(BH, BYAN , yytext());}
bh {start = false; sh(); return new Symbol(BH, BYAN , yytext());}
m {start = false; sh(); return new Symbol(M, BYAN , yytext());}
r {start = false; sh(); return new Symbol(R, BYAN , yytext());}
l {start = false; sh(); return new Symbol(L, BYAN , yytext());}
sh {start = false; sh(); return new Symbol(SH, BYAN , yytext());}
S {start = false; sh(); return new Symbol(SS,  BYAN, yytext());}
s {start = false; sh(); return new Symbol(S,  BYAN, yytext());}
x {start = false; sh(); return new Symbol(X,  BYAN, yytext());}
kkh {start = false; sh(); return new Symbol(X,  BYAN, yytext());}
h {start = false; sh(); return new Symbol(H,  BYAN, yytext());}
"\\"ng {start = false; sh(); return new Symbol(UNGA,  BYAN, yytext());}
R {start = false; sh(); return new Symbol(DR,  BYAN, yytext());}
Rh {start = false; sh(); return new Symbol(DHR,  BYAN, yytext());}

y {
    if(start) {
      start = false; 
      sh(); return new Symbol(Y, BYAN, yytext());
    }
    else {
      start = false;  
      sh(); return new Symbol(YY,BYAN,yytext());
    }
  }
Y {
    if(start) {
      start = false; 
      sh(); return new Symbol(YY, BYAN, yytext());
    }
    else {
      start = false;  
      sh(); return new Symbol(Y,BYAN,yytext());
    }
}



"."n {start = false; sh(); return new Symbol(ANUSWAR, MISC, yytext());}
"."H {start = false; sh(); return new Symbol(BISARGA, MISC, yytext());}
"."h {start = false; sh(); return new Symbol(HAS, SWAR, yytext());}
"."t {start = false; sh(); return new Symbol(KHANDATA, BYAN, yytext());}
"("n")" {start = false; sh(); return new Symbol(CHANDRABINDU, CHANDRABINDU, yytext());}
","n {start = false; sh(); return new Symbol(CHANDRABINDU, CHANDRABINDU, yytext());}

"@{" {yybegin(TEX1); sh(); return new Symbol(SOT, yytext());}
"<" {yybegin(TEX2); sh(); return new Symbol(SOT, yytext());}

. {
   throw new BadInputException(yytext(),yyline,yycolumn);
  }      
}


