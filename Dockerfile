FROM rocker/shiny:4.1.1
COPY . /srv/shiny-server/app
EXPOSE 3838
CMD ["shiny-server"]
