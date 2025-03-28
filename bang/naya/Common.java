public interface Common {
    /*Primaries*/
    /*Lenient simples*/

    public final static int  
        DUMMY=0,
	K=1,
	KH=2,
	G=3,
	GH=4,
	UNGA=5,
	CH=6,
	CHH=7,
	J=8,
	JH=9,
	TT=10,
	TTH=11,
	DD=12,
	DDH=13,
	NN=14,
	T=15,
	TH=16,
	D=17,
	DH=18,
	N=19,
	P=20,
	PH=21,
	B=22,
	BH=23,
	M=24,
	R=25,
	L=26,
	SH=27,
	SS=28,
	S=29,
	H=30,
	X=31,       
    /*Lenient yuktas*/
	CH_CHH =32,	
	J_J =33,
	T_T =34,
	N_T =35,
	N_D =36,    
    /*Nonlenient simples*/
	ENA=37,
	DR=38,
	DHR=39,
	KHANDATA=40,
	Y=41,
	YY=42,
	ANUSWAR=43,
	BISARGA=44,
	USELESS=45,   
	/*Nonlenient yuktas*/
	K_K=46,
	K_TT=47,
	K_T=48,
	K_B=49,
	K_M=50,
	K_L=51,
	K_S=52,
	G_D=53,
	G_DH=54,
	G_N=55,
	G_B=56,
	G_M=57,
	G_L=58,
	GH_NN=59,
	GH_N=60,
	UNG_K=61,
	UNG_KH=62,
	UNG_G=63,
	UNG_GH=64,
	UNG_M=65,
	UNG_X=66,
	CH_CH=67,
        CH_ENA=68,
	J_JH=69,
	J_N=70,
	J_B=71,
	ENA_CH=72,
	ENA_CHH=73,
	ENA_J=74,
	ENA_JH=75,
	TT_TT=76,
	DD_DD=77,
	NN_DD=78,
	NN_NN=79,
	NN_B=80,
	T_N=81,
	T_B=82,
	T_M=83,
	TH_TH=84,
	TH_B=85,
	D_D=86,
	D_DH=87,
	D_B=88,
	D_BH=89,
	D_M=90,
	DH_B=91,
	N_TT=92,
	N_TTH=93,
	N_DD=94,
	N_TH=95,
	N_DH=96,
	N_N=97,
	N_B=98,
	N_M=99,
	N_S=100,
	P_TT=101,
	P_T=102,
	P_N=103,
	P_P=104,
	P_L=105,
	P_S=106,
	PH_TT=107,
	PH_L=108,
	B_J=109,
	B_D=110,
	B_DH=111,
	B_B=112,
	B_L=113,
	M_N=114,
	M_P=115,
        M_PH=116,
	M_B=117,
	M_BH=118,
	M_M=119,
	M_L=120,
	M_H=121,
	L_K=122,
	L_G=123,
	L_TT=124,
        L_DD=125,
	L_P=126,
	L_B=127,
	L_M=128,
	L_L=129,
	L_H=130,
	SH_CH=131,
	SH_T=132,
	SH_N=133,
	SH_B=134,
	SH_M=135,
	SH_L=136,
	SS_K=137,
	SS_TT=138,
	SS_TTH=139,
	SS_ENA=140,
	SS_P=141,
	SS_PH=142,
	SS_M=143,
	S_K=144,
        S_KH=145,
	S_TT=146,
	S_T=147,
	S_TH=148,
	S_N=149,
	S_P=150,
	S_PH=151,
	S_B=152,
	S_M=153,
	S_L=154,
	H_NN=155,
	H_N=156,
	H_B=157,
	H_L=158,
	X_NN=159,
	X_B=160,
	X_M=161,
	CH_CHH_B=162,
	J_J_B=163,
	T_T_B=164,
	N_T_B=165,
	N_D_B=166,
	/*Swars*/
	A=167,
	AA=168,
	I=169,
	II=170,
	U1=171,
	UU=172,
	RRI=173,
	E=174,
	OI=175,
	O=176,
	OU=177,
	HAS=178,
	/*Numbers*/
	SHUNYA=179,
	EK=180,
	DUI=181,
	TIN=182,
	CHAR=183,
	PNACH=184,
	CHHAY=185,
	SAT=186,
	AT=187,
	NAY=188,
	/*Punctuations*/
	EXCLAM=189,
	LQUO=190,
	RQUO=191,
	COMMA=192,
	DNARI=193,
	SEMICOLON=194,
	HYPHEN=195,
	DASH=196,
	LPAR=197,
	RPAR=198,
	QN=199,
	WS=200,
	NL=201,
	NEWLINE=202,
	NEWPARA=203,
	/*Other primaries*/
	AYA=    204,
	EOEPRIM=205,
	DIRPRIM=206,

	/*Secondaries*/
	NOTHING=0,
	RAPHALA=1,
	REF=2,
	CHANDRA=3,
	REF_CHANDRA=4,
	RAPHALA_CHANDRA=5,
	REF_RAPHALA=6,

	/*Vowel signs*/
	NO_KAR = -1,
	A_KAR =0,
	AA_KAR =1,
	I_KAR =2,
	II_KAR =3,
	U1_KAR=4,
	UU_KAR=5,
	RRI_KAR=6,
	E_KAR=7,
	OI_KAR=8,
	O_KAR=9,
	OU_KAR=10,
	HAS_KAR=11,
	YAPH=12,
	YPHAA_KAR=13,
	YPHI_KAR=14,
	YPHII_KAR=15,
	YPHU1_KAR=16,
	YPHUU_KAR=17,
	YPHRRI_KAR=18,
	YPHE_KAR=19,
	YPHOI_KAR=20,
	YPHO_KAR=21,
	YPHOU_KAR=22,
	YPHHAS_KAR=23,
	YPHYAPH=24,

	/*Prefered alternatives*/
	ALT_K_R=0,
	ALT_T_R=1,
	ALT_BH_R=2,
	ALT_M_R=3,
	ALT_N_T_R=4,
	ALT_S_K_R=5,
	ALT_S_T_R=6,
	ALT_GU=7,
	ALT_SHU=8,
	ALT_HU=9,
	ALT_N_TU=10,
	ALT_S_TU=11,
	ALT_U1_KAR=12,
	ALT_UU_KAR=13,
	ALT_RRI_KAR=14,
	/*Miscellaneous symbols*/
	MAXLENIENT=36,
	SWAR=1,
	BYAN=2,
	NUM=3,
	PUNCT=4,
	MISC=5,
	PLUS=6,
	TILDE=7,
	SOE=8,
	EOE=9,
	SOT=10,
	EOT=11,
	SPL=12,
        CHANDRABINDU=13,
	/*Other important things*/
	NPRIMARY=202,
	NSECONDARY=7,
	NVOWELSIGN=25,
	NPREFALT=15,
	NENG=95;


    public final String haraph1[] = {
        "DUMMY",
        "K",
        "KH",
	"G",
	"GH",
	"UNGA",
	"CH",
	"CHH",
	"J",
	"JH",
	"TT",
	"TTH",
	"DD",
	"DDH",
	"NN",
	"T",
	"TH",
	"D",
	"DH",
	"N",
	"P",
	"PH",
	"B",
	"BH",
	"M",
	"R",
	"L",
	"SH",
	"SS",
	"S",
	"H",
	"X",
	/*Lenient yuktas*/
	"CH_CHH ",
	"J_J ",
	"T_T ",
	"N_T ",
	"N_D ",
	/*Nonlenient=simples*/
	"ENA",
	"DR",
	"DHR",
	"KHANDATA",
	"Y",
	"YY",
	"ANUSWAR",
	"BISARGA",
	"CHANDRABINDU",
	/*Nonlenient yuktas*/
	"K_K",
	"K_TT",
	"K_T",
	"K_B",
	"K_M",
	"K_L",
	"K_S",
	"G_D",
	"G_DH",
	"G_N",
	"G_B",
	"G_M",
	"G_L",
	"GH_NN",
	"GH_N",
	"UNG_K",
	"UNG_KH",
	"UNG_G",
	"UNG_GH",
	"UNG_M",
	"UNG_X",
	"CH_CH",
	"J_JH",
	"J_N",
	"J_B",
	"ENA_CH",
	"ENA_CHH",
	"ENA_J",
	"ENA_JH",
	"TT_TT",
	"DD_DD",
	"NN_DD",
	"NN_NN",
	"NN_B",
	"T_N",
	"T_B",
	"T_M",
	"TH_TH",
	"TH_B",
	"D_D",
	"D_DH",
	"D_B",
	"D_BH",
	"D_M",
	"DH_B",
	"N_TT",
	"N_TTH",
	"N_DD",
	"N_TH",
	"N_DH",
	"N_N",
	"N_B",
	"N_M",
	"N_S",
	"P_TT",
	"P_T",
	"P_N",
	"P_P",
	"P_L",
	"P_S",
	"PH_TT",
	"PH_L",
	"B_J",
	"B_D",
	"B_DH",
	"B_B",
	"B_L",
	"M_P",
	"M_B",
	"M_BH",
	"M_M",
	"M_L",
	"M_H",
	"L_K",
	"L_G",
	"L_TT",
	"L_P",
	"L_B",
	"L_M",
	"L_L",
	"L_H",
	"SH_CH",
	"SH_T",
	"SH_N",
	"SH_B",
	"SH_M",
	"SH_L",
	"SS_K",
	"SS_TT",
	"SS_TTH",
	"SS_ENA",
	"SS_P",
	"SS_PH",
	"SS_M",
	"S_K",
	"S_KH",
	"S_TT",
	"S_T",
	"S_TH",
	"S_N",
	"S_P",
	"S_PH",
	"S_B",
	"S_M",
	"S_L",
	"H_NN",
	"H_N",
	"H_B",
	"H_L",
	"X_NN",
	"X_B",
	"X_M",
	"CH_CHH_B",
	"J_J_B",
	"T_T_B",
	"N_T_B",
	"N_D_B",
	/*Swars*/
	"A",
	"AA",
	"I",
	"II",
	"U1",
	"UU",
	"RRI",
	"E",
	"OI",
	"O",
	"OU",
	"HAS",
	/*Numbers*/
	"SHUNYA",
	"EK",
	"DUI",
	"TIN",
	"CHAR",
	"PNACH",
	"CHHAY",
	"SAT",
	"AT",
	"NAY",
	/*Punctuations*/
	"EXCLAM",
	"LQUO",
	"RQUO",
	"COMMA",
	"DNARI",
	"SEMICOLON",
	"HYPHEN",
	"DASH",
	"LPAR",
	"RPAR",
	"QN",
	"WS",
	"NEWLINE",
	"NEWPARA",
	/*Other primaries*/
	"AYA",
	"EOEPRIM",
	"DIRPRIM"};


	/*Secondaries*/
    public static final String haraph2[]={
	"NOTHING",
	"RAPHALA",
	"REF",
	"CHANDRA",
	"REF_CHANDRA",
	"RAPHALA_CHANDRA",
	"REF_RAPHALA"};

    public static final String haraph3[]={
	/*Vowel signs*/
	"A_KAR",
	"AA_KAR",
	"I_KAR",
	"II_KAR",
	"U1_KAR",
	"UU_KAR",
	"RRI_KAR",
	"E_KAR",
	"OI_KAR",
	"O_KAR",
	"OU_KAR",
	"HAS_KAR",
	"YAPH",
	"YPHAA_KAR",
	"YPHI_KAR",
	"YPHII_KAR",
	"YPHU1_KAR",
	"YPHUU_KAR",
	"YPHRRI_KAR",
	"YPHE_KAR",
	"YPHOI_KAR",
	"YPHO_KAR",
	"YPHOU_KAR",
	"YPHHAS_KAR",
	"YPHYAPH"};


	/*Prefered alternatives*/
 public static final String haraph4[]={
	"ALT_K_R",
	"ALT_T_R",
	"ALT_BH_R",
	"ALT_M_R",
	"ALT_N_T_R",
	"ALT_S_K_R",
	"ALT_S_T_R",
	"ALT_GU",
	"ALT_SHU",
	"ALT_HU",
	"ALT_N_TU",
	"ALT_S_TU",
	"ALT_U1_KAR",
	"ALT_UU_KAR",
	"ALT_RRI_KAR"};
}
