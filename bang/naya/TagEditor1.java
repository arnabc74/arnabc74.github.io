public class TagEditor1 {

    void handleTxt(String s) {
	System.err.print(s);
    }
    void startMath() {
	System.err.print("$");
    }
    void endMath() {
	System.err.print("$");
    }

    public static void main(String args[]) throws Exception {
	TagEditor1 t = new TagEditor1();
	TagLex tl = new TagLex(System.in);
	tl.setEdtr(t);
	tl.yylex();
    }
}