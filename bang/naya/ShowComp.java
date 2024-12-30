//[Update:[Fri Oct 20 IST 2017]]
/**Thu Sep 01 IST 2016
   Created.
*/
import java.util.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;

public class ShowComp extends JFrame {

    TreeSet<Completion> c;
    JList<Completion> list;
    int n, pos;
    CompletionListener cl;
    JScrollPane scroll;

    public ShowComp(CompletionListener cl) {
        this.cl = cl;
        scroll = new JScrollPane();
        add(scroll);
        addKeyListener(kl);
        setUndecorated(true);
        setLocation(10,50);
    }

    public void launch(TreeSet<Completion> comp) {
        c = comp;
        n = c.size();
        pos = 0;
        list = new JList<Completion>(c.toArray(new Completion[0]));
        list.setLayoutOrientation(JList.VERTICAL_WRAP);
        list.setFocusable(false);
        list.setSelectedIndex(pos);
        scroll.setViewportView(list);
        list.setVisibleRowCount(c.size());
        pack();
        setSize(100,600);
        setVisible(true);
    }

    KeyListener kl = new KeyAdapter () {
            public void keyPressed(KeyEvent ke) {
                //System.err.println("You pressed "+ke+"\n-----");
                switch(ke.getKeyCode()) {
                case KeyEvent.VK_F11:
                    if(pos>0) pos--;
                    list.setSelectedIndex(pos);
                    list.ensureIndexIsVisible(pos);
                    break;
                case KeyEvent.VK_F12:
                    if(pos<n-1) pos++;
                    list.setSelectedIndex(pos);
                    list.ensureIndexIsVisible(pos);
                    break;
                case KeyEvent.VK_ENTER:
                    String cmp = list.getModel().getElementAt(pos).w;
                    //System.err.println("The completion is ["+cmp+"]");
                    cl.completionFound(cmp);
                    setVisible(false);
                    break;
                case KeyEvent.VK_ESCAPE:
                    setVisible(false);
                    break;
                }
            }
        };
    /* 
  public static void main(String args[]) {
      TreeSet<Completion> c = new  TreeSet<Completion>(new CompletionComparator());
      c.add(new Completion("abc5",3,5));
      c.add(new Completion("xyz",3,6));
      c.add(new Completion("mnp",3,7));
      c.add(new Completion("qrs",3,8));
      c.add(new Completion("qrs3",3,10));
      c.add(new Completion("qrs3",3,11));
      c.add(new Completion("qrs3",3,12));
      c.add(new Completion("qrs3",3,13));
      c.add(new Completion("qrs3",3,14));
      c.add(new Completion("qrs3",3,15));
      c.add(new Completion("qrs3",3,16));
      c.add(new Completion("qrs3",3,17));
      c.add(new Completion("qrs3",3,18));
      c.add(new Completion("qrs3",3,19));
      c.add(new Completion("qrs3",3,20));
      c.add(new Completion("qrs3",3,21));
      new ShowComp().launch(c);
  }
    */
}
