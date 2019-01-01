#### tabsets

setwd("C:/Users/Lenovo/Desktop/data science/shiny/tabsets")
library(shiny)

shinyUI(fluidPage(
  
  titlePanel(h4('Iris Dataset', align = "center")),
  
  sidebarPanel(
    
    selectInput("var","1. Select the  Variable from iris dataset",choices = c("Sepal.Length" = 1, "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width"=4),selected = 3), 
    br(),
    sliderInput("bin", "2. Select the number of histogram BINs for histogram", min=5, max=25, value=7),
    br(),
    radioButtons("colour","3. Select the color of histogram",choices = c("Green", "Skyblue", "Yellow"), selected = "Green")
  ),
  
  # Main Panel
  mainPanel(
      tabsetPanel(type="tab",
                  tabPanel("summary",verbatimTextOutput("summ")),
                  tabPanel("Structure",verbatimTextOutput("str")),
                  tabPanel("Data",tableOutput("data")),
                  tabPanel("Plot",plotOutput("myhist"))
                  
                  
                  
                  )
        )
  
)
)

