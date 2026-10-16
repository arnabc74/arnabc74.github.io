void gauss() {
  int i,p;
  for(p=0;p<n;p++) {
    if(ISZERO(a[p]-[p])) {     `\
      found = 0;               `\
      for(i=p+1;i<n;i++) {     `\
        if(!ISZERO(a[i]-[p])) {`\
          found = 1;           `\
          break;               `\
        }                      `\
      }                        `\
      if(found==1) {           `\
        swap(i,p);             `\
      }                        `\
    }                          `\
    scale(p,a[p]-[p]);
    for(i=0;i<n;i++) {
      if(i==p) continue;
      add(p,i,-a[i]-[p]);
    }
  }
}

