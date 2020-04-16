FROM rocker/shiny

RUN apt-get update && apt-get install -y \
    sudo \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev 

RUN R -e "install.packages('shiny', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('BiocManager', repos='http://cran.rstudio.com/')"
RUN Rscript -e "BiocManager::install('graph')"
RUN Rscript -e "BiocManager::install('Rgraphviz')"
RUN R -e "install.packages('igraph', repos='http://cran.rstudio.com/')"

COPY /covid_interactome /srv/shiny-server/

EXPOSE 3838

RUN sudo chown -R shiny:shiny /srv/shiny-server

CMD ["/usr/bin/shiny-server.sh"]
