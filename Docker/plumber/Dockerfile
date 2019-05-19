FROM rocker/r-base
RUN apt-get update -qq && apt-get install -y \
  git-core \
  libssl-dev \
  libcurl4-gnutls-dev
RUN R -e 'install.packages("remotes")'
RUN R -e 'remotes::install_cran(c("glue", "plumber", "magrittr"))'
COPY testShinyPlumber_*.tar.gz /app.tar.gz
RUN R -e 'remotes::install_local("/app.tar.gz")'
EXPOSE 3098
CMD R -e "testShinyPlumber::run_api()"
