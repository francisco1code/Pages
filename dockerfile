FROM node:alpine

WORKDIR /usr/src/web

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

CMD yarn run start