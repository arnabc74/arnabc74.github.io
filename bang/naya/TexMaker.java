import java.io.*;

public class TexMaker {
    private BTex b;
    private TexEmitter te;

    public TexMaker(String fin, String fout) throws Exception{
	try {
	    FileReader f = new FileReader(fin);
	    te = new TexEmitter(new FileOutputStream(fout));
	    b = new BTex(f,te);
	    b.setTolerance(BTex.LO);

	    b.init();
	    if(b.process()) throw new Exception();
	}
	catch(IOException ioe) {
	    ioe.printStackTrace();
	}
    }

    public static void main(String args[]) {
	try {
	    new TexMaker(args[0],args[1]);
	}
	catch(Exception ex) {
            System.err.println("----------------");
	    System.exit(1);
	}
    }
}

