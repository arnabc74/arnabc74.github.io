//[Update:[Tue Jun 13 IST 2017]]
import java_cup.runtime.*;
import java.io.*;

public class Embed {

  public static void main(String args[]) {

   try {
       parser p = new parser(new EmbedLex(System.in));
  }
  catch (Exception e) {
      e.printStackTrace();
  }
  }
}
