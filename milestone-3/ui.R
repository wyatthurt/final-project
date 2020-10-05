library(shiny)
library(shinythemes)
# Define UI for application that draws a histogram
shinyUI(
    navbarPage(theme = shinytheme("darkly"), 
               "App Title",
               tabPanel(
                   "About", 
                   p("Hello World", a("Test", href = "https://www.google.com")), 
                   h2("Hello UFOs")),
               # You would add your content within the parentheses above.
               tabPanel(
                   "Page2"
               )
    ))