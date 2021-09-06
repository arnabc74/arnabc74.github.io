var angleNow = 45;
var posNow = 0;
window.onload = function() {
    var paper = new Raphael(document.getElementById('st'), 500, 300);

    var line = paper.path("M"+(250-1000)+" "+ (150+1000)+"L"+(250+1000)+" "+ (150-1000)+"Z").attr({"stroke-width":3});
    var xaxis = paper.path("M 250 0 L 250 300Z");
    var yaxis = paper.path("M 0 150 L 500 150Z");

    txt = function(x,y,what) {
      paper.text(x,y,what).attr({"font-size":16})
    }

    f = function() {
        var icp = document.getElementById('intercept');
        var slp = document.getElementById('slope');
        var d = document.getElementById('dbg');
        
        dA = 45-Math.atan(slp.value)/Math.PI*180;
        dP = -icp.value*50;
        d.innerHTML="<i>y = <font color=red>"+slp.value+"</font>x+<font color=blue>"+icp.value+"</font></i></div>";
        line.animate({transform:"t0,"+dP+"r"+dA+",250,150"},100);
        angleNow = newAng;
    }
}
        
