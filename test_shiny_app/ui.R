library(shiny)
library(bslib)

# Define UI ----
fluidPage(
  # Set up widget test
  page_sidebar(
    title = "censusVis",
    sidebar = sidebar(
      helpText(
        "Create demographic maps with information from the 2010 US Census"
      ),
      selectInput(
        "selectInput1",
        "Choose a variable to display",
        choices = c("Percent White", "Percent Black",
                       "Percent Hispanic", "Percent Asian"),
        selected = "Percent White",
      ),
      sliderInput(
        "sliderInput1",
        "Range of interest:",
        min = 0,
        max = 100,
        value = c(0,100)
      ),
<<<<<<< HEAD
=======
      sliderInput(
        "sliderInput2",
        "Range of interest:",
        min = 0,
        max = 100,
        value = c(0,100)
      ),
>>>>>>> a1d719f738121bf5ef2dd3739b303546c1d4300c
    ),
    textOutput("selected_var"),
    textOutput("slider_var")
  ),
)
