function assert(boolCond) {
  if(!boolCond) alert("ERROR");
}

function printf(str) {
  document.getElementById("rule").innerHTML = str;
}

function printf1(str) {
  document.getElementById("exm").innerHTML = str;
}

function printf2(str) {
  document.getElementById("exm").innerHTML += str;
}

function Frac(n,d) {
  assert(d>0);  
  this.num=n;
  this.den = d;
  this.toString= function() {
    if(this.den==1)
      return this.num;
    else
      return "<sup>"+this.num+"</sup>&frasl;<sub>"+this.den+"</sub>";
  }
} 

var  m, n, pi, pj, firstNegbi;
var tab;
var row,
    col;


function gcd(a,b) {
  var divisor, dividend, remainder;

  if(b==0) alert('ERROR: b==0');

  divisor = (b>0? b: -b);
  dividend = (a>0? a: -a);
  
  while(1) {

    remainder = dividend % divisor;

    if(remainder==0) return divisor;

    dividend = divisor;
    divisor = remainder;
  }
  return -1;
}

function reduce(a) {
  var d,ans;

  if(!(a.den>0)) alert('ERROR: a.den <= 0');

  d = gcd(a.num,a.den);
  ans = new Frac(a.num/d,a.den/d);
  
  if(ans.den < 0) {
    ans.num = -ans.num;
    ans.den = -ans.den;
  }
  return ans;
}

function add(a, b) {
  var den,num;

  assert(a.den>0);  
  assert(b.den>0);

  den = a.den * b.den;
  num = a.num*b.den + a.den*b.num;

  return reduce(new Frac(num,den));
}

function sub(a, b) {
  var den, num;

  assert(a.den>0);  
  assert(b.den>0);

  den = a.den * b.den;
  num = a.num*b.den - a.den*b.num;
  return reduce(new Frac(num,den));
}

function mul(a, b) {
  var num, den;

  assert(a.den>0);  
  assert(b.den>0);

  den = a.den * b.den;
  num = a.num * b.num;
  
  return reduce(new Frac(num,den));
}

function dvd(a, b) {
  var den, num;

  assert(a.den>0);  
  assert(b.den>0);
  assert(b.num!=0);

  den = a.den * b.num;
  num = a.num * b.den;
  if(den < 0) {
    den = -den;
    num = -num;
  }

  return reduce(new Frac(num,den));
}

function print(a) {
  if(a.den==1)
    return ""+a.num;
  else
    return "<sup>"+a.num+"</sup>&frasl;<sub>"+a.den+"</sub>";
}


function isZero(a) {
  assert(a.den>0);
  return (a.num == 0);
}

function isNotOne(a) {
  assert(a.den>0);
  return (a.num !=  a.den);
}
function isNeg(a) {
  assert(a.den>0);
  return (a.num < 0);
}

function isNonpos(a) {
  assert(a.den>0);
  return (a.num <= 0);
}

function isPos(a) {
  assert(a.den>0);
  return (a.num > 0);
}

function isNonneg(a) {
  assert(a.den>0);
  return (a.num >= 0);
}

function neg(a) {
  var num, den;
  assert(a.den>0);
  num = -a.num;
  den = a.den;

  return reduce(new Frac(num,den));
}

function oneBy(a) {
  var num, den;

  assert(a.num!=0);
  assert(a.den>0);
  num = a.den;
  den = a.num;
  if(den < 0) {
    den = -den;
    num = -num;
  }
  assert(den>0);
  return reduce(new Frac(num,den));
}



//------Reduce2.m-----
var pivRow=0, pivCol = 0
var propRow = 0
var found = false
var state = "1a";

function step1a() {
    printf("আমরা এবার রঙীনদের মধ্যে একটা nonzero entry খুঁজব. খোঁজাটা হবে column ধরে ধরে, বাঁদিক থেকে ডানদিকে.") 
    state = "1b"
    printf1("")
}

