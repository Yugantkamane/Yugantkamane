FROM node

WORKDIR /app

COPY package*.json ./app

RUN npm install

COPY . .

USER app

EXPOSE 80

CMD ["node", "app.js"]
