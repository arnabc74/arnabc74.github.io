//[Update:[Wed Feb 03 IST 2021]]
/*History:
**Wed Aug 26 2020
Started.
**Mon Sep 07 2020
Moved to v.
**Mon Sep 28 2020
Added currFolder, so that all mlt's may be kept in one folder.
This program is to be run via the "doamelt <folderlist>" command.
**Mon Oct 05 2020
Fixed a bug: now we can "trans" during a blank.
**Thu Oct 22 2020
Added the animation feature: Just add the triple "<fileroot> <start> <end>" after the *next* event cue.txt
Then a new MLT file is produced in mlt folder with name like loc<count>.mlt, storing the animation made 
of files <fileroot>i.png, where i runs from <start> to <end>. This MLT file is incorporated in the main MLT
file in the appropriate place after shortening the duration of one slide.
**Tue Feb 02 2021
Allowing padded file numbering for animation.
*/
import java.util.*;
import java.io.*;
import java.awt.event.*;
import java.awt.image.*;
import javax.imageio.*;

public class Melter {
    private final static int BLANK=0, SHOW=1;
    private String currFolder, currPic;
    private boolean trans, hasAnim;
    private long timeNow, startTime;
    private PrintWriter pw;
    private int currentType, reduceBy;
    private Vector<String> transList;
    private String froot, base;
    private String locMltRoot;
    
    public Melter(String froot) throws Exception {
        this.froot = froot;
        base = "../"+froot+"/";
        transList = new Vector<String>();
        pw = new PrintWriter(new File(froot+".mlt"));
        beginMLT(pw);
        Scanner scnr = new Scanner(new File(froot+"/cue.txt"));
        while(scnr.hasNextLine()) {
            reduceBy = 0; hasAnim = false;
            String line = scnr.nextLine();
            StringTokenizer st = new StringTokenizer(line);

            // {{{ Read the first two (compulsory tokens: tag and timestamp
            String tag = st.nextToken();
            try {
                timeNow = Long.parseLong(st.nextToken());
            }
            catch(Exception ex) {
                System.err.println("Problem reading numbers in first two fields of ["+line+"]");
                ex.printStackTrace();
                System.exit(1);
            }
            // }}}

            // {{{ Read the three optional tokens for animation
            int locFrom, locTo;
            if(st.countTokens()==3) {
                try {
                    locMltRoot = st.nextToken();
                    String fromString = st.nextToken();
                    locFrom = Integer.parseInt(fromString);
                    locTo = Integer.parseInt(st.nextToken());
                    createLocMLT(locMltRoot, locFrom, locTo, fromString.length());
                    reduceBy = locTo-locFrom+1;
                    hasAnim = true;
                }
                catch(Exception ex) {
                    System.err.println("Problem reading numbers in extension fields of ["+line+"]");
                    ex.printStackTrace();
                    System.exit(1);
                }
            }
            // }}}

            
            if(tag.equals("o")) {
                startTime = timeNow;
                currentType = SHOW;
                currFolder = "/home/cssc/na/v/android/";
                currPic = "sync.png";
            }
            else {
                dump();
                if(tag.equals("clear")) {
                    currentType = BLANK;
                }
                else if(tag.equals("trans")) {
                    trans = !trans;
                    //currentType = SHOW;
                }
                else if(tag.equals("k")) {
                    currentType = BLANK;
                    currFolder = base;
                }
                else if(tag.equals("end")) {
                    currentType = BLANK;
                }
                else {
                    currFolder = base;
                    currPic = tag;
                    currentType = SHOW;
                }
                startTime = timeNow;
            }                    
        }
        
        if(currentType == SHOW) {
            timeNow = startTime + 1000;
            dump();
        }
        endMLT(pw);
        pw.close();
        for(String tmp : transList) {
            makeTransparent(tmp);
        }
    }

    static void beginMLT(PrintWriter pw1) {
        pw1.println("<mlt>\n\t<profile frame_rate_den=\"1\" frame_rate_num=\"30\" height=\"480\" width=\"640\"/>");
        pw1.println("<multitrack>\n	<playlist>");
    }

    static void endMLT(PrintWriter pw1) {
        pw1.println("</playlist>\n</multitrack>\n</mlt>");
    }

    private int locCount = 0;
    void createLocMLT(String rt, int f, int t, int paddedLen) {
        System.err.format("Creating local mlt [%s, %d, %d]\n",rt,f,t);
        String fmt = "%s%s%0"+paddedLen+"d.png";
        try {
            locCount++;
            PrintWriter locPw = new PrintWriter(new File("mlt/loc"+locCount+".mlt"));
            beginMLT(locPw);
            for(int i=f;i<=t;i++) {
                locPw.format("<producer length=\"1\">");
                locPw.print("<property name=\"resource\">");
                locPw.format(fmt,currFolder,rt,i);
                locPw.println("</property></producer>");
            }
            endMLT(locPw);
            locPw.close();
        }
        catch(Exception ex) {
            System.err.format("Can't create local MLT in [mlt/loc%d.mlt]\n",locCount);
            ex.printStackTrace();
        }
           
    }
    private final static int transVal = (180 << 24);
    
    void makeTransparent(String f) {
        try {
            //System.err.println("Trying to read ["+froot+"/"+f+"]");
            BufferedImage img = ImageIO.read(new File(froot+"/"+f));
            int h = img.getHeight();
            int w = img.getWidth();
            for(int i=0;i<h;i++) {
                for(int j=0;j<w;j++) {
                    int pix = img.getRGB(j,i);
                    if(((pix >> 24)&0xff) != 0) {
                        int newPix = (pix & 0xffffff) | transVal;
                        img.setRGB(j,i,newPix);
                    }
                }
            }
            ImageIO.write(img,"png", new File(froot+"/trans_"+f));
        }
        catch(Exception ex) {
            ex.printStackTrace();
        }
    }
    
    void dump() {
        pw.format("<producer length=\"%f\">",(timeNow-startTime)/33.33333 - reduceBy);
        pw.print("<property name=\"resource\">");
        if(currentType==SHOW) {
            if(trans) {
                transList.add(currPic);
                pw.print(currFolder+"trans_"+currPic);
            }
            else {
                pw.print(currFolder+currPic);
            }
        }
        else {
            pw.print("/home/cssc/na/v/android/transparent.png");
        }
        pw.println("</property>\n</producer>");
        if(hasAnim) {
            pw.format("<producer length=\"%d\">",reduceBy);
            pw.format("<property name=\"resource\">loc%d.mlt</property>\n</producer>\n",locCount);
        }
    }
    
    public static void main(String args[])  throws Exception {
        Melter mltr = new Melter(args[0]);
        //Melter.makeTransparent(args[0]);
    }
}
