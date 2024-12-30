import java.util.*;
%%

%class ImLex
%type Object
%unicode

%{
   int comLev;
   String currHead="No head yet!";
   TreeSet<String> demand=new TreeSet<String>(), 
           supply=new TreeSet<String>();
   Hashtable<String,String> map = new Hashtable<String,String>();

   String fileName;
   void setFileName(String fn) {
        fileName = fn;
   }
%}

%eofval{
  Iterator<String> i;
  System.out.println("Demand without supply:");
  int count = 0;
  System.out.println("---------------------");
  i = demand.iterator();
  while(i.hasNext()) {
     String name = i.next();
     if(!supply.contains(name)) {
       String where = map.get(name);
       count++;
       System.out.println(count+"> [["+fileName+"::"+name+"]] ("+where+")");
     }
  }

  System.out.println("\nSupply without demand:");
  count = 0;
  System.out.println("---------------------");
  i = supply.iterator();
  while(i.hasNext()) {
     String name = i.next();
     if(!demand.contains(name)) {
       String where = map.get(name);
       count++;
       System.out.println(count+"> "+name+" ("+where+")");
     }
  }
  return null;
%eofval}


%%
"<HEAD"[0-9]">".+"</HEAD"[0-9]">" {
   if(comLev==0) {
     currHead = yytext();
   }
}
"<COMMENT" {comLev++;}
"</COMMENT" {comLev--;}
"<IMREF>"[^<]+ {
    String name = yytext().substring(7);
    System.err.println((comLev>0?"*":"")+name);
    if(comLev==0) {
      demand.add(name);
      map.put(name,currHead);
    }
}

"lab=\""[-a-zA-Z0-9.]+\.[-a-zA-Z0-9.]+ {
    String name = yytext().substring(5);
    System.err.println("\t"+(comLev>0?"*":"")+name);
    if(comLev==0) {
      supply.add(name);
      //System.err.println("name = ["+name+"], currHead = ["+currHead+"]");
      map.put(name,currHead);
    }
}
.|\n {}
