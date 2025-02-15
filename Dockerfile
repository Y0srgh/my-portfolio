FROM node:20 AS build-stage

WORKDIR /portfolio-front

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 4000

CMD ["npm", "run", "serve:ssr:frontend"]
