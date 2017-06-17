FROM node:alpine

RUN npm install -g bower
RUN npm install -g gulp-cli
RUN npm install -g create-react-app

# Install Chrome
RUN apk add --update chromium

WORKDIR /app
