FROM strapi/base:14

ENV NODE_ENV production

WORKDIR /app

COPY package.json .

RUN npm install

COPY favicon.ico .

COPY public/robots.txt public/

COPY extensions/ extensions/

COPY api/ api/

COPY config/ config/

RUN nmp run build

EXPOSE 1337

CMD ["npm","run","start"]