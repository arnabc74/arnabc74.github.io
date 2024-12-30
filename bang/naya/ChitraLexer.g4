//[Update:[Sun Oct 21 IST 2018]]
/*History:
**Fri Oct 05 2018
First working version
**Sat Oct 06 2018
  Added ::
    **Sun Oct 21 2018
Added the shift feature.

 */

lexer grammar ChitraLexer;

OPEN: '{c{\n' ->  mode(CHITRA);
DONTCARE: ~[\n]*'\n';

mode CHITRA;

LBRA: '[';
RBRA: ']';
EQ: '=';
PLUS: '+';
TOP: 't';
BOT: 'b';
COL2: '::';
LAB: 'l';
SCL: 's';
WDTH: 'w' ;
NUM: [0-9.]+;
TEXT: [a-z.A-Z0-9]+;
WS: [\r\n \t]+ -> skip;
CLOSE: '}}' -> mode(DEFAULT_MODE);
