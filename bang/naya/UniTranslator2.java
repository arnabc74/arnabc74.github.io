/*[Update:[Thu Apr 04 IST 2019]]
  **Sun Oct 09 2016
  Corrected bug in primsec: Added RAPHALA_CHANDRA case, and rectified REF_CHANDRA (it had no mid)
  **Thu Apr 04 2019
  Corrected the ref vs yaphala bug by adding a zero-width non-joiner between ra and ya.
 */
public class UniTranslator2 {
    private String hasSep, left, mod1, mid, mod2, right1, right2, end;
    private Emitter emtr;
    private BHaraph bh;
    private boolean hasanta;

    public UniTranslator2(Emitter emtr, BHaraph bh) {
        this.emtr = emtr;
        this.bh = bh;
    }

    public  void translate(int p , int s, int v, Emitter emtr) {
        this.emtr = emtr;
        translate(p,s,v);
    }

    public  void translate(int p , int s, int v) {
        boolean yaphalaPresent;

        hasSep = (hasanta && p < Common.A? "\u200c\u200c" : "");
        hasanta = false;
        //System.err.print("UniTranslator2: p = "+p+" s = "+s+" v = "+v+"\n");
        left = mod1 = mid = mod2 = right1 = right2 = end = "";
        yaphalaPresent = false;
  
        if(v>=Common.YAPH) {
            v -= Common.YAPH;
            right1 = (p==Common.R?"\u200c":"")+"\u09cd\u09af";
        }

        switch(v) {
    
        case Common.AA_KAR : 
            right2=bh.AA_KAR;
            break;
        case Common.II_KAR : 
            right2=bh.II_KAR;
            break;
        case Common.HAS_KAR :
            right2=bh.HAS_KAR;
            hasanta = true;
            break;
        case Common.O_KAR :
            right2 = bh.O_KAR;
            break;
        case Common.OU_KAR :
            right2=bh.OU_KAR;
            break;
        case Common.OI_KAR :
            right2=bh.OI_KAR;
            break;
        case Common.E_KAR :
            right2=bh.E_KAR;
            break;
        case Common.I_KAR :
            right2=bh.I_KAR;
            break;
        case Common.U1_KAR :
            right2=bh.U1_KAR;
            break;
        case Common.UU_KAR :
            right2=bh.UU_KAR;
            break;
        case Common.RRI_KAR:
            right2=bh.RRI_KAR;
            break;
        case Common.A_KAR:
        case Common.NO_KAR:
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
        switch(s) {
        case Common.RAPHALA:
            mid=bh.axar[p] + bh.RAPHALA;
            break;
        case Common.REF:
            mid=bh.REF+bh.axar[p];
            break;
        case Common.CHANDRA:
            mid=bh.axar[p];
            end=bh.CHANDRA;
            break;
        case Common.REF_RAPHALA:
            mid=bh.REF+bh.axar[p]+bh.RAPHALA;
            break;
        case Common.REF_CHANDRA:
            mid = bh.axar[p];
            mod1=bh.REF;
            mod2=bh.CHANDRA;
            break;

        case Common.RAPHALA_CHANDRA:
            mid = bh.axar[p];
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
        return hasSep+left+mid+mod1+mod2+right1+right2+end;
    }
}
