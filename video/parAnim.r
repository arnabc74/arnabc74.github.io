###[Update:[Wed May 08 IST 2024]]
###First working version ****Fri Jan 05 2024
###
### Short manual:
###   See test7() for how to set up a scene. The globals are
###       * cams = list of camera key positions (initially empty)
###       * acam = active camera
###       * cards = list of cards
###       * img = list of images (numbers match those of the cards)
###
###   Different ways to relatively move the active camera (each will update the
###   picture via render()):
###       * rt(ver, hor) rotates by ver and hor angles (in radians)
###       * mv(right, up, back) translates camera
###       * lookHere() allows a single mouseclick, and turns the camera
###           towards the clicked point.
###       * faceHere() allows a single mouseclick, and faces that 3d point
###           on that card perpendicularly, maintaining the current
###           distance.
###
###   To move any camera absolutely use placeCam(cam,d,lookAt).
###   The first argument is the camera being worked upon.
###   The modified camera is returned. The first argument is unchanged.
###   The picture is not updated.
###   d= the new eye position.
###   lookAt = the point that will occupy centre screen.
###
###   Two important functions:
###     keyCam(): adds the active camera to the camera list (cams).
###     shoot(state, dur): shoots dur frames while the camera moves from
###         cams[[stage]] to cams[[stage+1]]. The images are kept in the pics folder.
###     clickPoint(): Allows the user to click on the scene, and returns the card
###            clicked, as well as the 2D coordinates of the clicked point wrt that card.
###            Useful for selecting a point in 3D (eg, as orbit centre)
###            or for facing a point or for selecting a card.
###
###   Using ffmpeg to convert the image sequence to an mp4 video:
###    ffmpeg -framerate 30 -pattern_type glob -i '/home/asu/rubbish/composite/*.png' -c:v libx264 -pix_fmt yuv420p test.mp4


library(png)
library(rgl)
options(rgl.printRglwidget = TRUE)

###Private:
transCam = function(cam,x,trans) {
        if(trans)
            cam$onb%*%as.vector(x-cam$d)
        else
            cam$onb%*%as.vector(x)
}


###Public:
forward = function(cam,card, p, q) {
    u = transCam(cam,card$u,F)
    v = transCam(cam,card$v,F)
    cn = transCam(cam,card$cn,T)
    e = cam$e
    stopifnot((cn + p*u + q*v)[3]<0)
    lambda = -e/(cn[3]+p*u[3]+q*v[3])

    x = lambda*(cn[1]+p*u[1]+q*v[1])
    y = lambda*(cn[2]+p*u[2]+q*v[2])

    c(x,y)
}

###Public:
drawBound = function(cam,card) {
    p00=forward(cam, card, 0,0)
    p10=forward(cam, card, 1,0)
    p11=forward(cam, card, 1,1)
    p01=forward(cam, card, 0,1)
    lines(rbind(p00,p10,p11,p01,p00),ty='l')
    points(rbind(p00,p10,p11,p01,p00),col=c('red','blue','green','black'),pch=20,cex=2)
}


###Public:
reverse = function(e,u,v,cn,x,y) {
    a11 = e*u[1]+x*u[3]
    a12 = e*v[1]+x*v[3]
    a21 = e*u[2]+y*u[3]
    a22 = e*v[2]+y*v[3]

    if(abs(a11*a22-a12*a21) < 1e-8) return(list(coef=c(-1,-1),dist2=Inf))
    A = matrix(c(a11,a21,a12,a22),2,2)
    rhs = -c( x*(cn[3])+e*cn[1], y*(cn[3])+e*cn[2]) 
    pq = solve(A,rhs)
    cardPoint = cn+pq[1]*u + pq[2]*v
    list(coef=pq, dist2 = sum(cardPoint*cardPoint))  
}

###Public:
composite = function(cam,card,img) {
    e = cam$e
    u = transCam(cam,card$u,F)
    v = transCam(cam,card$v,F)
    cn = transCam(cam,card$cn,T)

    dd = dim(img)
    h = dd[1] 
    w = dd[2]
    dd = dim(out)
    oh = dd[1]
    ow = dd[2]
    for(i in 1:oh) {
        y = -cam$ver*(2*i/oh-1)
        for(j in 1:ow) {
            x = cam$hor*(2*j/ow-1)
            tmp = reverse(e,u,v,cn,x,y)
            cp = tmp$coef
            dist2 = tmp$dist2
            if(dist2 > zbuffer[i,j]) next
            if(any(cp>0.99 | 0.01 > cp)) next  
            row = cp[2]*h
            col = cp[1]*w
            if(img[row,col,4]==0) next
            zbuffer[i,j] <<- dist2
            out[i,j,] <<- img[row,col,]
        }
    }
}

