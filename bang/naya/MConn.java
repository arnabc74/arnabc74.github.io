/*[Update:[Tue Apr 25 IST 2017]]
**Tue Apr 25 2017
  Changed font to monospace 

*/  
import java.io.*;
import java.awt.*;
import javax.swing.*;

public class MConn {
    private String folder;
    OutputStream toR;
    BufferedReader fromR;
    InputStream errR;
    PrintWriter sink;
    Process p;
    boolean gotR = false;
    JTextArea ta;
    JFrame f;
    public MConn(String fldr) {
        ta = new JTextArea();
        ta.setFont(new Font(Font.MONOSPACED,Font.BOLD, 20));
        f = new JFrame("Maxima output");
        
        f.add(new JScrollPane(ta));
        f.setDefaultCloseOperation(WindowConstants.HIDE_ON_CLOSE);
        f.pack();
        f.setSize(300,300);
        //f.setVisible(true);
	folder = fldr;
        gotR = false;
	try {
            for(int i=0;i<20;i++)  {
                p = Runtime.getRuntime().exec(
                      "/usr/bin/maxima --very-quiet",
                      null,
                      new File(folder)
                    );
                fromR = new BufferedReader(
		          new InputStreamReader(
                            p.getInputStream()
		          )
                        );

                errR = p.getErrorStream();
                
                toR = p.getOutputStream();
                if(errR!=null && toR!=null) {
                    gotR = true;
                    System.err.println("Aha! Connected to Maxima!");
                    //tellR("source('/media/ARNAB/notes/tools/startup.r')");
                    break; 
                }
                p.destroy();
            }
            if(!gotR) {
                System.err.println("errR = "+errR+", toR = "+toR);
                throw new Exception(
                  "Sorry, could not connect to Maxima!"
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
	System.err.println("Maxima> "+command);
	toR.write((command+"\n").getBytes());
	toR.flush();
    }

    void setSink(PrintWriter pw) {
	sink = pw;
    }

    void done() throws Exception {
        if(!gotR) return;
	tellR("quit();");
	toR.close();
    }

    int cleanUp() {
	try {
	    System.err.println("Waiting for Maxima to finish...");
	    System.err.flush();

	    int ret = p.waitFor();
	    if(ret==0) { 
              System.err.println("Maxima has exited smoothly.");
	    }
	    else {
		System.err.println("Maxima has trouble in folder "+
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
	System.err.println("Maxima will print output.");
	System.err.flush();

	/*
	byte[] spoon = new byte[512];
	while(errR.read(spoon)>0) {
	    System.err.println(new String(spoon));
	}
	System.err.println("Finished printing errors");
	System.err.flush();
	*/

        ta.setText("");
	while (true) {
            String line = fromR.readLine();
            System.err.println("["+line+"]");
            if(line==null || line.trim().equals("over")) break;
            ta.append(line+"\n");
	}
        System.err.println("About to flush");
        f.setVisible(true);
	/*sink.flush();
          System.err.println("Finished printing output");*/
	System.err.flush();
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
        MConn rc = new MConn("/root/");
        rc.setSink(new PrintWriter(System.out));
        rc.tellR("2+3;");
        rc.tellR("\"over\";");
        rc.fromRtoSink();
        System.err.println("About to quit");
        rc.done();
        System.out.println("exitstatus = "+rc.cleanUp());
    }
}
