import java.awt.*;
import javax.swing.*;

public class Glass extends JComponent {
    public void paintComponent(Graphics g) {
        Rectangle clip = g.getClipBounds();
        Color alphaWhite = new Color(1f,1f,1f,0.65f);
        g.setColor(alphaWhite);
        g.fillRect(clip.x,clip.y,clip.width,clip.height);
    }
}
