library(shiny)

shinyUI(fluidPage(

  titlePanel("Exploring bivariate scatter"),

  sidebarLayout(
    sidebarPanel(
       # list of widgets
 sliderInput("sweep", label = h3("Angle"), min = 0, 
        max = 180, value = 0)
    ),

    mainPanel(
       # list of output holders
              plotOutput("p")
    )
  )
))
