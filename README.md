Detecting Fake News Using Sentiment Analysis

Andrea Boskovic and Peter Cho

This is our final project for Data Science. We attempted to create a model that would classify news as either fake or real based on the sentiment words in an article’s text.

To begin, download the files in the Github Repo. The R markdown file that will run you through our project building process is titled, “technical_report.Rmd”. Simply run this document in entirety to see our final model. 

This document imports the three three datasets titled, “data.csv”, “fake.csv”, and “Articles.csv”. These datasets were merged to generate the training and test data for our decision tree model. The “summary.Rmd” contains our all of the tests we conducted to generate the model. It is essentially the same as the “technical_report.Rmd” but with less detailed explanation of our process and motivations for the project.

The file “app.R” is the Shiny app we created that summarizes some properties of an article text. To use it, first copy and paste an article text into the box where it says "Insert article text here". The app should automatically reload and print out the entire text in the main panel on the right. Scrolling down below, the statistics will be printed. The value under “n_words” is the total number of words in the article. Below that, a list of the words that are considered sentiment words will be printed with the AFINN score associated with it. Below this list, the total sum of positive word scores, total sum of negative word scores, and average score of all the sentiment words are printed as “n_positive”, “n_negative”, and “avg_score” respectively. For a fun way to observe the word choices in the article, at the very bottom, a word cloud is displayed with the most frequently appearing word being the largest. 
