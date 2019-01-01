library(shiny)

shinyServer(function(input,output){
  
  output$out <-renderText(
                paste("Selected value: ", input$slide))
  
  
  
  

}  
  )