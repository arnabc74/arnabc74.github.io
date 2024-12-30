/*[Update:[Wed Apr 11 IST 2018]]
**Sat Oct 31 2015
Changed {\rm ... }to <E>...</E>
**Sat Nov 14 2015
Corrected order of <E> and tag
**Fri Apr 08 2016
Added UNPROT
**Thu Jul 07 2016
Added tag separator (;)
**Tue Apr 11 2017
` now starts UNPROT even in Bengali. This helps to convert explanations
to INEX in existing books.
**Fri Apr 14 2017
Corrected a bug in UNPROT: closing tag was still using inEnglish. Now it does not.
*/
import java.awt.*;
import java.util.*;
import java.awt.event.*;
import javax.swing.*;

class TagPopUp extends APopUp {

    TagPopUp(TagEditor t, String name, String style) {
	super(t,name,"","",style);
    }

    private final int 
        ORD = 0, 
        PROT = 1,
        RM = 2,
        UNPROT = 3;

    public void keyReleased(KeyEvent ke) {
	if(ke.getKeyCode()==KeyEvent.VK_ENTER) {
	    String rawStr = tf.getText();
            String str = null;
            int type = ORD;

            // {{{ Extract prefix (-/=/`/none)
            if(rawStr.startsWith("-")) {
                if(!inEnglish) type = RM;
                str = rawStr.substring(1);
            }
            else if(rawStr.startsWith("=")) {
                if(!inEnglish) type = PROT;
                str = rawStr.substring(1);
            }
            else if(rawStr.startsWith("`")) {
                /* if(inEnglish) */ type = UNPROT;
                str = rawStr.substring(1);
            }
            else {
                str = rawStr;
            }
            // }}}

            // {{{ Split str into tag and bdy
            int pos = str.indexOf(',');
            String tag, bdy;

            if(pos < 0) {
                tag = str;
                bdy = "";
            }
            else {
                tag = str.substring(0,pos).trim().toUpperCase();
                bdy = str.substring(pos+1);
            }
            tag = tag.trim().toUpperCase();
            bdy = bdy.trim();
            // }}}

            // {{{ Create left(right)Tag

            String[] tagPart = tag.split(";");

            String leftTag = "";
            for(int i=0; i<tagPart.length;i++)
                leftTag += "<"+tagPart[i]+">";
            String rightTag = "";
            for(int i=tagPart.length-1;i>=0;i--)
                rightTag += "</"+tagPart[i]+">";
            // }}}

            // {{{ Insert based on type
            switch(type) {
            case ORD:
                tst.sendLeftRaw(leftTag, true);
                tst.sendBody(bdy,s, true);
                tst.sendRightRaw(rightTag,
                                 true,bdy.length()==0);
                break;
            case PROT:
                tst.sendLeftRaw(leftTag, inEnglish);
                tst.sendBody(bdy,s, inEnglish);
                tst.sendRightRaw(rightTag,
                                 inEnglish,bdy.length()==0);
                break;
            case RM:
                tst.sendLeftRaw("<E>"+leftTag, inEnglish);
                tst.sendBody(bdy,s, inEnglish);
                tst.sendRightRaw(rightTag+"</E>",
                                 inEnglish,bdy.length()==0);
                break;
            case UNPROT:
                tst.sendLeftRaw(leftTag+"@}", true);
                tst.sendBody(bdy,s, true);
                tst.sendRightRaw("@{"+rightTag,
                                 true,bdy.length()==0);
                break;
            }
            // }}}
            history.remove(rawStr);
            history.add(rawStr);
            setVisible(false);
        }
        else {
            super.keyReleased(ke);
        }
    }
}

