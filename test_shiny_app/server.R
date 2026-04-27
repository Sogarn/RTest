library(shiny)
library(bslib)

# Define server logic----
function(input, output, session) {
  output$selected_var <- renderText({
    paste("You have selected", input$selectInput1)
  })
  
  output$slider_var <- renderText({
    paste("You have chosen a range that goes from",input$sliderInput1[1],
    "to",input$sliderInput1[2])
  })
  
}
