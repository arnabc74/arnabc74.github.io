import java.util.*;

public class Node {

    private Hashtable<String,Node> tab;
    private boolean join = false;

    public Node(boolean shouldJoin) {
        tab = new Hashtable<String,Node>();
        join = shouldJoin;
    }

    public boolean getJoin() {
        return join;
    }

    public Node addFollow(Triple t, boolean shouldJoin) {
        Node next = new Node(shouldJoin);
        tab.put(t.str,next);
        Triple r = new Triple(""+t);
        /*
        System.err.println(t+": "+tab.containsKey(t));
        System.err.println(t+": "+tab.containsKey(r));
        System.err.println(t+": "+((Object) t).equals(r));
        System.err.println(t+": "+t.equals(r));
        */
        return next;
    }

    public Node query(Triple t) {
        return tab.get(t.str);
    }

    public String toString() {
        return (join? "yes" : "no");
    }

    public static void main(String args[]) {
        Triple t,r;
        t = new Triple("ki");
        r = new Triple(""+t);
        //System.err.println(">>"+t.equals(r));

        Node head = new Node(false);
        Node next = head;
        next = next.addFollow(new Triple("ki"),false);
        next = next.addFollow(new Triple("n"),false);
        next = next.addFollow(new Triple("tu"),true);
        
        next=  head;
        next = next.addFollow(new Triple("ra"),false);
        next = next.addFollow(new Triple("k"),false);
        next = next.addFollow(new Triple("ta"),true);

        Node current = head;
        for(int i=0;i<args.length;i++) {
            current = current.query(new Triple(args[i]));
            System.err.println(current);
            if(current==null) break;
        }
    }
}

class Triple {
    int p,s,v;
    String str;

    Triple(String s) {
        str = s;
    }

    Triple(int p, int s, int v) {
        this.p = p;
        this.s = s;
        this.v = v;
    }

    public String toString() {
        return str;
    }

}
