library(shiny)
library(bslib)

# Define UI ----
fluidPage(
  # Set up sidebar
  page_sidebar(
    title = "My Shiny App",
    sidebar = sidebar(global_sidebar_text,
                      code('install.packages("shiny")')
                      ),
    card(
      card_header("Introducing Shiny"),
      global_card_text,
      card_image("https://shiny.posit.co/r/getstarted/shiny-basics/lesson2/images/my-shiny-app.png", height = "300px"),
      card_footer("Shiny is a product of Posit")
    )
  )
)
