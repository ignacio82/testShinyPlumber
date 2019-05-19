library(plumber)

#* @apiTitle Plumber Example API

#* Echo back the input
#* @param mean
#* @param sd
#* @get /rnorm
function(mean = "0", sd = "sd") {
  rnorm(n = 1000, mean = as.numeric(mean), sd = as.numeric(sd))
}


