import java.awt.*;
import javax.swing.*;

public class FullFrame extends JFrame {
    Finalise f;

    BengPane bpane;
    public FullFrame(String baseLocn, Finalise f) {
        this.f = f;
        bpane = new BengPane(baseLocn, f, this);
        add(new JScrollPane(bpane));

        pack();
        setSize(600,600);
    }


    void display(String str) {
        bpane.display(str);
        setVisible(true);
    }

    public static void main(String args[]) {
        new FullFrame("",null);
    }
}
