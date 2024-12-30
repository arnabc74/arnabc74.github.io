/*[Update:[Thu Apr 04 IST 2019]]
**Sun Oct 09 2016
   Corrected bug in primsec: Added RAPHALA_CHANDRA case, and rectified REF_CHANDRA (it had no mid)
 */
public class UniTranslator {
    private String left, mod1, mid, mod2, right1, right2;
    private Emitter emtr;
    private BHaraph bh;

    public UniTranslator(Emitter emtr, BHaraph bh) {
        this.emtr = emtr;
        this.bh = bh;
    }

    public  void translate(int p , int s, int v, Emitter emtr) {
        this.emtr = emtr;
        translate(p,s,v);
    }

    public  void translate(int p , int s, int v) {
        boolean yaphalaPresent;


        //System.err.print("UniTranslator: p = "+p+" s = "+s+" v = "+v+"\n");
        left = mod1 = mid = mod2 = right1 = right2 = "";
        yaphalaPresent = false;
  
        if(v>=Common.YAPH) {
            v -= Common.YAPH;
            yaphalaPresent = true;
        }
        else {
            yaphalaPresent = false;
        }
  
        //System.err.println("UniTranslator:  v = "+v+" yaphalaPresent="+yaphalaPresent);

        switch(v) {
    
        case Common.AA_KAR : 
            if(yaphalaPresent) {
                right1=bh.YAPHALA;
                right2=bh.AA_KAR;
            }
            else {
                right1=bh.AA_KAR;
            }
            break;
        case Common.II_KAR : 
            right1=bh.II_KAR;
            if(yaphalaPresent) right2=bh.YAPHALA;
            break;
        case Common.HAS_KAR :
            right1=bh.HAS_KAR;
            if(yaphalaPresent) right2=bh.YAPHALA;
            break;
        case Common.O_KAR :
            left = bh.E_KAR;
            if(yaphalaPresent) {
              right1=bh.YAPHALA;
              right2 = bh.AA_KAR;
            }
            else {
              right1 = bh.AA_KAR;
            }
            break;
        case Common.OU_KAR :
            left=bh.E_KAR;
            if(yaphalaPresent) {
                right1=bh.YAPHALA;
                right2=bh.OU_KAR;
            }
            else {
                right1=bh.OU_KAR;
            }
            break;
        case Common.OI_KAR :
            left=bh.OI_KAR;
            if(yaphalaPresent) right1=bh.YAPHALA;
            break;
        case Common.E_KAR :
            left=bh.E_KAR;
            if(yaphalaPresent) right1=bh.YAPHALA;
            break;
        case Common.I_KAR :
            left=bh.I_KAR;
            if(yaphalaPresent) right1=bh.YAPHALA;
            break;
        case Common.U1_KAR :
            right1=bh.U1_KAR;
            if(yaphalaPresent) right2=bh.YAPHALA;
            break;
        case Common.UU_KAR :
            right1=bh.UU_KAR;
            if(yaphalaPresent) right2=bh.YAPHALA;
            break;
        case Common.RRI_KAR:
            right1=bh.RRI_KAR;
            if(yaphalaPresent) right2=bh.YAPHALA;
            break;
        case Common.A_KAR:
        case Common.NO_KAR:
            if(yaphalaPresent) right1=bh.YAPHALA;
            break;
    
        default :
            System.err.println("Unknown vowel sign: "+v+"\n");
            emtr.emitError("Unknown vowel sign: "+v+"\n");
        }

        primSec(p,s);
        hasYaphala = false;
    }

    boolean hasYaphala;
    private  void primSec(int p, int s) {
        //System.err.println("UniTranslator/primSec: p="+p+", s="+s);
        switch(s) {
        case Common.RAPHALA:
            if(!raphAbsorbed(p)) {
                mid=bh.axar[p];
                mod2=bh.RAPHALA;
            }
            break;
        case Common.REF:
            mod1=bh.REF;
            mid=bh.axar[p];
            break;
        case Common.CHANDRA:
            mid=bh.axar[p];
            mod2=bh.CHANDRA;
            break;
        case Common.REF_RAPHALA:
            mod1="\u00d1";
            if(!raphAbsorbed(p)) {
                mid=bh.axar[p];
                mod2=bh.RAPHALA;
            }
            break;
        case Common.REF_CHANDRA:
            mid=bh.axar[p];
            mod1=bh.REF;
            mod2=bh.CHANDRA;
            break;
        case Common.RAPHALA_CHANDRA:
            mid=bh.axar[p];
            mod1=bh.RAPHALA;
            mod2=bh.CHANDRA;
            break;
        case Common.NOTHING:
            //System.err.println("p======"+p+", axar = ");
            mid=bh.axar[p];
            break;
        }
    }

    boolean raphAbsorbed(int p) {
        switch(p) {
        case Common.K :
            mid=bh.KRA;
            return true;
        case Common.T :
            mid=bh.TRA;
            return true;
        case Common.BH :	
            mid=bh.BHRA;
            return true;
        case Common.N_T :
            mid=bh.NTRA;
            return true;
        case Common.S_T :
            mid=bh.STRA;
            return true;
        case Common.S_K :
            mid=bh.SKRA;
            return true;
        }
        return false;
    }

    public String getString() {
        /*System.err.println("UniTranslator: "+
                           "left=["+left+"]"+
                           "mid=["+mid+"]"+
                           "mod1=["+mod1+"]"+
                           "mod2=["+mod2+"]"+
                           "right1=["+right1+"]"+
                           "right2=["+right2+"]");*/
        return left+mid+mod1+mod2+right1+right2;
    }
}
