FROM rocker/r-base:latest

LABEL maintainer="Sam Miller <sam@mysetmusic.com>"

RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev \
    && rm -rf /var/lib/apt/lists/*

RUN install.r shiny

RUN echo "local(options(shiny.port = 8080, shiny.host = '45.56.78.8'))" > /usr/lib/R/etc/Rprofile.site

RUN addgroup --system app \
    && adduser --system --ingroup app app

WORKDIR /home/app

COPY app .

RUN chown app:app -R /home/app

USER app

EXPOSE 8000

CMD ["R", "-e", "shiny::runApp('/home/app')"]