function step1b() {
    /*Search for lead in col-major order in [pivRow,m]x[pivCol,n]*/
    var found = false
  outer: for(c=pivCol;c<n;c++) {
    for(r=pivRow;r<m;r++) {
        if(!isZero(tab[r][c])) {
         found  = true
         break outer
      }
    }
  }
   

  if(!found) {
      state = "5a"
      printf1("নাঃ, পাওযা গেল না. তার মানে গল্প এখানেই শেষ.")
    return
  }
  
  pivCol = c
  propRow = r
    dump()
    printf1("("+(propRow+1)+", "+(pivCol+1)+")-th entry-টা nonzero.")
  state = "2a"
}

function step2a() {
    printf("যদি এই nonzero entry-টা রঙীন অংশের প্রথম row-তে না থাকে, তবে row swap করে উপরে আনব.")
    state = "2b"
    printf1("")
}
function step2b() {
  /*Swap propRow and pivRow*/
    if(propRow==pivRow) {
        printf1("আমাদের বেলায় প্রথম row-তেই আছে, তাই swap লাগছে না")
        state = "3a"
    }
    else {
        printf1("আমরা "+(pivRow+1)+" এবং "+(propRow+1)+" নম্বর row swap করব.")
        state = "2c";
    }
}
function step2c() {
  /*Swap propRow and pivRow*/
    for(j=0;j<n;j++) {
        tmp = tab[pivRow][j]
        tab[pivRow][j] = tab[propRow][j]
        tab[propRow][j] = tmp
    }
    dump()
    state = "3a"
    printf2("<br/>...করলাম!")
}

function step3a() {
    printf("এবার pivot যদি 1 না হয়, তবে ওর row-টাকে pivot দিয়ে ভাগ করব.")
    state = "3b"
    printf1("")
}
function step3b() {
  /*Scale pivotal row*/
  pivot = tab[pivRow][pivCol]

    if(isNotOne(pivot)) {
        printf1("আমরা "+(pivRow+1)+" নম্বর row-কে "+print(pivot)+" দিয়ে ভাগ করব.")
        state = "3c";
    }
    else {
        printf1("এখানে pivot-টা 1-ই আছে.")
        state = "4a"
    }
}

function step3c() {
    /*Scale pivotal row*/
    pivot = tab[pivRow][pivCol]

    for(j=0;j<n;j++) 
        tab[pivRow][j] = dvd(tab[pivRow][j],pivot)

    dump()

    state = "4a"
    printf2("<br/>...করলাম!")
}

function step4a() {
    printf("এবার pivot\-এর উপরে ও নীচের সব entry-কে শূন্য করব")
    state = "4b"
    printf1("")
}

function step4b() {
    /*Sweep out pivotal column*/
    var needWork = false
    var str="আমরা "+(pivRow+1)+" নম্বর row-এর<ul>"
  for(i=0;i<m;i++) {
    if(i!=pivRow) {
        factor = tab[i][pivCol]
        if(!isZero(factor)) {
            needWork = true
            str += "<li>"+print(factor)+" গুণ "+(i+1)+" নম্বর row থেকে বিয়োগ করব.</li>"
        }
    }
  }
    if(needWork) {
        str += "</ul>"
        printf1(str)
        state = "4c"
        return;
    }
    printf1("আমাদের বেলায় সবাই শূন্য হয়েই আছে, তাই কিছুই করতে হবে না!")
    if(pivRow == m-1 || pivCol == n-1) {
        state = "5a"
    }
    else {
        pivRow++
        pivCol++
        dump()
        state = "1a"
    }
}

function step4c() {
    /*Sweep out pivotal column*/
  for(i=0;i<m;i++) {
    if(i!=pivRow) {
        factor = tab[i][pivCol]
        for(j=0;j<n;j++)
            if(j!=pivCol) {
                tab[i][j] = sub(tab[i][j], mul(tab[pivRow][j],factor))
            }
    }
  }
  for(i=0;i<m;i++) 
      if(i!=pivRow) tab[i][pivCol] = new Frac(0,1)
    
  if(pivRow == m-1 || pivCol == n-1) {
      state = "5a"
  }
  else {
      pivRow++
      pivCol++
      state = "1a"
  }
    dump()
    printf2("<br/>...করলাম!")
}

