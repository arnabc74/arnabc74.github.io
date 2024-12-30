/*History: 
  [Update:[Wed Nov 10 IST 2021]]
  **Thur Jul 10 2014
  Double key to produce caps
  **Fri Jul 11 2014
  dabbrev functionality
  **Sat Jul 26 2014
  Added triple letter => double lowercase feature
  **Sat Oct 03 2015
  Added R support
  **Mon Jan 18 2016
  Added volume control interface
  **Thu Jul 07 2016
  Added automatic space after @}
  Corrected dabbrev to avoid splitting .n
  **Fri Jul 29 2016
  Added automatic space after >
  **Tue Aug 30 2016
  Added line-based sorting for dabbrev 
  **Thu Sep 01 2016
  Added popup menu for dabbrev
  **Sat Jan 14 2017
  Rectified (hopefully!) the capsLock bug. Now cursor motion resets capsLock.
  **Sat Jan 28 2017
  Removed a pesky debugging message.
  **Tue Apr 11 2017
  Added canFollowEng to avoid extra space before )
  **Fri Apr 14 2017
  Added '<' and '\'' to canFollowEng
  **Mon Aug 07 2017
  canFollowEng now is specific to closing tags.
  **Sun Jan 21 2018
  Added abbrev facility via textfield
  **Mon Jan 22 2018
  Abbreviations now use Properties
  **Fri Jan 04 2019
  Abbreviations starting with "e" now is mode-aware.
  **Sat Jan 05 2019
  Now ':' canFollowEng().
  **Sat Apr 06 2019
  Changed initial 'e' to 'i'/'I' to set capitalisation of expansion.
  iab./ now expands to @{<E>fullform.</E>@} with the period inside E-tags.
  **Fri Jan 22 2021
  Added 'q' and 'z' shortcuts for 'A' and 'T'.
  **Thu Jan 28 2021
  Now 'c' produces "ch" in Bangla.
  **Mon Mar 29 2021
  Now '=' produces '+' in Bangla.
  **Mon Jul 19 2021
  Now '`' produces '~' in Bangla, and vice versa.
  **Wed Nov 10 2021
  Now ` produces both ` and ~ based on the preceding character.
*/
import java.io.*;
import java.awt.*;
import java.util.*;
import java.util.regex.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
import javax.swing.text.*;

