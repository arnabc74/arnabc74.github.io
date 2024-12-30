import java.util.*;
import java.util.regex.*;
%%

%class AccLex
%type int
%standalone

%{
   int comLev;
   String currHead="No head yet!";
   Pattern p = Pattern.compile("[A-Z][a-zA-Z0-9:_]+");
   TreeSet<String> demand=new TreeSet<String>(), 
           supply=new TreeSet<String>();
   Hashtable<String,String> map = new Hashtable<String,String>();
%}

%eofval{
  Iterator<String> i;
  Vector<String> trouble = new Vector<String>();
  i = demand.iterator();
  while(i.hasNext()) {
     String name = i.next();
     if(!supply.contains(name)) trouble.add(name);
  }    
  if(trouble.size()>0) {
    System.out.println("Demand without supply:");
    System.out.println("---------------------");
    for(String n : trouble) System.out.println(n);
    System.out.println("---------------------");
      
    System.exit(1);
  }
  return 0;
%eofval}


%%
^account\ +[A-Z][a-zA-Z0-9:_]+ {
    Matcher m = p.matcher(yytext());
    m.find(0);
    String name = yytext().substring(m.start());
    supply.add(name);
}

^[\t ]+[A-Z][a-zA-Z0-9:_]+ {
    Matcher m = p.matcher(yytext());
    m.find(0);
    String name = yytext().substring(m.start());
    //System.err.println(name);
    demand.add(name);
}
.|\n {}
