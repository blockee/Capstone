library(shiny)

shinyUI(fluidPage(
    titlePanel('My Shiny App'),
    
    sidebarLayout(
        sidebarPanel(
            h1('Installation'),
            p('Shiny is available on CRAN, so you can install it in the usual way from your R console:'),
            code('install.packages("shiny")'),
            br(),
            p(img(src='bigorb.png', height = 72, width = 72), 
              'Shiny is a product of',
              span('RStudio', style = 'color:blue')),
            textInput('text', label = 'Input your text'),
            submitButton(text = 'Predict!', icon= NULL)
        ),
        mainPanel(
            h1('Introducing Shiny'),
            br(),
            p('Shiny is a new package from RStudio that makes it',
                em('incredibly easy'),
                'to build interactive web applications with R.'),
            p('For an introduction and live examples, visit the',
              a('Shiny homepage.', href = 'http://www.rstudio.com/shiny')),
            textOutput('text1'),
            textOutput('text2'),
            textOutput('text3')
            
        )
    )
))