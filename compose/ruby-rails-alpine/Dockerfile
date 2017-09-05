FROM ruby:2.4.1-alpine

RUN apk update 
RUN apk add alpine-sdk tzdata postgresql-dev

# Machine timezone
RUN cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
RUN echo "America/Sao_Paulo" >  /etc/timezone

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
RUN gem install rubocop
RUN gem install rspec

RUN sudo mkdir /app
RUN sudo chown $user /app
WORKDIR /app

