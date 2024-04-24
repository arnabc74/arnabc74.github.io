<NOTE script="rref.js" onload="loadMenu()">
@{<HEAD1>GJ for RREF</HEAD1>@}
<HR/>
@{<KEEP>
<div id="shuru">
@}ekhAne AmrA dekhba kIbhAbe @{Gauss-Jordan elimination@}  diye ekTA @{matrix@}-er @{Reduced Row Echelon Form (RREF)@}  
bAr kare. 
<p>tumi dubhAbe shuru karte pAro. AmAr deoyA kichhu udAharaN diye. athabA tomAr nijer bAnAno kichhu udAharaN diye. </p>
AmAr deoyA udAharaN@{: <select id="whichexm"  onchange="exm()"></select>
<p/>@} tomAr nijer bAnAno @{ matrix: <input type=button value="My own example"
onclick="showUI('shuru',false);showUI('custom',true)" />
</div>
<div style="display:none" id="custom">
<p>
@} katagulo @{row@}  chAo@{: <input type='text' id="nrow"/>
@} katagulo  @{column@}  chAo@{: <input type='text' id="ncol"/>
</p><p>
Row@}  ar @{column@}-er sa.nkhyA balA haye gele oi sAijer ekTA f,nAkA @{matrix@}  bAnAo@{:  <input
 type="button" value="Create table"
onclick="createTable()" />
</p><p>
@} ebAr f,nAkA @{matrix@}-TAy ichchhA mata sa.nkhyA bharo (pUrNa sa.nkhyA bA bhgnA.nsha).
 bhgnA.nsha likhte chAile @{1/2@}  bA @{-11/3@}-er mata  lekho. yadi ata likhte nA ichchhe kare,
 tabe ei @{button@}-TA Tip~te pAro, tabe kampiuTArTAi yA khushi sa.nkhyA Dhukiye debe@{:   <input
 type="button" id="rand"
 value="Fill table randomly"
onclick="randomise()" />
<p/>@}puro @{matrix@}-TA bhare gele ebAr ei @{button@}-TA Tepo@{:  <input type="button" id="read" value="Read"
onclick="loadTable()" />
</p></div>
  <div id="tbl"></div>
<div id="op"  style="display:none">
@} ekhan theke tomAr kAj khAli bArbAr ei @{button@}-TA Tipe yAoyA. pratyekbAr TepAr pare ekTA kare
 dhAp dekhAno habe.@{
  <input type="button" id="step" value="Step" onclick="dostep()" />
<table width=100% valign=top border=0 cellspacing=20><tr><td width=50% rowspan=2>
<b>Matrix:</b><p><div id="tblout">
</div></td><td width=50%><u>@} kI niyam lAgAte habe--@{</u><p><div id="rule">
  </div></td></tr>
<tr><td><u>@} AmAder belAy--@{</u><p>
<div id="exm">
</div></td></tr></table>
</div>
</KEEP>@}
</NOTE>
