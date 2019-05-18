FROM rocker/tidyverse:3.6.0
RUN R -e 'install.packages("remotes")'
RUN R -e 'remotes::install_github("r-lib/remotes", ref = "97bbf81")'
RUN R -e 'remotes::install_cran("shiny")'
RUN R -e 'remotes::install_cran("plumber")'
COPY testShinyPlumber_*.tar.gz /app.tar.gz
RUN R -e 'remotes::install_local("/app.tar.gz")'
EXPOSE 3838
CMD R -e "options('shiny.port'=80,shiny.host=0.0.0.0);testShinyPlumber::run_app()"
