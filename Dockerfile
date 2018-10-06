FROM node:alpine

RUN apk update && apk upgrade && \
    apk add --no-cache \
    bash \

    RUN npm install -g ask-cli

COPY files /

ENTRYPOINT /bin/bash

