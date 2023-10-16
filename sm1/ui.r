library(shiny)

shinyUI(fluidPage(

  sidebarLayout(
    sidebarPanel(
       # list of widgets
                 sliderInput("a","Proj",value=0,min=0,max=1,),
                 sliderInput("theta","Unit vector",value=1,min=0,max=2*pi)
    ),

    mainPanel(
       # list of output holders
              plotOutput("p")
    )
  )
))
