// Generated from ChitraParser.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class ChitraParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.7.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		OPEN=1, DONTCARE=2, LBRA=3, RBRA=4, EQ=5, PLUS=6, TOP=7, BOT=8, COL2=9, 
		LAB=10, SCL=11, WDTH=12, NUM=13, TEXT=14, WS=15, CLOSE=16;
	public static final int
		RULE_puro = 0, RULE_before = 1, RULE_after = 2, RULE_island = 3, RULE_patalata = 4, 
		RULE_lata = 5, RULE_pata = 6, RULE_body = 7, RULE_upar = 8, RULE_nich = 9, 
		RULE_guchchha = 10, RULE_pic = 11, RULE_height = 12, RULE_name = 13, RULE_ityadi = 14, 
		RULE_lab = 15, RULE_scl = 16, RULE_wdth = 17;
	public static final String[] ruleNames = {
		"puro", "before", "after", "island", "patalata", "lata", "pata", "body", 
		"upar", "nich", "guchchha", "pic", "height", "name", "ityadi", "lab", 
		"scl", "wdth"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'{c{\n'", null, "'['", "']'", "'='", "'+'", "'t'", "'b'", "'::'", 
		"'l'", "'s'", "'w'", null, null, null, "'}}'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, "OPEN", "DONTCARE", "LBRA", "RBRA", "EQ", "PLUS", "TOP", "BOT", 
		"COL2", "LAB", "SCL", "WDTH", "NUM", "TEXT", "WS", "CLOSE"
	};
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "ChitraParser.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public ChitraParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class PuroContext extends ParserRuleContext {
		public BeforeContext before() {
			return getRuleContext(BeforeContext.class,0);
		}
		public AfterContext after() {
			return getRuleContext(AfterContext.class,0);
		}
		public IslandContext island() {
			return getRuleContext(IslandContext.class,0);
		}
		public PuroContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_puro; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterPuro(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitPuro(this);
		}
	}

	public final PuroContext puro() throws RecognitionException {
		PuroContext _localctx = new PuroContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_puro);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(36);
			before();
			setState(38);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==OPEN) {
				{
				setState(37);
				island();
				}
			}

			setState(40);
			after();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BeforeContext extends ParserRuleContext {
		public List<TerminalNode> DONTCARE() { return getTokens(ChitraParser.DONTCARE); }
		public TerminalNode DONTCARE(int i) {
			return getToken(ChitraParser.DONTCARE, i);
		}
		public BeforeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_before; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterBefore(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitBefore(this);
		}
	}

	public final BeforeContext before() throws RecognitionException {
		BeforeContext _localctx = new BeforeContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_before);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(45);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,1,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(42);
					match(DONTCARE);
					}
					} 
				}
				setState(47);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,1,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AfterContext extends ParserRuleContext {
		public List<TerminalNode> DONTCARE() { return getTokens(ChitraParser.DONTCARE); }
		public TerminalNode DONTCARE(int i) {
			return getToken(ChitraParser.DONTCARE, i);
		}
		public AfterContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_after; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterAfter(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitAfter(this);
		}
	}

	public final AfterContext after() throws RecognitionException {
		AfterContext _localctx = new AfterContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_after);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(51);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==DONTCARE) {
				{
				{
				setState(48);
				match(DONTCARE);
				}
				}
				setState(53);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class IslandContext extends ParserRuleContext {
		public TerminalNode OPEN() { return getToken(ChitraParser.OPEN, 0); }
		public TerminalNode CLOSE() { return getToken(ChitraParser.CLOSE, 0); }
		public List<PatalataContext> patalata() {
			return getRuleContexts(PatalataContext.class);
		}
		public PatalataContext patalata(int i) {
			return getRuleContext(PatalataContext.class,i);
		}
		public IslandContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_island; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterIsland(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitIsland(this);
		}
	}

	public final IslandContext island() throws RecognitionException {
		IslandContext _localctx = new IslandContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_island);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(54);
			match(OPEN);
			setState(56); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(55);
				patalata();
				}
				}
				setState(58); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==PLUS || _la==NUM );
			setState(60);
			match(CLOSE);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class PatalataContext extends ParserRuleContext {
		public PataContext pata() {
			return getRuleContext(PataContext.class,0);
		}
		public LataContext lata() {
			return getRuleContext(LataContext.class,0);
		}
		public PatalataContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_patalata; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterPatalata(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitPatalata(this);
		}
	}

	public final PatalataContext patalata() throws RecognitionException {
		PatalataContext _localctx = new PatalataContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_patalata);
		try {
			setState(64);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case NUM:
				enterOuterAlt(_localctx, 1);
				{
				setState(62);
				pata();
				}
				break;
			case PLUS:
				enterOuterAlt(_localctx, 2);
				{
				setState(63);
				lata();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LataContext extends ParserRuleContext {
		public TerminalNode PLUS() { return getToken(ChitraParser.PLUS, 0); }
		public TerminalNode NUM() { return getToken(ChitraParser.NUM, 0); }
		public LataContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lata; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterLata(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitLata(this);
		}
	}

	public final LataContext lata() throws RecognitionException {
		LataContext _localctx = new LataContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_lata);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(66);
			match(PLUS);
			setState(67);
			match(NUM);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class PataContext extends ParserRuleContext {
		public TerminalNode NUM() { return getToken(ChitraParser.NUM, 0); }
		public BodyContext body() {
			return getRuleContext(BodyContext.class,0);
		}
		public PataContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_pata; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterPata(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitPata(this);
		}
	}

	public final PataContext pata() throws RecognitionException {
		PataContext _localctx = new PataContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_pata);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(69);
			match(NUM);
			setState(70);
			body();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BodyContext extends ParserRuleContext {
		public UparContext upar() {
			return getRuleContext(UparContext.class,0);
		}
		public NichContext nich() {
			return getRuleContext(NichContext.class,0);
		}
		public BodyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_body; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterBody(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitBody(this);
		}
	}

	public final BodyContext body() throws RecognitionException {
		BodyContext _localctx = new BodyContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_body);
		try {
			setState(77);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,5,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(72);
				upar();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(73);
				nich();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(74);
				upar();
				setState(75);
				nich();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class UparContext extends ParserRuleContext {
		public TerminalNode TOP() { return getToken(ChitraParser.TOP, 0); }
		public GuchchhaContext guchchha() {
			return getRuleContext(GuchchhaContext.class,0);
		}
		public UparContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_upar; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterUpar(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitUpar(this);
		}
	}

	public final UparContext upar() throws RecognitionException {
		UparContext _localctx = new UparContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_upar);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(79);
			match(TOP);
			setState(80);
			guchchha();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class NichContext extends ParserRuleContext {
		public TerminalNode BOT() { return getToken(ChitraParser.BOT, 0); }
		public GuchchhaContext guchchha() {
			return getRuleContext(GuchchhaContext.class,0);
		}
		public NichContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_nich; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterNich(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitNich(this);
		}
	}

	public final NichContext nich() throws RecognitionException {
		NichContext _localctx = new NichContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_nich);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(82);
			match(BOT);
			setState(83);
			guchchha();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class GuchchhaContext extends ParserRuleContext {
		public HeightContext height() {
			return getRuleContext(HeightContext.class,0);
		}
		public List<PicContext> pic() {
			return getRuleContexts(PicContext.class);
		}
		public PicContext pic(int i) {
			return getRuleContext(PicContext.class,i);
		}
		public GuchchhaContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_guchchha; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterGuchchha(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitGuchchha(this);
		}
	}

	public final GuchchhaContext guchchha() throws RecognitionException {
		GuchchhaContext _localctx = new GuchchhaContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_guchchha);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(86);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==NUM) {
				{
				setState(85);
				height();
				}
			}

			setState(89); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(88);
				pic();
				}
				}
				setState(91); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==COL2 || _la==TEXT );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class PicContext extends ParserRuleContext {
		public NameContext name() {
			return getRuleContext(NameContext.class,0);
		}
		public TerminalNode COL2() { return getToken(ChitraParser.COL2, 0); }
		public ItyadiContext ityadi() {
			return getRuleContext(ItyadiContext.class,0);
		}
		public PicContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_pic; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterPic(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitPic(this);
		}
	}

	public final PicContext pic() throws RecognitionException {
		PicContext _localctx = new PicContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_pic);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(94);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==COL2) {
				{
				setState(93);
				match(COL2);
				}
			}

			setState(96);
			name();
			setState(98);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LBRA) {
				{
				setState(97);
				ityadi();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class HeightContext extends ParserRuleContext {
		public TerminalNode NUM() { return getToken(ChitraParser.NUM, 0); }
		public HeightContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_height; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterHeight(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitHeight(this);
		}
	}

	public final HeightContext height() throws RecognitionException {
		HeightContext _localctx = new HeightContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_height);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(100);
			match(NUM);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class NameContext extends ParserRuleContext {
		public TerminalNode TEXT() { return getToken(ChitraParser.TEXT, 0); }
		public NameContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_name; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterName(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitName(this);
		}
	}

	public final NameContext name() throws RecognitionException {
		NameContext _localctx = new NameContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_name);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(102);
			match(TEXT);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ItyadiContext extends ParserRuleContext {
		public TerminalNode LBRA() { return getToken(ChitraParser.LBRA, 0); }
		public TerminalNode RBRA() { return getToken(ChitraParser.RBRA, 0); }
		public LabContext lab() {
			return getRuleContext(LabContext.class,0);
		}
		public SclContext scl() {
			return getRuleContext(SclContext.class,0);
		}
		public WdthContext wdth() {
			return getRuleContext(WdthContext.class,0);
		}
		public ItyadiContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ityadi; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterItyadi(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitItyadi(this);
		}
	}

	public final ItyadiContext ityadi() throws RecognitionException {
		ItyadiContext _localctx = new ItyadiContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_ityadi);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(104);
			match(LBRA);
			setState(106);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LAB) {
				{
				setState(105);
				lab();
				}
			}

			setState(109);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==SCL) {
				{
				setState(108);
				scl();
				}
			}

			setState(112);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==WDTH) {
				{
				setState(111);
				wdth();
				}
			}

			setState(114);
			match(RBRA);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LabContext extends ParserRuleContext {
		public TerminalNode LAB() { return getToken(ChitraParser.LAB, 0); }
		public TerminalNode EQ() { return getToken(ChitraParser.EQ, 0); }
		public TerminalNode TEXT() { return getToken(ChitraParser.TEXT, 0); }
		public LabContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lab; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterLab(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitLab(this);
		}
	}

	public final LabContext lab() throws RecognitionException {
		LabContext _localctx = new LabContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_lab);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(116);
			match(LAB);
			setState(117);
			match(EQ);
			setState(118);
			match(TEXT);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SclContext extends ParserRuleContext {
		public TerminalNode SCL() { return getToken(ChitraParser.SCL, 0); }
		public TerminalNode EQ() { return getToken(ChitraParser.EQ, 0); }
		public TerminalNode NUM() { return getToken(ChitraParser.NUM, 0); }
		public SclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_scl; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterScl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitScl(this);
		}
	}

	public final SclContext scl() throws RecognitionException {
		SclContext _localctx = new SclContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_scl);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(120);
			match(SCL);
			setState(121);
			match(EQ);
			setState(122);
			match(NUM);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class WdthContext extends ParserRuleContext {
		public TerminalNode WDTH() { return getToken(ChitraParser.WDTH, 0); }
		public TerminalNode EQ() { return getToken(ChitraParser.EQ, 0); }
		public TerminalNode NUM() { return getToken(ChitraParser.NUM, 0); }
		public WdthContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_wdth; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).enterWdth(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraParserListener ) ((ChitraParserListener)listener).exitWdth(this);
		}
	}

	public final WdthContext wdth() throws RecognitionException {
		WdthContext _localctx = new WdthContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_wdth);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(124);
			match(WDTH);
			setState(125);
			match(EQ);
			setState(126);
			match(NUM);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\22\u0083\4\2\t\2"+
		"\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\3\2\3\2\5\2)\n\2\3\2\3\2\3\3\7\3.\n\3\f\3\16\3\61\13\3\3\4"+
		"\7\4\64\n\4\f\4\16\4\67\13\4\3\5\3\5\6\5;\n\5\r\5\16\5<\3\5\3\5\3\6\3"+
		"\6\5\6C\n\6\3\7\3\7\3\7\3\b\3\b\3\b\3\t\3\t\3\t\3\t\3\t\5\tP\n\t\3\n\3"+
		"\n\3\n\3\13\3\13\3\13\3\f\5\fY\n\f\3\f\6\f\\\n\f\r\f\16\f]\3\r\5\ra\n"+
		"\r\3\r\3\r\5\re\n\r\3\16\3\16\3\17\3\17\3\20\3\20\5\20m\n\20\3\20\5\20"+
		"p\n\20\3\20\5\20s\n\20\3\20\3\20\3\21\3\21\3\21\3\21\3\22\3\22\3\22\3"+
		"\22\3\23\3\23\3\23\3\23\3\23\2\2\24\2\4\6\b\n\f\16\20\22\24\26\30\32\34"+
		"\36 \"$\2\2\2~\2&\3\2\2\2\4/\3\2\2\2\6\65\3\2\2\2\b8\3\2\2\2\nB\3\2\2"+
		"\2\fD\3\2\2\2\16G\3\2\2\2\20O\3\2\2\2\22Q\3\2\2\2\24T\3\2\2\2\26X\3\2"+
		"\2\2\30`\3\2\2\2\32f\3\2\2\2\34h\3\2\2\2\36j\3\2\2\2 v\3\2\2\2\"z\3\2"+
		"\2\2$~\3\2\2\2&(\5\4\3\2\')\5\b\5\2(\'\3\2\2\2()\3\2\2\2)*\3\2\2\2*+\5"+
		"\6\4\2+\3\3\2\2\2,.\7\4\2\2-,\3\2\2\2.\61\3\2\2\2/-\3\2\2\2/\60\3\2\2"+
		"\2\60\5\3\2\2\2\61/\3\2\2\2\62\64\7\4\2\2\63\62\3\2\2\2\64\67\3\2\2\2"+
		"\65\63\3\2\2\2\65\66\3\2\2\2\66\7\3\2\2\2\67\65\3\2\2\28:\7\3\2\29;\5"+
		"\n\6\2:9\3\2\2\2;<\3\2\2\2<:\3\2\2\2<=\3\2\2\2=>\3\2\2\2>?\7\22\2\2?\t"+
		"\3\2\2\2@C\5\16\b\2AC\5\f\7\2B@\3\2\2\2BA\3\2\2\2C\13\3\2\2\2DE\7\b\2"+
		"\2EF\7\17\2\2F\r\3\2\2\2GH\7\17\2\2HI\5\20\t\2I\17\3\2\2\2JP\5\22\n\2"+
		"KP\5\24\13\2LM\5\22\n\2MN\5\24\13\2NP\3\2\2\2OJ\3\2\2\2OK\3\2\2\2OL\3"+
		"\2\2\2P\21\3\2\2\2QR\7\t\2\2RS\5\26\f\2S\23\3\2\2\2TU\7\n\2\2UV\5\26\f"+
		"\2V\25\3\2\2\2WY\5\32\16\2XW\3\2\2\2XY\3\2\2\2Y[\3\2\2\2Z\\\5\30\r\2["+
		"Z\3\2\2\2\\]\3\2\2\2][\3\2\2\2]^\3\2\2\2^\27\3\2\2\2_a\7\13\2\2`_\3\2"+
		"\2\2`a\3\2\2\2ab\3\2\2\2bd\5\34\17\2ce\5\36\20\2dc\3\2\2\2de\3\2\2\2e"+
		"\31\3\2\2\2fg\7\17\2\2g\33\3\2\2\2hi\7\20\2\2i\35\3\2\2\2jl\7\5\2\2km"+
		"\5 \21\2lk\3\2\2\2lm\3\2\2\2mo\3\2\2\2np\5\"\22\2on\3\2\2\2op\3\2\2\2"+
		"pr\3\2\2\2qs\5$\23\2rq\3\2\2\2rs\3\2\2\2st\3\2\2\2tu\7\6\2\2u\37\3\2\2"+
		"\2vw\7\f\2\2wx\7\7\2\2xy\7\20\2\2y!\3\2\2\2z{\7\r\2\2{|\7\7\2\2|}\7\17"+
		"\2\2}#\3\2\2\2~\177\7\16\2\2\177\u0080\7\7\2\2\u0080\u0081\7\17\2\2\u0081"+
		"%\3\2\2\2\17(/\65<BOX]`dlor";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}