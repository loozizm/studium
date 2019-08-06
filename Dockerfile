FROM node:12.7.0-alpine

WORKDIR /src

RUN apk update && \
  npm install -g npm @vue/cli
