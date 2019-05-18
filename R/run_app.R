#' Run the Shiny Application
#'
#' @export
#' @importFrom shiny runApp
run_app <- function() {
  shiny::runApp(system.file("app", package = "testShinyPlumber"), port = 3838, host = "0.0.0.0")
}
