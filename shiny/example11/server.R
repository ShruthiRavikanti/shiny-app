library(shiny)
library(datasets)
shinyServer(function(input, output) {
  
  # to print the heading in the main panel for structure of the data set. 
  output$dataname <- renderText({
    paste("Structure of the dataset", input$dataset)
    
  })
  
  # to print the heading in the main panel for observation of the data set.
  output$observation <- renderText({
    paste("First", input$obs, "observations of the dataset", input$dataset)
    
  })
  
  # Return  the dataset structure. 
  
  output$structure <- renderPrint({
    str(get(input$dataset)) 
  })
  
  # for dataset observations -  "n" observations as defined by user's input. The value of number of observation will come from the input$obs
  output$view <- renderTable({
    head(get(input$dataset), n = input$obs)
    
  })
})