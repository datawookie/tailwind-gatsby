FROM node:18-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm install -g gatsby-cli
RUN gatsby build

CMD ["gatsby", "develop", "-H", "0.0.0.0"]
