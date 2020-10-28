//[Update:[Wed Aug 19 IST 2020]]
/*History:
   **Sat Aug 15 2020
   Started.
   **Sun Aug 16 2020
   First working version
*/
import java.util.*;
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
    private String froot;
    private JFrame baba;
    public AndroViewer(JFrame bb, String f) {
        baba = bb;
        froot = f;
        try {
            Scanner scnr = new Scanner(new File(froot+"/index.txt"));
            lst = new Vector<String>();
            while(scnr.hasNext()) {
                String line = scnr.next();
                if(line.startsWith("#")) {
                    scnr.nextLine();
                    continue;
                }
                lst.add(line);
            }
        }
        catch(Exception ex) {
            ex.printStackTrace();
        }
        setPreferredSize(new Dimension(900,480));
    }
    private boolean changed = false;
    public void keyTyped(KeyEvent ke) {
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
                pic = ImageIO.read(new File(froot+"/"+nm));
                baba.setTitle(nm);
            }
            catch(Exception ex) {
                System.err.println("Image file "+froot+"/"+lst.elementAt(picCounter));
                ex.printStackTrace();
            }
            repaint();
        }

    }
    public void keyPressed(KeyEvent ke) {}
    public void keyReleased(KeyEvent ke) {}
    
    public void paintComponent(Graphics g) {
        super.paintComponent(g);
        Graphics2D g2 = (Graphics2D) g;
        if(pic!=null) 
            g2.drawImage(pic,0,0,null);
    }

  public static void main(String args[]) {
      JFrame f = new JFrame("AndroViewer");
      AndroViewer av = new AndroViewer(f,args[0]);
      f.add(av);
      f.addKeyListener(av);
      f.pack();
      //f.setSize(900,530);
      f.setVisible(true);
      f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
  }
}
