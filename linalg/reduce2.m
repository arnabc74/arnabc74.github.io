rref(m):=(
          nrow:length(m),
          ncol:length(transpose(m)),

          m1: copymatrix(m),

          mat2lat(m),
          texput(blank,""),
          trans:blank,
          lead:1,
for p from 1 thru nrow do (

  /*Search for lead*/                           
    what: for c from lead thru ncol do (
      r:for r from p thru nrow  do 
        if(m[r][c] # 0) then return(r),
    if(r # done) then return([r,c])
  ),
   

  if(what=done) then (
    print("Done."),
    return(0)
  ),

  lead: what[2],
  r: what[1],

  if(r#p) then (
    tmp: m[p],
    m[p]: m[r],
    m[r]: tmp,
    tex(S(p,r)),
    mat2lat(m)
  ),
  trans:blank,

  pivot: m[p][lead],

  if(pivot#1) then (
    trans: D(p,pivot).trans,

    m[p]: m[p]/pivot
  ),

  for i from 1 thru nrow  do 
    if(i#p) then (

      trans:A(p,i,-m[i][lead]).trans,

      m[i]: m[i] - m[p]*m[i][lead]
    ),

    /*tex(trans),*/
    print(m),
    mat2lat(m)
    
                           ));

/*print("So the inverse is");
minv:invert(m1);
tex(minv);*/


