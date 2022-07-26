FROM node:16.15.1-alpine3.16

RUN apk add --no-cache bash

RUN touch /root/.bashrc | echo "PS1='\W\$ '" >> /root/.bashrc

RUN npm install --location=global nodemon
RUN npm install --location=global @loopback/cli

RUN mkdir -p /home/node/app

USER node

WORKDIR /home/node/app
