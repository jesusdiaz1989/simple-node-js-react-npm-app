FROM node:12-alpine

WORKDIR /usr/src/app

COPY package.json ./

ADD package.json package-lock.json /app/
RUN npm install

COPY . .

EXPOSE 3000

ADD . /app

CMD ["node", "index"]
