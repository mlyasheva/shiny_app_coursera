library(shiny)
library(datasets)

# Define UI for application that draws a barplot
ui <- fluidPage(
        
        # A title of the page
        titlePanel("Death Rates in Virginia (1940)"),
        
        # Generate a sidebar with options selections
        sidebarLayout(      
                
                # Define the sidebar with one input
                sidebarPanel(
                        selectInput("group", "Population group:", 
                                    choices=colnames(VADeaths)),
                        hr(),
                        helpText("Description: Death rates per 1000 in Virginia in 1940.")
                ),
                
                # Create a spot for the barplot
                mainPanel(
                        plotOutput("groupPlot")  
                )
                
        )
)
