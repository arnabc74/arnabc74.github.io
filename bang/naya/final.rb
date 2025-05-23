@{\input header@}
@{{\rm Dijkstra's algorithm}@} (Diyek.hs+TrA) hala ekTA @{{\rm weighted graph}@}-er ye kono duTo @{{\rm vertex}@}
@{<M>a</M>@} eba.n @{<M>b</M>@}-er madhye ekTA @{{\rm shorest path}@} bAr karAr @{{\rm algorithm}@}. ekhAne ekTA @{{\rm
path}@} -er @{{\rm length}@} balte sei @{{\rm path}@}-er sab @{{\rm edge}@}-gulor @{{\rm weight}@}-er yogfal bojhAno
hachchhe. @{{\rm Shortest path}@} mAne ye @{{\rm path}@}-er @{{\rm
length}@} sabcheye kam. ei sabcheye kam @{{\rm
lenght}@}-TAke bale @{{\rm minimum distance between}@} @{<M>a</M>@} @{{\rm and}@} @{<M>b</M>@}.

ei @{{\rm algorithm}@}-TAr sange @{{\rm Prim's algorithm}@}-er besh mil Achhe. tabe ekhAne byApArTA Thik
sAm+rAjya-bis+tArer mata nay.bara.n  ekTA chho(n)yAche roger s.nk+ramaNer
mata. @{{\rm Vertex}@} -gulo yeno kichhu lok. tAder kArur shurute kono  rog nei, ekmAtra @{<M>a</M>@} chhARA. @{<M>a</M>@} hachchhe
anekTA @{{\rm Prim's algorithm}@} er @{{\rm home}@}-er matan. goRAte kebal @{<M>a</M>@} ekAi asustha. dhApe
dhApe @{<M>a</M>@}-r theke rog chhaRAbe bAkIder madhye. pratyekTA @{{\rm vertex}@}-er gAy ekTA kare
sa.nkhyA lebeler mata thAkbe. shurute @{<M>a</M>@}-r lebel habe 0 Ar bAkIder lebel @{<M>\infty</M>@}. ei
lebelgulo yena s+wAsthyer mAn nirdeshak---yata baRa sa.nkhyA s+wAsthya tata bhAlo, 0 mAne
bhISaN khArAp abasthA, Ar @{<M>\infty</M>@} mAne sampurNa nIrog. yata rog chhaRAbe ei
sa.nkhyAgulo tata kamte thAkbe.
@{\end{document}@}
@{\input header@}
rogTA chhaRAbe eibhAbe---

<OL>
<LI/> pratyekTA dhApe kebalmAtra ekTA kare @{{\rm vertex}@}-i rog chhaRAbe tAr pratibeshIder
madhye.
<LI/> ye @{{\rm vertex}@} ekbAr rog chhaRiyechhe se bhabiSyate Ar kakhano rog chhaRAte pArbe nA.
yArA ekhano rog chhaRAy ni, tAder~ke AmrA balba @{{\rm available vertices.}@}

<LI/> kono @{{\rm step}@}-e @{{\rm available vertices}@}-er madhye yAr lebel sabcheye kam, (arthA.t ye
sar+bAdhik rogagras+ta), sei @{{\rm step}@}-e sei @{{\rm vertex}@}-TA i kebal rog chhaRAbe. sar+bAdhik
roggras+ta ekAdhik @{{\rm vertex}@} thAkle, tAder theke ye kono ekjan rog chhaRAbe. arthA.t, @{{\rm ties are broken arbitrarily}@}.
<LI/> dhara @{<M>u</M>@} bale ekTA @{{\rm vertex}@} rog chhaRAchchhe. tAr mAne @{<M>u</M>@}tAr sab pratibeshI @{{\rm
vertex}@}-gulo lebel kamAbAr cheS+TA karbe. mane kara @{<M>v</M>@} ekTA pratibeshI. @{<M>u</M>@}-er lebel
@{<M>\lambda(u)</M>@}, @{<M>v</M>@}-er lebel @{<M>\lambda(v)</M>@}, Ar @{<M>\{u,v\}</M>@} @{{\rm edge}@}-TAr @{{\rm weight}@} @{<M>w</M>@}.
ei @{<M>w</M>@}-TA yena @{<M>u</M>@} Ar @{<M>v</M>@}-er madhye dUrat+wa. @{<M>w</M>@} yata kam habe, @{<M>u</M>@} tata
beshI kare @{<M>v</M>@}-ke sa.nk+rAmita karte pArbe. @{<M>u</M>@}cheS+TA karbe @{<M>v</M>@}-er lebelTAke
kamiye @{<M>\lambda(u) +w</M>@} karte. yadi @{<M>\lambda(v)</M>@} Age thekei er theke kam thAke tabe
@{<M>u</M>@} er sa.nk+ramaNer cheS+TA byar+tha habe.
@{\end{document}@}
@{\input header@}
tA nA hale @{<M>\lambda(v)</M>@} kame habe @{<M>\lambda(u) +w</M>@} arthA.t @{<M>u</M>@} tAr rog diye @{<M>v</M>@}-er
s+wAsthyahAni karte safal hayechhe. ei xetre AmrA @{<M>\{u,v\}</M>@} @{{\rm edge}@}-er pAshe ekTA
chhoT+To tIr chihna e(n)ke deba @{<M>u</M>@}theke @{<M>v</M>@}-er dike. arthA.t @{<M>v</M>@}-er sar+banAsher kAraN
hala @{<M>u</M>@}.
</OL>

eibhAbe pratyekdhApe sabcheye rugna ekTA @{{\rm available vertex}@} tAr pratibeshIder madhye rog
chhaRAbe. eibhAbe chalte chalte eksamaye @{<M>b</M>@} @{{\rm vertex}@}-TA@{\end{document}@}
@{\input header@}
yakhan @{{\rm available vertex}@}-der madhye sabcheye rugna habe (arthA.t lebelTA sabcheye chhoTo habe),
takhan @{{\rm algorithm}@}-TA thAm~be. @{<M>b</M>@}-er lebelTA sei samaye habe @{{\rm minimum distance between}@} @{<M>a</M>@} and @{<M>b.</M>@}
Ar tIr chihnagulo dhare dhare @{<M>a</M>@} theke @{<M>b</M>@} parYanta ekTA @{{\rm shortest path}@} pAoyA yAbe.
-------------------
@{{\rm Algorithm}@}-TA khub ekTA sahaj nay, eba.n er janya kono @{{\rm standard notation}@}-o nei. tAi chhabi e(n)ke
bibhinna @{{\rm step}@}-gulo bojhAnor Age AmAder ekTA @{{\rm notation}@} Thik kare neoyA dar~kAr. pratyek @{{\rm step}@}-er
chhabite AmrA kebal rugna @{{\rm vertex}@}-guloi A(n)kba, arthA.t ye sab @{{\rm vertex}@}-er lebel @{<M>\infty</M>@} nay.
ye @{{\rm vertex}@}-TA rog chhaRAchchhe tAr pAshe ekTA Tik.h chihna e(n)ke deba. Ar sabgulo @{{\rm edge}@} A(n)kAr
kono dar~kAr nei. kebal ye ye @{{\rm edge}@} barAbar rog chhaRichhe segulo dekhAlei habe. ei niyamgulor
uddeshya ekTAi, yAte yathAsambhab kam e(n)ke yAbtIya tathya prakAsh karA yAy. Agei balechhi ye
ei @{{\rm notation}@}-TA @{{\rm standard}@} kichhu nay. ataeb anya kAuke bojhAnor samaye goRatei @{{\rm notation}@}-TA
likhe neoyA dar~kAr. sei samaye yena rog, sa.nk+ramaN, s+wAsthya ei sab bhASA byabahAr koro nA,
ogulo kebal nijer bojhAr subidher janya.@{\end{document}@}
