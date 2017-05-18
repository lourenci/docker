FROM debian:jessie

RUN apt-get update && apt-get -y install build-essential curl tar git

# Install webstorm
RUN curl -OL https://download.jetbrains.com/webstorm/WebStorm-2017.1.3.tar.gz && \
    tar -xvzf WebStorm-2017.1.3.tar.gz

# Install Node and Yarn
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

# Install bower and Gulp
RUN npm install -g bower
RUN npm install -g gulp-cli

# Install chrome
RUN apt-get install -y xvfb chromium
COPY xvfb-chromium /usr/local/bin/google-chrome
RUN chmod +x /usr/local/bin/google-chrome

ENTRYPOINT ["/WebStorm-171.4424.63/bin/webstorm.sh"]
