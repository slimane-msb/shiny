FROM rocker/shiny:4.1.1
USER root
COPY . /srv/shiny-server/app
EXPOSE 3838
USER shiny
CMD ["shiny-server"]
