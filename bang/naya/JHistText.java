//[Update:[Mon Nov 27 IST 2017]]
/*History:
**Mon Oct 23 2017
   Started.
**Tue Oct 31 2017
   Corrected some bugs regarding history: skipping items and multiple entry
**Mon Nov 27 2017
   Prevented history from repeating itself: history list now contains no repeated entries.
   Also updates histCount when adding a new item to history.
*/
import java.util.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class JHistText  extends JTextField
    implements KeyListener {
    private Vector<String> history;
    private int histCount = 0;
    public JHistText() {
        super(15);
        history = new Vector<String>();
        addKeyListener(this);
    }

    public void keyTyped(KeyEvent ke) {}
    public void keyReleased(KeyEvent ke) {
        switch(ke.getKeyCode()) {
        case KeyEvent.VK_UP:
            if(histCount > 0) histCount--;
            setText(history.elementAt(histCount));
            break;
        case KeyEvent.VK_DOWN:
            if(histCount < history.size()-1) histCount++;
            setText(history.elementAt(histCount));
            break;
        }
    }
    public void keyPressed(KeyEvent ke) {}

    public String getText1() {
        String what = getText();
        history.remove(what);
        history.add(what);
        histCount = history.size()-1;
        System.err.println("History dump:");
        int tmpCount=0;
        for(String s : history) {
            System.err.println(tmpCount+": "+s);
            tmpCount++;
        }
        return what;
    }
    
    public static void main(String args[]) {
        JFrame fr = new JFrame();
        fr.add(new JHistText());
        fr.pack();
        fr.setSize(100,50);
        fr.setVisible(true);
    }
  
}

