library(shiny)
library(bslib)

# Store long text as global variables
global_sidebar_text <- paste0(
  "Shiny is available on CRAN, so you can install it in the usual way from ",
  "your R console:")
global_card_text <- paste0(
  "Shiny is a package from Posit that makes it incredibly easy to build ",
  "interactive web applications with R. For an introduction and live ",
  "examples visit the Shiny homepage (https://shiny.posit.co)")