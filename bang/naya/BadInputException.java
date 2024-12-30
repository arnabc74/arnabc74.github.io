public class BadInputException extends Exception {
    private String body;
    private int line, col;

    public BadInputException(String b, int l, int c) {
        body = b;
        line = l;
        col = c;
    }

    public String toString() {
        return 
            "UNEXPECTED CHAR ["+body.getBytes()[0]+
            "]("+body+") AT LINE "+line+
            " COLUMN "+col;
    }
}
  
