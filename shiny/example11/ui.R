
setwd("C:/Users/Lenovo/Desktop/data science/shiny/submit button2")



library("shiny")

shinyUI(fluidPage(
  
 
  titlePanel("Demonstration of submitButton()"),
  
  sidebarPanel(
    
    selectInput("dataset", "Choose a dataset:",c("iris", "pressure", "mtcars")),
    numericInput("obs", "Number of observations:", 6),
    submitButton("Update!"),
    p("submitButton is used to control the reactiveness of the change in the user input")
  ),
  mainPanel(
    #header
    h4(textOutput("dataname")),
    # display the structure of the selected dataset 
    verbatimTextOutput("structure"),
    
    #  header
    h4(textOutput("observation")),
    # display the observations of the selected dataset 
    tableOutput("view")
  )
))