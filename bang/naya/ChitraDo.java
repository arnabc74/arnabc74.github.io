//[Update:[Sat Oct 05 IST 2019]]
/*History:
**Fri Oct 05 2018
First working version
**Fri Oct 12 2018
Corrected a bug: width was not printing "in"
**Sun Oct 21 2018
Added the shift feature.
**Sun Dec 30 2018
Now to-do images may be listed without the preceding ::
 */
import java.util.*;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

public class ChitraDo extends ChitraParserBaseListener {
    private int shift = 0;
    private static int toInt(String str) {
        try {
            return Integer.parseInt(str);
        }
        catch(Exception ex) {
            System.err.println("Oops, expected an integer, got ["+str+"]");
        }
        return 0;
    }
    public void exitBefore(ChitraParser.BeforeContext ctx) {
        for(TerminalNode dc : ctx.DONTCARE()) {
            System.out.print(dc.getText());
        }
    }

    public void exitAfter(ChitraParser.AfterContext ctx) {
        for(TerminalNode dc : ctx.DONTCARE()) {
            System.out.print(dc.getText());
        }
    }

    public void exitLata(ChitraParser.LataContext ctx) {
        shift+= toInt(ctx.NUM().getText());
    }
    public void enterPata(ChitraParser.PataContext ctx) {        
        System.out.format("<PAGE n=\"%s\">\n",toInt(ctx.NUM().getText())+shift);
    }

    public void exitPata(ChitraParser.PataContext ctx) {
        System.out.format("</PAGE>\n");
    }

    public void exitNich(ChitraParser.NichContext ctx) {
        if(ctx.guchchha().height()==null) {
            System.out.format("<BOT>\n");
        }
        else {
            try {
                System.out.format("<BOT h=\"%sin\">\n",ctx.guchchha().height().getText());
            }
            catch(Exception ex) {throw new RuntimeException(ex);}
        }
        List<ChitraParser.PicContext> temp = ctx.guchchha().pic();

        for(ChitraParser.PicContext pc : temp) {
            String src = pc.name().getText();
            if(pc.COL2()==null) {
                System.err.println("Skipping ["+src+"]");
                continue;
            }
            String lab=(pc.ityadi()==null || pc.ityadi().lab()==null ? src : pc.ityadi().lab().TEXT().getText()); 
            String scl=(pc.ityadi()==null || pc.ityadi().scl()==null ? "0.6" : pc.ityadi().scl().NUM().getText()); 
            String wdth=(pc.ityadi()==null || pc.ityadi().wdth()==null ? "1.5in" : pc.ityadi().wdth().NUM().getText()+"in"); 
                
            System.out.format("<PIC src=\"%s\" lab=\"%s\" scl=\"%s\" w=\"%s\"/>\n",src,lab,scl,wdth);
        }
        System.out.format("</BOT>\n");
    }

        public void exitUpar(ChitraParser.UparContext ctx) {
        if(ctx.guchchha().height()==null) {
            System.out.format("<TOP>\n");
        }
        else {
            try {
                System.out.format("<TOP h=\"%sin\">\n",ctx.guchchha().height().getText());
            }
            catch(Exception ex) {throw new RuntimeException(ex);}
        }
        List<ChitraParser.PicContext> temp = ctx.guchchha().pic();
        for(ChitraParser.PicContext pc : temp) {
            String src = pc.name().getText();
            if(pc.COL2()==null) {
                System.err.println("Skipping ["+src+"]");
                continue;
            }
            String lab=(pc.ityadi()==null || pc.ityadi().lab()==null ? src : pc.ityadi().lab().TEXT().getText()); 
            String scl=(pc.ityadi()==null || pc.ityadi().scl()==null ? "0.6" : pc.ityadi().scl().NUM().getText()); 
            String wdth=(pc.ityadi()==null || pc.ityadi().wdth()==null ? "1.5in" : pc.ityadi().wdth().NUM().getText()+"in"); 
                
            System.out.format("<PIC src=\"%s\" lab=\"%s\" scl=\"%s\" w=\"%s\"/>\n",src,lab,scl,wdth);
        }
        System.out.format("</TOP>\n");
    }

    public static void main(String args[]) {
        try {
            ChitraLexer lex = new ChitraLexer(CharStreams.fromFileName(args[0]));
            CommonTokenStream tok = new CommonTokenStream(lex);
            ChitraParser par = new ChitraParser(tok);
            ParseTree tree = par.puro();
            ParseTreeWalker walker = new ParseTreeWalker();
            ChitraDo t = new ChitraDo();
            walker.walk(t,tree);
        }
        catch(Exception ex) {
            ex.printStackTrace(System.err);
            System.exit(1);
        }
    }
}

