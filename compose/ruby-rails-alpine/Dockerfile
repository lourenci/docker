FROM ruby:2.4.1-alpine

RUN apk update 
RUN apk add alpine-sdk postgresql-dev

# Add host user to image
ARG user
RUN adduser -D $user
RUN echo "$user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
USER $user

# Install node and yarn
RUN sudo apk add nodejs
RUN sudo npm install --global yarn

# Install rails
RUN gem install rails

RUN sudo mkdir /app
WORKDIR /app

# Install basic rails gems in image
RUN rails new . --database=postgresql
