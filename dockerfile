FROM node:16-alpine As development

WORKDIR /usr/src/app

COPY package*.json ./
COPY yarn.lock ./

RUN npm install

COPY . .

RUN npm run build

CMD ["yarn", "start:dev"]