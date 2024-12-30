import java.io.*;

public class TexEmitter 
    implements Emitter {
    private String left,mod1,mid,mod2,right1,right2;
    private FileOutputStream fout;
    public TexEmitter(FileOutputStream f) {
	fout = f;
    }

    public void emitError(String msg) {
        try {
	    fout.write("\\fbox{{\\rm ERROR}}".getBytes());
	}
	catch(IOException ioe) {
	    ioe.printStackTrace();
	}      
    }

    public void emit(int p , int s, int v) {
	boolean yaphalaPresent;

	//System.err.print("***p = "+p+" s = "+s+" v = "+v+"\n");
	left = mod1 = mid = mod2 = right1 = right2 = "";
	yaphalaPresent = false;
  
	if(v>=Common.YAPH) {
	    v -= Common.YAPH;
	    yaphalaPresent = true;
	}
	else {
	    yaphalaPresent = false;
	}
  

	switch(v) {
	case Common.AA_KAR : 
	    if(yaphalaPresent) {
		right1="Y";
		right2="a";
	    }
	    else {
		right1="a";
	    }
	    break;
	case Common.II_KAR : 
	    right1="ii";
	    if(yaphalaPresent) right2="Y";
	    break;
	case Common.HAS_KAR :
	    right1=":/";
	    if(yaphalaPresent) right2="Y";
	    break;
	case Common.O_KAR :
	    left = "e";
	    right1 = "a";
	    if(yaphalaPresent) {
                right1="Y";
                right2="a";
            }
	    break;
	case Common.OU_KAR :
	    left="e";
	    if(yaphalaPresent) {
		right1="Y";
		right2="ou";
	    }
	    else {
		right1="ou";
	    }
	    break;
	case Common.OI_KAR :
	    left="{oi}";
	    if(yaphalaPresent) right1="Y";
	    break;
	case Common.E_KAR :
	    left="e";
	    if(yaphalaPresent) right1="Y";
	    break;
	case Common.I_KAR :
	    left="i";
	    if(yaphalaPresent) right1="Y";
	    break;
	case Common.U1_KAR :
	    right1="u";
	    if(yaphalaPresent) right2="Y";
	    break;
	case Common.UU_KAR :
	    right1="uu";
	    if(yaphalaPresent) right2="Y";
	    break;
	case Common.RRI_KAR:
	    right1="rR";
	    if(yaphalaPresent) right2="Y";
	    break;
	case Common.A_KAR:
	case Common.NO_KAR:
	    if(yaphalaPresent) right1="Y";
	    break;
    
	default :
	    System.err.println("Unknown vowel sign: "+v+"\n");
            emitError("Unknown vowel sign: "+v);
	}

	primSec(p,s);
	printIt();
    }

    private void primSec(int p, int s) {
	switch(s) {
	case Common.RAPHALA:
	    if(!raphAbsorbed(p)) {
		mid=NameDat.primName[p];
		mod2="R";

	    }
	    break;
	case Common.REF:
	    mod1="r/";
	    mid=NameDat.primName[p];
	    break;
	case Common.CHANDRA:
	    mid=NameDat.primName[p];
	    mod2="NN";
	    break;
	case Common.REF_RAPHALA:
	    mod1="r/";
	    if(!raphAbsorbed(p)) {
		mid=NameDat.primName[p];
		mod2="R";
	    }
	    break;
	case Common.REF_CHANDRA:
	    mod1="r/";
	    mod2="NN";
	    break;
	case Common.NOTHING:
	    mid=NameDat.primName[p];
	    break;
	}
    }

    boolean raphAbsorbed(int p) {
	switch(p) {
	case Common.K :
	    mid="kR";
	    return true;
	case Common.T :
	    mid="tR";
	    return true;
	case Common.BH :
	    mid="bhR";
	    return true;
	case Common.N_T :
	    mid="n/tR";
	    return true;
	case Common.S_T :
	    mid="s/tR";
	    return true;
	case Common.S_K :
	    mid="s/kR";
	    return true;
	}
	return false;
    }

    private void printIt() {
        /*
	System.err.println("--->["+left+","+
			   mod1+","+
			   mid+","+
			   mod2+","+
			   right1+","+
			   right2+"]");*/
	try {
	    fout.write(left.getBytes());
	    fout.write(mod1.getBytes());
	    fout.write(mid.getBytes());
	    fout.write(mod2.getBytes());
	    fout.write(right1.getBytes());
	    fout.write(right2.getBytes());
	    fout.flush();
	}
	catch(IOException ioe) {
	    System.err.println("Can't write!");
	}
    }

    public void emitEng(String str) {
	try {
	    fout.write(str.getBytes());
	}
	catch(IOException ioe) {
	    ioe.printStackTrace();
	}
    }

    public static void main(String args[]) throws Exception {
	FileOutputStream fout = new FileOutputStream("tt.tex");
	BTex bt = new BTex(new TexEmitter(fout));
	bt.init();
	bt.display("gopAl baRo @{\\rm good@} chhele!");
	fout.close();
    }
}
