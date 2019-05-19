server <- function(input, output) {
  output$distPlot <- renderPlot({
    x    <- testShinyPlumber::get_draws(mean = input$mean, sd = input$sd, host = "dockerizedapi")
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
  })
  
}

