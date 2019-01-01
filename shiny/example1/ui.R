#### action button

setwd("C:/Users/Lenovo/Desktop/data science/shiny/action button")


library("shiny")

shinyUI(fluidPage(
  titlePanel("Demo of actionButton and isolate in shiny"),
  sidebarLayout(
    sidebarPanel(
      textInput("text1", "Enter your first name"),
      textInput("text2", "Enter your last name"),
      actionButton("action", "Update last name!"),
      p("Click on the Update button to update and display the last name")
    ),
    mainPanel(
      textOutput("txt1"),
      textOutput("txt2")
    )
  )
))