import java.util.*;

public class CompletionComparator implements Comparator<Completion> {
    public int compare(Completion a, Completion b)  {
        if(a.w.equals(b.w)) return 0;
        int al = (a.l>0? a.l: -a.l);
        int bl = (b.l>0? b.l: -b.l);

        int dl = al-bl;
        return (dl==0?a.p-b.p: dl);
    }
}
