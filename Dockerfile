FROM rocker/rstudio:4.1.3

RUN Rscript -e "install.packages('remotes', repo='http://cran.us.r-project.org')"

RUN Rscript -e "remotes::install_version('cowsay', version = '0.8.0')"

RUN Rscript -e "remotes::install_version('testthat', version = '3.1.0')"


CMD R -e "source('convert.r')"
