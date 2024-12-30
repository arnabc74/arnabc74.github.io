import java.io.*;

public class Threader extends Reader {
    private volatile boolean done = false;
    private volatile String data="";
    private volatile boolean available = false;
    private volatile int pos = 0;

    public Threader() {
	available = false;
    }

    public int read(char[] cbuf, int off, int len) throws IOException {
	if(done) return -1;
	synchronized(lock) {
	    while(!available) {
		try {
		    lock.wait();
		}
		catch(InterruptedException ie) {
		    System.err.println("Ghumoteo dibi na?");
		    throw new IOException("Ki jwala!");
		}
	    }
	    int avLen = data.length();
	    int size = (len<avLen ? len : avLen);
	    String prefix = data.substring(0,size);
	    data = data.substring(size);
	    System.arraycopy(prefix.toCharArray(),0,cbuf,off,size);
	    available = data.length()>0;
	    return size;
	}
    }

    public void close() {
	System.out.println("Ta ta");
    }

    void supply(char c) {
	synchronized(lock) {
	    data = data + String.valueOf(c);
	    available = true;

	    lock.notify();
	}
    }

    void supply(String str) {
	synchronized(lock) {
	    data = data + str;
	    available = true;

	    lock.notify();
	}
    }
}

	    
	    
