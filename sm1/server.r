library(shiny)

                                        # Initialise globals
set.seed(334646)
x = rnorm(50)
y = x+rnorm(50,sd=0.5)
R = max(sqrt(x*x+y*y))
R = 1.2*R
shinyServer(function(input, output) {

  # output$holder = render*({something in terms of input$widget })
  output$p = renderPlot({
    a = input$a
    theta = input$theta
    cs = cos(theta)
    sn = sin(theta)
    tn = sn/cs
    z = cs*x + sn*y
    x0 = -R*sn
    y0= R*cs

    px = x0 + z * cs
    py = y0 + z * sn
    dx = (1-a)*x + a*px
    dy = (1-a)*y + a*py
    plot(x,y,xlim=c(-R,R),ylim=c(-R,R),main=paste("var = ",var(z)),col='grey', pch=20,asp=1)
    arrows(0.7*x0,0.7*y0,x0,y0,col='blue',lwd=3)
    segments(x,y,dx,dy,col='red')
    abline(a=-tn*x0+y0,b=tn,col='blue',lwd=3)
    points(dx,dy,pch=20)
  })
})
