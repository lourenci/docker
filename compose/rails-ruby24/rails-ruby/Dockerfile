FROM ruby:2.4

# Add host user to image
RUN apt-get update && apt-get install -y sudo
ARG user
RUN useradd -ms /bin/bash $user
RUN usermod -a -G sudo $user
RUN echo "$user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
USER $user

# Install nodejs
RUN sudo apt-get update -qq && sudo apt-get install -y build-essential libpq-dev

RUN sudo curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
RUN sudo bash nodesource_setup.sh
RUN sudo apt-get install -y nodejs

# Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt-get update && sudo apt-get install -y yarn

# Install some basic gems for rails
RUN gem install rails
RUN gem install rubocop
RUN gem install puma
RUN gem install rspec
RUN gem install pg

RUN sudo mkdir /app
WORKDIR /app
