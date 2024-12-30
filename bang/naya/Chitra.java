// Generated from Chitra.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class Chitra extends Parser {
	static { RuntimeMetaData.checkVersion("4.7.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		OPEN=1, DONTCARE=2, WS1=3, LBRA=4, RBRA=5, COMMA=6, EQ=7, TOP=8, BOT=9, 
		ID=10, NUM=11, TEXT=12, WS=13, CLOSE=14;
	public static final int
		RULE_puro = 0, RULE_pata = 1, RULE_body = 2, RULE_upar = 3, RULE_nich = 4, 
		RULE_guchchha = 5, RULE_height = 6, RULE_name = 7, RULE_ityadi = 8, RULE_spec = 9;
	public static final String[] ruleNames = {
		"puro", "pata", "body", "upar", "nich", "guchchha", "height", "name", 
		"ityadi", "spec"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'{c{'", null, null, "'['", "']'", "','", "'='", "'t'", "'b'", null, 
		null, null, null, "'}}'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, "OPEN", "DONTCARE", "WS1", "LBRA", "RBRA", "COMMA", "EQ", "TOP", 
		"BOT", "ID", "NUM", "TEXT", "WS", "CLOSE"
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
	public String getGrammarFileName() { return "Chitra.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public Chitra(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class PuroContext extends ParserRuleContext {
		public List<PataContext> pata() {
			return getRuleContexts(PataContext.class);
		}
		public PataContext pata(int i) {
			return getRuleContext(PataContext.class,i);
		}
		public PuroContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_puro; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).enterPuro(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).exitPuro(this);
		}
	}

	public final PuroContext puro() throws RecognitionException {
		PuroContext _localctx = new PuroContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_puro);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(23);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==NUM) {
				{
				{
				setState(20);
				pata();
				}
				}
				setState(25);
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

	public static class PataContext extends ParserRuleContext {
		public TerminalNode NUM() { return getToken(Chitra.NUM, 0); }
		public BodyContext body() {
			return getRuleContext(BodyContext.class,0);
		}
		public PataContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_pata; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).enterPata(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).exitPata(this);
		}
	}

	public final PataContext pata() throws RecognitionException {
		PataContext _localctx = new PataContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_pata);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(26);
			match(NUM);
			setState(27);
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
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).enterBody(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).exitBody(this);
		}
	}

	public final BodyContext body() throws RecognitionException {
		BodyContext _localctx = new BodyContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_body);
		try {
			setState(34);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(29);
				upar();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(30);
				nich();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(31);
				upar();
				setState(32);
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
		public TerminalNode TOP() { return getToken(Chitra.TOP, 0); }
		public GuchchhaContext guchchha() {
			return getRuleContext(GuchchhaContext.class,0);
		}
		public UparContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_upar; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).enterUpar(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).exitUpar(this);
		}
	}

	public final UparContext upar() throws RecognitionException {
		UparContext _localctx = new UparContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_upar);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(36);
			match(TOP);
			setState(37);
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
		public TerminalNode BOT() { return getToken(Chitra.BOT, 0); }
		public GuchchhaContext guchchha() {
			return getRuleContext(GuchchhaContext.class,0);
		}
		public NichContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_nich; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).enterNich(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).exitNich(this);
		}
	}

	public final NichContext nich() throws RecognitionException {
		NichContext _localctx = new NichContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_nich);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(39);
			match(BOT);
			setState(40);
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
		public NameContext name() {
			return getRuleContext(NameContext.class,0);
		}
		public HeightContext height() {
			return getRuleContext(HeightContext.class,0);
		}
		public ItyadiContext ityadi() {
			return getRuleContext(ItyadiContext.class,0);
		}
		public GuchchhaContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_guchchha; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).enterGuchchha(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).exitGuchchha(this);
		}
	}

	public final GuchchhaContext guchchha() throws RecognitionException {
		GuchchhaContext _localctx = new GuchchhaContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_guchchha);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(43);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==NUM) {
				{
				setState(42);
				height();
				}
			}

			setState(45);
			name();
			setState(47);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LBRA) {
				{
				setState(46);
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
		public TerminalNode NUM() { return getToken(Chitra.NUM, 0); }
		public HeightContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_height; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).enterHeight(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).exitHeight(this);
		}
	}

	public final HeightContext height() throws RecognitionException {
		HeightContext _localctx = new HeightContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_height);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(49);
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
		public TerminalNode TEXT() { return getToken(Chitra.TEXT, 0); }
		public NameContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_name; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).enterName(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).exitName(this);
		}
	}

	public final NameContext name() throws RecognitionException {
		NameContext _localctx = new NameContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_name);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(51);
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
		public TerminalNode LBRA() { return getToken(Chitra.LBRA, 0); }
		public List<SpecContext> spec() {
			return getRuleContexts(SpecContext.class);
		}
		public SpecContext spec(int i) {
			return getRuleContext(SpecContext.class,i);
		}
		public TerminalNode RBRA() { return getToken(Chitra.RBRA, 0); }
		public List<TerminalNode> COMMA() { return getTokens(Chitra.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(Chitra.COMMA, i);
		}
		public ItyadiContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ityadi; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).enterItyadi(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).exitItyadi(this);
		}
	}

	public final ItyadiContext ityadi() throws RecognitionException {
		ItyadiContext _localctx = new ItyadiContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_ityadi);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(53);
			match(LBRA);
			setState(54);
			spec();
			setState(59);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(55);
				match(COMMA);
				setState(56);
				spec();
				}
				}
				setState(61);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(62);
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

	public static class SpecContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(Chitra.ID, 0); }
		public TerminalNode EQ() { return getToken(Chitra.EQ, 0); }
		public TerminalNode TEXT() { return getToken(Chitra.TEXT, 0); }
		public SpecContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_spec; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).enterSpec(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChitraListener ) ((ChitraListener)listener).exitSpec(this);
		}
	}

	public final SpecContext spec() throws RecognitionException {
		SpecContext _localctx = new SpecContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_spec);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(64);
			match(ID);
			setState(65);
			match(EQ);
			setState(66);
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

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\20G\4\2\t\2\4\3\t"+
		"\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t\13\3"+
		"\2\7\2\30\n\2\f\2\16\2\33\13\2\3\3\3\3\3\3\3\4\3\4\3\4\3\4\3\4\5\4%\n"+
		"\4\3\5\3\5\3\5\3\6\3\6\3\6\3\7\5\7.\n\7\3\7\3\7\5\7\62\n\7\3\b\3\b\3\t"+
		"\3\t\3\n\3\n\3\n\3\n\7\n<\n\n\f\n\16\n?\13\n\3\n\3\n\3\13\3\13\3\13\3"+
		"\13\3\13\2\2\f\2\4\6\b\n\f\16\20\22\24\2\2\2B\2\31\3\2\2\2\4\34\3\2\2"+
		"\2\6$\3\2\2\2\b&\3\2\2\2\n)\3\2\2\2\f-\3\2\2\2\16\63\3\2\2\2\20\65\3\2"+
		"\2\2\22\67\3\2\2\2\24B\3\2\2\2\26\30\5\4\3\2\27\26\3\2\2\2\30\33\3\2\2"+
		"\2\31\27\3\2\2\2\31\32\3\2\2\2\32\3\3\2\2\2\33\31\3\2\2\2\34\35\7\r\2"+
		"\2\35\36\5\6\4\2\36\5\3\2\2\2\37%\5\b\5\2 %\5\n\6\2!\"\5\b\5\2\"#\5\n"+
		"\6\2#%\3\2\2\2$\37\3\2\2\2$ \3\2\2\2$!\3\2\2\2%\7\3\2\2\2&\'\7\n\2\2\'"+
		"(\5\f\7\2(\t\3\2\2\2)*\7\13\2\2*+\5\f\7\2+\13\3\2\2\2,.\5\16\b\2-,\3\2"+
		"\2\2-.\3\2\2\2./\3\2\2\2/\61\5\20\t\2\60\62\5\22\n\2\61\60\3\2\2\2\61"+
		"\62\3\2\2\2\62\r\3\2\2\2\63\64\7\r\2\2\64\17\3\2\2\2\65\66\7\16\2\2\66"+
		"\21\3\2\2\2\678\7\6\2\28=\5\24\13\29:\7\b\2\2:<\5\24\13\2;9\3\2\2\2<?"+
		"\3\2\2\2=;\3\2\2\2=>\3\2\2\2>@\3\2\2\2?=\3\2\2\2@A\7\7\2\2A\23\3\2\2\2"+
		"BC\7\f\2\2CD\7\t\2\2DE\7\16\2\2E\25\3\2\2\2\7\31$-\61=";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}