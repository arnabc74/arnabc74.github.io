public class ScoreFilter implements Emitter {

    private UniTranslator2 ut;
    private String body;


    void clear() {
        body = "";
    }

    public ScoreFilter() {
        ut = new UniTranslator2(null, new BUnicode());
    }


    public String getString() {
        return body;
    }

    private boolean prevI, prevNoKAr, prevPunct=true;

    public void emit(int p, int s, int v) {
        boolean handled = false;

        if(hasRef(s)) {
            ut.translate(Common.R, 0, Common.HAS_KAR);
            body += ut.getString()+" ";
            ut.translate(p, stripRef(s), v);
            body += ut.getString();
            handled = true;
        } 

        if(!prevPunct && p==Common.X) {
            ut.translate(Common.K,0,Common.HAS_KAR);
            body += ut.getString()+" ";
            ut.translate(Common.KH,s,v);
            body += ut.getString();
            handled = true;
        }

        if(!prevPunct && isYukta(p)) {
            Pair temp = YuktaSplitter.pr[p-Common.CH_CHH];
            ut.translate(temp.getFirst(),0,Common.HAS_KAR);
            body += ut.getString()+" ";
            ut.translate(temp.getSecond(),s,v);
            body += ut.getString();
            handled = true;
        }
        else if(!prevPunct && s==Common.RAPHALA) {
            ut.translate(p, 0, Common.HAS_KAR);
            body += ut.getString()+" ";
            ut.translate(Common.R, 0, v);
            body += ut.getString();
            handled = true;
        }
        if(!prevPunct && v >= Common.YAPH) {
            ut.translate(p,0,Common.HAS_KAR);
            body += ut.getString()+" ";
            ut.translate(p,s,v-Common.YAPH);
            body += ut.getString();
            handled = true;
        }
        if(!(isSwar(p) || v==Common.NO_KAR || handled)) {
            body += " ";
        }

        if(prevNoKAr && isSwar(p)) {
            prevNoKAr = false;
            body += " ";
        }

        if(prevI && p==Common.O) {
            prevI = false;
            body += " ";
        }
        if(!handled) {
            ut.translate(p,s,v);
            body += ut.getString();
            //System.err.println("music: ["+body+"]");
        }
        prevI = (v==Common.I_KAR);
        prevNoKAr = (v==Common.NO_KAR);
        prevPunct = isPunct(p);
    }

    private boolean hasRef(int s) {
        return (s==Common.REF  || s==Common.REF_CHANDRA ||
        s==Common.REF_RAPHALA);
    }

    private int stripRef(int s) {
        if(s==Common.REF) return 0;
        if(s==Common.REF_CHANDRA) return Common.CHANDRA;
        if(s==Common.REF_RAPHALA) return Common.RAPHALA;
        return -99;
    }


    private boolean isSwar(int p) {
        return (p>=Common.A && p<=Common.OU);
    }

    private boolean isPunct(int p) {
        return (p>=Common.EXCLAM);
    }

    private boolean isYukta(int p) {
        if (p>=Common.CH_CHH && p<=Common.N_D) return true;
        if(p>=Common.K_K && p<=Common.N_D_B) return true;

        return false;
    }

    public void emitEng(String str) {
        body += str;
    }

    public void emitError(String msg) {
        body += "###";
    }

    public static void main(String args[]) {

  
    }
}
