FROM ruby:2.4

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN gem install rails

RUN mkdir /app

WORKDIR /app
