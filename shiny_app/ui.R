library(shiny)
library(shinythemes)
library(tidyverse)
library(janitor)
# Define UI for application that draws a histogram
shinyUI(
    navbarPage(theme = shinytheme("darkly"), 
               "App Title",
               tabPanel(
                   "About", 
                   p("GitHub Repo for the Final Project:", a("Link", href = "https://www.google.com")), 
                   h2("Hello UFOs")),
               # You would add your content within the parentheses above.
               tabPanel(
                   "Data", 
                   plotOutput("shape_plot")
               )
    ))