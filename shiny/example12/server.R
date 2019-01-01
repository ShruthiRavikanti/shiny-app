library(shiny)

shinyServer(function(input,output){
  
  output$summ <- renderPrint({
    summary(iris)
  })
  
  
  
  output$str <-renderPrint({
    str(iris)
    
  })
  
  output$data <- renderTable({
    colm <- as.integer(input$var)
    iris[colm]
    
  })
  
  output$myhist <- renderPlot(
    
    {
      colm = as.numeric(input$var)
      hist(iris[,colm], col =input$colour, xlim = c(0, max(iris[,colm])), main = "Histogram of Iris dataset", breaks = input$bin+1, xlab = names(iris[colm]))
    }
    
  )    
}
)
