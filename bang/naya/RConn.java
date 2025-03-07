/*[Update:[Sun Mar 24 IST 2019]]

**Sat Aug 06 2016
  *Corrected error handling of R. Now R is relaunched on error.
  *To make a plot, first say x11(). I have put it in startup.r
**Sat Jan 28 2017
  *Changed arnab to cssc for new laptop. 
**Sun Mar 24 2019
*Changed tools to na/v for new set up.
 */

import java.io.*;
import java.awt.*;
import javax.swing.*;

public class RConn {
    private String folder;
    OutputStream toR;
    BufferedReader fromR;
    BufferedInputStream errR;
    PrintWriter sink;
    Process p;
    boolean gotR = false;
    JTextArea ta;
    JFrame f;
    public RConn(String fldr) {
        ta = new JTextArea();
        f = new JFrame("R output");
        
        f.add(new JScrollPane(ta));
        f.setDefaultCloseOperation(WindowConstants.HIDE_ON_CLOSE);
        f.pack();
        f.setSize(300,300);
        //f.setVisible(true);
	folder = fldr;

        launchR();
    }

    void launchR() {
        gotR = false;
	try {
            ProcessBuilder pb = new ProcessBuilder("/usr/bin/R","--slave","-q","--save");
            pb.redirectErrorStream(true);
            for(int i=0;i<20;i++)  {
                p = pb.start();
                /*
                p = Runtime.getRuntime().exec(
                      "/usr/bin/R --slave -q --save",
                      null,
                      new File(folder)
                    );
                */
                fromR = new BufferedReader(
		          new InputStreamReader(
                            p.getInputStream()
		          )
                        );


                //errR = new BufferedInputStream(p.getErrorStream());
                
                toR = p.getOutputStream();
                if(toR!=null) {
                    gotR = true;
                    System.err.println("Aha! Connected to R!");
                    tellR("source('/home/cssc/na/v/startup.r')");
                    break; 
                }
                p.destroy();
            }
            if(!gotR) {
                System.err.println("errR = "+errR+", toR = "+toR);
                throw new Exception(
                  "Sorry, could not connect to R!"
                );
            }
	}
	catch(Exception ex) {
	    ex.printStackTrace();
	}
    }

    void showError(String msg) {
        ta.setText("Error! "+msg);
        f.setVisible(true);
    }
    void tellR(String command) throws Exception {
        if(!gotR) return;
	System.err.println("R> "+command);
	toR.write((command+"\n").getBytes());
	toR.flush();
    }

    void setSink(PrintWriter pw) {
	sink = pw;
    }

    void done() throws Exception {
        if(!gotR) return;
	tellR("q()");
	toR.close();
    }

    int cleanUp() {
	try {
	    System.err.println("Waiting for R to finish...");
	    System.err.flush();

	    int ret = p.waitFor();
	    if(ret==0) { 
              System.err.println("R has exited smoothly.");
	    }
	    else {
		System.err.println("R has trouble in folder "+
				   folder);
	    }
	    System.err.flush();

	    return ret;
	}
	catch(InterruptedException ie) {
	    return -1;
	}

    }

    
    void fromRtoSink() throws Exception {
        if(!gotR) return;
	System.err.println("R will print output.");
	System.err.flush();


	boolean somethingWrong = false;
        /*
	byte[] spoon = new byte[512];
        System.err.println("avlbl = "+errR.available());
	while(errR.read(spoon)>0) {
            somethingWrong = true;
	    System.err.println(new String(spoon));
	}
	System.err.println("Finished printing errors");
	System.err.flush();
	*/

        ta.setText("");
        /*
	while (eR.available()>0) {
            somethingWrong = true;
            String line = errR.readLine();
            System.err.println("{"+line+"}");
            if(line==null) break;
            ta.append("Error:"+line+"\n");
            }*/

	while (true) {
            String line = fromR.readLine();
            System.err.println("["+line+"]");
            if(line==null || line.equals("over")) break;
            if(line.endsWith("halted")) somethingWrong = true;
            ta.append(line+"\n");
	}
        System.err.println("About to flush");
        f.setVisible(true);
	/*sink.flush();
          System.err.println("Finished printing output");*/
	System.err.flush();

        if(somethingWrong) {
            launchR();
        }        
    }

    void seeErrors(PrintStream ps) throws Exception {
        if(!gotR) return;
	String line;
	while ((line = fromR.readLine()) != null) {
	    ps.println(line);
	}
	ps.flush();
    }
    
    public static void main(String args[]) throws Exception {
        RConn rc = new RConn(".");
        rc.setSink(new PrintWriter(System.out));
        rc.tellR("x=1:10");
        rc.tellR("x11(); plot(x)");
        rc.fromRtoSink();
        rc.tellR("x");
        rc.fromRtoSink();
        System.err.println("About to quit");
        rc.done();
        System.out.println("exitstatus = "+rc.cleanUp());
    }
}
