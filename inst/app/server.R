server <- function(input, output) {
  # Set widget here
  output$widget <- renderUI({
    tags$iframe(
      # this src location could be dynamic
      src = "http://testapi:3098/threejs"
    )
  })
  
}
