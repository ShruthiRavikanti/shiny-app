library(shiny)
shinyServer(function(input, output) {
  
  
  datasetInput <- reactive({
    
    switch(input$dataset,
           "iris" = iris,
           "mtcars" = mtcars,
           "trees" = trees)
  })
  
  
  fileext <- reactive({
    switch(input$type,
           "Excel (CSV)" = "csv", "Text (TSV)" = "txt","Text (Space Separated)" = "txt", "Doc" = "doc")
    
  })
  
  
  output$table <- renderTable({
    datasetInput()
    
  })
  
 
  output$downloadData <- downloadHandler(
    # name of the file to be
    filename = function() {
      paste(input$dataset, fileext(), sep = ".") # example : iris.csv, iris.doc, iris.txt 
      
    },
    
    # This function should write data to a file given to it by
    # the argument 'file'.
    content = function(file) {
      sep <- switch(input$type, "Excel (CSV)" = ",", "Text (TSV)" = "\t","Text (Space Separated)" = " ", "Doc" = " ")
      
      # Write to a file specified by the 'file' argument
      write.table(datasetInput(), file, sep = sep,
                  row.names = FALSE)
    }
  )
})