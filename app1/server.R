library(shiny)
source('textProcess.r')
grams <- read.csv('testGrams.csv', stringsAsFactors = FALSE)

shinyServer(function(input, output){
    output$text1 <- renderText({
        input$text
    })
    output$text2 <- renderText({
        textProcess(input$text)
    })
    output$text3 <- renderText({
        textPredict(textProcess(input$text))
    })
    
})