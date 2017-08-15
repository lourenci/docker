FROM ruby:2.2.5

# MACHINE
RUN apt-get update && apt-get -y install sudo
# Add the same host's user. Pass the user through `--build-arg USER=$USER`
ARG USER
RUN useradd -ms /bin/bash $USER
RUN usermod -a -G sudo $USER
RUN echo "$USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
USER $USER

RUN sudo apt-get update && sudo apt-get -y install build-essential curl tar git libxtst6

# Setup timezone
RUN sudo cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
RUN echo "America/Sao_Paulo" | sudo tee /etc/timezone
# Setup locale
RUN sudo apt-get install -y locales
RUN echo "pt_BR.UTF-8 UTF-8" | sudo tee -a /etc/locale.gen
RUN sudo locale-gen
ENV LC_NUMERIC pt_BR.UTF-8
ENV LC_TIME pt_BR.UTF-8
ENV LC_MONETARY pt_BR.UTF-8
ENV LC_PAPER pt_BR.UTF-8
ENV LC_MEASUREMENT pt_BR.UTF-8

# THIRD PARTY APPLICATIONS
# Install Java 8
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | sudo tee /etc/apt/sources.list.d/webupd8team-java.list
RUN echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | sudo tee -a /etc/apt/sources.list.d/webupd8team-java.list
RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
RUN sudo apt-get update && sudo apt-get install -y oracle-java8-set-default

# Install Node
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo bash -
RUN sudo apt-get install -y nodejs

# Download and install rubymine
WORKDIR /tmp
RUN curl -OL https://download.jetbrains.com/ruby/RubyMine-2017.2.1.tar.gz && \
    tar -xvzf RubyMine-2017.2.1.tar.gz
RUN sudo mv RubyMine-2017.2.1 /opt
RUN rm RubyMine-2017.2.1.tar.gz

# Install FiraCode Font
COPY install-fira-code.sh /tmp
RUN mkdir -p ~/.local/share/fonts && bash /tmp/install-fira-code.sh

ENTRYPOINT ["/opt/RubyMine-2017.2.1/bin/rubymine.sh"]
