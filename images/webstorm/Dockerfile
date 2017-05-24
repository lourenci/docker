FROM debian:jessie

RUN apt-get update && apt-get -y install build-essential curl tar git

# Install webstorm
RUN curl -OL https://download.jetbrains.com/webstorm/WebStorm-2017.1.3.tar.gz && \
    tar -xvzf WebStorm-2017.1.3.tar.gz

# Install Node
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

# Install global NPM packages
RUN npm install -g bower
RUN npm install -g gulp-cli
RUN npm install -g yarn

# Install chrome
RUN apt-get install -y xvfb chromium
COPY xvfb-chromium /usr/local/bin/google-chrome
RUN chmod +x /usr/local/bin/google-chrome

# Install Java 8
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | tee /etc/apt/sources.list.d/webupd8team-java.list
RUN echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get update
RUN apt-get install -y oracle-java8-set-default

# Install FiraCode Font
COPY install-fira-code.sh /tmp
RUN mkdir -p ~/.local/share/fonts && bash /tmp/install-fira-code.sh 

ENTRYPOINT ["/WebStorm-171.4424.63/bin/webstorm.sh"]
