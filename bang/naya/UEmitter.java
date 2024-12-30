import java.io.*;

class UEmitter implements Emitter {

    UniTranslator2
        ut = new UniTranslator2(null, new BUnicode());

    private FileOutputStream fout;
    public UEmitter(FileOutputStream f) {
	fout = f;
    }

    public void emit(int p, int s, int v) {
        ut.translate(p,s,v,this);
        try {
            fout.write(ut.getString().getBytes());
        }
        catch(Exception ex) {
            System.err.println("Can't write!");
        }
    }

    public void emitEng(String str) {
        try {
            fout.write(str.getBytes());
        }
        catch(Exception ex) {
            System.err.println("Can't write!");
        }
    }

    public void emitError(String msg) {
        try {
            fout.write("!!!".getBytes());
        }
        catch(Exception ex) {
            System.err.println("Can't write!");
        }
    }
}
