
setwd("C:/Users/Lenovo/Desktop/data science/shiny/sliderInput")
library("shiny")

shinyUI(fluidPage(
  titlePanel("Demo of sliderInput widget in shiny"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("slide","Select the valuse from slider",min = 0,max = 5,value = 2,animate = T,step = 0.5)
    ),
    mainPanel(
      
      textOutput("out")
      
      
    )
    
  )
))

