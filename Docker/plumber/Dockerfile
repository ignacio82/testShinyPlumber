FROM rocker/tidyverse:3.6.0
RUN R -e 'install.packages("remotes")'
RUN R -e 'remotes::install_cran(c("shiny", "plumber", "threejs"))'
COPY testShinyPlumber_*.tar.gz /app.tar.gz
RUN R -e 'remotes::install_local("/app.tar.gz")'
EXPOSE 3098
CMD R -e "testShinyPlumber::run_api()"
