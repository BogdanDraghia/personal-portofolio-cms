FROM node:16-bullseye

ENV NODE_ENV=production

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .


RUN npm run build



EXPOSE 1337

CMD ["npm","run","start"]