/**Tue Jul 29 2014
Corrected caret positioning: Caret should be at the end after replay.
**Fri Dec 26 2014
Added prefix search. 
 */
import java.awt.*;
import java.util.*;
import java.awt.event.*;
import javax.swing.*;

class APopUp extends JFrame 
  implements KeyListener {
    protected JTextField tf;
    protected TagEditor tst;
    String l,r, s;
    Vector<String> history;
    int historyCounter, nHistory;

    APopUp(TagEditor t, String name, String left, String right, String style) {
	super(name);
	history = new Vector<String>();
	tst= t;

	l = left;
	r = right;
	s = style;

	tf = new JTextField(20);
        Font ff = tf.getFont();
        Font gg = ff.deriveFont(30f);
        tf.setFont(gg);
	getContentPane().add(tf);
	pack();
	tf.addKeyListener(this);
        setAlwaysOnTop(true);
    }

    protected boolean inEnglish;
    public void show(String s,boolean inEnglish) {
	this.inEnglish = inEnglish;
	tf.setText(s);
        tf.setBackground(Color.WHITE);
        searching = false;
        tf.getCaret().setDot(0);
	nHistory = history.size();
	historyCounter = nHistory;
        pack();
	setVisible(true);

    }

    private boolean capsLock = false;
    public void keyTyped(KeyEvent ke) {
        if((ke.getModifiers() & InputEvent.CTRL_MASK)!=0) return;
        if(letThisKeyPass) {
            letThisKeyPass = false;
            return;
        }
        char c = ke.getKeyChar();
	if(c=='\n') {
            ke.consume();
	    return;
        }

        if(capsLock) {
            char c1 = TagEditor.myUpperCase(c);
            
            ke.consume();
            tf.replaceSelection(""+c1);
            capsLock = false;
        }
    }

    private boolean letThisKeyPass = false, searching= false, prefSearch = false;
    public void keyPressed(KeyEvent ke) {
        switch(ke.getKeyCode()) {
        case KeyEvent.VK_SHIFT:
            capsLock = !capsLock;
            break;
	case KeyEvent.VK_BACK_SPACE:
	case KeyEvent.VK_DELETE:
            letThisKeyPass = true;
            break;
        }
    }

    String prefix="";
    public void keyReleased(KeyEvent ke) {
	if(ke.getKeyCode()==KeyEvent.VK_ENTER) {
	    tst.sendLeft(l, inEnglish);
	    String str = tf.getText();
	    tst.sendBody(str,s, inEnglish);
	    tst.sendRight(r, inEnglish);
	    history.remove(str);
	    history.add(str);
	    setVisible(false);
	}
	else if(ke.getKeyCode()==KeyEvent.VK_UP) {
            if(!searching) {
                prefix = tf.getText().trim();
                if(!prefix.equals("")) prefSearch = true;
                searching = true;
            }
            boolean found = false;
	    while(historyCounter > 0) {
                historyCounter--;
                String candidate = history.elementAt(historyCounter);
                if(!prefSearch || candidate.startsWith(prefix)) {
                    tf.setText(candidate);
                    found = true;
                    break;
                }
            }
            if(!found) tf.setBackground(Color.RED);
            //tf.getCaret().setDot(0);
	}
	else if(ke.getKeyCode()==KeyEvent.VK_DOWN) {
            if(!searching) {
                prefix = tf.getText().trim();
                if(!prefix.equals("")) prefSearch = true;
                searching = true;
            }
            boolean found = false;
	    while(historyCounter < nHistory-1) {
                historyCounter++;
                String candidate = history.elementAt(historyCounter);
                if(!prefSearch || candidate.startsWith(prefix)) {
                    tf.setText(candidate);
                    found = true;
                    break;
                }
            }
            if(!found) tf.setBackground(Color.RED);
	}
	else if(ke.getKeyCode()==KeyEvent.VK_ESCAPE) {
            setVisible(false);
	}
    }
}

