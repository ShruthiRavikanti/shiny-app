library(shiny)

shinyServer(function(input,output){
  
 output$state <- renderText(
                   paste("Selected state is: ",input$statenames))
  
  
  
}  
)