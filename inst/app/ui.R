ui <- fluidPage(
  
  # Application title
  titlePanel("Plumber API"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30),
      numericInput("mean",
                   "Mean:",
                   value = 0),
      numericInput("sd",
                   "SD:",
                   min = 1,
                   value = 1)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
)