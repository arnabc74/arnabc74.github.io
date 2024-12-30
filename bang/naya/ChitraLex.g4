lexer grammar ChitraLex;

OPEN: '{c{' -> mode(CHITRA);
DONTCARE: ^[^\n]*\n;

mode CHITRA;

LBRA: '[';
RBRA: ']';
COMMA: ',';
EQ: '=';
TOP: 't';
BOT: 'b';

ID: [lsw] ;
NUM: [0-9.]+;
TEXT: [a-z.A-Z0-9]+;
WS: [\r\n \t]+ -> skip;
CLOSE: '}}' -> mode(DEFAULT_MODE);
