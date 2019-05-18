library(plumber)
library(threejs)

z <- seq(-10, 10, 0.01)
x <- cos(z)
y <- sin(z)

#* Returns threejs htmlwidget 
#* @get /threejs
#* @serializer htmlwidget
threejs <- function(){
  scatterplot3js(x,y,z, color=rainbow(length(z)))
}