// Generated from ChitraLexer.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class ChitraLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.7.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		OPEN=1, DONTCARE=2, LBRA=3, RBRA=4, EQ=5, PLUS=6, TOP=7, BOT=8, COL2=9, 
		LAB=10, SCL=11, WDTH=12, NUM=13, TEXT=14, WS=15, CLOSE=16;
	public static final int
		CHITRA=1;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE", "CHITRA"
	};

	public static final String[] ruleNames = {
		"OPEN", "DONTCARE", "LBRA", "RBRA", "EQ", "PLUS", "TOP", "BOT", "COL2", 
		"LAB", "SCL", "WDTH", "NUM", "TEXT", "WS", "CLOSE"
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


	public ChitraLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "ChitraLexer.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\22^\b\1\b\1\4\2\t"+
		"\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\3\2\3\2"+
		"\3\2\3\2\3\2\3\2\3\2\3\3\7\3-\n\3\f\3\16\3\60\13\3\3\3\3\3\3\4\3\4\3\5"+
		"\3\5\3\6\3\6\3\7\3\7\3\b\3\b\3\t\3\t\3\n\3\n\3\n\3\13\3\13\3\f\3\f\3\r"+
		"\3\r\3\16\6\16J\n\16\r\16\16\16K\3\17\6\17O\n\17\r\17\16\17P\3\20\6\20"+
		"T\n\20\r\20\16\20U\3\20\3\20\3\21\3\21\3\21\3\21\3\21\2\2\22\4\3\6\4\b"+
		"\5\n\6\f\7\16\b\20\t\22\n\24\13\26\f\30\r\32\16\34\17\36\20 \21\"\22\4"+
		"\2\3\6\3\2\f\f\4\2\60\60\62;\6\2\60\60\62;C\\c|\5\2\13\f\17\17\"\"\2`"+
		"\2\4\3\2\2\2\2\6\3\2\2\2\3\b\3\2\2\2\3\n\3\2\2\2\3\f\3\2\2\2\3\16\3\2"+
		"\2\2\3\20\3\2\2\2\3\22\3\2\2\2\3\24\3\2\2\2\3\26\3\2\2\2\3\30\3\2\2\2"+
		"\3\32\3\2\2\2\3\34\3\2\2\2\3\36\3\2\2\2\3 \3\2\2\2\3\"\3\2\2\2\4$\3\2"+
		"\2\2\6.\3\2\2\2\b\63\3\2\2\2\n\65\3\2\2\2\f\67\3\2\2\2\169\3\2\2\2\20"+
		";\3\2\2\2\22=\3\2\2\2\24?\3\2\2\2\26B\3\2\2\2\30D\3\2\2\2\32F\3\2\2\2"+
		"\34I\3\2\2\2\36N\3\2\2\2 S\3\2\2\2\"Y\3\2\2\2$%\7}\2\2%&\7e\2\2&\'\7}"+
		"\2\2\'(\7\f\2\2()\3\2\2\2)*\b\2\2\2*\5\3\2\2\2+-\n\2\2\2,+\3\2\2\2-\60"+
		"\3\2\2\2.,\3\2\2\2./\3\2\2\2/\61\3\2\2\2\60.\3\2\2\2\61\62\7\f\2\2\62"+
		"\7\3\2\2\2\63\64\7]\2\2\64\t\3\2\2\2\65\66\7_\2\2\66\13\3\2\2\2\678\7"+
		"?\2\28\r\3\2\2\29:\7-\2\2:\17\3\2\2\2;<\7v\2\2<\21\3\2\2\2=>\7d\2\2>\23"+
		"\3\2\2\2?@\7<\2\2@A\7<\2\2A\25\3\2\2\2BC\7n\2\2C\27\3\2\2\2DE\7u\2\2E"+
		"\31\3\2\2\2FG\7y\2\2G\33\3\2\2\2HJ\t\3\2\2IH\3\2\2\2JK\3\2\2\2KI\3\2\2"+
		"\2KL\3\2\2\2L\35\3\2\2\2MO\t\4\2\2NM\3\2\2\2OP\3\2\2\2PN\3\2\2\2PQ\3\2"+
		"\2\2Q\37\3\2\2\2RT\t\5\2\2SR\3\2\2\2TU\3\2\2\2US\3\2\2\2UV\3\2\2\2VW\3"+
		"\2\2\2WX\b\20\3\2X!\3\2\2\2YZ\7\177\2\2Z[\7\177\2\2[\\\3\2\2\2\\]\b\21"+
		"\4\2]#\3\2\2\2\b\2\3.KPU\5\4\3\2\b\2\2\4\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}