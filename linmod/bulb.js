var sw = new Array(false, true, false, false);

function f(who) {
     me = document.getElementById('s'+who);
     if(sw[who]) {
        me.src = "image/switchoff.png";
        if(who==3) document.getElementById("lamp1").src="image/lighton.png";
     }
     else {
        me.src = "image/switchon.png";
        if(who==3) document.getElementById("lamp1").src="image/lightoff.png";
     }
     sw[who] = !sw[who];
}

var tw = new Array(false, false);

function g(who) {
     tw[who] = !tw[who];
     var suffix = (tw[who]? "on":"off");
     me = document.getElementById('t'+who);
     me.src = "image/switch"+suffix+".png";
     alo = document.getElementById("lamp2");
     if(tw[0] && tw[1]) {
        alo.src = "image/lighton.png";
     }
     else {
        alo.src = "image/lightoff.png";
     }
}