showZBuffer = function(rng) {
    mn = rng[1]; mx = rng[2]
    tmp = 0.9*(zbuffer-mn)/(mx-mn)
    tmp[zbuffer==Inf] = 1
    tmp
}
###Private:
distBetn = function(x,y) {
    dx = x-y
    sqrt(sum(dx*dx))
}
###Public:
faceHere = function() {
    clickPoint()
    card = cards[[selCardIndex]]
    nrml = -unit(cross(card$u,card$v))
    thePoint = card$cn + selX*card$u + selY*card$v
    distNow = distBetn(acam$d, thePoint)
    newEye = thePoint + distNow*nrml
    acam <<- placeCam(acam,newEye, lookAt = thePoint)
    render()
}
###Public:
clickPoint = function() {
    p = locator(1)
    ##cat("Checking the point (",p$x,",",p$y,")\n")
    cam = acam
    dList = cList = xList = yList = c()
    for(cIndex in 1:length(cards)) {
        ##cat("Checking card",cIndex,"...\n")
        card = cards[[cIndex]]
        img = imgs[[cIndex]]
        dd = dim(img)
        h = dd[1]; w = dd[2]
        dd = dim(out)
        oh = dd[1]; ow = dd[2]
        e = cam$e
        u = transCam(cam,card$u,F)
        v = transCam(cam,card$v,F)
        cn = transCam(cam,card$cn,T)

        y = cam$ver*(2*p$y/oh-1)
        x = cam$hor*(2*p$x/ow-1)
        tmp = reverse(e,u,v,cn,x,y)
        cp = tmp$coef
        dist2 = tmp$dist2
        ##cat("\tDistance=",dist2,"\n")
        ##cat("\tPoint=(",cp[1],",",cp[2],")\n")
        if(any(cp>0.99 | 0.01 > cp)) next
        ##cat("\t\tInside\n")
        row = cp[2]*h
        col = cp[1]*w
        if(img[row,col,4]==0) next
        ##cat("\t\tOpaque\n")
        dList = c(dList,dist2)
        cList = c(cList,cIndex)
        xList = c(xList,cp[1])
        yList = c(yList,cp[2])
    }

    minPos = which.min(dList)
    selCardIndex <<- cList[minPos]
    selX <<- xList[minPos]
    selY <<- yList[minPos]
}

###Private:
unit = function(x) x/sqrt(sum(x*x))

###Public:
placeCam = function(cam,d,lookAt) {
    kvec = -unit(lookAt-d)
    jvec = unit(c(0,1,0)-kvec[2]*kvec)
    ivec = cross(jvec,kvec)

    cam$d = d
    cam$onb = rbind(ivec,jvec,kvec)
    cam
}

###Public:
makeCam = function(e,hor,ver,dpi) {
    list(onb=diag(3),e=e,hor=hor,ver=ver,dpi=dpi)
}

###Public:
makeCanvas = function(cam, opacity) {
    width = 2*cam$hor*cam$dpi
    height = 2*cam$ver*cam$dpi
    tmp = array(1,dim=c(height,width,4))
    tmp[,,4] = opacity
    tmp
}

###The following function rotates the vertical plane by angle ver,
###and then rotates the horizontal plane  by angle hor. These two operations
###commute.
###Public:
rotAxes = function(onb,ver,hor) {
    hor = pi*hor/180
    ver = pi*ver/180
    sv = sin(ver); cv = cos(ver)
    sh = sin(hor); ch = cos(hor)
    verMat = t(matrix(c(1,0,0,0,cv,sv,0,-sv,cv),3,3))
    horMat = t(matrix(c(ch,0,-sh,0,1,0,sh,0,ch),3,3))

    verMat %*% onb %*% horMat
}
turnLeft = function(cam, angle) {
    angle = angle*pi/180
    cs = cos(angle); sn = sin(angle)
    mat = matrix(c(cs,0,-sn,0,1,0,sn,0,cs),3,3)
    cam$onb = mat %*% cam$onb
    cam
}
###Debug:
arr3 = function(tip,col='red') {arrow3d(c(0,0,0),tip,col=col)}

###Debug:
showONB = function(onb,col='red') {
    arr3(onb[,1],col); arr3(onb[,2],col); arr3(onb[,3],col)
}
###Debug:
dot = function(x) spheres3d(x,rad=0.1)
###Debug:
randOrtho = function() {
    x = runif(3); x[2] = 0; x = unit(x)
    y = runif(3)
    y = unit(y-sum(x*y)*x)
    z = cross(x,y)
    cbind(x,y,z)
}

