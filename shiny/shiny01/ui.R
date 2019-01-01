
setwd("C:/Users/Lenovo/Desktop/data science/shiny/shiny01")
install.packages("shiny")
library("shiny")

shinyUI(fluidPage(
  
  titlePanel(title= "This is my first shiny app,hello shiny!"),
  sidebarLayout(
    sidebarPanel("This is side bar panel"),
    mainPanel("This is main panel text,output is displayed here")
  )
)
  
  
)