public class TagEditor extends JTextPane
    implements KeyListener, 
               ActionListener, 
               MouseListener, 
               MouseMotionListener,
               CompletionListener {

    ImageIcon shuru, shesh;

    DefaultStyledDocument d;
    Style one,two, three, inv, black;
    APopUp mathPop, dispPop, engPop, protPop;
    TagPopUp newPop;
    Finalise f18;
    BTex staTex;
    String base;
    Properties abLst;


    private void fontify(String rawStr) {
        try {
            TagLex tl = new TagLex(new StringReader(rawStr));
            tl.setEdtr(this);
            createAccum(rawStr.length());
            tl.yylex();
            dumpAccum();//Dump the left over part.
        }
        catch(IOException ioe) {
            System.err.println("Sorry could not write.");
            ioe.printStackTrace();
        }
    }

    public void linkLine(Line l, int cp) {
        setText("");
	setCharacterAttributes(getStyle("black"), true);
        fontify(l.getPlain());
        getCaret().setDot(cp);
    }

    public void mousePressed(MouseEvent me) {
        if(f18.getNoMouse()) me.consume();
    }
    public void mouseReleased(MouseEvent me) {
        if(f18.getNoMouse()) me.consume();
    }
    public void mouseClicked(MouseEvent me) {
        requestFocus();
        //f18.selectBeng(true);
        if(f18.getNoMouse()) me.consume();
    }
    public void mouseMoved(MouseEvent me) {
        if(f18.getNoMouse()) me.consume();
    }
    public void mouseDragged(MouseEvent me) {
        if(f18.getNoMouse()) me.consume();
    }
    public void mouseEntered(MouseEvent me) {}
    public void mouseExited(MouseEvent me) {}
    ShowComp sc;

    public TagEditor(Finalise f18, BTex staTex, String base) {
	this.f18 = f18;
        this.staTex = staTex;
        this.base = base;
        abLst = f18.getAbLst();
        sc = new ShowComp(this);
        addMouseListener(this);
        addMouseMotionListener(this);
        setBackground(Color.WHITE);
	mathPop = new APopUp(this,"Math", "<M>","</M>","red");
	dispPop = new APopUp(this,"Display", "<D>","</D>","red");
	engPop = new APopUp(this,"English", "<E>","</E>","blue");
	protPop = new APopUp(this,"Protect", "","","blue");
	newPop = new TagPopUp(this,"Tag", "blue");
	addKeyListener(this);
	d = (DefaultStyledDocument) getStyledDocument();
	Style root = addStyle("root",null);
	StyleConstants.setFontSize(root, 15);
	Style style = addStyle("red",root);
	one = addStyle("blue",root);
	two = addStyle("green",root);
	three = addStyle("magenta",root);
	inv = addStyle("invis",null);
	black = addStyle("black",root);
	StyleConstants.setForeground(style, Color.red);
	StyleConstants.setForeground(one, Color.blue);
	StyleConstants.setForeground(two, Color.green);
	StyleConstants.setForeground(three, Color.magenta);
        if(f18.invis) {
            StyleConstants.setForeground(inv,Color.lightGray);
            StyleConstants.setFontSize(inv, 6);
        }
	StyleConstants.setForeground(black, Color.black);
	setCharacterAttributes(getStyle("black"), true);
	//setText("This is red");
        Font font = new Font("Times", Font.BOLD, 20);
        setFont(font);
        setCaret(new MyCaret());
	((DefaultCaret)getCaret()).setUpdatePolicy(DefaultCaret.ALWAYS_UPDATE);

        shuru = new ImageIcon(base+"shuru.png");
        shesh = new ImageIcon(base+"shesh.png");

        endTagPattern = Pattern.compile(".+</[^>]+>$");
        abPattern = Pattern.compile(".*\\b([a-zA-Z]+)(.?)$");
    }
    Pattern endTagPattern, abPattern;

    void addAb(String chhoto, String puro) {
        abLst.setProperty(chhoto,puro);
    }
    
    public void startSpl(String s, String stl) {
        dumpAccum();
	sendLeft(s,true);
	setCharacterAttributes(getStyle(stl), true);
    }

    public void endSpl(String s) {
        dumpAccum();
	sendRight(s,true);
    }

    StringBuilder accum;

    private void createAccum(int cap) {
        accum = new StringBuilder(cap);
    }

    private void dumpAccum() {
        if(accum.length()>0) {
            replaceSelection(accum.toString());
            accum.setLength(0);
        }
    }

    public void handleTxt(String s) {
        accum.append(s);
	//replaceSelection(s);
	//replaceSelection(s.replace("\r","???"));
    }
    
    public void sendLeftRaw(String s, boolean inEnglish) {
	int start = getSelectionStart();
	int end = getSelectionEnd();

        if(!inEnglish) s = "@{"+s;

	try {
	    d.replace(start,end-start,s,getStyle("black"));
	}
	catch(BadLocationException ble) {
	    System.err.println("Boo...hoo...");
	}
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

    //the parameter inEnglish is not used below.
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

    public void sendRightRaw(String s, 
                             boolean inEnglish, 
                             boolean repos) {
	setCharacterAttributes(getStyle("black"), true);
	if(!inEnglish) s += "@}";
	replaceSelection(s);
        if(repos) {
            int now = getCaretPosition();
            setCaretPosition(now-s.length());
        }
    }

    static char myUpperCase(char c) {
        switch(c) {
        case '/':
            return '?';
        case '1':
            return '!';
        case '2':
            return '@';
        case '6':
            return '^';
        case '7':
            return '&';
        case '9':
            return '(';
        case '0':
            return ')';
        case '=':
            return '+';
        case '`':
            return '~';
        case '[':
            return '{';
        case ']':
            return '}';
        case '\\':
            return '|';
        case ',':
            return '<';
        case '.':
            return '>';
        case '-':
            return '_';

        default:
            return Character.toUpperCase(c);
        }
    }
    private boolean canFollowEng(char c) {
        return (c==':' || c=='-' || c=='.' || c==',' || c =='?' || c ==')' || c=='@' || c=='<' || c=='\'');
    }
    
    private boolean letThisKeyPass = false;
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

        // {{{ Handle / abbrev
        if(c=='/') {
            //abLst.list(System.err);
            int pos = getCaret().getDot();
            String str = getText().substring(0,pos);

            //System.err.println("Prefix = ["+str+"]");
            Matcher m = abPattern.matcher(str);
            if(m.matches()) {
                String ab = m.group(1);
                //Incomlete effort starts
                //System.err.println("initial ab = ["+ab+"]");
                boolean wrapperNeeded = false, initCap = false;
                if(ab.charAt(0)=='i') {
                    wrapperNeeded = true;
                }
                if(ab.charAt(0)=='I') {
                    initCap = true;
                    wrapperNeeded = true;
                    ab = ab.toLowerCase();
                }
                String possPer = m.group(2);
                //System.err.println("final ab = ["+ab+"]");
                //System.err.println("wrapperNeeded = "+wrapperNeeded+", isInEng= "+isInEng());
                //Incomlete effort ends
                String puro = abLst.getProperty(ab);
                //System.err.println("Abbrev found:["+ab+"]:["+puro+"]");
                
                if(puro!=null) {
                    if(initCap) puro = puro.substring(0,1).toUpperCase()+puro.substring(1);
                    puro = puro+possPer;
                    select(pos-ab.length()-possPer.length(),pos);
                    ke.consume();
                    if(wrapperNeeded && !isInEng())
                        replaceSelection("@{<E>"+puro+"</E>@}");
                    else
                        replaceSelection(puro);
                    return;
                }
            }
        }
        // }}}
        // {{{ Automatic space after @} and > 
        int pos = getCaret().getDot();
        String str = getText();
        if(pos>1 && str.substring(pos-2,pos).equals("@}")) {
            if(!canFollowEng(c)) replaceSelection(" ");
        }       
        if(pos>0 && endTagPattern.matcher(str.substring(0,pos)).matches()) { //str.substring(pos-1,pos).equals(">")) {
            if(!canFollowEng(c)) replaceSelection(" ");
        }       
        // }}}
        setCharacterAttributes(getStyle("black"), true);
        //System.err.println("Typing");
        if(capsLock) {
            char c1 = myUpperCase(c);
            
            if(!isInEng()) {
                if(!(c1=='A' || 
                     c1=='D' ||
                     c1=='H' ||
                     c1=='I' ||
                     c1=='N' ||
                     c1=='R' ||
                     c1=='S' ||
                     c1=='T' ||
                     c1=='U' ||
                     c1=='Y'))
                    c1 = Character.toLowerCase(c1);
            }

            f18.charHit(c1);
            ke.consume();
            replaceSelection(""+c1);
            capsLock = false;
        }
        else {
            if(Character.isUpperCase(c)) {
                if(!isInEng() && 
                   !(c=='A' || 
                     c=='D' ||
                     c=='I' ||
                     c=='H' ||
                     c=='N' ||
                     c=='R' ||
                     c=='S' ||
                     c=='T' ||
                     c=='U' ||
                     c=='Y')) {
                    c = Character.toLowerCase(c);
                    replaceSelection(""+c);
                    //System.err.println("2: consume");
                    ke.consume();
                }
            }
            else if(!isInEng()) {
                specialInsert(c);
                ke.consume();
            }
            f18.charHit(c);

        }
    }

    //The following function is called only for bangla
    private void specialInsert(char what) {

        if(what=='q')
            what = 'A';
        else if(what=='z')
            what = 'T';
        else if(what=='=')
            what = '+';

        //System.err.println("Special insert");
        int pos = getCaret().getDot();
        String str = getText();
        //System.err.println("current pos = "+pos);

        if(pos<=0) {
            if(what=='c')
                replaceSelection("ch");
            else
                replaceSelection(""+what);
            return;
        }


        if(!(what=='a' || 
             what=='d' ||
             what=='i' ||
             //what=='h' || ছ লিখতে  hh লাগে.
             what=='n' ||
             what=='r' ||
             what=='s' ||
             what=='t' ||
             what=='u' ||
             what=='`' ||
             what=='c')) {
            replaceSelection(""+what);
            return;
        }

        if(what=='c') {
            replaceSelection("ch");
            return;
        }


        char c = str.charAt(pos-1);

        if(what=='`') {
            replaceSelection((c==' '||c=='`')? "`":"~");
            return;
        }

        if(Character.isLowerCase(c) && c==what) {
            select(pos-1,pos);
            char c1 = Character.toUpperCase(what);
            replaceSelection(""+c1);
            return;
        }
        if(Character.isUpperCase(c) && Character.toLowerCase(c)==what) {
            select(pos-1,pos);
            replaceSelection(what+""+what);
            return;
        }
        replaceSelection(""+what);
    }

    void handleOverFull() {
        String tmp = getText();
        if(tmp.length()<120) return;

        //Ami ki lainer shese Achhi? 
        int curPos = getCaret().getDot();
        String suffix = tmp.substring(curPos);
        if(curPos==tmp.length()) {
            f18.breakLine(tmp, "",1,0);
            return;
        }

        //nAki lAiner mAjhkhAne?
        int len = tmp.length();
        int end = (MAX_LINE_LEN > len? len : MAX_LINE_LEN);
        String prefix = tmp.substring(0,end-1);
        int breakPoint = prefix.lastIndexOf(' ');
        if(breakPoint < curPos) {
            f18.breakLine(tmp.substring(0,breakPoint),
                          tmp.substring(breakPoint),
                          1,
                          curPos-breakPoint);
        }
        else {
            f18.breakLine(tmp.substring(0,breakPoint),
                          tmp.substring(breakPoint),
                          0,
                          curPos);
        }
    }

    private static int MAX_LINE_LEN = 75;

    static void setMaxLineLen(int val) {
        MAX_LINE_LEN = val;
    }

    private int tukStart, tukEnd, nTukro, whichTukro = -1;
    private TreeSet<Completion> dabbrevLst  = new TreeSet<Completion>(new CompletionComparator());
    private Iterator<Completion> itr = null;
    public void keyPressed(KeyEvent ke) {
        int pos;
        boolean capsLockChanged = false;

        if(ke.getKeyCode()!=KeyEvent.VK_F12) {
            dabbrevLst.clear();
            itr = null;
        }
        switch(ke.getKeyCode()) {
        case KeyEvent.VK_F12:
            ke.consume();
            pos = getCaret().getDot();
            String str = getText().substring(0,pos);
            String[] tukro = str.split("\\.[^nthH]|,[^n]|</?[A-Z][^>]*>|[ &<>?!(){}@=|']");
            nTukro= tukro.length;
            String wordToComplete = tukro[nTukro-1];
            //System.err.println("["+wordToComplete+"]");
            tukEnd = pos;
            tukStart = pos-wordToComplete.length();
            f18.fillUp(dabbrevLst,wordToComplete);
            if(dabbrevLst.isEmpty()) return;
            sc.launch(dabbrevLst);
            break;


        case KeyEvent.VK_ENTER:
            pos = getCaret().getDot();
            
            f18.breakLine(getText().substring(0,pos),
                          getText().substring(pos),1,0);
            ke.consume();
            break;
        case KeyEvent.VK_SHIFT:
            if(f18.getShiftLock()) {
                capsLock = !capsLock;
            }
            break;

	case KeyEvent.VK_BACK_SPACE:
            letThisKeyPass = true;
            break;
	case KeyEvent.VK_DELETE:
            int kothAy = getCaret().getDot();
            if(kothAy == getText().length()) {
                f18.mergeWithNextLine(getCaret().getDot());
                ke.consume();
            }

            letThisKeyPass = true;

	    break;
        case KeyEvent.VK_UP:
        case KeyEvent.VK_DOWN:
        case KeyEvent.VK_LEFT:
        case KeyEvent.VK_RIGHT:
            capsLock = false;
            break;
        }
    }
        
    public void completionFound(String replacement) {
        if(replacement==null) return;
        select(tukStart,tukEnd);
        replaceSelection(replacement);
    }

    int matha, lej;
    String textToMove;

    public String getMoveTxt() {
        if(lej<=matha) {
            matha = 0;
            return getText();
        }
        else {
            return getText().substring(matha,lej);
        }
    }

    private boolean capsLock = false;

    public void keyReleased(KeyEvent ke1) {
        final KeyEvent ke = ke1;
        SwingUtilities.invokeLater(new Runnable() {
                public void run() {
                    switch(ke.getKeyCode()) {
                    case KeyEvent.VK_UP:
                        f18.changeLine(true);
                        break;
                    case KeyEvent.VK_DOWN:
                        f18.changeLine(false);
                        break;
                    case KeyEvent.VK_F2:
                        engPop.show(getSelectedText(),false);
                        break;
                        
                    case KeyEvent.VK_F3:
                        if(ke.isControlDown()) {
                            f18.insertBeng();
                            
                            f18.selectBeng(true);
                        }
                        else {
                            newPop.show(getSelectedText(),isInEng());
                        }
                        break;
                        
                    case KeyEvent.VK_F4:
                        dispPop.show(getSelectedText(),isInEng());
                        break;
                        
                    case KeyEvent.VK_F5:
                        mathPop.show(getSelectedText(),isInEng());
                        break;
                        
                    case KeyEvent.VK_F1:
                        f18.f1Hit();	
                        break;
                        
                    case KeyEvent.VK_1:
                        if((ke.getModifiers() & InputEvent.CTRL_MASK)!=0) {
                            matha = getCaretPosition();
                            insertIcon(shuru);
                        }
                        break;
                        
                    case KeyEvent.VK_2:
                        if((ke.getModifiers() & InputEvent.CTRL_MASK)!=0) {
                            lej = getCaretPosition();
                            insertIcon(shesh);
                        }
                        break;
                        
                        
                    case KeyEvent.VK_ESCAPE:
                        setCharacterAttributes(getStyle("black"), true);
                        break;
                        /*
                          case KeyEvent.VK_L:
                          if(ke.isControlDown()) {
                          f18.toggleLang();
                          }
                          break;
                        */
                    case KeyEvent.VK_S:
                        if(ke.isControlDown()) {
                            f18.saveNow();
                        }
                        break;
                    case KeyEvent.VK_L:
                        if(ke.isControlDown()) f18.loadCommentary();
                        break;
                    case KeyEvent.VK_P:
                        if(ke.isControlDown()) f18.playPause();
                        break;
                    case KeyEvent.VK_F:
                        if(ke.isControlDown()) f18.resumePlaying();
                        break;
                    case KeyEvent.VK_F8:
                        f18.f8Hit();		    
                        break;
                    }
                }
            });
        
    }
    
    boolean isInEng() {
        int pos = getCaret().getDot();
	String s = getText();
        s = s.substring(0,pos);

        //Check if after unfinished <
        int whereLT = s.lastIndexOf('<');
        int whereGT = s.lastIndexOf('>');
        
        if(whereLT > whereGT) return true;

        //Check if after unfinished @{
        int mark = s.lastIndexOf('@');
        if(mark < 0 || mark>=s.length()-1) return f18.startsInEnglish();
        return (s.charAt(mark+1)=='{'); 
    }

    Integer[] lookUp(String what) {
        if(what.trim().length()==0) what = "<EXR ";
        //System.err.println("Looking up "+what);
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

    Integer[] lookUpRE(String what) {
        if(what.trim().length()==0) what = "<EXR ";
        //System.err.println("Looking up regexp /"+what+"/");
	Vector<Integer> exrList = 
	    new Vector<Integer>();

        Pattern p = Pattern.compile(what);
        //System.err.println("Pattern = "+p);
        int pos = getCaret().getDot();
	String s = getText();
	int from = 0;
        Matcher m = p.matcher(s);
        boolean b = m.find(from);
	while(m.find(from)) {
            from = m.start();
            if(from > pos)
                exrList.add(m.start());
	    from++; 
	}
        if(exrList.size()==0)
            return null;
        else
            return exrList.toArray(new Integer[1]);
    }

    public void placeCursor(int nSpace) {
        String s = (lej<=matha? getText() : getText().substring(matha,lej));
        int tmpCount=0;
        int i;
        for(i=0;tmpCount<nSpace;i++) {
            if(s.charAt(i)==' ') tmpCount++;
        }
        setCaretPosition(matha+i);
    }

    public void actionPerformed(ActionEvent ae) {
	String comm = ae.getActionCommand();
	//System.err.println(comm);
    }
}
