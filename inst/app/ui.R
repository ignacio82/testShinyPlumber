ui <- fluidPage(
  
  # Application title
  titlePanel("Testing Plumber"),
  
  sidebarLayout(
    sidebarPanel(),
    
    mainPanel(
      # ui output goes here
      uiOutput("widget")
    )
  )
)