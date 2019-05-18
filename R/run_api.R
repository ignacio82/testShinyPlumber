#' Run Test API
#'
#' @return
#' @export
#'
#' @examples
#' \dontrun{
#' testShinyPlumber::run_api()
#' }
run_api <- function(){
  pr <- plumber::plumb(file = system.file("plumber.R", package="testShinyPlumber"))
  pr$run(port = 3098, swagger = FALSE)
}
