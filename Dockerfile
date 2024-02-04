# FROM rocker/shiny
FROM rocker/shiny:4.1.1

RUN mkdir /home/shiny-app

# RUN R -e "install.packages(c('dplyr', 'ggplot2', 'gapminder', 'jpeg'))"

COPY app.R /home/shiny-app


# COPY . /srv/shiny-server/app

EXPOSE 3838

CMD ["Rscript", "-e" ,"shiny::runApp(appDir = '/home/shiny-app/', port = 3838)"] 
# CMD ["shiny-server"]
