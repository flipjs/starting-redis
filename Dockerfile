FROM node:10.8.0-alpine

RUN mkdir /app
WORKDIR /app

COPY package.json package.json
RUN npm install && mv node_modules /node_modules

COPY . .

LABEL maintainer="Felipe Apostol<flipjs.io@gmail.com>"

CMD npm start
