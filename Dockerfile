FROM node:10-alpine3.11
WORKDIR /housy-backend
COPY package*.json ./
RUN npm install
RUN npm i -g sequelize
RUN npm i -g sequelize-cli
RUN npm i mysql2 -g
COPY . .
EXPOSE 5000
CMD [ "npm","start" ]
