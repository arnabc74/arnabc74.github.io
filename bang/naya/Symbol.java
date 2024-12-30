public class Symbol {

    int lexeme, token;
    String lexStr;

    public String getLexStr() {
        return lexStr;
    }

    public Symbol(int lexeme, int token, String s) {
	this.lexeme = lexeme;
	this.token = token;
        this.lexStr = s;
        //System.err.println("??lexeme = "+lexeme+", token = "+token);
    }

    public Symbol(int token, String s) {
	this.token = token;
        this.lexStr = s;        
        //System.err.println("????token = "+token);
    }


    public String toString() {
        return "[s={"+lexStr+"}, t= "+token+", "+"l= "+lexeme+"]";
    }
}
