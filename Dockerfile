FROM node:20-alpine

WORKDIR /app

COPY . .

WORKDIR /app/web
RUN yarn install && yarn build

WORKDIR /app/api
RUN yarn install && yarn build

CMD ["yarn", "start"]