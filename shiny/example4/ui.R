
#setwd("C:/Users/Lenovo/Desktop/data science/shiny/shiny02")
library("shiny")

shinyUI(fluidPage(
  titlePanel("Demo of textInput widget in shiny"),
  sidebarLayout(
    sidebarPanel(("Enter the personal information"),
                 textInput("name","Enter your name",""),
                 textInput("age","Enter your age","")), 
    mainPanel(("Personal Information"),
              textOutput("myname"),
              textOutput("myage"))
  )
  
))