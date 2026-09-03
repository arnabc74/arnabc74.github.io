
N = 4
N2 = 2^N

toBinary = function(n) {
    ans = numeric(N)
    for(i in N:1) {
        ans[i] = n %% 2
        n = floor(n/2)
    }
    as.logical(ans)
}

pow2 = 2^((N-1):0)
toDecimal = function(bin) {
    sum(pow2[bin])
}
pat = matrix(FALSE,nrow=N2,ncol=N)
for(i in 1:(N2)) {
    pat[i,] = toBinary(i-1)
}

prod = function(a,b) {
    if(a[1] && b[1]) return(list(ind=c(),cf=0))
    indices = xor(a,b)
    sgn = 1-2*(sum(c(0,cumsum(b))[-(N+1)][a])%%2)
    list(ind=indices,cf=sgn)
}

makeGTab = function() {
    gtab = array(0,dim=c(N2,N2,N2))
    for(i in 1:(N2))
        for(j in 1:(N2)) {
            tmp = prod(pat[i,],pat[j,])
            where = toDecimal(tmp$ind)+1
            gtab[i,j,where] = tmp$cf
        }

    invisible(gtab)
}
sym = 0:(N-1)
bname = character(N2)
for(i in 1:N2) bname[i] = paste('e',paste(sym[pat[i,]],sep='',collapse=''),sep='')
rownames(pat) = bname
grade = apply(pat,1,sum)

gtab = makeGTab()
dimnames(gtab) = list(bname,bname,bname)

gshow = function(cf) {
    keep = which(cf!=0)
    cf[keep]
}

gp = function(a,b) {
    ans = numeric(N2)
    for(i in 1:N2)
        for(j in 1:N2)
            ans = ans + a[i] * b[j] * gtab[i,j,]

    ans
}

gpoint = function(x,y,z) {
    ans = numeric(N2)
    names(ans) = bname
    ans['e023'] =-x
    ans['e013'] = y
    ans['e012'] = -z
    ans['e123'] = 1
    
    ans
}

gline = function(p,d) {
    ans = numeric(N2)
    m = cross(p,d)
    names(ans) = bname
    ans['e23'] = d[1]
    ans['e13'] = -d[2]
    ans['e12'] = d[3]
    ans[c('e01','e02','e03')] = m

    ans
}

gplane = function(A,B,C,D) {
    ans = numeric(N2)
    names(ans) = bname
    ans['e1'] = A
    ans['e2'] = B
    ans['e3'] = C
    ans['e0'] = D
    ans
}


grev = function(cf) {
    ans = cf
    ind = grade %in% 2:3
    ans[ind] = -ans[ind]

    ans
}

gsw = function(m,x) {
    gp(gp(m,x),grev(m))
}

xgrade = function(cf,whichGrade) {
    cf[grade!=whichGrade] = 0
    cf
}

otab = gtab
for(i in 1:N2)
    for(j in 1:N2) {
        otab[i,j,] = xgrade(gtab[i,j,],grade[i]+grade[j])
    }

op = function(a,b) {
    ans = numeric(N2)
    for(i in 1:N2)
        for(j in 1:N2)
            ans = ans + a[i] * b[j] * otab[i,j,]

    ans
}


dualInv =  function(cf) {
    names(cf) = bname
    ans = cf
    ans['e'] = cf['e0123']
    ans['e0'] = cf['e123']
    ans['e1'] = -cf['e023']
    ans['e2'] = cf['e013']
    ans['e3'] = -cf['e012']
    ans['e01'] = cf['e23']
    ans['e02'] = -cf['e13']
    ans['e03'] = cf['e12']
    ans['e12'] = cf['e03']
    ans['e13'] = -cf['e02']
    ans['e23'] = cf['e01']
    ans['e012'] = cf['e3']
    ans['e013'] = -cf['e2']
    ans['e023'] = cf['e1']
    ans['e123'] = -cf['e0']
    ans['e0123'] = cf['e']
    
    ans
}
dual =  function(cf) {
    names(cf) = bname
    ans = cf
    ans['e'] = cf['e0123']
    ans['e0'] = -cf['e123']
    ans['e1'] = cf['e023']
    ans['e2'] = -cf['e013']
    ans['e3'] = cf['e012']
    ans['e01'] = cf['e23']
    ans['e02'] = -cf['e13']
    ans['e03'] = cf['e12']
    ans['e12'] = cf['e03']
    ans['e13'] = -cf['e02']
    ans['e23'] = cf['e01']
    ans['e012'] = -cf['e3']
    ans['e013'] = cf['e2']
    ans['e023'] = -cf['e1']
    ans['e123'] = cf['e0']
    ans['e0123'] = cf['e']
    
    ans
}

bdual = dual(1:N2)
rtab = gtab
for(i in 1:N2) {
    tmp = bdual[i]
    si = sign(tmp)
    ei = abs(tmp)
    for(j in 1:N2) {
        tmp = bdual[j]
        sj = sign(tmp)
        ej = abs(tmp)
        rtab[i,j,] = si*sj*dualInv(otab[ei,ej,])
    }
}

rp = function(a,b) {
    ans = numeric(N2)
    for(i in 1:N2)
        for(j in 1:N2)
            ans = ans + a[i] * b[j] * rtab[i,j,]

    ans
}

v = function(nm) {
    ans = rep(0,N2)
    names(ans) = bname
    ans[nm]=1

    ans
}
to = c('e','e0','e1','e2','e3','e01','e02','e03','e12','e13','e23','e012','e013','e023','e123','e0123')
###---Operations-------------
