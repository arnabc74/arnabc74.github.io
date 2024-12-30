import java_cup.runtime.*;
%%

%class EmbedLex
%cup


NUM = [0-9]+ ("." [0-9]+)?
NL  = \n | \r | \r\n

%%


{NUM}  { return new Symbol(sym.NUMBER,""); }

