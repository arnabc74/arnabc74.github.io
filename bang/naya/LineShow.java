import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class LineShow extends JPanel 
    implements MouseListener {
 
    private JLabel lab;

    public LineShow(int i) {
        setLayout(new BorderLayout());
        setBackground(Color.LIGHT_GRAY);
        lab = new JLabel();
        add(lab);
        lab.setText("<html>"+i+"</html>");
        addMouseListener(this);
    }


    public void setEnabled(boolean state) {
        active = state;
        if(active) {
            setBackground(Color.LIGHT_GRAY);
        }
        else {
            setBackground(Color.BLACK);
            setText("");
        }
    }

    public void setText(String str) {
        lab.setText(str);
        //repaint();
    }

    public void setSelected(boolean sel) {
        isSelected = sel;
        setBackground(isSelected? Color.PINK : Color.LIGHT_GRAY);
        repaint();
    }

    private boolean isSelected=false, startsInBeng=true, endsInBeng=true;

    
    private final static Color
        red = new Color(255,150,150),
        blue = new Color(150,150,255);

    private final static GradientPaint 
        engStart = new GradientPaint(0,0,red,
                                     20,0,Color.LIGHT_GRAY),
        bengStart = new GradientPaint(0,0,blue,
                                      20,0,Color.LIGHT_GRAY);
  

    public void setEnds(boolean strt, boolean end) {
        startsInBeng = strt;
        endsInBeng = end;
    }

    private boolean active;

    public void paintComponent(Graphics g) {
        super.paintComponent(g);
        if(!active) return;
        Graphics2D g2 = (Graphics2D) g;

        g2.setPaint((startsInBeng? bengStart: engStart));
        g2.fillRect(0,0,21,getHeight());

        int w = getWidth();
        if(endsInBeng) {
            GradientPaint bengEnd = 
                new GradientPaint(w-20,0,Color.LIGHT_GRAY,
                                  w,0,blue);
            g2.setPaint(bengEnd);
        }
        else {
            GradientPaint engEnd = 
                new GradientPaint(w-20,0,Color.LIGHT_GRAY,
                                  w,0,red);
            g2.setPaint(engEnd);
        }
        g2.fillRect(w-21,0,20,getHeight());
    }

    public void mouseEntered(MouseEvent me) {}
    public void mouseExited(MouseEvent me) {}
    public void mouseClicked(MouseEvent me) {
        requestFocus();
    }
    public void mousePressed(MouseEvent me) {}
    public void mouseReleased(MouseEvent me) {}
}
