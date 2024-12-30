import java.io.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.text.*;

class BengPanel extends JPanel
    implements Emitter {
    int p,s,v;
    String str;
    String line = "";
    boolean endOfLine = true;
    JDialog errDlg;
    JLabel errLab;

    Font f;
    Finalise fnl;

    public BengPanel(Finalise fnl, String baseLocn) {
        this.fnl = fnl;
        setBackground(Color.pink);
        errDlg = new JDialog();
        errDlg.addKeyListener(new ErrorKeyAdapter(fnl,errDlg));

        errLab = new JLabel();
        errDlg.add(errLab);
        try {
            /*
              f = Font.createFont(Font.TRUETYPE_FONT,
              new FileInputStream(baseLocn+"ALIPI_B1.TTF"));*/
            f = Font.createFont(Font.TRUETYPE_FONT,
                                getClass().
                                getClassLoader().
                                getResourceAsStream("alipi_b1.ttf"));
            //				new FileInputStream("MALOTI_E.TTF"));
            f = f.deriveFont(30f);
        }
        catch(Exception ex) {
            System.err.println("Can't open font at "+baseLocn);
            ex.printStackTrace();
        }
        setPreferredSize(new Dimension(500,50));
    }

    private String left, mod1, mid, mod2, right1, right2;

    protected  void emit1(int p , int s, int v) {
        boolean yaphalaPresent;


        //System.err.print("***p = "+p+" s = "+s+" v = "+v+"\n");
        left = mod1 = mid = mod2 = right1 = right2 = "";
        yaphalaPresent = false;
  
        if(v>=Common.YAPH) {
            v -= Common.YAPH;
            yaphalaPresent = true;
        }
        else {
            yaphalaPresent = false;
        }
  

        switch(v) {
    
        case Common.AA_KAR : 
            if(yaphalaPresent) {
                right1="\u00c9";
                right2="\u00a1";
            }
            else {
                right1="\u00a1";
            }
            break;
        case Common.II_KAR : 
            right1="\u00a3";
            if(yaphalaPresent) right2="\u00c9";
            break;
        case Common.HAS_KAR :
            right1="\u00da";
            if(yaphalaPresent) right2="\u00c9";
            break;
        case Common.O_KAR :
            left = "\u00ad";
            right1 = "\u00a1";
            if(yaphalaPresent) {
                right1="\u00c9";
                right2="\u00a1";
            }
            break;
        case Common.OU_KAR :
            left="\u00ad";
            if(yaphalaPresent) {
                right1="\u00c9";
                right2="ou";
            }
            else {
                right1="\u00b1";
            }
            break;
        case Common.OI_KAR :
            left="\u00af";
            if(yaphalaPresent) right1="\u00c9";
            break;
        case Common.E_KAR :
            left="\u00ad";
            if(yaphalaPresent) right1="\u00c9";
            break;
        case Common.I_KAR :
            left="\u00a2";
            if(yaphalaPresent) right1="\u00c9";
            break;
        case Common.U1_KAR :
            right1="\u00a4";
            if(yaphalaPresent) right2="\u00c9";
            break;
        case Common.UU_KAR :
            right1="\u00a7";
            if(yaphalaPresent) right2="\u00c9";
            break;
        case Common.RRI_KAR:
            right1="\u00aa";
            if(yaphalaPresent) right2="\u00c9";
            break;
        case Common.A_KAR:
            if(yaphalaPresent) right1="\u00c9";
            break;
    
        default :
            System.err.println("Unknown vowel sign: "+v+"\n");
        }

        primSec(p,s);
        hasYaphala = false;
    }
    boolean hasYaphala;
    private  void primSec(int p, int s) {
        switch(s) {
        case Common.RAPHALA:
            if(!raphAbsorbed(p)) {
                mid=BHaraph.axar[p];
                mod2="\u00cc";
            }
            break;
        case Common.REF:
            mod1="\u00d1";
            mid=BHaraph.axar[p];
            break;
        case Common.CHANDRA:
            mid=BHaraph.axar[p];
            mod2="y";
            break;
        case Common.REF_RAPHALA:
            mod1="\u00d1";
            if(!raphAbsorbed(p)) {
                mid=BHaraph.axar[p];
                mod2="\u00cc";
            }
            break;
        case Common.REF_CHANDRA:
            mod1="\u00d1";
            mod2="y";
            break;
        case Common.NOTHING:
            //System.err.println("p======"+p+", axar = ");
            mid=BHaraph.axar[p];
            break;
        }
    }

    boolean raphAbsorbed(int p) {
        switch(p) {
        case Common.K :
            mid=new String(new byte[]{(byte)0x9c,(byte)0xb2});	   
            return true;
        case Common.T :
            mid=new String(new byte[]{(byte)0x9c});
            return true;
        case Common.BH :	
            mid=new String(new byte[]{(byte)0xef});	    
            return true;
        case Common.N_T :
            mid=new String(new byte[]{(byte)0xbf,(byte)0xbb});
            return true;
        case Common.S_T :
            mid=new String(new byte[]{(byte)0xd9,(byte)0xbb});
            return true;
        case Common.S_K :
            mid=new String(new byte[]{(byte)0xfb});
            return true;
        }
        return false;
    }

    public void emitEng(String str) {}


    public void emitError(String msg) {

        if(!fnl.isInBeng()) return;

        Toolkit.getDefaultToolkit().beep();
        errLab.setText(msg);
        errDlg.setSize(600,100);
        errDlg.setModal(true);
        errDlg.setVisible(true);
    }

    public void emit(int p, int s, int v) {
        emit1(p,s,v);

        str = left+mid+mod1+mod2+right1+right2;
        if(endOfLine) {
            endOfLine = false;
            line = "";
        }
        //System.err.println("\t["+str+"]");
        line += str;

        repaint();
    }

    void showLine() {
        endOfLine = true;
    }
    public void paintComponent(Graphics g) {
        super.paintComponent(g);
        Graphics2D g2 = (Graphics2D) g;

        g2.setFont(f);
        g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, 
                            RenderingHints.VALUE_ANTIALIAS_ON);
        g.drawString(line,5,40);
    }
}

class ErrorKeyAdapter extends KeyAdapter {
    Finalise fnl;
    JDialog dlg;

    ErrorKeyAdapter(Finalise fnl, JDialog dlg) {
        this.fnl = fnl;
        this.dlg = dlg;
    }

    public void keyReleased(KeyEvent ke) {
        if(ke.getKeyCode()==KeyEvent.VK_ESCAPE) {
            fnl.toggleLang();
            dlg.setVisible(false);
            fnl.reqFocus();
        }
        else if(ke.getKeyCode()==KeyEvent.VK_F12) {
            dlg.setVisible(false);
            fnl.reqFocus();
        }
    }
}