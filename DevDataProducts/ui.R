library(shiny)


shinyUI(fluidPage(
    titlePanel("Developemnt Data Products Course Project"),
    
    sidebarLayout(
        sidebarPanel( 
            h3("MPG Regression Models"),
            h6("Explore the relationship between miles per gallon (MPG) and a set of variables in the `mtcars` data set provide in R"),
            selectInput("variable", "Variable:",
                        c("Transmission" = "am",
                          "Transmission and Cylinders" = "am + cyl",
                          "Transmission and Cylinders and Displacement" = "am + cyl + disp",
                          "Transmission and Cylinders and Displacement and Horsepower" = "am + cyl + disp + hp",                          
                          "Transmission and Cylinders and Displacement and Horsepower and Weight" = "am + cyl + disp+ hp + wt")
                        ),
            helpText('Select the variables with which to make the regression model. The main panel will show the residual plot and the summary of the compute model.')
        ),        
        
        mainPanel(
            h2('Main Panel text'),
            h3(textOutput("caption")),
            plotOutput('modelPlot'),
            verbatimTextOutput("summary")            
            
        )
    )
))
