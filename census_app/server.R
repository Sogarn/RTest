library(shiny)
library(bslib)
library(maps)
library(mapproj)
source("helpers.R")
counties <- readRDS("data/counties.rds")

# Define server logic----
function(input, output, session) {
  
  output$map <- renderPlot({
    # Flip data based on input----
    data <- switch(input$selectInput1,
                   "Percent White" = list(pop = counties$white,
                                          color = "blue", title = "% White"),
                   "Percent Black" = list(pop = counties$black,
                                          color = "purple", title = "% Black"),
                   "Percent Hispanic" = list(pop = counties$hispanic,
                                             color = "red", title = "% Hispanic"),
                   "Percent Asian" = list(pop = counties$asian,
                                          color = "orange", title = "% Asian")
    )
    # Change shading based on input----
    percent_map(var = data$pop, color = data$color, legend.title = data$title,
                max = input$sliderInput1[2], min = input$sliderInput1[1])
  })
  
}