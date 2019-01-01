#### renderPlot

setwd("C:/Users/Lenovo/Desktop/data science/shiny/renderPlot")
library("shiny")

shinyUI(fluidPage(
  
  titlePanel(h4('Demo of the renderPlot() - A Histogram with iris dataset', align = "center")),
  
  sidebarPanel(
    
    selectInput("var","1. Select the  Variable from iris dataset",choices = c("Sepal.Length" = 1, "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width"=4),selected = 3), 
    
    sliderInput("bin", "2. Select the number of histogram BINs for histogram", min=5, max=25, value=7),
    
    radioButtons("colour","3. Select the color of histogram",choices = c("Green", "Skyblue", "Yellow"), selected = "Green")
  ),
  
  # Main Panel
  mainPanel(
    
        plotOutput("myhist")
    
  )
  
)
)