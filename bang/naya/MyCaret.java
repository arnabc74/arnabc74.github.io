import java.awt.*;
import javax.swing.*;
import javax.swing.text.*;

public class MyCaret extends DefaultCaret {
    private boolean toggle = true;
    public MyCaret() {
        width = 5;
        height = 10;
    }

    private final static Color 
        on = new Color(0,255,0,100),
        off = new Color(255,0,0,100);

    public void paint(Graphics g) {

        g.setColor(getComponent().isFocusOwner()? on : off);

        g.fillRect(x,y,width,height);


    }
    
    public void damage(Rectangle r) {
        getComponent().repaint(this);
        r.width = 5;
        height = r.height;
        x = r.x;
        y = r.y;
        repaint();
    }
}
