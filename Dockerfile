FROM node:16.17.0

WORKDIR /var/www/html/node-app/express-drug-api

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 4000

CMD ["node", ]