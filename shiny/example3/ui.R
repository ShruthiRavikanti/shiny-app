
##download table

setwd("C:/Users/Lenovo/Desktop/data science/shiny/download table")

library("shiny")

shinyUI(fluidPage(
  titlePanel(h4('Demo of file download using downloadbutton() and downloadHandler()', align="center")),
  
  sidebarLayout(
    sidebarPanel(
      
      selectInput("dataset", "Select the dataset",c("iris", "mtcars", "trees")),
      br(),
      helpText(" Select the download format"),
      radioButtons("type", "Format type:",c("Excel (CSV)", "Text (TSV)","Text (Space Separated)", "Doc")),
      br(),
      helpText(" Click on the download button to download the dataset observations"),
      downloadButton('downloadData', 'Download')
      
    ),
    mainPanel(
      
      tableOutput('table')
      
    )
  )
))