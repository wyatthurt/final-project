#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
ufo <- read.csv("raw_data/nuforc_reports.csv")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$shape_plot <- renderPlot({

       ufo %>%
            group_by(shape) %>%
            summarize(shape_count = n(), .groups = "drop") %>%
            ggplot(aes(x = shape, y = shape_count)) +
            geom_col()

    })

})