###Private:
findAng = function(fr,to) {
    fang = 180/pi*atan2(fr[2],fr[1])
    tang = 180/pi*atan2(to[2],to[1])
    dang = tang-fang
    if(dang>180)
        dang = dang-360
    else if(dang < -180)
        dang = dang+360

    dang
}
###Debug:
arr = function(tip) {arrows(0,0,tip[1],tip[2])}

###Private:
isConst = function (tmp) {
    if(!(length(tmp)>0)) {
        warning(paste("length(tmp)=",length(tmp),"\n"))
        return(F)
    }
    
    if(sum(abs(tmp-tmp[1]))>1e-9) {
        cat(paste("tmp=[",tmp,"]\n"))
        cat("This is large:",sum(abs(tmp-tmp[1])))
        tmp <<- tmp
        return(F)
    }
    return(T)
}
printVec = function(name, vec) {
    cat(sprintf("%s = [%f, %f, %f]\n",name,vec[1],vec[2],vec[3]))
}

###Public:
rotStep = function(fonb,tonb) {
    fi = fonb[1,]; fj = fonb[2,]
    ti = tonb[1,]; tj = tonb[2,]
    ##Send fi to ti
    ind = c(3,1)
    hor = findAng(fi[ind],ti[ind])

    c1 = cross(fj,c(0,1,0))
    sinVal = sum(c1*fi)
    a1 = 180/pi*asin(sinVal)

    c2 = cross(tj,c(0,1,0))
    sinVal = sum(c2*ti)
    a2 = 180/pi*asin(sinVal)
    ver = a1-a2
    list(hor=hor,ver=ver)
}

###Public:
turnCam = function(cam, ver, hor) {
    cam$onb = rotAxes(cam$onb,ver,hor)
    cam
}
###Public:
ease = function(x) x*x*(3-2*x)

shoot = function(stage, dur,opacity=0) {
    fcam = cams[[stage]]
    tcam = cams[[stage+1]]
    
    angle = rotStep(fcam$onb, tcam$onb)
    
   for(tm in 1:dur) {
       cat("stage =",stage,", time = ",tm,"\n")
       frc = ease((tm-1)/(dur-1))
       cam = fcam
       
       cam$d = (1-frc)*fcam$d + frc*tcam$d
       cam = turnCam(cam,angle$ver*frc, angle$hor*frc)
       acam <<- cam
       fname = sprintf("/home/asu/rubbish/composite/pic%d%04d.png",stage,tm)
       render(fname,opacity)
   }
}
###Private:
render = function(fname="rendered.png",opacity) {
       out <<- makeCanvas(acam,opacity)
       zbuffer <<- array(Inf,dim=dim(out)[1:2])
       #writePNG(showZBuffer(c(126,806)),sprintf("zbuf%d.png",0))
       for(i in 1:length(cards)) { 
           composite(acam,cards[[i]],imgs[[i]])
           #writePNG(showZBuffer(c(126,806)),sprintf("zbuf%d.png",i))
       }

       
       plot(as.raster(out))
       rect(0,0,ncol(out),nrow(out))
       writePNG(out,fname)
 
}
mv = function(right, up, back) {
    acam$d <<- acam$d + t(acam$onb) %*% c(right, up, back)
    render()
}
rt =function(ver,hor) {
    acam <<- turnCam(acam, ver, hor)
    render()
}
lookHere = function() {
    p = locator(1)
    wrtCam = c(p$x/acam$dpi-acam$hor,p$y/acam$dpi-acam$ver,-acam$e)

    wrtWorld = as.vector(acam$d+t(acam$onb) %*% wrtCam)
    acam <<- placeCam(acam,acam$d,lookAt=wrtWorld)
    render(opacity=1)
}

keyCam = function() {
    cams[[length(cams)+1]] <<- acam
    cat(sprintf("A total of %d cameras\n",length(cams)))
}

centreOf = function(crd) {
    crd$cn + crd$u/2+crd$v/2
}

imcrd = function(imgfile,cn,w=5,u=c(1,0,0),v=c(0,-1,0)) {
    cat("Loading ",imgfile,"\n")
    ncards = length(cards)+1
    imgs[[ncards]] <<- readPNG(imgfile)
    tmp = dim(imgs[[ncards]])    
    h = tmp[2]/tmp[1] * w
    cards[[ncards]] <<- list(cn=cn,u=w*u,v=h*v)
}

init = function() {
    cams <<- list()
    cards <<- list()
    imgs <<- list()
}

###An example (incomplete):
init()
imcrd("vase.png",cn=c(0,0,0))

cam = makeCam(e=5,hor=2.5,ver=1.5,dpi=100)
acam = placeCam(cam,d=c(0,0,10),lookAt=centreOf(cards[[1]]))
    
    render(opacity=0.5)
keyCam()