function step5a() {
    printf("কাজ শেষ")
    pivRow += 5 //To stop highlight
    pivCol += 5 //To stop highlight
    dump();
    printf1("")
}

//------Reduce2.m ends-----

//GUI methods

function createTable() {
    m = Number(document.getElementById("nrow").value);
    n = Number(document.getElementById("ncol").value);

    var str = "<table>"

  for(i=0;i<m;i++) {
      str += "<tr>";
    for(j=0;j<n;j++) {
      str += "<td><input type='text' id='"+i+"_"+j+"' /></td>";
    }
    str += "</tr>";
  }
  str += "</table>"
  document.getElementById("tbl").innerHTML = str;
  state = "1a";
}

function asFrac(str) {
  var tokens = str.split("/");
  if(tokens.length==1) {
    return new Frac(str,1);
  }
  else {
    return new Frac(tokens[0],tokens[1]);
  }
}

function loadTable() {
  tab = new Array(m);
  for(i=0;i<m;i++) {
    tab[i] = new Array(n);
    for(j=0;j<n;j++) {
      tmp = document.getElementById(i+"_"+j).value;
      tab[i][j] = asFrac(tmp);
    }
  }  
    showUI("op",true)
    showUI("custom",false)
    document.getElementById("tbl").innerHTML = "";
    dump()
}

var mats = {
    "nonsingular":[ [1,2,3],[4,5,6],[7,8,8]],
    "singular":[ [1,2,3],[4,5,6],[7,8,9]],
    "full column rank":[ [1,2,3],[3,4,-1],[5,5,5],[3,5,2]],
    "full row rank":[ [1,2,3,4],[3,4,-1,8],[5,5,5,2]],
    "need swap":[ [1,1,1],[5,5,5],[1,2,3]],
    "all same":[ [5,5,5],[5,5,5],[5,5,5]],
    "zero start":[ [0,0,5],[0,1,0],[2,0,0]],
    "zero column":[ [0,0,5],[0,5,5],[0,1,4]],  
}
function exm() {
    var which = document.getElementById("whichexm").value
    tmp = mats[which]
    m=tmp.length
    n = tmp[0].length
    tab = new Array(m)
    for(i=0;i<m;i++) {
        tab[i] = new Array(n)
        for(j=0;j<n;j++) {
            tab[i][j] = asFrac(""+tmp[i][j])
        }
    }
    showUI("shuru",false)
    showUI("op",true)
  document.getElementById("tbl").innerHTML = "";
  document.getElementById("rand").disabled = true;
  document.getElementById("read").disabled = true;
    dump()
}


function dump() {

  var str = "<table cellpadding=10><tr>";
  for(i=0;i<m;i++) {
    for(j=0;j<n;j++) {
        if(i >= pivRow && j >= pivCol)
            str += "<td bgcolor=pink>";
        else
            str += "<td>"
      str += tab[i][j];
      str += "</td>";
    }
    str += "</tr>";
  }
  str += "</table>"

  document.getElementById("tblout").innerHTML = str;
}



function dostep() {
  eval("step"+state+"()");
}

function randomise() {
  for(i=0;i<m;i++)
    for(j=0;j<n;j++) 
      document.getElementById(i+"_"+j).value = 
        Math.floor(20*Math.random())-10;
}
var str=""
function loadMenu() {
    var holder = document.getElementById("whichexm")
    var ky = Object.keys(mats)
    str = "<option selected=\"selected\">Select example</option>"
    for(i in ky) {
        item = ky[i]
        str += "<option>"+item+"</option>"
    }
    holder.innerHTML = str;
}


function showUI(which,showIt) {
    document.getElementById(which).style.display
        =(showIt? "block":"none")
}
    alert("RREF algorithm loaded.");

