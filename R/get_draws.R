#' Get Draws
#'
#' @param mean
#' @param sd
#' @param host
#'
#' @return
#' @export
#'
#' @examples
#' \dontrun{
#' draws <- testShinyPlumber::get_draws(mean = 9, sd = 1)
#' }
get_draws <- function(mean, sd, host="localhost"){
  draws <- httr::GET(url = glue::glue('http://{host}:3098/rnorm'),
                     query = list(mean = mean,
                                  sd = sd)) %>%
    httr::content(., encode='json') %>%
    unlist()
  return(draws)
}
