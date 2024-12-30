import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.text.*;


public class BengPane extends JTextPane 
    implements Emitter, KeyListener {

    private UniTranslator ut;
    private Font f, f1;
    private BTex full;
    ImageIcon bhul;

    private int countSpace() {
        int pos = getCaret().getDot();
	String s = getText();
        int count = 0;
        for(int i=0;i<pos;i++) {
            if(s.charAt(i)==' ') count++;
        }
        return count;
    }

    public void display(String txt) {
        setText("");

        try {
            full.display(txt);
        }
        catch(Exception ex) {
            System.err.println("Can't display full!");
            ex.printStackTrace();
        }
    }
    MutableAttributeSet attrs;
    Finalise fnl;
    FullFrame ff;

    public BengPane(String baseLocn, Finalise fnl, FullFrame ff) {
        this.fnl = fnl;
        this.ff = ff;
        bhul = new ImageIcon(baseLocn+"bhul.png");
        attrs = getInputAttributes();
        ut = new UniTranslator(this);
        try {
            f = Font.createFont(Font.TRUETYPE_FONT,
                                getClass().
                                getClassLoader().
                                getResourceAsStream("alipi_b1.ttf"));

            f = f.deriveFont(30f);
            f1 = f.deriveFont(20f);
            setFont(f);
        }
        catch(Exception ex) {
            System.err.println("Can't open font at "+baseLocn);
            ex.printStackTrace();
        }
        /*
        setBackground(new Color(21,65,21));
        Style red = addStyle("red",null);
        StyleConstants.setForeground(red,Color.RED);
        setCharacterAttributes(getStyle("red"),true);
        */
        full = new BTex(this);
        addKeyListener(this);
        //setEditable(false);
    }

    public void keyTyped(KeyEvent ke) {
        ke.consume();
    }

    private void eatKey(KeyEvent ke) {
        switch(ke.getKeyCode()) {
        case KeyEvent.VK_UP:
        case KeyEvent.VK_DOWN:
        case KeyEvent.VK_LEFT:
        case KeyEvent.VK_RIGHT:
        case KeyEvent.VK_HOME:
        case KeyEvent.VK_END:
            break;
        case KeyEvent.VK_ENTER:
            int nSpace = countSpace();
            fnl.placeCursor(nSpace);
            fnl.reqFocus();
            ff.setVisible(false);
            ke.consume();
            break;
        case KeyEvent.VK_C:
            if(!ke.isControlDown()) ke.consume();
            break;
        default:
            ke.consume();
        }
    }
        
    public void keyPressed(KeyEvent ke) {
        eatKey(ke);
    }
    public void keyReleased(KeyEvent ke) {
        eatKey(ke);
    }

    public void emit(int p, int s, int v) {
        ut.translate(p,s,v);
        String str = ut.getString();
        replaceSelection(str);
    }

    public void emitEng(String str) {
        StyleConstants.setFontFamily(attrs, "Serif");
        replaceSelection(str);
        StyleConstants.setFontFamily(attrs, f.getFamily());
    }

    public void emitError(String msg) {
        replaceSelection("\n\n*****************\n\n\n");
        insertIcon(bhul);
    }
}

