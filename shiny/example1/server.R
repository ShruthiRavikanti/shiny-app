library("shiny")
shinyServer(function(input, output) {
  output$txt1 <- renderText({
    paste("My first name is: ", input$text1)
    
  })
  output$txt2 <- renderText({
    # input from the action button from ui.R
      input$action
    # isolate function is used to create dependency on the action button
      isolate(paste("My last name is :", input$text2))
  })
  
})