FROM node:latest

RUN npm install -g bower
RUN npm install -g gulp-cli
RUN npm install -g create-react-app

# Install chrome
RUN apt-get update
RUN apt-get install -y xvfb chromium
COPY xvfb-chromium /usr/local/bin/google-chrome
RUN chmod +x /usr/local/bin/google-chrome

WORKDIR /app
