//[Update:[Thu Sep 28 IST 2017]]
/*History:
**Thu Sep 28 2017
   Started.
*/

public class ImLexRunner  {

    public static void main(String argv[]) throws Exception {
        if (argv.length == 0) {
            System.out.println("Usage : java ImLexRunner <inputfile>");
        }
        else {
            ImLex scanner = new ImLex( new java.io.FileReader(argv[0]) );
            scanner.setFileName(argv[0]);
            scanner.yylex();
        }
    }
}
