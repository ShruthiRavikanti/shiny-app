
setwd("C:/Users/Lenovo/Desktop/data science/shiny/radioButton")
library("shiny")

shinyUI(fluidPage(
  
  titlePanel("Demo of textInput widget in shiny"),
  
  sidebarLayout(
  
      sidebarPanel(
                 
                ("Enter the personal information"),
                   
                 textInput("name","Enter your name",""),
                 textInput("age","Enter your age",""), 
                 radioButtons("gender","select the gender",list("male","female"),"")
      ), 
    
      mainPanel(
              ("Personal Information"),
                
              textOutput("myname"),
              textOutput("myage"),
              textOutput("mygender")
              )
          )
  
       )
 )