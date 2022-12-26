FROM node:latest

RUN npm install -g express

COPY . /app

WORKDIR /app

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]
