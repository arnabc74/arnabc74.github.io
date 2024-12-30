import java.io.*;
import java.awt.*;
import java.util.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.text.*;

public class TagEditor extends JTextPane
    implements KeyListener, ActionListener {

    DefaultStyledDocument d;
    Style one,two, inv, black;
    APopUp mathPop, dispPop, engPop, protPop;
    F18Listener f18;
    BTex staTex;
    public TagEditor(F18Listener f18, BTex staTex) {
	this.f18 = f18;
        this.staTex = staTex;
	mathPop = new APopUp(this,"Math", "<M>","</M>","red");
	dispPop = new APopUp(this,"Display", "<D>","</D>","red");
	engPop = new APopUp(this,"English", "{\\rm ","}","blue");
	protPop = new APopUp(this,"Protect", "","","blue");
	addKeyListener(this);
	d = (DefaultStyledDocument) getStyledDocument();
	Style root = addStyle("root",null);
	StyleConstants.setFontSize(root, 20);
	Style style = addStyle("red",root);
	one = addStyle("blue",root);
	two = addStyle("green",root);
	inv = addStyle("invis",null);
	black = addStyle("black",root);
	StyleConstants.setForeground(style, Color.red);
	StyleConstants.setForeground(one, Color.blue);
	StyleConstants.setForeground(two, Color.green);
	StyleConstants.setForeground(inv, Color.lightGray);
	StyleConstants.setFontSize(inv, 6);
	StyleConstants.setForeground(black, Color.black);
	setCharacterAttributes(getStyle("black"), true);
	//setText("This is red");
	((DefaultCaret)getCaret()).setUpdatePolicy(DefaultCaret.ALWAYS_UPDATE);
	
    }
    
    public void startSpl(String s, String stl) {
	sendLeft(s,true);
	setCharacterAttributes(getStyle(stl), true);
    }

    public void endSpl(String s) {
	sendRight(s,true);
    }

    public void handleTxt(String s) {
	replaceSelection(s.replace("\r","???"));
    }
    

    public void sendLeft(String s, boolean inEnglish) {
	int start = getSelectionStart();
	int end = getSelectionEnd();

        if(!inEnglish) s = "@{"+s;

	try {
	    d.replace(start,end-start,s,getStyle("invis"));
	}
	catch(BadLocationException ble) {
	    System.err.println("Boo...hoo...");
	}
    }

    public void sendBody(String s, String stl, boolean inEnglish) {
	setCharacterAttributes(getStyle(stl), true);
	replaceSelection(s);
    }

    public void sendRight(String s, boolean inEnglish) {
	setCharacterAttributes(getStyle("invis"), true);
	if(!inEnglish) s += "@}";
	replaceSelection(s);
	setCharacterAttributes(getStyle("black"), true);
    }

    public void keyTyped(KeyEvent ke) {
	f18.charHit(ke.getKeyChar());
    }
    public void keyPressed(KeyEvent ke) {}

    public void keyReleased(KeyEvent ke) {
	switch(ke.getKeyCode()) {
	case KeyEvent.VK_F2:
	    engPop.show(getSelectedText(),ke.isControlDown());
	    break;

	case KeyEvent.VK_F3:
	    if(ke.isControlDown()) {
		setCharacterAttributes(getStyle("invis"), true);
		replaceSelection("\n</WR>@}\n\n@{<WR>\n");
		int now = getCaretPosition();
		setCaretPosition(now-8);
		setCharacterAttributes(getStyle("black"), true);	
            }
	    else {
		protPop.show(getSelectedText(),ke.isControlDown());
	    }
	    break;

	case KeyEvent.VK_F4:
	    dispPop.show(getSelectedText(),ke.isControlDown());
	    break;

	case KeyEvent.VK_F5:
	    mathPop.show(getSelectedText(),ke.isControlDown());		    
	    break;

	case KeyEvent.VK_F1:
	    f18.f1Hit();		    
	    break;

	case KeyEvent.VK_ESCAPE:
	    setCharacterAttributes(getStyle("black"), true);
	    break;

	case KeyEvent.VK_X:
	    if((ke.getModifiers() & InputEvent.CTRL_MASK)!=0) {
		f18.saveNow();
	    }
	    break;
	case KeyEvent.VK_F8:
            System.err.println("F8 hit.");
            f18.f8Hit();		    
	    break;
	}
    }

    Integer[] lookUp(String what) {
        if(what.trim().length()==0) what = "<EXR ";
        System.err.println("Looking up "+what);
	Vector<Integer> exrList = 
	    new Vector<Integer>();

        int pos = getCaret().getDot();
	String s = getText();
	int from = 0;
	while((from=s.indexOf(what,from))>=0) {
	    if(from > pos) exrList.add(from);
	    from++; 
	}
        if(exrList.size()==0)
            return null;
        else
            return exrList.toArray(new Integer[1]);
    }

    public void actionPerformed(ActionEvent ae) {
	String comm = ae.getActionCommand();
	System.err.println(comm);
    }
}
