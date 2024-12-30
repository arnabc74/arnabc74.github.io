public class Proshika extends BHaraph {

    
    public Proshika() {
        axar = new String[] {
	"???",//    DUMMY=0,    
	"L",//      K=1,        
	"M",//      KH=2,       
	"N",//      G=3,        
	"O",//      GH=4,       
	"P",//      UNGA=5,     
	"Q",//      CH=6,       
	"R",//      CHH=7,      
	"S",//      J=8,        
	"T",//      JH=9,       
	"V",//      TT=10,      
	"W",//      TTH=11,     
	"X",//      DD=12,      
	"Y",//      DDH=13,     
	"Z",//      NN=14,      
	"a",//      T=15,       
	"b",//      TH=16,      
	"c",//      D=17,       
	"d",//      DH=18,      
	"e",//      N=19,       
	"f",//      P=20,       
	"g",//      PH=21,      
	"h",//      B=22,       
	"i",//      BH=23,      
	"j",//      M=24,       
	"l",//      R=25,       
	"m",//      L=26,       
	"n",//      SH=27,      
	"o",//      SS=28,      
	"p",//      S=29,       
	"q",//      H=30,       
	"r",//      X=31,
        /*Lenient yuktas*/       
	"\u00b5R",                           //CH_CHH =32, 
	"\u2039",  //J_J =33,    
	"\u0161",//new String(new byte[]{(byte)0x9a}),  //T_T =34,    
	"\u00b8a",                           //N_T =35,    
	"\u00b8c",                           //N_D =36, 
    /*Nonlenient simples*/   
	"U",   //ENA=37,       
	"s",   //DR=38,        
	"t",   //DHR=39,       
	"v",   //KHANDATA=40,  
	"k",   //Y=41,         
	"u",   //YY=42,        
	"w",   //ANUSWAR=43,   
	"x",   //BISARGA=44,   
	"y",   //USELESS=45,   
	/*Nonlenient yuktas*/
	"\u201a",
	new String(new byte[]{(byte)0x83}),
        "\u0161\u00b2",
	"L\u00c5",       //U
	"L\u00c8",       //U1
	"L\u00d3",       //UU
	"\u201e",
	"\u00b3",       //RRI
	new String(new byte[]{(byte)0x87}),
	"N\u00c0",       //E
	"N\u00c4",       //E1
	"N\u00c8",       //OI
	"N\u00d4",       //OI1
	"O\u00c0",       //OU
	"O\u00c0",
	"\u02c6",//new String(new byte[]{(byte)0x88}),
	"\u00b4M",
	"\u2030",//new String(new byte[]{(byte)0x89}),
	"\u00b4O",
	"P\u00c8",
	"\u00b4r",
	"\u00b5Q",
	new String(new byte[]{(byte)0x8a}),
	new String(new byte[]{(byte)0x8c}),
	"\u2018",//new String(new byte[]{(byte)0x91}), //J+N
	new String(new byte[]{'S',(byte)0xc4}),
        "\u2019",
        new String(new byte[]{(byte)0x93}),
        "\u201d",
	"U\u00bd",
        "\u2013",
        "\u2014",
new String(new byte[]{(byte)0x99}),
	"Z\u00c0",
	"Z\u00c4",
	"a\u00c1",
	"a\u00c4",
	"a\u00c8",
        "\u203a",
	"b\u00c4",
        "\u0178",
	"\u00dc",
	"\u00e0",
	"\u00e1",
	"c\u00c8",
	"d\u00c4",
	"\u00b8V",
	"\u00e3",
	"\u00e4",
	"\u00bf\u00db",
	"\u00e5",
	"\u00e6",
	"e\u00c4",
	"e\u00c8",
        "\u00bep", //100 = N_S
	"\u00c3V",
	"\u00e7",
	"f\u00c0",
	"\u00e8",
	"f\u00d4",
	"\u00c3p",
	"?",
        "g\u00d4",
	"\u00ea",
	"\u00eb",
	"\u00ec",
	"\u00ee",
	"h\u00d4",
	"\u00bfe", //114 = M_N
	"\u00bff", //115 = M_P
	"\u00c7g", //116 = M_PH
	"\u00c7h", //117 = M_B
	//"\u00f0",
	"\u00f1",
	"\u00c7j",
	"j\u00d4",
        "\u00fe",
	"\u00f3",
	"\u00d2N", /*L_G*/
	"\u00d2V", /*L_TT*/
	"\u00d2X",
	"\u00d2f",
	"\u00d2h",
	"\u00d2j",
	"\u00f5",
	"\u00d2q",
	"\u00d5Q",
	"\u00f7",
	"n\u00c0",
	"n\u00c4",
	"n\u00c8",
	"n\u00d4",
	"\u00d7L",
	"\u00f8",
	"\u00f9",
	"o\u00b7",
	"\u00d6f",
	"\u00d6g",
	"o\u00c8",
	"\u00fa",
	"\u00d9M",
	"\u00d8V",
	"\u00d9\u00b9",
	"\u00d9\u00db",
	"\u00d8e",
	"\u00d9f",
	"\u00d8g",
	"p\u00c4",
	"p\u00c8",
	"p\u00d4",
	"q\u00c1",
	"q\u00b2",
	"q\u00c4",
	"q\u00d4",
	"r\u00c1",
	"r\u00c4",
	"r\u00c8",
	"\u00b5R\u00c4",
	new String(new byte[]{(byte)0x8b,(byte)0xc4}),
	new String(new byte[]{(byte)0x9a,(byte)0xc4}),
	"\u00b8a\u00c4",
	"\u00b8c\u00c4",
	"A",
	"B",
	"C",
	"D",
	"E",
	"F",
	"G",
	"H",
	"I",
	"J",
	"K",
	"\u00da", //HAS = 176
	"0",
	"1",
	"2",
	"3",
	"4",
	"5",
	"6",
	"7",
	"8",
	"9",
        "!",
        "'",
        "'",
        ",",
        "z",
        ";",
        "-",
        "--",
        "(",
        ")",
        "?",
        " ",
        "\n", //NL
        "", //newpara
        "", 
        "A\u00c9\u00a1" //AYA
    };


        RAPHALA = "\u00cc";
        REF = "\u00d1";
        CHANDRA = "y";
        KRA = "\u0153\u00b2"; //new String(new byte[]{(byte)0x9c,(byte)0xb2});
        TRA = "\u0153"; //new String(new byte[]{(byte)0x9c});
        BHRA = "\u00ef";//new String(new byte[]{(byte)0xef});
        NTRA = new String(new byte[]{(byte)0xbf,(byte)0xbb});
        STRA = "\u00d8\u0153";
        SKRA = new String(new byte[]{(byte)0xfb});
        YAPHALA = "\u00c9";
        HAS_KAR = "\u00da";
        AA_KAR = "\u00a1";
        I_KAR = "\u00a2";
        II_KAR = "\u00a3";
        U1_KAR = "\u00a4";
        UU_KAR = "\u00a7";
        E_KAR = "\u00ad";
        OI_KAR = "\u00af";
        OU_KAR = "\u00b1";
        RRI_KAR = "\u00aa";
    }

    public static void main(String args[]) {
        Proshika p = new Proshika();
        System.err.println(p.axar[0]);
    }
}
