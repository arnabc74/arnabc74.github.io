public class Completion {
    String w;
    int l, p;

    public Completion(String word, int lineNo, int pos) {
        w = word;
        l = lineNo;
        p = pos;
    }

    public String toString() {
        return w;
    }
}
