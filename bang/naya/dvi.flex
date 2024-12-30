import java.util.*;
%%

%class DviLex
%type Object
%standalone

%{

   String currPage;
   Hashtable<String,Vector<String>> demand = new Hashtable<String,Vector<String>>();
   Hashtable<String,String> supply = new Hashtable<String,String>();

   void addDemand(String fig) {
     System.out.print("["+fig+"]");
     if(demand.containsKey(fig)) {
       demand.get(fig).add(currPage);
     }
     else {
       Vector<String> tmp = new Vector<String>();
       tmp.add(currPage);
       demand.put(fig,tmp);
     }
     if(!demand.containsKey(fig)) System.out.println("x");
   }
       
%}

%eofval{

  Enumeration<String> k = supply.keys();
  while(k.hasMoreElements()) {
    String what = k.nextElement();
    String source = supply.get(what);
    if(!demand.containsKey(what)) {
      System.err.println(what+" on page "+source+
                         " is never demanded!!!");
      continue;
    }

    Vector<String> lst = demand.get(what);
    if(lst==null) {
      System.err.println(what+" on page "+source+
                         " is demanded by none.");
      continue;
    }
    if(!lst.contains(source)) {
      System.err.print(what+" on page "+source+
                         " is demanded on ");
      for(String where : lst)
        System.err.print(where+", ");
      
      System.err.println();
    }
  }

  return null;
%eofval}


%%
"PAGE:"[0-9]+ {
     currPage = yytext().substring(5);
   }

"Fig"[ \n][0-9]+ {addDemand(yytext().substring(4));}
"Fig_"[0-9]+ {supply.put(yytext().substring(4),currPage);}

.|\n {}
