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
                        helpText("Description: Death rates per 1000 in Virginia in 1940.
                                 The death rates are measured per 1000 population per year.
                                 They are classified by age group (50–54, 55–59, 60–64, 65–69, 70–74)
                                 and population group (Rural/Male, Rural/Female, Urban/Male and Urban/Female).
                                 You can select a population group above in order to get statistics about the death rates in Virginia in 1940 by age group.")
                ),
                
                # Create a spot for the barplot
                mainPanel(
                        plotOutput("groupPlot")  
                )
                
        )
)
