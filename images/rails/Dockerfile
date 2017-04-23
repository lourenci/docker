FROM ruby:2.4

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install nodejs

RUN gem install rails
RUN gem install rubocop

RUN mkdir /app

WORKDIR /app
