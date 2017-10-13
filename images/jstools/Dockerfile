FROM alpine

# Install node, npm and yarn
RUN apk update 
RUN apk add alpine-sdk nodejs-npm
RUN npm install --global yarn

RUN yarn global add create-react-app

# Add host user to image
ARG user
RUN adduser -D $user
RUN echo "$user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
USER $user

RUN sudo mkdir /app
RUN sudo chown $user /app
WORKDIR /app
