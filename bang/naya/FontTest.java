import java.awt.*;
import javax.swing.*;

public class FontTest {

  public static void main(String args[]) throws Exception{
      new FontTest();
  }

  public FontTest() throws Exception {

      Font fnt= Font.createFont(Font.TRUETYPE_FONT,
                                 getClass().
                                 getClassLoader().
                                 getResourceAsStream("ALIPI_B1.TTF"));

      fnt = fnt.deriveFont(30f);

      GraphicsEnvironment genv = 
          GraphicsEnvironment.getLocalGraphicsEnvironment();
      genv.registerFont(fnt);
      JFrame f = new JFrame();
      JTextPane l = new JTextPane();
      l.setContentType("text/html");
      l.setEditable(false);
      l.setText("<html>It <font size=40 face=\"AdarshaLipiBold\">works!</font></html>");
      f.add(l);
      f.pack();
      f.setSize(300,100);
      f.setVisible(true);
  }
}
