library(shiny)
library(dplyr)
library(tidytext)

# Define UI for application
ui <- fluidPage(
   
   # Application title
   titlePanel("Fake News Predictor"),
   
   sidebarLayout(
     
     sidebarPanel(
       textInput("text", "Text:")
     ),
     
     mainPanel(
       textOutput("raw_text"),
       verbatimTextOutput("n_words"),
       verbatimTextOutput("avgscore"),
       verbatimTextOutput("n_negative"),
       verbatimTextOutput("n_positive")
     )
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   output$text <- renderText({
     print(input$text)
   })
   output$n_words <- renderPrint({
     input$text %>%
       group_by(text) %>%
       mutate(linenumber = row_number()) %>%
       ungroup %>%
       unnest_tokens(word, text) %>%
       summarise(n_words = n())
   })
}

# Run the application 
shinyApp(ui = ui, server = server)

