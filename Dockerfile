FROM node:latest

COPY script.js /app/

WORKDIR /app

CMD ["node", "script.js"]
