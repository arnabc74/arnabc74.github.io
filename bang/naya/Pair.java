public class Pair {

    private int first, second;

    public Pair() {
        this(-1,-1);
    }

    public Pair(int a, int b) {
        first = a;
        second = b;
    }

    int getFirst() {
        return first;
    }

    int getSecond() {
        return second;
    }
}
