import java_cup.runtime.*;

/* Preliminaries to set up and use the scanner.  */
init with {: scanner.init();              :};
scan with {: return scanner.next_token(); :};

/* Terminals (tokens returned by the scanner). */
terminal           SEMI, PLUS, MINUS, TIMES, DIVIDE, MOD;
terminal           UMINUS, LPAREN, RPAREN;
terminal Integer   NUMBER;

/* Non-terminals */
non terminal            expr_list, expr_part;
non terminal Integer    expr;

/* Precedences */
precedence left PLUS, MINUS;
precedence left TIMES, DIVIDE, MOD;
precedence left UMINUS;

/* The grammar */
expr_list ::= expr_list expr_part 
	      | 
              expr_part;

expr_part ::= expr:e 
	      {: System.out.println("= " + e); :} 
              SEMI              
	      ;

expr      ::= expr:e1 PLUS expr:e2    
	      {: RESULT = new Integer(e1.intValue() + e2.intValue()); :} 
	      | 
              expr:e1 MINUS expr:e2    
              {: RESULT = new Integer(e1.intValue() - e2.intValue()); :} 
	      | 
              expr:e1 TIMES expr:e2 
	      {: RESULT = new Integer(e1.intValue() * e2.intValue()); :} 
	      | 
              expr:e1 DIVIDE expr:e2 
	      {: RESULT = new Integer(e1.intValue() / e2.intValue()); :} 
	      | 
              expr:e1 MOD expr:e2 
	      {: RESULT = new Integer(e1.intValue() % e2.intValue()); :} 
	      | 
              NUMBER:n                 
	      {: RESULT = n; :} 
	      | 
              MINUS expr:e             
	      {: RESULT = new Integer(0 - e.intValue()); :} 
	      %prec UMINUS
	      | 
              LPAREN expr:e RPAREN     
	      {: RESULT = e; :} 
	      ;
