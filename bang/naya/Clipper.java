import java.awt.*;
import java.awt.datatransfer.*;

public class Clipper
 implements Transferable, 
            ClipboardOwner {

    Clipboard cb;
    DataFlavor[] flavors = {DataFlavor.stringFlavor};
    String data;

    public Clipper() {
      Toolkit tools = Toolkit.getDefaultToolkit();
      cb = tools.getSystemClipboard();
    }    

    public boolean isDataFlavorSupported(DataFlavor flavor) {
	return (flavor == DataFlavor.stringFlavor);
    }

   public DataFlavor[] getTransferDataFlavors() {
     return flavors;
   }
 
   public void lostOwnership(Clipboard clip, 
                             Transferable transfer) {}

   public void setString(String what) {
     data = what;
     cb.setContents(this, this);
   }

   public Object getTransferData(DataFlavor flavor) {
     if(flavor == DataFlavor.stringFlavor) return data;
     return null;
   }

    public static void main(String args[])  throws Exception {
	Clipper c = new Clipper();
        c.setString("It works!");
    }
}
