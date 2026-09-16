//-*- eval:(folding-mode t) -*-
//[Update:[Mon Sep 07 IST 2026]]
/*History:
**Sun Sep 06 2026
Started.
*/
import java.util.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class PGA3  implements GlobalData {

    private static PGA3[][] gtab, rtab, otab, itab;

    double body[];

    // {{{ Static block for precomputing Cayley tables
    static {
        precomputeGTab();
        precomputeOTab();
        precomputeRTab();
        precomputeITab();
    }
    // }}}
    
    // {{{ Static routines for precomputing the Cayley tables
    private static void precomputeGTab() {
        gtab = new PGA3[16][16];
        for(int i=0;i<16;i++) 
            for(int j=0;j<16;j++) 
                gtab[i][j] = new PGA3(ctab[i][j]);
    }

    private static void precomputeOTab() {
        otab =  new PGA3[16][16];
        for(int i=0;i<16;i++) {
            int gi = grade[i];
            for(int j=0;j<16;j++) {
                int gj = grade[j];
                otab[i][j] = gtab[i][j].xGrade(gi+gj);
            }
        }
    }

    private static void precomputeITab() {
        itab =  new PGA3[16][16];
        for(int i=0;i<16;i++) {
            int gi = grade[i];
            for(int j=0;j<16;j++) {
                int gj = grade[j];
                int dij = gi > gj? gi-gj : gj-gi;
                itab[i][j] = gtab[i][j].xGrade(dij);
            }
        }
    }

    private static void precomputeRTab() {
        rtab = new PGA3[16][16];

        PGA3 blade[] = new PGA3[16];
        for(int k=0;k<16;k++)
            blade[k] = new PGA3(k);
        
        for(int i=0;i<16;i++) {
            for(int j=0;j<16;j++) {
                rtab[i][j] = op(blade[i].dual(),blade[j].dual()).dualInv();
            }
        }
    }
    // }}}

    // {{{ The products
    private static PGA3 prod(PGA3 a, PGA3 b, PGA3 tab[][]) {
        PGA3 ans = new PGA3();
        for(int i=0;i<16;i++) {
            double ai = a.coeffOf(i);
            for(int j=0;j<16;j++) {
                double bj = b.coeffOf(j);
                ans.add(ai * bj, tab[i][j]);
            }
        }
        return ans;
    }

    // {{{ Prefix versions of the products
    private static PGA3 gp(PGA3 a, PGA3 b) {
        return prod(a,b,gtab);
    }

    private static PGA3 op(PGA3 a, PGA3 b) {
        return prod(a,b,otab);
    }

    private static PGA3 rp(PGA3 a, PGA3 b) {
        return prod(a,b,rtab);
    }
    private static PGA3 ip(PGA3 a, PGA3 b) {
        return prod(a,b,itab);
    }
    static PGA3 sp(PGA3 a, PGA3 b) {
        return gp(gp(a,b),rev(a));
    }
    // }}}

    // {{{ Infix versions of the products
    private  PGA3 times(PGA3 b) {
        return gp(this,b);
    }
    private  PGA3 dot(PGA3 b) {
        return ip(this,b);
    }
    private  PGA3 meet(PGA3 b) {
        return op(this,b);
    }
    private  PGA3 join(PGA3 b) {
        return rp(this,b);
    }
    private  PGA3 appliedTo(PGA3 b) {
        return sp(this,b);
    }

    // }}}

    // }}}
    
    // {{{ Making new multivectors or modifying this one.
    static PGA3 rev(PGA3 a) {
        PGA3 ans = new PGA3();
        for(int k=0;k<16;k++)
            if(grade[k]==2 || grade[k]==3)
                ans.setAt(k,-a.coeffOf(k));
            else
                ans.setAt(k,a.coeffOf(k));

        return ans;
    }

    private void add(double coef, PGA3 mv) {
        for(int k=0;k<16;k++)
            body[k] += coef * mv.coeffOf(k);
    }
    



    PGA3 xGrade(int whichGrade) {
        PGA3 ans = new PGA3(body.clone());
        for(int k=0;k<16;k++)
            if(grade[k]!=whichGrade) ans.setAt(k,0);
        return ans;
    }


    PGA3 dual() {
        PGA3 ans = new PGA3();
        for(int k=0;k<16;k++) 
            ans.setAt(idual[k],sdual[k]*body[k]);

        return ans;
    }
    
    PGA3 dualInv() {
        PGA3 ans = new PGA3();
        for(int k=0;k<16;k++) 
            ans.setAt(idualInv[k],sdualInv[k]*body[k]);

        return ans;
    }
    // }}}

    // {{{ Dump routines
    private static void dumpTab(PGA3 tab[][]) {
        PGA3 a[] = new PGA3[16];
        for(int i=0;i<16;i++)
            a[i] = new PGA3(i);

        String line = "";
        for(int j=0;j<16;j++) {
            line+=", "+a[j];
        }
        System.out.println(line);

        for(int i=0;i<16;i++) {
            line = ""+a[i];
            for(int j=0;j<16;j++) {
                line+=", "+tab[i][j];
            }
            System.out.println(line);
        }
        
    }

    String describe() {
        String sgn=" ", num, str = "";
        boolean first = true;
        for(int k=0;k<16;k++) {
            int pos = goodOrder[k];
            if(Math.abs(body[pos])<EPS) continue;// 0
            if(Math.abs(Math.abs(body[pos])-1) < EPS) { //1 or -1
                num = "";
                if(body[pos] > 0) {
                    if(!first) {
                        sgn = " +";
                    }
                }
                else {
                    sgn = " -";
                }
            }
            else {
                sgn = " ";
                if(body[pos] > 0 && !first) sgn = " +";
                num = ""+body[pos];
            }
            str += sgn+num+bname[pos];
            first = false;
        }
        if(first) str = "0";
        return str;
    }
    // }}}

    // {{{ Constructors
    
    public PGA3(double b[]) {
        this();
        for(int i=0;i<16;i++)
            body[i] = b[i];
    }

    public PGA3(int pos) {
        this();
        setAt(pos,1.0);
    }

    public PGA3() {
        body = new double[16];
    }
    // }}}

    // {{{ Getters and setters
    void setAt(int pos, double coef) {
        body[pos] = coef;
    }

    double coeffOf(int pos) {
        return body[pos];
    }
    // }}}

    // {{{ Euclid to PGA
    static PGA3 gplane(double a, double b, double c, double d) {
        PGA3 ans = new PGA3();
        ans.setAt(E1, a);
        ans.setAt(E2, b);
        ans.setAt(E3, c);
        ans.setAt(E0, d);

        return ans;
    }

    static PGA3 gpoint(double a, double b, double c) {
        PGA3 ans = new PGA3();
        ans.setAt(E023, -a);
        ans.setAt(E013, b);
        ans.setAt(E012, -c);
        ans.setAt(E123, 1);

        return ans;
    }
    // }}}

    // {{{ PGA to Euclid

    boolean nonZeroAt(int pos) {
        return Math.abs(body[pos]) >= EPS;
    }
    
    String toPlane() {
        for(int k=0;k<16;k++)
            if(grade[k]!=1 && nonZeroAt(k)) throw new RuntimeException(this+" is not a plane!");
        return String.format("Plane[%f x + %f y + %f z = %f]",body[E1],body[E2],body[E3],-body[E0]);
    }

    String toPoint() {
        for(int k=0;k<16;k++)
            if(grade[k]!=3 && nonZeroAt(k)) throw new RuntimeException(this+" is not a point!");
        if(!nonZeroAt(E123)) throw new RuntimeException(this+" is not a point!");
        
        return String.format("Point[%f, %f, %f]",
                             -body[E023]/body[E123],
                              body[E013]/body[E123],
                             -body[E012]/body[E123]);
    }

    String toLine() {
        for(int k=0;k<16;k++)
            if(grade[k]!=2 && nonZeroAt(k)) throw new RuntimeException(this+" is not a line!");

        double d1 = body[E23];
        double d2 = -body[E13];
        double d3 = body[E12];

        double m1 = body[E01];
        double m2 = body[E02];
        double m3 = body[E03];

        double dNormSq = d1*d1+d2*d2+d3*d3;
        
        if(dNormSq < EPS)  throw new RuntimeException(this+" is not a line!");

        if(d1*m1+d2*m2+d3*m3 >= EPS)  throw new RuntimeException(this+" is not a line!");

        double px = (d2*m3-d3*m2)/dNormSq;
        double py = (d3*m1-d1*m3)/dNormSq;
        double pz = (d1*m2-d2*m1)/dNormSq;

        return String.format("Line[thru (%f, %f, %f) along (%f, %f, %f)]", px,py,pz,d1,d2,d3);
    }

    public String toString() {
        try {
            for(int k=0;k<16;k++) {
                if(nonZeroAt(k)) {
                    switch(grade[k]) {
                    case 1:
                        return toPlane();
                    case 2:
                        return toLine();
                    case 3:
                        return toPoint();
                    default:
                        return describe();
                    }
                }
            }
        }
        catch(Exception ex) {}
        return describe();
    }
    // }}}

    public static void main(String args[]) {
        //Testing tables: dumpTab(rtab);

        /* Testing dual and dualInv:
        PGA3 blade;
        for(int k=0;k<16;k++) {
            blade = new PGA3(k);
            System.out.println(blade+" "+blade.dualInv().dual());
        }
        */

        /* Testing gp, rev, sp:
        PGA3 point = gpoint(1,2,3);
        PGA3 plane = gplane(0,0,1,5); //z = -5 plane
        System.out.println("Point= "+point);
        System.out.println("Plane = " +plane);
        System.out.println("rev(Plane) = " +rev(plane));
        System.out.println("Plane * Point = " +gp(plane,point));
        System.out.println("Plane * Point * rev(Plane) = " +sp(plane,point));
        */

        /* Testing op (meet):
        PGA3 p1 = gplane(0,0,1,5); //z = -5 plane
        PGA3 p2 = gplane(1,0,0,1); //x = -1 plane
        PGA3 p3 = gplane(0,1,0,-3); //y = 3 plane

        System.out.println("Intersection point = "+op(op(p1,p2),p3));
        */

        /*Testing rp (join) and toPlane, toPoint:
        PGA3 p1 = gpoint(0,0,1);
        PGA3 p2 = gpoint(1,0,0);
        PGA3 p3 = gpoint(0,1,0);

        System.out.println("The slanted plane = "+rp(rp(p1,p2),p3).toPlane());
        System.out.println("A point = "+p1.toPoint());
        
        System.out.println("Plane as point: "+rp(rp(p1,p2),p3).toPoint());
        */

        /*
        //Testing lines:
        PGA3 p1 = gpoint(0,0,1);
        PGA3 p2 = gpoint(1,0,0);

        System.out.println("The line joining "+p1.toPoint()+" to "+p2.toPoint()+" is "+rp(p1,p2).toLine());
        */

        /*
        //Testing join and meet:
        PGA3 p1 = gpoint(0,0,1);
        PGA3 p2 = gpoint(1,0,0);
        PGA3 p3 = gpoint(0,1,0);

        PGA3 q1 = gpoint(1,2,3);
        PGA3 q2 = gpoint(3,-6,5);

        PGA3 plane = p1.join(p2).join(p3);
        PGA3 line = q1.join(q2);
        System.out.println(plane.toPlane()+" and "+line.toLine()+" intersect at "+plane.meet(line).toPoint());
        */

        /*
        //Testing projection and toString:
        PGA3 point = gpoint(1,2,3);
        PGA3 plane = gplane(0,0,1,0);
        System.out.println("Projection of "+point+" on to "+plane+" is ");
        System.out.println(plane.dot(point).times(plane));
        PGA3 p1 = gpoint(0,0,1);
        PGA3 p2 = gpoint(1,0,0);
        PGA3 p3 = gpoint(0,1,0);
        System.out.println("Strange object = "+p1.join(p2).meet(p3));
        */
    }
}
