FROM debian:jessie

RUN apt-get update
RUN apt-get install -y wget software-properties-common apt-transport-https git

RUN add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
RUN wget -qO- https://cli-assets.heroku.com/apt/release.key | apt-key add -
RUN apt-get update
RUN apt-get install -y heroku

WORKDIR /app

ENTRYPOINT ["heroku"]
