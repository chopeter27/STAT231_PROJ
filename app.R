library(shiny)
library(tidytext) #text tidying
library(dplyr) #manipulating datasets
library(tidyverse) #general tidying
library(rpart) #tree modeling for classification
library(partykit) #tree modeling
library(qdap) #text data manipulation
library(RCurl)
library(XML)

# Define UI for application that draws a histogram
ui <- fluidPage(
  
   # Application title
   titlePanel("Fake News Predictor"),
   
   # Sidebar with a panel for inserting article text
   sidebarLayout(
      sidebarPanel(
         textInput("text", "Text: ", "Insert article text here")
      ),
      
      # Show the text and a summary
      mainPanel(
         textOutput("text"),
         verbatimTextOutput("sentiment_words"),
         plotOutput("tree_plot"),
         plotOutput("wordcloud")
      )
   )
)

# Define server logic
server <- function(input, output) {
  
  tree <- readRDS(file = "tree.rds")
  
  # Reactive source that will take in the text and create a data frame with each row being a word
  newData <- reactive({
    text_df <- data_frame(txt = input$text) %>% 
      unnest_tokens(word, txt) 
  }) 
  
  # output$wordcloud <- renderPlot({
  #   text_df %>%
  #     anti_join(stop_words) %>%
  #     count(word) %>%
  #     with(wordcloud(words = word, freq = n, max.words = 100, min.freq = 1, random.order=FALSE, rot.per = 0.35, colors = brewer.pal(8, "Dark2")))
  # 
  # })
  
  # Print the text that the user input
  output$text <- renderText({
     input$text
   })
  
  # Print statistics on the number of words, what words are sentiment words, and summarize the information
  output$sentiment_words <- renderPrint({
    
    # Create new dataframe from reactive source
    text_df <- newData()
    print(text_df %>% summarise(n_words = n()))
    
    text_df_sent <- text_df %>% 
      inner_join(get_sentiments("afinn"))
    print(text_df_sent)
    
    text_df_summary <- text_df_sent %>% 
      summarise(n_positive = sum(score > 0), n_negative = sum(score < 0), avg_score = sum(score)/(n_negative + n_positive))
    print(text_df_summary)
   })

  output$tree_plot <- renderPlot({
    plot(as.party(tree))
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server)

