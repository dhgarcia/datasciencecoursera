library(shiny)
library(datasets)

mtData <- mtcars
mtData$am <- factor(mtData$am, labels = c("Automatic", "Manual"))
mtData$cyl = factor(mtData$cyl)
mtData$vs = factor(mtData$vs)
mtData$gear = factor(mtData$gear)
mtData$carb = factor(mtData$carb)

shinyServer(
    function(input, output) {
        
        formulaText <- reactive({
            paste("mpg ~", input$variable)
        })
        
        output$caption <- renderText({
            formulaText()
        })
        
        model <- reactive({
            lm(as.formula(formulaText()), mtData)
        })
        
        output$summary <- renderPrint({
            summary(model())
        })
        
        output$modelPlot <- renderPlot({
            par(mfrow = c(2, 2))
            plot(model())
        })
        
    }
)