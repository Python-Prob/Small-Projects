library(shiny)

# Define the user interface
ui <- shinyUI(
  fluidPage(
    # Title
    titlePanel("My Website"),
    
    # Sidebar layout with input and output definitions
    sidebarLayout(
      
      # Sidebar with a slider input for the number of observations
      sidebarPanel(
        sliderInput("obs", 
                    "Number of observations:", 
                    min = 1, 
                    max = 100, 
                    value = 50)
      ),
      
      # Main panel for displaying outputs
      mainPanel(
        # Output: Plot of the distribution of the data
        plotOutput("distPlot")
      )
    )
  )
)

# Define server logic required to draw the scatterplot
server <- shinyServer(function(input, output) {

  # Generate data
  data <- rnorm(input$obs)
  
  # Output: Plot of the distribution of the data
  output$distPlot <- renderPlot({
    hist(data, main = "Distribution of the Data")
  })
})

# Call shinyApp() to run the application
shinyApp(ui = ui, server = server)
