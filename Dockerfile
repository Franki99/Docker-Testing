FROM node:16

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 4000

ENV ENV_FILE_PATH=.env

CMD ["npm", "start"]