FROM islasgeci/base:1.0.0
COPY . /workdir
RUN Rscript -e "install.packages(c('comprehenr', 'patchwork', 'png', 'RcppRoll'), repos='http://cran.rstudio.com')"