library(shiny)
library(datasets)

# Define server logic required to draw a barplot
server <- function(input, output) {
        
        # Fill in the spot we created for a plot
        output$groupPlot <- renderPlot({
                
                # Render a barplot
                barplot(VADeaths[,input$group], 
                        main=input$group,
                        ylab="Death rates",
                        xlab="Age",
                        col = "Blue")
        })
}

# Run the application 
shinyApp(ui = ui, server = server)
