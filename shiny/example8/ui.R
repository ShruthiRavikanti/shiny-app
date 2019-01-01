####selectInput

setwd("C:/Users/Lenovo/Desktop/data science/shiny/selectInput")
library("shiny")

shinyUI(fluidPage(
  titlePanel("Demo of selectInput UI widget in shiny"),
  sidebarLayout(
    sidebarPanel(
      selectInput("statenames","Select the state",c("California","Texas","Florida","New York","philadelphia"),selected = "Texas")
    ),
    mainPanel(
      
      textOutput("state")
     
      
      
    )
    
  )
))