// Generated from ChitraLex.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class ChitraLex extends Lexer {
	static { RuntimeMetaData.checkVersion("4.7.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		OPEN=1, DONTCARE=2, WS1=3, LBRA=4, RBRA=5, COMMA=6, EQ=7, TOP=8, BOT=9, 
		ID=10, NUM=11, TEXT=12, WS=13, CLOSE=14;
	public static final int
		CHITRA=1;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE", "CHITRA"
	};

	public static final String[] ruleNames = {
		"OPEN", "DONTCARE", "WS1", "LBRA", "RBRA", "COMMA", "EQ", "TOP", "BOT", 
		"ID", "NUM", "TEXT", "WS", "CLOSE"
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


	public ChitraLex(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "ChitraLex.g4"; }

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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\20U\b\1\b\1\4\2\t"+
		"\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\3\2\3\2\3\2\3\2\3\2\3\2\3\3"+
		"\3\3\3\3\3\3\3\4\6\4,\n\4\r\4\16\4-\3\4\3\4\3\5\3\5\3\6\3\6\3\7\3\7\3"+
		"\b\3\b\3\t\3\t\3\n\3\n\3\13\3\13\3\f\6\fA\n\f\r\f\16\fB\3\r\6\rF\n\r\r"+
		"\r\16\rG\3\16\6\16K\n\16\r\16\16\16L\3\16\3\16\3\17\3\17\3\17\3\17\3\17"+
		"\2\2\20\4\3\6\4\b\5\n\6\f\7\16\b\20\t\22\n\24\13\26\f\30\r\32\16\34\17"+
		"\36\20\4\2\3\6\5\2\13\f\17\17\"\"\5\2nnuuyy\4\2\60\60\62;\6\2\60\60\62"+
		";C\\c|\2W\2\4\3\2\2\2\2\6\3\2\2\2\2\b\3\2\2\2\3\n\3\2\2\2\3\f\3\2\2\2"+
		"\3\16\3\2\2\2\3\20\3\2\2\2\3\22\3\2\2\2\3\24\3\2\2\2\3\26\3\2\2\2\3\30"+
		"\3\2\2\2\3\32\3\2\2\2\3\34\3\2\2\2\3\36\3\2\2\2\4 \3\2\2\2\6&\3\2\2\2"+
		"\b+\3\2\2\2\n\61\3\2\2\2\f\63\3\2\2\2\16\65\3\2\2\2\20\67\3\2\2\2\229"+
		"\3\2\2\2\24;\3\2\2\2\26=\3\2\2\2\30@\3\2\2\2\32E\3\2\2\2\34J\3\2\2\2\36"+
		"P\3\2\2\2 !\7}\2\2!\"\7e\2\2\"#\7}\2\2#$\3\2\2\2$%\b\2\2\2%\5\3\2\2\2"+
		"&\'\13\2\2\2\'(\3\2\2\2()\b\3\3\2)\7\3\2\2\2*,\t\2\2\2+*\3\2\2\2,-\3\2"+
		"\2\2-+\3\2\2\2-.\3\2\2\2./\3\2\2\2/\60\b\4\3\2\60\t\3\2\2\2\61\62\7]\2"+
		"\2\62\13\3\2\2\2\63\64\7_\2\2\64\r\3\2\2\2\65\66\7.\2\2\66\17\3\2\2\2"+
		"\678\7?\2\28\21\3\2\2\29:\7v\2\2:\23\3\2\2\2;<\7d\2\2<\25\3\2\2\2=>\t"+
		"\3\2\2>\27\3\2\2\2?A\t\4\2\2@?\3\2\2\2AB\3\2\2\2B@\3\2\2\2BC\3\2\2\2C"+
		"\31\3\2\2\2DF\t\5\2\2ED\3\2\2\2FG\3\2\2\2GE\3\2\2\2GH\3\2\2\2H\33\3\2"+
		"\2\2IK\t\2\2\2JI\3\2\2\2KL\3\2\2\2LJ\3\2\2\2LM\3\2\2\2MN\3\2\2\2NO\b\16"+
		"\3\2O\35\3\2\2\2PQ\7\177\2\2QR\7\177\2\2RS\3\2\2\2ST\b\17\4\2T\37\3\2"+
		"\2\2\b\2\3-BGL\5\4\3\2\b\2\2\4\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}