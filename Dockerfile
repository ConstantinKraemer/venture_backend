FROM node:12

WORKDIR /app/node

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

RUN npm install -g nodemon

CMD [ "nodemon", "index.js" ]
