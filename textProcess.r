grams <- read.csv('finalGrams.csv', stringsAsFactors = FALSE)

textProcess <- function(text){
    if (typeof(text) != 'character'){
        stop('Please input text')
    }
    typeof(text)
    text <- gsub("[^[:alnum:][:space:]']", "", text)
    text <- tolower(text)
    split <- strsplit(text, ' ', fixed=TRUE)
    split <- unlist(split)
    return(split)
}

textPredict <- function(splitText){
    prediction = character(0)
    l = length(splitText)
    n = 4
    if (l < 4){
        n = l+1
    }
    if (l > 4){
        for (i in n:0){
            while (length(prediction) == 0){
                target <- paste(splitText[-1:-(l-i)], collapse = ' ')
                print(target)
                prediction <- grams$pred[grams$target == target]
            }
        }
    }
    if (l <= 4){
        for (i in 1:n){
            while (length(prediction) == 0){
                target <- paste(splitText[i:l], collapse = ' ')
                print(target)
                prediction <- grams$pred[grams$target == target]
            }
        }
    }
    return(prediction)
}