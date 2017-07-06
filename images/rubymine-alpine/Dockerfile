FROM ruby:alpine

RUN apk update
RUN apk add sudo tzdata

# Machine timezone
RUN cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
RUN echo "America/Sao_Paulo" >  /etc/timezone

# Add host user to image
ARG user
RUN adduser -D $user
RUN echo "$user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
USER $user

# Install node
RUN sudo apk add nodejs

# Install Java 8
RUN sudo apk add openjdk8

RUN sudo apk add curl

# Install FiraCode and some others fonts
RUN sudo apk add ttf-dejavu
COPY install-fira-code.sh /tmp
RUN mkdir -p ~/.local/share/fonts && sh /tmp/install-fira-code.sh 

# Install RubyMine
# Download and install rubymine
RUN sudo curl -OL https://download.jetbrains.com/ruby/RubyMine-2017.1.5.tar.gz && \
    sudo tar -xvzf RubyMine-2017.1.5.tar.gz

ENTRYPOINT ["/RubyMine-2017.1.5/bin/rubymine.sh"]
