//[Update:[Thu Dec 03 IST 2020]]
/*History:
**Sat Aug 15 2020
Started.
**Sun Aug 16 2020
First working version
**Sun Nov 08 2020
Changed size to suit videography.
**Thu Nov 19 2020
Using order.txt.
**Wed Dec 02 2020
 Added client to viewer.
**Thu Dec 03 2020
 Added control-cursor to avoid using wifi during test viewing.
*/
import java.util.*;
import java.net.*;
import java.awt.*;
import java.awt.image.*;
import java.awt.event.*;
import javax.swing.*;
import java.io.*;
import javax.imageio.*;

public class AndroViewer  extends JPanel
    implements KeyListener {
    private Vector<String> lst;
    private BufferedImage pic;
    private int picCounter = 0;
    private JLabel statusLab;
    private JFrame baba;
    public AndroViewer(JFrame bb, JLabel em) {
        baba = bb;
        statusLab = em;
        try {
        
            Scanner ord = new Scanner(new File("order.txt"));
            lst = new Vector<String>();
            while(ord.hasNext()) {
                String tmp = ord.next();
                String froot = tmp.substring(0,tmp.indexOf(','));
                Scanner scnr = new Scanner(new File(froot+"/index.txt"));
                while(scnr.hasNext()) {
                    String line = scnr.next();
                    if(line.startsWith("#")) {
                        scnr.nextLine();
                        continue;
                    }
                    lst.add(froot+"/"+line);
                }
            }
            String nm = lst.elementAt(0);
            pic = ImageIO.read(new File(nm));
            baba.setTitle(nm);
        }
        catch(Exception ex) {
            ex.printStackTrace();
        }
        //setPreferredSize(new Dimension(900,480));
        setPreferredSize(new Dimension(640,480));
    }
    private boolean changed = false;
    public void keyTyped(KeyEvent ke) {
        /*
        changed = false;
        char c = ke.getKeyChar();
        System.err.println("Typed "+c);
        switch(c) {
        case 'p':
            picCounter--; if(picCounter<0) picCounter = 0;
            changed = true;
            break;
        case 'n':
            picCounter++; if(picCounter>=lst.size()) picCounter = lst.size()-1;
            changed = true;
            break;
        }

        if(changed) {
            try {
                String nm = lst.elementAt(picCounter);
                pic = ImageIO.read(new File(nm));
                baba.setTitle(nm);
            }
            catch(Exception ex) {
                System.err.println("Image file "+lst.elementAt(picCounter));
                ex.printStackTrace();
            }
            repaint();
        }
        */
    }
    public void keyPressed(KeyEvent ke) {}
    public void keyReleased(KeyEvent ke) {
        changed = false;
        int c = ke.getKeyCode();
        boolean wifiOn = !ke.isControlDown();
        //System.err.println("key code = "+c);
        switch(c) {
        case KeyEvent.VK_LEFT:
            if(wifiOn) send('p');
            picCounter--; if(picCounter<0) picCounter = 0;
            changed = true;
            break;
        case KeyEvent.VK_RIGHT:
            if(wifiOn) send('n');
            picCounter++; if(picCounter>=lst.size()) picCounter = lst.size()-1;
            changed = true;
            break;
        case KeyEvent.VK_UP:
            if(wifiOn) send('t');
            break;
        case KeyEvent.VK_DOWN:
            if(wifiOn) send('c');
            break;
        case KeyEvent.VK_X:
            if(wifiOn) send('x');
            break;
        }

        if(changed) {
            try {
                String nm = lst.elementAt(picCounter);
                pic = ImageIO.read(new File(nm));
                baba.setTitle(nm);
            }
            catch(Exception ex) {
                System.err.println("Image file "+lst.elementAt(picCounter));
                ex.printStackTrace();
            }
            repaint();
        }

    }

    
    private void send(int what) {
        System.err.println("Sending+ "+what);
                    
        try {
            //Socket s = new Socket("localhost",4321);
            Socket s = new Socket("192.168.43.1",4321);
            System.err.println("Got socket.");
            OutputStream dos = new DataOutputStream(s.getOutputStream());
            BufferedInputStream bis = new BufferedInputStream(s.getInputStream());
            msg("Got stream.");
            boolean ok = false;
            int nTry=0;
            for(int i=0;i<10;i++) {
                int check;
                //System.err.print("sending "+what);
                dos.write(what);
                //msg("done.");
                Thread.sleep(100);
                if(bis.available()==0) continue;
                check = bis.read();
                //System.err.format("received = %d\n",check);

                if(what==check) {
                    ok = true;
                    nTry = i;
                    break;
                }
            }
                
            if(ok) 
                msg("Done after "+nTry+" attempt(s).");
            else
                msg("Undone.");

        }
        catch(Exception ex) {
            msg("Disconnected");
            //ex.printStackTrace();
        }
    }

    private void msg(String what) {
        statusLab.setText(what);
    }
    
    public void paintComponent(Graphics g) {
        super.paintComponent(g);
        Graphics2D g2 = (Graphics2D) g;
        if(pic!=null) 
            g2.drawImage(pic,0,0,null);
    }

    public static void main(String args[]) {
        JFrame f = new JFrame("AndroViewer");
        JLabel errMsg = new JLabel("Messages wil be shown here.");
        AndroViewer av = new AndroViewer(f, errMsg);
        f.add(av);
        f.addKeyListener(av);
        f.add(errMsg, BorderLayout.SOUTH);
        f.pack();
        //f.setSize(900,530);
        f.setVisible(true);
        f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
}
