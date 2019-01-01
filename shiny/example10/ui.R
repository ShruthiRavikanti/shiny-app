###submit Button

setwd("C:/Users/Lenovo/Desktop/data science/shiny/submit button1")

library("shiny")

shinyUI(fluidPage(
    
  titlePanel("Demo of submit Button and isolate in shiny"),
  
  sidebarLayout(
    sidebarPanel(
      textInput("text1", "Enter your first name"),
      textInput("text2", "Enter your last name"),
      submitButton("Upadte!"),
      p("Click on the Update button to display the first and last name entered by the user")),
    
    mainPanel(
      textOutput("txt1"),
      textOutput("txt2")
    )
  )
  
))